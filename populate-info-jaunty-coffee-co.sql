INSERT INTO COFFEE_SHOP (shop_id, shop_name, city, state) 
VALUES 
(1, "Jaunty Urban Coffee", "Richmond", "VA"),
(2, "Jaunty Old West Coffee", "Austin", "TX"),
(3, "Jaunty Vacation Coffee", "Honolu", "HI");

INSERT INTO SUPPLIER (supplier_id, company_name, country, sales_contact_name, email)
VALUES 
(1, "Coffee Beans Inc.", "Argentina", "Jimmy Beans", "JMBeans@cbi.com"),
(2, "Good Beans Inc.", "Panama", "Ricky Espresso", "REspresso@gbi.com"),
(3, "Ultra Strong Beans ", "Honduras", "Guy Latte", "GLatte@usb.com");

INSERT INTO EMPLOYEE (employee_id, first_name, last_name, hire_date, job_title)
VALUES
(1, "Hanaga", "Hode", "2018-01-01", "Manager"),
(2, "Lazlo", "Paquito", "2020-05-01", "Marketing Lead"),
(3, "Jacob", "Hafza", "2019-03-02", "IT Lead");

INSERT INTO COFFEE (coffee_id, coffee_name, price_per_pound)
VALUES 
(1, "Morning Brew", 8.25),
(2, "Hazelnut Crazy", 11.50),
(3, "Smooth Black", 14.50);

UPDATE EMPLOYEE 
SET shop_id = 1 WHERE employee_id = 1;
UPDATE EMPLOYEE
SET shop_id = 2 WHERE employee_id = 2;
UPDATE EMPLOYEE
SET shop_id = 3 WHERE employee_id = 3;

UPDATE COFFEE
SET shop_id = 1, supplier_id = 1 WHERE coffee_id = 3;
UPDATE COFFEE
SET shop_id = 2, supplier_id = 2 WHERE coffee_id = 1;
UPDATE COFFEE
SET shop_id = 3, supplier_id = 3 WHERE coffee_id = 2;