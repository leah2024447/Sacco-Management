
SELECT 
    m.MemberID, 
    m.FirstName, 
    m.LastName, 
    COALESCE(SUM(c.Amount), 0) AS TotalContributions, 
    COALESCE(SUM(l.LoanAmount), 0) AS TotalLoans
FROM Members m
LEFT JOIN Contributions c ON m.MemberID = c.MemberID
LEFT JOIN Loans l ON m.MemberID = l.MemberID
GROUP BY 
    m.MemberID, 
    m.FirstName, 
    m.LastName;

SELECT 
    m.FirstName, 
    m.LastName, 
    c.ContributionDate, 
    c.Amount AS ContributionAmount, 
    l.LoanAmount, 
    l.Status AS LoanStatus
FROM Members m
LEFT JOIN Contributions c ON m.MemberID = c.MemberID
LEFT JOIN Loans l ON m.MemberID = l.MemberID;


SELECT 
    AVG(c.Amount) AS AverageContribution, 
    SUM(lr.Amount) AS TotalRepayments, 
    SUM(a.Balance) AS TotalAccountBalance
FROM Contributions c
JOIN LoanRepayments lr ON c.MemberID = lr.LoanID
JOIN Accounts a ON c.MemberID = a.MemberID;

	SELECT 
    m.MemberID, 
    m.FirstName, 
    m.LastName, 
    SUM(c.Amount) AS TotalContributions
FROM Members m
JOIN Contributions c ON m.MemberID = c.MemberID
GROUP BY 
    m.MemberID, 
    m.FirstName, 
    m.LastName
HAVING 
    SUM(c.Amount) > 1000;


SELECT MemberID, 
    SUM(Amount) AS TotalContributions
FROM Contributions
GROUP BY MemberID;

SELECT l.MemberID, 
    SUM(l.LoanAmount) AS TotalLoansDisbursed, 
    SUM(l.LoanAmount) - COALESCE(SUM(lr.Amount), 0) AS OutstandingAmount
FROM Loans l
LEFT JOIN LoanRepayments lr ON l.LoanID = lr.LoanID
GROUP BY l.MemberID;


SELECT  LoanID, 
AVG(Amount) AS AverageRepayment
FROM LoanRepayments
GROUP BY LoanID;

SELECT AccountID, 
COUNT(TransactionID) AS TotalTransactions, 
SUM(Amount) AS TotalTransactionAmount
FROM Transactions
GROUP BY AccountID;