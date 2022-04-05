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

CREATE TABLE restaurants (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  location VARCHAR(50) NOT NULL,
  price_range INT NOT NULL check(price_range >= 1 AND price_range <= 5)
);

-- INSERT INTO restaurants (name, location, price_range) VALUES ('mcd', 'NY', 3);

CREATE TABLE reviews (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  restaurant_id BIGINT REFERENCES restaurants(id) ON DELETE CASCADE NOT NULL,
  name VARCHAR(50) NOT NULL,
  review TEXT NOT NULL,
  rating INT NOT NULL check(rating >=1 AND rating <= 5)
);

-- SELECT * FROM restaurants LEFT JOIN (SELECT restaurant_id, COUNT(*), TRUNC(AVG(rating), 1) AS average_rating FROM reviews GROUP BY restaurant_id) reviews ON restaurants.id = reviews.restaurant_id;
    