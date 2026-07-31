-- =====================================================
-- Query 1: Top 5 Funds by AUM
-- =====================================================
SELECT
    scheme_name,
    fund_house,
    aum_crore
FROM scheme_performance
ORDER BY aum_crore DESC
LIMIT 5;


-- =====================================================
-- Query 2: Average NAV Per Month
-- =====================================================
SELECT
    strftime('%Y-%m', date) AS month,
    AVG(nav) AS average_nav
FROM nav_history
GROUP BY strftime('%Y-%m', date)
ORDER BY month;


-- =====================================================
-- Query 3: SIP Transactions Year-over-Year
-- =====================================================
SELECT
    strftime('%Y', transaction_date) AS year,
    COUNT(*) AS sip_transactions,
    SUM(amount_inr) AS total_sip_amount
FROM investor_transactions
WHERE transaction_type = 'SIP'
GROUP BY year
ORDER BY year;


-- =====================================================
-- Query 4: Transactions by State
-- =====================================================
SELECT
    state,
    COUNT(*) AS total_transactions
FROM investor_transactions
GROUP BY state
ORDER BY total_transactions DESC;


-- =====================================================
-- Query 5: Funds with Expense Ratio Less Than 1%
-- =====================================================
SELECT
    scheme_name,
    expense_ratio_pct
FROM scheme_performance
WHERE expense_ratio_pct < 1
ORDER BY expense_ratio_pct;


-- =====================================================
-- Query 6: Top 5 Funds by 1-Year Return
-- =====================================================
SELECT
    scheme_name,
    return_1yr_pct
FROM scheme_performance
ORDER BY return_1yr_pct DESC
LIMIT 5;


-- =====================================================
-- Query 7: Average Expense Ratio by Category
-- =====================================================
SELECT
    category,
    AVG(expense_ratio_pct) AS average_expense_ratio
FROM scheme_performance
GROUP BY category
ORDER BY average_expense_ratio;


-- =====================================================
-- Query 8: Average AUM by Fund House
-- =====================================================
SELECT
    fund_house,
    AVG(aum_crore) AS average_aum
FROM scheme_performance
GROUP BY fund_house
ORDER BY average_aum DESC;


-- =====================================================
-- Query 9: Transactions by Payment Mode
-- =====================================================
SELECT
    payment_mode,
    COUNT(*) AS total_transactions
FROM investor_transactions
GROUP BY payment_mode
ORDER BY total_transactions DESC;


-- =====================================================
-- Query 10: Average Transaction Amount by Transaction Type
-- =====================================================
SELECT
    transaction_type,
    AVG(amount_inr) AS average_amount
FROM investor_transactions
GROUP BY transaction_type
ORDER BY average_amount DESC;