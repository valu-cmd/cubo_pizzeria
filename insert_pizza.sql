INSERT INTO sucursales VALUES (11,'Pizzería Russel','San Agustín Oapan','Guerrero',7218892870);
INSERT INTO sucursales VALUES (22,'Pizzería Russel','San Martín Tilcajete','Oaxaca',9517839015);
INSERT INTO sucursales VALUES (33,'Pizzería Russel','Poza Rica','Veracruz',7823890180);
INSERT INTO sucursales VALUES (44,'Pizzeria Russel','Acajete','Puebla',8523377730);
INSERT INTO sucursales VALUES (55,'Pizzeria Russel','Alamos','Sonora',2182190615);
INSERT INTO sucursales VALUES (66,'Pizzeria Russel','Burgos','Tamaulipas',2472626285);
INSERT INTO sucursales VALUES (77,'Pizzeria Russel','Atlixco','Puebla',1819592564);
INSERT INTO sucursales VALUES (88,'Pizzeria Russel','Apaxtla','Guerrero',5684745258);
INSERT INTO sucursales VALUES (99,'Pizzeria Russel','Nogales','Sonora',3036754235);
INSERT INTO sucursales VALUES (1010,'Pizzeria Russel','Esperanza','Puebla',5474731206);

INSERT INTO pizza VALUES (1,'Lamborghini','Pepperoni',129.50, 11);
INSERT INTO pizza VALUES (2,'Hula Hula','Hawaiana',180.00, 22);
INSERT INTO pizza VALUES (3,'Crazy Vegetables','Vegetariana',180.00, 33);
INSERT INTO pizza VALUES (4,'Clasica','Queso y peperoni',150.00, 44);
INSERT INTO pizza VALUES (5,'Infernal','Extra picante',130.50, 22);
INSERT INTO pizza VALUES (6,'Marina','Mariscos', 190.00, 88);
INSERT INTO pizza VALUES (7,'Funghi','Champiñones', 200.00, 66);
INSERT INTO pizza VALUES (8,'Neoyorquina','Varios ingredientes', 190.00, 77);
INSERT INTO pizza VALUES (9,'Fugazza','Extra queso y aceitunas',200.00, 33);
INSERT INTO pizza VALUES (10,'Cuatro estaciones','Variedad de ingredientes', 180.50, 99);

INSERT INTO clientes VALUES (010,'María','Del Rosario','Lucero','Avenida Encino No. 5','Guerrero', '7217782901');
INSERT INTO clientes VALUES (020,'Roberto','Muñoz','Martínez','Domingo Arenas 17','Guerrero', '7217782901');
INSERT INTO clientes VALUES (030,'Raúl','Rodríguez','Hernández','Calle Rubí','Oaxaca', '9517291099');
INSERT INTO clientes VALUES (040,'Daniel','Pérez','Soriano','Calle Zacatlán','Oaxaca', '9518126784');
INSERT INTO clientes VALUES (050,'Mario','Díaz','Bautista','Avenida Framboyan 17','Guerrero', '7822012901');
INSERT INTO clientes VALUES (060,'Laura','Acevedo','López','Avenida Caoba 12','Puebla', '7827744101');
INSERT INTO clientes VALUES (070,'Ernesto','Rosales','Pérez','Avenida la Quebrada','Tamaulipas', '5553105463');
INSERT INTO clientes VALUES (080,'María','Sánchez','Trejo','Avenida Mexico norte 220','Tamaulipas', '3112125498');
INSERT INTO clientes VALUES (090,'Cecilia','García','Flores','Federalismo no. 1136','Puebla', '3338538947');
INSERT INTO clientes VALUES (100,'Ivan','Hernández','González','Cuahutemoc 651 pte','Sonora', '8183766116');

INSERT INTO pedidos VALUES (001,'2023-05-21 15:30:00',10, 180.50 , 99, 100);
INSERT INTO pedidos VALUES (002,'2023-05-21 15:30:00',1, 129.50 ,11, 020);
INSERT INTO pedidos VALUES (003,'2023-05-21 15:30:00',8, 190.00 ,77, 060);
INSERT INTO pedidos VALUES (004,'2023-05-21 15:30:00',6, 190.00 ,88, 010);
INSERT INTO pedidos VALUES (005,'2023-05-21 15:30:00',2, 180.00,22, 030);
INSERT INTO pedidos VALUES (006,'2023-05-21 15:30:00',6, 190.00,88, 050);
INSERT INTO pedidos VALUES (007,'2023-05-21 15:30:00',7, 200.00,66, 070);
INSERT INTO pedidos VALUES (008,'2023-05-21 15:30:00',5, 130.50,22, 040);
INSERT INTO pedidos VALUES (009,'2023-05-21 15:30:00',7, 200.00,66, 080);
INSERT INTO pedidos VALUES (010,'2023-05-21 15:30:00',8, 190.00,77, 090);


INSERT INTO ingredientes VALUES (01,'Pepperoni, queso mozzarella', 1);
INSERT INTO ingredientes VALUES (02,'Jamón, piña, queso mozzarella', 2);
INSERT INTO ingredientes VALUES (03,'Champiñón, pimiento verde, aceituna negra, cebolla, queso mozzarella', 3);
INSERT INTO ingredientes VALUES (04,'Queso, peperoni', 4);
INSERT INTO ingredientes VALUES (05,'Peperoni, queso, salsa picante, chile, cebolla', 5);
INSERT INTO ingredientes VALUES (06,'Pescado, camaron, salsa, queso mozzarella', 6);
INSERT INTO ingredientes VALUES (07,'Queso mozzarella, salsa de piezza, champiñones', 7);
INSERT INTO ingredientes VALUES (08,'Queso mozzarella, salsa, verduras, carnes, jamón', 8);
INSERT INTO ingredientes VALUES (09,'Queso, cebolla, aceitunas, salsa', 9);
INSERT INTO ingredientes VALUES (10,'Alcachofas, jamón, aceitunas,champiñones, queso', 10);