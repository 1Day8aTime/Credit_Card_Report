-- server : 127.0.0.1:3306

-- Create Database 
CREATE DATABASE ccdb;

-- Create cc_detail table
-- This table will have details of credit cards

CREATE TABLE cc_detail (
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acquisition_Cost INT,
    Week_Start_Date DATE,
    Week_Number VARCHAR(20),
    Quarter VARCHAR(10),
    Current_Year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Balance INT,
    Total_Transaction_Amount INT,
    Total_Transaction_Count INT,
    Average_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Expense_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Account VARCHAR(5)
);

-- Create cust_detail table
-- This table will contain the information of the customers

CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(10),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_Code VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Customer_Satisfaction_Score INT
);

select * from cc_detail;

-- import csv file in the MySQL for credit card data and customer data

SHOW GLOBAL variables LIKE 'LOCAL_INFILE';
SET GLOBAL LOCAL_INFILE = TRUE;
show variables like "secure_file_priv";


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/customer.csv' INTO TABLE cust_detail
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/credit_card.csv' INTO TABLE cc_detail
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

-- import csv file in the MySQL for credit card data and customer data for the 53rd week.

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cc_add.csv' INTO TABLE cc_detail
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cust_add.csv' INTO TABLE cust_detail
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;