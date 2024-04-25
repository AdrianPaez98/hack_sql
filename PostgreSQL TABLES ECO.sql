create TABLE countries (
  id_country serial PRIMARY key,
  name VARCHAR(50) not NULL
);

CREATE TABLE role(
  id_role serial PRIMARY KEY,
  name VARCHAR(50) not NULL
);

CREATE TABLE invoice_status(
  id_invoice_status serial PRIMARY key,
  status VARCHAR not NULL
);

CREATE TABLE payments(
  id_payment serial PRIMARY KEY,
  type VARCHAR(30)
);

CREATE TABLE discounts(
  id_discount serial PRIMARY KEY,
  status varchar(50),
  percentage VARCHAR(10)
);

CREATE TABLE offers(
  id_offer serial PRIMARY KEY,
  status VARCHAR(20)
);

CREATE TABLE taxes(
  id_tax serial PRIMARY KEY,
  percentage VARCHAR(10)
);

CREATE TABLE customers(
  id_customer serial PRIMARY KEY,
  id_country INTEGER NOT NULL,
  id_role INTEGER not NULL,
  name VARCHAR(50) not NULL,
  email VARCHAR(50),
  age INTEGER,
  PASSWORD VARCHAR(50),
  physical_address VARCHAR(200),
  FOREIGN KEY (id_country) REFERENCES countries (id_country),
  FOREIGN KEY (id_role) REFERENCES role (id_role)
);

CREATE TABLE invoices(
  id_invoice serial PRIMARY KEY,
  id_customer INTEGER NOT NULL,
  id_payment INTEGER NOT NULL,
  id_invoice_status INTEGER NOT NULL,
  date VARCHAR(20),
  total_to_pay VARCHAR(50),
  FOREIGN key (id_customer) REFERENCES customers (id_customer),
  FOREIGN KEY (id_payment) REFERENCES payments (id_payment),
  FOREIGN KEY (id_invoice_status) REFERENCES invoice_status (id_invoice_status)
);

CREATE TABLE products(
  id_product serial PRIMARY KEY,
  id_discount INTEGER not NULL,
  id_offer INTEGER not NULL,
  id_tax INTEGER not NULL,
  name varchar(80) not NULL,
  details VARCHAR(200),
  minimum_stock integer not NULL,
  maximum_stock INTEGER not NULL,
  current_stock INTEGER not NULL,
  price varchar(20) not NULL,
  price_with_tax VARCHAR(20),
  FOREIGN KEY (id_discount) REFERENCES discounts (id_discount),
  FOREIGN KEY (id_offer) REFERENCES offers (id_offer),
  FOREIGN KEY (id_tax) REFERENCES taxes (id_tax)
);

CREATE table products_customers(
  id_product INTEGER not NULL,
  id_customer INTEGER NOT NULL,
  FOREIGN KEY (id_product) REFERENCES products (id_product),
  FOREIGN KEY (id_customer) REFERENCES customers (id_customer),
  PRIMARY KEY (id_customer, id_product)
);

CREATE TABLE orders(
  id_order serial PRIMARY KEY,
  id_invoice INTEGER NOT NULL,
  id_product INTEGER NOT NULL,
  detail VARCHAR(100) not NULL,
  amount VARCHAR(50) not NULL,
  price VARCHAR (50) not NULL,
  FOREIGN KEY (id_invoice) REFERENCES invoices (id_invoice),
  FOREIGN KEY (id_product) REFERENCES products (id_product)
);

