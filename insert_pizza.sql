USE pizzeria_olap;

INSERT INTO sedes VALUES (11,'Pizzeria Russel','San Agustin Oapan','Guerrero',7218892870);
INSERT INTO sedes VALUES (22,'Pizzeria Russel','San Martin Tilcajete','Oaxaca',9517839015);
INSERT INTO sedes VALUES (33,'Pizzeria Russel','Poza Rica','Veracruz',7823890180);
INSERT INTO sedes VALUES (44,'Pizzeria Russel','Acajete','Puebla',8523377730);
INSERT INTO sedes VALUES (55,'Pizzeria Russel','Alamos','Sonora',2182190615);
INSERT INTO sedes VALUES (66,'Pizzeria Russel','Burgos','Tamaulipas',2472626285);
INSERT INTO sedes VALUES (77,'Pizzeria Russel','Atlixco','Puebla',1819592564);
INSERT INTO sedes VALUES (88,'Pizzeria Russel','Apaxtla','Guerrero',5684745258);
INSERT INTO sedes VALUES (99,'Pizzeria Russel','Nogales','Sonora',3036754235);
INSERT INTO sedes VALUES (1010,'Pizzeria Russel','Esperanza','Puebla',5474731206);

INSERT INTO pizzas_catalog VALUES (1,'Lamborghini','Pepperoni',129.50, 99);
INSERT INTO pizzas_catalog VALUES (2,'Hula Hula','Hawaiana',180.00, 22);
INSERT INTO pizzas_catalog VALUES (3,'Crazy Vegetables','Vegetariana',180.00, 22);
INSERT INTO pizzas_catalog VALUES (4,'Clasica','Queso y peperoni',150.00, 77);
INSERT INTO pizzas_catalog VALUES (5,'Infernal','Extra picante',130.50, 22);
INSERT INTO pizzas_catalog VALUES (6,'Marina','Mariscos', 190.00, 88);
INSERT INTO pizzas_catalog VALUES (7,'Funghi','Champiñones', 200.00, 66);
INSERT INTO pizzas_catalog VALUES (8,'Neoyorquina','Varios ingredientes', 190.00, 77);
INSERT INTO pizzas_catalog VALUES (9,'Fugazza','Extra queso y aceitunas',200.00, 77);
INSERT INTO pizzas_catalog VALUES (10,'Cuatro estaciones','Variedad de ingredientes', 180.50, 99);

INSERT INTO compradores_sede VALUES (010,'Maria','Del Rosario','Lucero','Avenida Encino No. 5','Guerrero', '7217782901');
INSERT INTO compradores_sede VALUES (020,'Roberto','Muñoz','Martnez','Domingo Arenas 17','Guerrero', '7217782901');
INSERT INTO compradores_sede VALUES (030,'Raul','Rodriguez','Hernandez','Calle Rubi','Oaxaca', '9517291099');
INSERT INTO compradores_sede VALUES (040,'Daniel','Perez','Soriano','Calle Zacatlan','Oaxaca', '9518126784');
INSERT INTO compradores_sede VALUES (050,'Mario','Diaz','Bautista','Avenida Framboyan 17','Guerrero', '7822012901');
INSERT INTO compradores_sede VALUES (060,'Laura','Acevedo','Lopez','Avenida Caoba 12','Puebla', '7827744101');
INSERT INTO compradores_sede VALUES (070,'Ernesto','Rosales','Perez','Avenida la Quebrada','Tamaulipas', '5553105463');
INSERT INTO compradores_sede VALUES (080,'Maria','Sanchez','Trejo','Avenida Mexico norte 220','Tamaulipas', '3112125498');
INSERT INTO compradores_sede VALUES (090,'Cecilia','Garcia','Flores','Federalismo no. 1136','Puebla', '3338538947');
INSERT INTO compradores_sede VALUES (100,'Ivan','Hernandez','Gonzalez','Cuahutemoc 651 pte','Sonora', '8183766116');

INSERT INTO venta_sede VALUES (001,'2023-05-15 15:30:00',10, 'Cuatro estaciones',180.50 , 99, 100);
INSERT INTO venta_sede VALUES (002,'2023-05-03 15:30:00',1, 'Lamborghini',129.50 ,99, 100);
INSERT INTO venta_sede VALUES (003,'2023-05-03 15:30:00',8, 'Neoyorquina',190.00 ,77, 060);
INSERT INTO venta_sede VALUES (004,'2023-05-15 15:30:00',6, 'Marina',190.00 ,88, 010);
INSERT INTO venta_sede VALUES (005,'2023-05-15 15:30:00',2, 'Hula Hula',180.00,22, 030);
INSERT INTO venta_sede VALUES (006,'2023-05-11 15:30:00',6, 'Marina',190.00,88, 050);
INSERT INTO venta_sede VALUES (007,'2023-05-05 15:30:00',7, 'Funghi',200.00,66, 070);
INSERT INTO venta_sede VALUES (008,'2023-05-05 15:30:00',5, 'Infernal',130.50,22, 040);
INSERT INTO venta_sede VALUES (009,'2023-05-11 15:30:00',7, 'Funghi',200.00,66, 080);
INSERT INTO venta_sede VALUES (010,'2023-05-03 15:30:00',9, 'Neoyorquina',190.00,77, 090);
INSERT INTO venta_sede VALUES (111,'2023-05-03 15:30:00',8, 'Fugazza',200.00,77, 050);
INSERT INTO venta_sede VALUES (222,'2023-05-05 15:30:00',1, 'Lamborghini',129.50,66, 050);
INSERT INTO venta_sede VALUES (333,'2023-05-11 15:30:00',4, 'Clasica',150.00,99, 100);
INSERT INTO venta_sede VALUES (444,'2023-05-15 15:30:00',3, 'Crazy Vegetables',180.00,22, 040);
INSERT INTO venta_sede VALUES (555,'2023-05-05 15:30:00',1, 'Lamborghini',129.50,99, 100);
INSERT INTO venta_sede VALUES (666,'2023-05-03 15:30:00',4, 'Clasica',150.00,77, 060);
INSERT INTO venta_sede VALUES (777,'2023-05-11 15:30:00',6, 'Marina',190.00,88, 020);
INSERT INTO venta_sede VALUES (888,'2023-05-05 15:30:00',7, 'Funghi',200.00,66, 060);
INSERT INTO venta_sede VALUES (999,'2023-05-03 15:30:00',2, 'Hula Hula',180.00,22, 040);


INSERT INTO componente_pizza_sede VALUES (01,'Pepperoni, queso mozzarella', 1);
INSERT INTO componente_pizza_sede VALUES (02,'Jamon, piña, queso mozzarella', 2);
INSERT INTO componente_pizza_sede VALUES (03,'Champiño, pimiento verde, queso mozzarella', 3);
INSERT INTO componente_pizza_sede VALUES (04,'Queso, peperoni', 4);
INSERT INTO componente_pizza_sede VALUES (05,'Peperoni, queso, salsa picante, chile, cebolla', 5);
INSERT INTO componente_pizza_sede VALUES (06,'Pescado, camaron, salsa, queso mozzarella', 6);
INSERT INTO componente_pizza_sede VALUES (07,'Queso mozzarella, salsa de piezza, champiñones', 7);
INSERT INTO componente_pizza_sede VALUES (08,'Queso mozzarella, salsa, verduras, carnes, jamon', 8);
INSERT INTO componente_pizza_sede VALUES (09,'Queso, cebolla, aceitunas, salsa', 9);
INSERT INTO componente_pizza_sede VALUES (10,'Alcachofas, jamon, aceitunas,champiñones, queso', 10);
