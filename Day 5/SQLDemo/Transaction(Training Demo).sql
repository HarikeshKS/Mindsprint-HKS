use mindsprint;
-- **************************TRANSACTION DEMO*******************************
CREATE TABLE Accounts (
	account_id VARCHAR(10) PRIMARY KEY,
	account_name VARCHAR(100),
	balance DECIMAL(10, 2)
);

INSERT INTO Accounts (account_id, account_name, balance) VALUES
('A001', 'Alice', 1000.00),
('A002', 'Bob', 1500.00),
('A003', 'Charlie', 2000.00);

select * from accounts;

-- COMMIT demo
BEGIN;
UPDATE Accounts SET balance = balance - 100 WHERE account_id = 'A001';
UPDATE Accounts SET balance = balance + 100 WHERE account_id = 'A002';
COMMIT;

-- ROLLBACK demo
BEGIN;
UPDATE Accounts SET balance = balance - 100 WHERE account_id = 'A001';
UPDATE Accounts SET balance = balance + 100 WHERE account_id = 'A002';
ROLLBACK;

-- SAVEPOINT demo
BEGIN;
UPDATE Accounts SET balance = balance + 100 WHERE account_id = 'A001';
SAVEPOINT sp1;
UPDATE Accounts SET balance = balance - 100 WHERE account_id = 'A002';
ROLLBACK TO sp1;
COMMIT;

-- STORED PROCEDURES

DELIMITER //

create procedure getAllAccounts()
begin 
	select * from Accounts;
end //

DELIMITER //

call getAllAccounts()
