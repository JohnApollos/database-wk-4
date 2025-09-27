-- Question 1: Total payments by date, sorted and limited
SELECT
    paymentDate,
    SUM(amount) AS totalAmountPaid
FROM
    payments
GROUP BY
    paymentDate
ORDER BY
    paymentDate DESC
LIMIT 5;

-- Question 2: Average credit limit grouped by customer and country
SELECT
    customerName,
    country,
    AVG(creditLimit) AS averageCreditLimit
FROM
    customers
GROUP BY
    customerName,
    country;

    -- Question 3: Total price of ordered products
SELECT
    productCode,
    quantityOrdered,
    SUM(quantityOrdered * priceEach) AS totalPrice
FROM
    orderdetails
GROUP BY
    productCode,
    quantityOrdered;

    -- Question 4: Highest payment amount grouped by check number
SELECT
    checkNumber,
    MAX(amount) AS highestPaymentAmount
FROM
    payments
GROUP BY
    checkNumber;