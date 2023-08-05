-- Crear tabla pizza_dw si no existe
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'pizza_dw')
BEGIN
    CREATE TABLE pizza_dw (
        direcc_sucursal VARCHAR(50),
        fecha DATE,
        nombre_pizza VARCHAR(50),
        total_pizzas INT
    );
END
ELSE
BEGIN
    TRUNCATE TABLE pizza_dw; -- Vaciar la tabla si ya existe
END

-- Declarar variables
DECLARE @direcc_sucursal VARCHAR(50);
DECLARE @fecha DATE;
DECLARE @nombre_pizza VARCHAR(50);
DECLARE @total_pizzas INT;

BEGIN TRANSACTION; -- Iniciar la transacción

-- Crear cursor
DECLARE pizza_cursor CURSOR FOR
SELECT s.direcc_sucursal, CONVERT(DATE, p.fecha), p.nombre_pizza, COUNT(*) AS total_pizzas
FROM pedidos p
INNER JOIN sucursales s ON p.id_sucursal = s.id_sucursal
WHERE p.fecha < CONVERT(DATE, GETDATE()) -- Filtrar por fecha anterior a la fecha actual
GROUP BY s.direcc_sucursal, CONVERT(DATE, p.fecha), p.nombre_pizza;

-- Abrir cursor
OPEN pizza_cursor;

-- Obtener el primer registro del cursor
FETCH NEXT FROM pizza_cursor INTO @direcc_sucursal, @fecha, @nombre_pizza, @total_pizzas;

-- Recorrer el cursor y guardar los registros en la tabla pizza_dw
WHILE @@FETCH_STATUS = 0
BEGIN
    INSERT INTO pizza_dw (direcc_sucursal, fecha, nombre_pizza, total_pizzas)
    VALUES (@direcc_sucursal, @fecha, @nombre_pizza, @total_pizzas);
    
    -- Obtener el siguiente registro del cursor
    FETCH NEXT FROM pizza_cursor INTO @direcc_sucursal, @fecha, @nombre_pizza, @total_pizzas;
END

-- Cerrar cursor
CLOSE pizza_cursor;

-- Liberar recursos del cursor
DEALLOCATE pizza_cursor;

COMMIT TRANSACTION; -- Hacer COMMIT para guardar los cambios en la tabla pizza_dw
