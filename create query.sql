CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE Category (
    Category_id int NOT NULL,
    Name varchar(255) NOT NULL,
    Description text NOT NULL,
    CONSTRAINT Category_pk PRIMARY KEY (Category_id)
);

-- Table: Customer
CREATE TABLE Customer (
    Customer_id int NOT NULL,
    Email varchar(255) NOT NULL,
    Password varchar(255) NOT NULL,
    Name varchar(255) NOT NULL,
    Phone varchar(255) NOT NULL,
    CONSTRAINT Customer_pk PRIMARY KEY (Customer_id)
);

-- Table: Order
CREATE TABLE `Order` (
    Order_id int NOT NULL,
    Customer_id int NOT NULL,
    Shipping_address varchar(255) NOT NULL,
    Order_date varchar(255) NOT NULL,
    CONSTRAINT Order_pk PRIMARY KEY (Order_id)
);

-- Table: Orderline
CREATE TABLE Orderline (
    Orderline_id int NOT NULL,
    Order_id int NOT NULL,
    Product_id int NOT NULL,
    Quantity int NOT NULL,
    CONSTRAINT Orderline_pk PRIMARY KEY (Orderline_id)
);

-- Table: Product
CREATE TABLE Product (
    Product_id int NOT NULL,
    Name varchar(255) NOT NULL,
    Price float NOT NULL,
    Weight float NOT NULL,
    Description text NOT NULL,
    Category_id int NOT NULL,
    Stock int NOT NULL,
    CONSTRAINT Product_pk PRIMARY KEY (Product_id)
);

-- foreign keys
-- Reference: Order_Customer (table: Order)
ALTER TABLE `Order` ADD CONSTRAINT Order_Customer FOREIGN KEY Order_Customer (Customer_id)
    REFERENCES Customer (Customer_id);

-- Reference: Orderline_Order (table: Orderline)
ALTER TABLE Orderline ADD CONSTRAINT Orderline_Order FOREIGN KEY Orderline_Order (Order_id)
    REFERENCES `Order` (Order_id);

-- Reference: Orderline_Product (table: Orderline)
ALTER TABLE Orderline ADD CONSTRAINT Orderline_Product FOREIGN KEY Orderline_Product (Product_id)
    REFERENCES Product (Product_id);

-- Reference: Product_Category (table: Product)
ALTER TABLE Product ADD CONSTRAINT Product_Category FOREIGN KEY Product_Category (Category_id)
    REFERENCES Category (Category_id);

-- End of file.

