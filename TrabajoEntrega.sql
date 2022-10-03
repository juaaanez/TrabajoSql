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