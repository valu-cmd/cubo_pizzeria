DROP TABLE ingredientes;
DROP TABLE pedidos;
DROP TABLE pizza;
DROP TABLE clientes;
DROP TABLE sucursales;

CREATE TABLE sucursales (
    id_sucursal INT PRIMARY KEY,
    nombre_sucursal VARCHAR(50) NOT NULL, 
    direcc_sucursal VARCHAR(50) NOT NULL,
    ciudad_sucursal VARCHAR(50) NOT NULL,
    tel_sucursal VARCHAR(50) NOT NULL
);

CREATE TABLE pizza(
    id_pizza INT PRIMARY KEY,
    nombre_pizza VARCHAR(50) NOT NULL,
    especialidad VARCHAR(50) NOT NULL,
    precio INT NOT NULL,
    id_sucursal INT NOT NULL,
    FOREIGN KEY (id_sucursal) REFERENCES sucursales(id_sucursal)
);

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nombre_cliente VARCHAR(50) NOT NULL,
    app_cliente VARCHAR(50) NOT NULL,
    apm_cliente VARCHAR(50) NOT NULL,
	genero_cliente CHAR(2) CONSTRAINT generoo CHECK (genero_cliente IN ('F', 'M')) NOT NULL,
    direcc_cliente VARCHAR(50) NOT NULL,
    ciudad_cliente VARCHAR(50) NOT NULL,
    tel_cliente VARCHAR(50) NOT NULL,
);

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    fecha DATETIME NOT NULL,
    id_pizza INT NOT NULL,
    nombre_pizza VARCHAR(50), NOT NULL,
    total DECIMAL (10,2) NOT NULL,
    id_sucursal INT NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_pizza) REFERENCES pizza(id_pizza),
    FOREIGN KEY (id_sucursal) REFERENCES sucursales(id_sucursal),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE ingredientes(
    id_groupIngre INT PRIMARY KEY,
    ingre_detalles VARCHAR(100) NOT NULL,
    id_pizza INT NOT NULL,
    FOREIGN KEY (id_pizza) REFERENCES pizza(id_pizza)
);
