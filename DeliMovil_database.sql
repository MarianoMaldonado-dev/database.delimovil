CREATE DATABASE DeliMovil;
/* USE DeliMovil; */

/* Tabla de Restaurantes */
	CREATE TABLE restaurant (
		id INT AUTO_INCREMENT PRIMARY KEY,
		name VARCHAR(45),
        description VARCHAR(100)
    );
    
/* Tabla de Repartidores */    
    CREATE TABLE delivery (
		id INT AUTO_INCREMENT PRIMARY KEY,
        firstname VARCHAR(45),
        lastname VARCHAR(45),
        phone VARCHAR(20)
    );
    
 /* Tabla de clientes - consumidores finales */   
    CREATE TABLE client (
		first_name VARCHAR(45),
        last_name VARCHAR(45),
        phone VARCHAR(20),
        latitude VARCHAR(45),
        longitude VARCHAR(45),
        name_street VARCHAR(45),
        number_street VARCHAR(45),
        floor_department VARCHAR(5)
    );
    
/* Tabla de categorías de productos */
    CREATE TABLE category (
		id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(45),
        description VARCHAR(45)
    );
    
/* Tabla de productos */    
    CREATE TABLE product (
		name VARCHAR(45),
        description VARCHAR(45),
        restaurant_id INT,
        price DOUBLE
    );
    
/* Tabla de productos por categoría - Tabla intermedia */    
    CREATE TABLE product_category (
		product_id INT,
        category_id INT
    );
    
/* Tabla de Detalle de orden */    
    CREATE TABLE order_detail (
		product_id INT,
        amount VARCHAR(45),
        subtotal DOUBLE,
        order_id INT,
        product_price DOUBLE
    );
    
/* Tabla de Orden */    
    CREATE TABLE order (
		id INT,
        total DOUBLE,
        delivery_id INT,
        client_id INT,
        local_id INT,
        date DATE,
        state VARCHAR(45)
    );
    
/* Tabla de Local - locales cercanos */    
    CREATE TABLE local (
		id INT,
        name VARCHAR(45),
        latitutde VARCHAR(45),
        longitude VARCHAR(45),
        phone VARCHAR(20),
        name_street VARCHAR(20),
        number_street INT,
        floor_department VARCHAR(5),
        restaurant_id INT,
        state VARCHAR(45)
    );
    
/* Tabla de productos locales - cercanos */    
    CREATE TABLE local_product (
		local_id INT,
        product_id INT,
        stock INT
    );
    
    
    
    
    
    
    
    
    
    
    
    
    