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






