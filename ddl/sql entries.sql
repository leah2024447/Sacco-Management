-- Sample Members Data
INSERT INTO Members (MemberID, FirstName, LastName, ContactNumber, Email, JoinDate)
VALUES 
(1, 'John', 'Doe', '1234567890', 'john.doe@example.com', '2023-01-15'),
(2, 'Jane', 'Smith', '0987654321', 'jane.smith@example.com', '2023-03-20'),
(3, 'Alice', 'Johnson', '1231231234', 'alice.johnson@example.com', '2023-04-10'),
(4, 'Bob', 'Williams', '2342342345', 'bob.williams@example.com', '2023-02-25'),
(5, 'Charlie', 'Brown', '3453453456', 'charlie.brown@example.com', '2023-05-18'),
(6, 'David', 'Davis', '4564564567', 'david.davis@example.com', '2023-06-30'),
(7, 'Emma', 'Wilson', '5675675678', 'emma.wilson@example.com', '2023-08-01'),
(8, 'Fiona', 'Taylor', '6786786789', 'fiona.taylor@example.com', '2023-09-15'),
(9, 'George', 'Anderson', '7897897890', 'george.anderson@example.com', '2023-07-22'),
(10, 'Hannah', 'Thomas', '8908908901', 'hannah.thomas@example.com', '2023-03-11'),
(11, 'Ivy', 'Scott', '9019019012', 'ivy.scott@example.com', '2023-10-05'),
(12, 'Jack', 'Martin', '0120120123', 'jack.martin@example.com', '2023-11-25');

-- Sample Accounts Data
INSERT INTO Accounts (AccountID, MemberID, AccountType, Balance)
VALUES 
(1, 1, 'Savings', 1000.00),
(2, 2, 'Current', 1500.00),
(3, 3, 'Savings', 2000.00),
(4, 4, 'Savings', 2500.00),
(5, 5, 'Current', 1800.00),
(6, 6, 'Current', 3000.00),
(7, 7, 'Savings', 5000.00),
(8, 8, 'Savings', 3200.00),
(9, 9, 'Current', 4000.00),
(10, 10, 'Savings', 1500.00),
(11, 11, 'Savings', 2750.00),
(12, 12, 'Current', 3500.00);


-- Sample Contributions Data
INSERT INTO Contributions (ContributionID, MemberID, ContributionDate, Amount)
VALUES 
(1, 1, '2024-10-01', 500.00),
(2, 2, '2024-09-15', 700.00),
(3, 3, '2024-09-20', 800.00),
(4, 4, '2024-10-05', 1200.00),
(5, 5, '2024-08-15', 950.00),
(6, 6, '2024-07-25', 1300.00),
(7, 7, '2024-06-10', 700.00),
(8, 8, '2024-05-18', 1500.00),
(9, 9, '2024-04-28', 1100.00),
(10, 10, '2024-03-13', 600.00),
(11, 11, '2024-02-19', 1400.00),
(12, 12, '2024-01-25', 900.00);



-- Sample Loans Data
INSERT INTO Loans (LoanID, MemberID, LoanAmount, IssueDate, InterestRate, Status)
VALUES 
(1, 1, 5000.00, '2024-05-10', 5.0, 'Active'),
(2, 2, 3000.00, '2024-07-20', 4.5, 'Closed'),
(3, 3, 2500.00, '2024-06-30', 4.8, 'Active'),
(4, 4, 6000.00, '2024-08-05', 5.2, 'Active'),
(5, 5, 1500.00, '2024-09-25', 3.9, 'Closed'),
(6, 6, 4000.00, '2024-07-15', 4.5, 'Active'),
(7, 7, 3500.00, '2024-05-20', 5.0, 'Active'),
(8, 8, 2200.00, '2024-03-10', 4.0, 'Closed'),
(9, 9, 4800.00, '2024-04-18', 3.7, 'Active'),
(10, 10, 3000.00, '2024-02-05', 5.5, 'Closed'),
(11, 11, 3700.00, '2024-10-01', 4.4, 'Active'),
(12, 12, 5500.00, '2024-11-15', 5.3, 'Active');


-- Sample Loan Repayments Data
INSERT INTO LoanRepayments (RepaymentID, LoanID, RepaymentDate, Amount)
VALUES 
(1, 1, '2024-06-15', 500.00),
(2, 2, '2024-08-15', 300.00),
(3, 3, '2024-07-10', 300.00),
(4, 4, '2024-09-05', 700.00),
(5, 5, '2024-10-12', 500.00),
(6, 6, '2024-08-15', 600.00),
(7, 7, '2024-07-30', 800.00),
(8, 8, '2024-05-25', 450.00),
(9, 9, '2024-06-18', 750.00),
(10, 10, '2024-04-28', 300.00),
(11, 11, '2024-11-05', 850.00),
(12, 12, '2024-10-20', 900.00);


-- Sample Transactions Data
INSERT INTO Transactions (TransactionID, AccountID, TransactionDate, TransactionType, Amount)
VALUES 
(1, 1, '2024-09-01', 'Deposit', 1000.00),
(2, 2, '2024-09-10', 'Withdrawal', 200.00),
(3, 3, '2024-09-20', 'Deposit', 800.00),
(4, 4, '2024-10-15', 'Withdrawal', 500.00),
(5, 5, '2024-08-25', 'Deposit', 950.00),
(6, 6, '2024-07-18', 'Deposit', 1300.00),
(7, 7, '2024-06-30', 'Withdrawal', 700.00),
(8, 8, '2024-05-05', 'Deposit', 1500.00),
(9, 9, '2024-04-15', 'Withdrawal', 1100.00),
(10, 10, '2024-03-12', 'Deposit', 600.00),
(11, 11, '2024-02-19', 'Deposit', 1400.00),
(12, 12, '2024-01-25', 'Withdrawal', 900.00);