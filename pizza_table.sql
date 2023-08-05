CREATE DATABASE pizzeria

DROP DATABASE pizzeria_olap

CREATE TABLE sedes (
    id_sucursal INT PRIMARY KEY,
    nombre_sucursal VARCHAR(50) NOT NULL, 
    direcc_sucursal VARCHAR(50) NOT NULL,
    ciudad_sucursal VARCHAR(50) NOT NULL,
    tel_sucursal VARCHAR(50) NOT NULL
);

CREATE TABLE pizzas_catalog(
    id_pizza INT PRIMARY KEY,
    nombre_pizza VARCHAR(50) NOT NULL,
    especialidad VARCHAR(50) NOT NULL,
    precio INT NOT NULL,
    id_sucursal INT NOT NULL,
    FOREIGN KEY (id_sucursal) REFERENCES sedes(id_sucursal)
);

CREATE TABLE compradores_sede (
    id_cliente INT PRIMARY KEY,
    nombre_cliente VARCHAR(50) NOT NULL,
    app_cliente VARCHAR(50) NOT NULL,
    apm_cliente VARCHAR(50) NOT NULL,
    direcc_cliente VARCHAR(50) NOT NULL,
    ciudad_cliente VARCHAR(50) NOT NULL,
    tel_cliente VARCHAR(50) NOT NULL,
)

DROP TABLE venta_sede;

CREATE TABLE venta_sede (
    id_pedido INT PRIMARY KEY,
    fecha DATETIME NOT NULL,
    id_pizza INT NOT NULL,
    nombre_pizza VARCHAR(50) NOT NULL,
    total DECIMAL (10,2) NOT NULL,
    id_sucursal INT NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_pizza) REFERENCES pizzas_catalog(id_pizza),
    FOREIGN KEY (id_sucursal) REFERENCES sedes(id_sucursal),
    FOREIGN KEY (id_cliente) REFERENCES compradores_sede(id_cliente)
);

CREATE TABLE componente_pizza_sede(
    id_groupIngre INT PRIMARY KEY,
    ingre_detalles VARCHAR(50) NOT NULL,
    id_pizza INT NOT NULL,
    FOREIGN KEY (id_pizza) REFERENCES pizzas_catalog(id_pizza)
);
