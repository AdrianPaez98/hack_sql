create TABLE countries (
  id_countries serial PRIMARY key,
  name VARCHAR(50) not NULL
);

CREATE TABLE priorities(
  id_priorities serial PRIMARY KEY,
  type_name VARCHAR(50) NOT NULL
);

CREATE TABLE role(
  id_role serial PRIMARY KEY,
  name VARCHAR(50) not NULL
);

CREATE TABLE invoice_status(
  id_invoice_status serial PRIMARY key,
  status VARCHAR not NULL
)

CREATE TABLE orders(
  id_order serial PRIMARY KEY,
  id_invoice INTEGER,
  id_product INTEGER,
  detail VARCHAR(100) not NULL,
  amount VARCHAR(50) not NULL,
  price VARCHAR (50) not NULL
);

CREATE TABLE invoices(
  id_invoice serial PRIMARY KEY,
  id_coustomer INTEGER NOT NULL,
  id_payment INTEGER NOT NULL,
  id_invoice_status INTEGER NOT NULL,
  date VARCHAR(20),
  total_to_pay VARCHAR(50)
);



