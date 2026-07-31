# Mutual Fund Analytics - Data Dictionary

## 1. NAV History (`02_nav_history.csv`)

| Column | Data Type | Description | Source |
|--------|-----------|-------------|--------|
| amfi_code | Integer | Unique AMFI code identifying the mutual fund | AMFI |
| date | Date | NAV date | NAV History |
| nav | Float | Net Asset Value of the scheme | NAV History |

---

## 2. Investor Transactions (`08_investor_transactions.csv`)

| Column | Data Type | Description | Source |
|--------|-----------|-------------|--------|
| investor_id | Text | Unique investor identifier | Transactions |
| transaction_date | Date | Date of transaction | Transactions |
| amfi_code | Integer | Mutual fund AMFI code | AMFI |
| transaction_type | Text | SIP, Lumpsum or Redemption | Transactions |
| amount_inr | Integer | Transaction amount in Indian Rupees | Transactions |
| state | Text | Investor state | Investor Data |
| city | Text | Investor city | Investor Data |
| city_tier | Text | T30/B30 classification | Investor Data |
| age_group | Text | Investor age group | Investor Data |
| gender | Text | Investor gender | Investor Data |
| annual_income_lakh | Float | Annual income (Lakhs) | Investor Data |
| payment_mode | Text | Payment method | Transactions |
| kyc_status | Text | Investor KYC verification status | Investor Data |

---

## 3. Scheme Performance (`07_scheme_performance.csv`)

| Column | Data Type | Description | Source |
|--------|-----------|-------------|--------|
| amfi_code | Integer | Mutual fund identifier | AMFI |
| scheme_name | Text | Name of mutual fund scheme | AMFI |
| fund_house | Text | Mutual fund company | AMFI |
| category | Text | Scheme category | AMFI |
| plan | Text | Direct or Regular | AMFI |
| return_1yr_pct | Float | 1-Year return (%) | Performance Data |
| return_3yr_pct | Float | 3-Year return (%) | Performance Data |
| return_5yr_pct | Float | 5-Year return (%) | Performance Data |
| benchmark_3yr_pct | Float | Benchmark 3-Year return (%) | Performance Data |
| alpha | Float | Alpha metric | Performance Data |
| beta | Float | Beta metric | Performance Data |
| sharpe_ratio | Float | Sharpe Ratio | Performance Data |
| sortino_ratio | Float | Sortino Ratio | Performance Data |
| std_dev_ann_pct | Float | Annualized Standard Deviation (%) | Performance Data |
| max_drawdown_pct | Float | Maximum Drawdown (%) | Performance Data |
| aum_crore | Integer | Assets Under Management (Crore ₹) | Performance Data |
| expense_ratio_pct | Float | Expense Ratio (%) | Performance Data |
| morningstar_rating | Integer | Morningstar Rating | Performance Data |
| risk_grade | Text | Risk category | Performance Data |