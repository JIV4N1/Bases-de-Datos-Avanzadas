#Crear base de datos: ecommerce
#Si ya se encuentra, no marca error
#
CREATE DATABASE IF NOT EXISTS ecommerce_jginez;

#
#Cargar base de datos
#
USE ecommerce_jginez;
#
#Crear tabla: clients_jgnz
#
CREATE TABLE IF NOT EXISTS clients (
    client_id  INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name        VARCHAR(100) NOT NULL,
    email       VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(15),

    create_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

#
#Crear tabla: products_jgnz
#
CREATE TABLE IF NOT EXISTS products (
    product_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    sku        VARCHAR(20) NOT NULL UNIQUE,
    name        VARCHAR(100) NOT NULL,
    slug        VARCHAR(200) NOT NULL UNIQUE,
    description TEXT,
    price       FLOAT NOT NULL DEFAULT 0.0,

    create_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

#
#Crear tabla: bills_jgnz
#
CREATE TABLE IF NOT EXISTS bills (
    bill_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    client_id INTEGER NOT NULL,
    total FLOAT,
    status ENUM('open','paid','lost') NOT NULL DEFAULT 'open',

    create_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

#
#Crear tabla: bills_products
#
CREATE TABLE IF NOT EXISTS bill_products (
    bill_producto_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    bill_id INTEGER UNSIGNED NOT NULL,
    product_id INTEGER UNSIGNED NOT NULL,
    date_added DATETIME,
    quantity INTEGER DEFAULT 1,
    price FLOAT NOT NULL,
    discount INTEGER NOT NULL DEFAULT 0,

    create_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

