# sql file for data base


CREATE TABLE 'jewel_loan'.'report' (
'customer_id' INT NOT NULL,
'name' VARCHAR(45) NOT NULL,
'sex' VARCHAR(45) NOT NULL,
'age' INT NOT NULL,
'loan_amt' INT NOT NULL,
'address' VARCHAR(45) NOT NULL,
'contact` VARCHAR(45) NOT NULL,
'date_approval` DATETIME NOT NULL,

PRIMARY KEY ('customer_id', 'name', 'loan_amt', 'date_approval'));

INSERT INTO 'jewel_loan'.'report' ('customer_id', 'name', 'sex', 'age', 'loan_amt', 'address', 'date_approval', 'contact') VALUES ('1001', 'Claire Randall', 'Female', '54', '600000', '1650 W Cornelia Ave ', '2013-07-17 17:18:55', '6628772822');

INSERT INTO 'jewel_loan'.'report' ('customer_id', 'name', 'sex', 'age', 'loan_amt', 'address', 'date_approval', 'contact') VALUES ('1002', 'James Malcolm', 'Male', '51', '450000', '11411 S Eggleston Ave ', '2013-07-17 17:18:55', '6315271866');

INSERT INTO 'jewel_loan'.'report' ('customer_id', 'name', 'sex', 'age', 'loan_amt', 'address', 'date_approval', 'contact') VALUES ('1003', 'Brianna Randall', 'Female', '28', '500000', '7511 S South Shore Dr ', '2013-07-17 17:18:55', '4778147961');

INSERT INTO 'jewel_loan'.'report' ('customer_id', 'name', 'sex', 'age', 'loan_amt', 'address', 'date_approval', 'contact') VALUES ('1004', 'Roger Mackenzie', 'Male', '30', '700000', '2501 W Addison St ', '2013-07-17 17:18:55', '7356355440');

INSERT INTO 'jewel_loan'.'report' ('customer_id', 'name', 'sex', 'age', 'loan_amt', 'address', 'date_approval', 'contact') VALUES ('1005', 'Jeremiah Frank Grey', 'Male', '21', '850000', '4929 N Sawyer Ave ', '2013-07-17 17:18:55', '8982332897');
