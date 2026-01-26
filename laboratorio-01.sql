# CREAR USUARIOS
CREATE USER 'jginez'@'localhost';
CREATE USER 'jginez'@'127.0.0.1';
CREATE USER 'jginez'@'::1';
CREATE USER 'jginez'@'172.234.214.2';

CREATE USER 'jginez'@'localhost' IDENTIFIED BY  'jginez';

//eliminar usuario
DROP USER 'jginez'@'localhost';

#DAR PERMISOS           BD.tables
GRANT ALL PRIVILEGES ON *.*;
GRANT ALL PRIVILEGES ON mysql.user, ecommerce.*, ....;

GRANT ALL PRIVILEGES ON metro_cdmx.*;

GRANT ALL PRIVILEGES ON *.* TO 'jginez'@'localhost';

//Visualizar el usuario que se esta utilizando
SELECT user();

# root
1. instala - unica vez;
2. crear un usuario admin;
3. crear roles administrativos, programmer, capturista, etc.

//crear base de datos
create database ecommerce;

#Insertar registros por medio de un archivo .sql

mysql -u jginez -p < C:\Users\Usuario\OneDrive\Desktop\BDA\clients.sql 
mysql -u jginez -p < C:\Users\Usuario\OneDrive\Desktop\BDA\products.sql 
mysql -u jginez -p < C:\Users\Usuario\OneDrive\Desktop\BDA\bills.sql 
mysql -u jginez -p < C:\Users\Usuario\OneDrive\Desktop\BDA\bill_products.sql 



#Consultas eficases
select * from clients;

#Consultas eficientes 
select count(*) from clients;
select * from clients limit 10;
select * from clients WHERE email='alba93@osinski.org';

select name as 'Nombre del Cliente', email as 'Correo del cliente' from clients WHERE email='alba93@osinski.org';

Las '' para nombres compuestos, tambien se puede select name as Cliente, email as 'Correo del cliente' from clients WHERE email='alba93@osinski.org';

#Select me regrese al menos un resultado; no cero,
select * from clients
    where email=select*from bill_product
        where email = select * from bill_product
            WHERE email='alba93@osinski.org'


inner join



