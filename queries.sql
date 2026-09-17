CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    category TEXT,
    unit_price REAL,
    quantity_in_stock INTEGER,
    supplier TEXT
);

INSERT INTO products VALUES
(1,'Wireless Mouse','Electronics',15.99,120,'TechSource'),
(2,'Mechanical Keyboard','Electronics',45.50,60,'TechSource'),
(3,'USB-C Cable','Electronics',8.25,200,'TechSource'),
(4,'Office Chair','Furniture',89.99,35,'ComfortCo'),
(5,'Standing Desk','Furniture',199.00,15,'ComfortCo'),
(6,'Desk Lamp','Furniture',22.75,80,'ComfortCo'),
(7,'Printer Paper (Ream)','Office Supplies',6.50,300,'PaperPlus'),
(8,'Ballpoint Pens (Box)','Office Supplies',4.25,250,'PaperPlus'),
(9,'Sticky Notes (Pack)','Office Supplies',3.10,180,'PaperPlus'),
(10,'External Hard Drive','Electronics',64.99,40,'TechSource'),
(11,'Whiteboard Eraser','Office Supplies',2.00,90,'PaperPlus');

SELECT * FROM products;

UPDATE products SET unit_price=12.99 WHERE product_name='Wireless Mouse';

DELETE FROM products WHERE product_name='Whiteboard Eraser';

SELECT * FROM products;

SELECT product_name AS "Item Name", unit_price AS "Price" FROM products;

SELECT product_name, unit_price*quantity_in_stock AS "Total Value" FROM products;

SELECT product_name||' ('||category||')' AS "Product Listing" FROM products;

SELECT * FROM products WHERE category='Electronics' AND unit_price>20;

SELECT * FROM products WHERE unit_price BETWEEN 10 AND 50;

SELECT * FROM products ORDER BY quantity_in_stock DESC;

SELECT SUM(quantity_in_stock) AS "Total Quantity" FROM products;

SELECT COUNT(*) AS "Office Supplies Count" FROM products WHERE category='Office Supplies';
