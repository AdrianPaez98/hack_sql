create TABLE countries (
  id_countries serial PRIMARY key,
  name VARCHAR(50) not NULL
);

CREATE TABLE priorities(
  id_priorities serial PRIMARY KEY,
  type_name VARCHAR(50) NOT NULL
);

CREATE TABLE contact_request(
  id_email serial PRIMARY KEY,
  id_countries INTEGER not NULL,
  id_priorities INTEGER not NULL,
  name VARCHAR(50) not NULL,
  DETAIL VARCHAR(200),
  physical_address VARCHAR(200) NOT NULL,
  FOREIGN KEY (id_countries) REFERENCES countries (id_countries),
  FOREIGN KEY (id_priorities) REFERENCES priorities (id_priorities)  
);

INSERT into countries (name) VALUES ('Venezuela'),('Colombia'),('Argentina'),('Ecuador'),('Chile')
SELECT * FROM countries

INSERT into priorities (type_name) VALUES ('venezolano'),('chileno'),('colombiano')
SELECT * from priorities

INSERT INTO contact_request (id_countries, id_priorities,name,detail,physical_address) VALUES (2,2,'Diego','Soporte Tecnico Q.A','Bogota, Fontibon');
SELECT * FROM contact_request;

DELETE FROM contact_request WHERE id_email = 1;

update contact_request set name = 'Adrian', detail = 'Desarrollador Junior' WHERE id_email = 3;