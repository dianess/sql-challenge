-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/PIiR5l
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "dept_emp"(
    "emp_no" bigint   NOT NULL,
    "dept_no" varchar(10)   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar(10)   NOT NULL,
    "emp_no" bigint   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" bigint   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar(30)   NOT NULL,
    "last_name" varchar(30)   NOT NULL,
    "gender" varchar(10) NOT NULL,
    "hire_date" date NOT NULL
);

CREATE TABLE "salaries" (
    "emp_no" bigint   NOT NULL,
    "salary" bigint   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

CREATE TABLE "titles" (
    "emp_no" bigint   NOT NULL,
    "title" varchar(30)   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

CREATE TABLE "departments" (
    "dept_no" varchar(10)   NOT NULL,
    "dept_name" varchar(30)   NOT NULL
);

-- Table documentation comment 1 (try the PDF/RTF export)
-- Table documentation comment 2
-- CREATE TABLE "Product" (
    -- "ProductID" int   NOT NULL,
    -- Field documentation comment 1
    -- Field documentation comment 2
    -- Field documentation comment 3
    -- "Name" varchar(200)   NOT NULL,
    -- "Price" money   NOT NULL,
    -- CONSTRAINT "pk_Product" PRIMARY KEY (
       --  "ProductID"
     -- ),
    -- CONSTRAINT "uc_Product_Name" UNIQUE (
        -- "Name"
    -- )
-- );

-- CREATE TABLE "OrderStatus" (
    -- "OrderStatusID" int   NOT NULL,
    -- "Name" string   NOT NULL,
    -- CONSTRAINT "pk_OrderStatus" PRIMARY KEY (
        -- "OrderStatusID"
     -- ),
    -- CONSTRAINT "uc_OrderStatus_Name" UNIQUE (
        -- "Name"
    -- )
-- );

-- ALTER TABLE "Order" ADD CONSTRAINT "fk_Order_CustomerID" FOREIGN KEY("CustomerID")
-- REFERENCES "Customer" ("CustomerID");

-- ALTER TABLE "Order" ADD CONSTRAINT "fk_Order_OrderStatusID" FOREIGN KEY("OrderStatusID")
-- REFERENCES "OrderStatus" ("OrderStatusID");

-- ALTER TABLE "OrderLine" ADD CONSTRAINT "fk_OrderLine_OrderID" FOREIGN KEY("OrderID")
-- REFERENCES "Order" ("OrderID");

-- ALTER TABLE "OrderLine" ADD CONSTRAINT "fk_OrderLine_ProductID" FOREIGN KEY("ProductID")
-- REFERENCES "Product" ("ProductID");

-- CREATE INDEX "idx_Customer_Name"
-- ON "Customer" ("Name");

