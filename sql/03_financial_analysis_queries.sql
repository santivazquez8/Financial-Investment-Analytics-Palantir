--CONSULTAS--

-- 1. ¿Cómo evolucionaron los ingresos de Palantir entre 2021 y 2025?

SELECT
    year,
    value AS revenue,
    ROUND(
        (
            value - LAG(value) OVER (ORDER BY year)
        ) * 100.0
        / LAG(value) OVER (ORDER BY year),
        2
    ) AS revenue_growth_pct
FROM income_statement
WHERE name = 'RevenueFromContractWithCustomerExcludingAssessedTax'
ORDER BY year;



-- 2. ¿Cómo evolucionaron el Gross Profit, Operating Income y Net Income de Palantir?

SELECT
    year,
    name,
    value
FROM income_statement
WHERE name IN (
    'GrossProfit',
    'OperatingIncomeLoss',
    'ProfitLoss'
)
ORDER BY year, name;



-- 3. ¿La mejora del resultado contable se traduce en generación real de caja?

SELECT
    i.year,
    i.value AS net_income,
    c.value AS operating_cash_flow
FROM income_statement i
JOIN cash_flow c
    ON i.year = c.year
WHERE i.name = 'ProfitLoss'
  AND c.name = 'NetCashProvidedByUsedInOperatingActivities'
ORDER BY i.year;


-- 4. ¿Cómo evolucionaron el Operating Cash Flow y el CapEx de Palantir?

SELECT
    year,
    name,
    value
FROM cash_flow
WHERE name IN (
    'NetCashProvidedByUsedInOperatingActivities',
    'PaymentsToAcquirePropertyPlantAndEquipment'
)
ORDER BY year, name;


-- 5. ¿Cómo evolucionó la solidez financiera de Palantir?

SELECT
    year,
    name,
    value
FROM balance_sheet
WHERE name IN (
    'CashAndCashEquivalentsAtCarryingValue',
    'AssetsCurrent',
    'LiabilitiesCurrent',
    'Assets',
    'Liabilities',
    'StockholdersEquity'
)
ORDER BY year, name;


-- 6. ¿Cómo evolucionó el Stock-Based Compensation de Palantir?

SELECT
    year,
    value AS stock_based_compensation
FROM cash_flow
WHERE name = 'ShareBasedCompensation'
ORDER BY year;
