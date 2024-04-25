insert into countries (name) values ('argentina') , ('colombia'),('chile');
select * from countries;

INSERT into role (name) VALUES ('Developer'),('QA'),('CEO');
 select * from role;
 
 INSERT into taxes (percentage) VALUES ('5%'),('10%'),('20%');
 SELECT * FROM taxes;
 
 INSERT into offers (status) VALUES ('Vigente'),('No vigente0'),('En espera');
 SELECT * FROM offers;
 
 INSERT into discounts (status,percentage) VALUES ('Disponible','10%'),('No disponible','20%'),('En espera','30%');
 SELECT * FROM discounts;
 
 INSERT INTO payments (type) VALUES ('Efectivo'),('Debito'),('Transferencia');
 SELECT * FROM payments;
 
 
INSERT into customers  (id_country, id_role, name, email, age, password, physical_address) VALUES (
  1,1,'Checo','checoeslovaco@gmail.com',25,'159753','Buenos aires'),
  (2,2,'Ivern','ivern12@gmail.com',24,'1508','El perdomo'),
  (3,3,'Ricurdo','ricurdo@gmail.com',25,'1401','Santiago');
SELECT * FROM customers;

INSERT into invoice_status (status) VALUES ('Congelado'),('Liberado'),('Rechazado');
SELECT * FROM invoice_status;

INSERT into products (id_discount,id_offer,id_tax, name, details, minimum_stock, maximum_stock, current_stock, price, price_with_tax) VALUES (
1,1,2,'Teclado Razer','Teclado mecanico full size, switches opcticos...',4,20,10,'100$','110$'),
(2,2,1,'Mouse EVGA','Mouse gaming 6 botones marca EVGA',4,20,10,'$25','$26.25'),
(3,3,3,'Monitor Acer','Monitor Acer 27 pulgadas 120HZ Resolucion 1440',4,20,10,'$150','$180');
SELECT * FROM products;

INSERT into products_customers (id_product, id_customer) VALUES (1,1),(2,3),(3,2);
SELECT * FROM products_customers;

insert into invoices(id_customer, id_payment, id_invoice_status, date, total_to_pay) VALUES (1,2,2,'25/4/24','$110'),(2,3,3,'15/4/24','$26.25'),(3,1,1,'28/4/24','$180');
SELECT * FROM invoices;

INSERT into orders (id_invoice, id_product, detail, amount, price) VALUES (1,1,'Compra de teclado mecanico','1 UND','$110'),(2,3,'Compra de monitor','1 UND','$180'),(3,2,'Compra de mouse','1 UND','$26.25');
SELECT * FROM orders;

UPDATE customers set name = 'Moguel', email = 'moldarst@gmail.com', id_country = 2, physical_address = 'Madrid,CU' WHERE id_customer = 1;
UPDATE taxes SET percentage = '15%' WHERE id_tax = 1;
UPDATE taxes sET percentage = '25%' WHERE id_tax = 2;
UPDATE taxes set percentage = '30%' WHERE id_tax = 3;

UPDATE products set price = '$200', price_with_tax = '$250' WHERE id_product = 1;
UPDATE products set price = '$50', price_with_tax = '$57.5' WHERE id_product = 2;
UPDATE products set price = '$250', price_with_tax = '$325' WHERE id_product = 3;

DELETE from orders WHERE id_order = 1;
DELETE from invoices WHERE id_invoice = 1;
DELETE FROM products_customers where id_product = 1;
delete FROM customers WHERE id_customer = 1;