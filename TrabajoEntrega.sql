create database sqltrabajo;
use sqltrabajo;

-- Creacion de tablas

create table Consumidores (
id int not null auto_increment PRIMARY KEY,
nombre varchar (255) NOT NULL,
apellido varchar (255) NOT NULL,
direccion varchar (255) NOT NULL
);

create table Aplicacion (
id int not null,
pedido_descripcion varchar (255) NOT NULL,
forma_pago int PRIMARY KEY,
pedidoID int,
FOREIGN KEY (pedidoID)
REFERENCES Consumidores (id)
);

create table Forma_de_pago (
id int,
tipo_pago varchar (55),
FOREIGN KEY (id)
REFERENCES Aplicacion (forma_pago)
);

create table Restaurante (
Id int,
nombrer varchar (255),
producto int PRIMARY KEY,
FOREIGN KEY (id)
REFERENCES Consumidores (id)
);

create table Productos (
id int,
tipo varchar (255),
precio int,
tipo_delivery int PRIMARY KEY,
FOREIGN KEY (id)
REFERENCES Restaurante (producto)
);

create table Delivery (
id int,
tipo varchar (255),
FOREIGN KEY (id)
REFERENCES Productos (tipo_delivery)
);

-- INSERTS --

insert into Consumidores (Id, Nombre, Apellido, Direccion) values (1, 'franco', 'gonzalez', 'derqui');
insert into Consumidores (Id, Nombre, Apellido, Direccion) values (2, 'juan', 'perez', 'francia');
insert into Consumidores (Id, Nombre, Apellido, Direccion) values (3, 'maria', 'serrano', 'florida');

insert into Aplicacion (Id, Pedido_descripcion, Forma_Pago, pedidoID) values (1, 'comida', 3, 3);
insert into Aplicacion (Id, Pedido_descripcion, Forma_Pago, pedidoID) values (2, 'helado', 1, 1);
insert into Aplicacion (Id, Pedido_descripcion, Forma_Pago, pedidoID) values (3, 'perfmueria', 4, 2);

insert into Forma_De_Pago (id, tipo_pago) values (1, 'debito');
insert into Forma_De_Pago (id, tipo_pago) values (3, 'efectivo');
insert into Forma_De_Pago (id, tipo_pago) values (4, 'transferencia');

insert into Restaurante (id, NombreR, Producto) values (1, 'antares', '2');
insert into Restaurante (id, NombreR, Producto) values (2, 'gluck', '3');
insert into Restaurante (id, NombreR, Producto) values (3, 'farmacia', '4');

insert into Productos (id, Tipo, Precio, Tipo_delivery) values (1, 'bebidas', 100, 1);
insert into Productos (id, Tipo, Precio, Tipo_delivery) values (2, 'comida', 150, 2);
insert into Productos (id, Tipo, Precio, Tipo_delivery) values (3, 'helado', 200, 3);
insert into Productos (id, Tipo, Precio, Tipo_delivery) values (4, 'perfmueria', 120, 4);

insert into Delivery (id, tipo) values (1, 'moto');
insert into Delivery (id, tipo) values (2, 'auto');
insert into Delivery (id, tipo) values (3, 'bicicleta');
insert into Delivery (id, tipo) values (4, 'retiro');




