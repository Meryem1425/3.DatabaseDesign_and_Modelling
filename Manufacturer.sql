create database Manufacturer

use Manufacturer

create table product(
	product_id int primary key identity(1,1),
	product_name varchar(100),
	quantity int not null
);

create table component(
	component_id int primary key identity(1,1),
	component_name varchar(100),
	description varchar(200)
);

create table supplier(
	supplier_id int primary key identity(1,1),
	supplier_name varchar(100)
);

create table product_component(
  product_id int NOT NULL,
  component_id int NOT NULL,
  CONSTRAINT fk1_product_id FOREIGN KEY (product_id) REFERENCES Product (product_id),
  CONSTRAINT fk2_component_id FOREIGN KEY (component_id) REFERENCES Component (component_id),
  PRIMARY KEY (product_id, component_id)
);

create table component_supplier(
  supplier_id int NOT NULL,
  component_id int NOT NULL,
  CONSTRAINT fk1_supplier_id FOREIGN KEY (supplier_id) REFERENCES  Supplier (supplier_id),
  CONSTRAINT fk3_component_id FOREIGN KEY (component_id) REFERENCES Component (component_id),
  PRIMARY KEY (supplier_id, component_id)
);