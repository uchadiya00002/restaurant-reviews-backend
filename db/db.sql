-- for help ====\?

-- to list database we have====   \l

-- to exit current command  ====  \q

-- to create database ==== CREATE DATABASE database_name

-- to connect to a new database ==== \c database_name

--  to create a table ==== CREATE TABLE products (
--     id INT,  name VARCHAR(50)  ,price INT,  on_sale boolean);

-- to check if any table is available ==== \d 

-- to check want properties available in table ==== \d table_name

-- to add column in a table ====   ALTER TABLE table_name ADD COLUMN coulumn_name column_datatype;

-- to add column in a table ====   ALTER TABLE table_name DROP COLUMN coulumn_name ;

-- to DROP or DELETE the table ==== DROP TABLE table_name;

-- to DROP or DELETE the database ==== DROP DATABASE  database_name;


    CREATE TABLE reviews (
        id BIGSERIAL NOT NULL PRIMARY KEY,
        restaurant_id  BIGINT NOT NULL REFERENCES restaurants(id),
        name VARCHAR(50) NOT NULL,
        review TEXT NOT NULL,
        rating INT NOT NULL check(rating >=1 and  rating<=5) );

        INSERT INTO reviews (restaurant_id, name , review , rating) values (2,'Poonam', 'Loved the food there',5 );
    