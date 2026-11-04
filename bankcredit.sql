create database bankcredit;
use bankcredit;
show tables;
/* Total Credit Amount */

SELECT
    SUM(`Transaction Amount`) AS Total_Credit
FROM credit_data
WHERE `Transaction Type` = 'Credit';

SELECT
    SUM(`Transaction Amount`) AS Total_Debit
FROM credit_data
WHERE `Transaction Type` = 'Debit';


SELECT
    Branch,
    SUM(`Transaction Amount`) AS Total_Transaction_Amount
FROM credit_data
GROUP BY Branch
ORDER BY Total_Transaction_Amount DESC;

/* Transaction Method Distribution */
SELECT
    `Transaction Method`,
    COUNT(*) AS Total_Transactions
FROM credit_data
GROUP BY `Transaction Method`;

/* Transaction Count by Bank */
SELECT
    `Bank Name`,
    COUNT(*) AS Transaction_Count
FROM credit_data
GROUP BY `Bank Name`
ORDER BY Transaction_Count DESC;

SELECT
    `risk indicator`,
    COUNT(*) AS Total_Transactions
FROM credit_data
GROUP BY `risk indicator`;

