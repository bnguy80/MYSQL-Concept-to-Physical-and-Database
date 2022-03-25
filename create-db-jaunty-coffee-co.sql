CREATE TABLE COFFEE_SHOP (
	shop_id INT NOT NULL AUTO_INCREMENT, -- PK
    shop_name VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state CHAR(2) NOT NULL,
    PRIMARY KEY (shop_id)
);

CREATE TABLE SUPPLIER (
	supplier_id INT NOT NULL, -- PK
    company_name VARCHAR(50) NOT NULL,
    country VARCHAR(30) NOT NULL,
    sales_contact_name VARCHAR(60),
    email VARCHAR(50) NOT NULL,
    PRIMARY KEY (supplier_id)
);

CREATE TABLE EMPLOYEE (
	employee_id INT NOT NULL, -- PK
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    hire_date DATE NOT NULL,
    job_title VARCHAR(30) NOT NULL,
    shop_id INT, -- FK
    KEY fk_employee_shop_id(shop_id),
    CONSTRAINT fk_employee_shop_id FOREIGN KEY (shop_id) REFERENCES COFFEE_SHOP(shop_id),
    PRIMARY KEY (employee_id)
);

CREATE TABLE COFFEE (
	coffee_id INT NOT NULL, -- PK
    shop_id INT, -- FK
    supplier_id INT, -- FK
    coffee_name VARCHAR(30) NOT NULL,
    price_per_pound NUMERIC(5,2) NOT NULL,
    KEY fk_coffee_shop_id(shop_id),
    KEY fk_supplier_id(supplier_id),
	CONSTRAINT fk_coffee_shop_id FOREIGN KEY (shop_id) REFERENCES COFFEE_SHOP(shop_id),
    CONSTRAINT fk_supplier_id FOREIGN KEY (supplier_id) REFERENCES SUPPLIER(supplier_id)
);

