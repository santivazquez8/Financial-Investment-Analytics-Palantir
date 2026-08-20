-- CLEAN TABLES
-- Financial Investment Analytics - Palantir




-- INCOME STATEMENT CLEAN


DROP TABLE IF EXISTS income_statement;

CREATE TABLE income_statement AS
SELECT
    name,
    label,
    description,
    EXTRACT(YEAR FROM end_date)::INT AS year,
    start_date,
    end_date,
    value
FROM income_statement_raw
ORDER BY name, end_date;



-- BALANCE SHEET CLEAN


DROP TABLE IF EXISTS balance_sheet;

CREATE TABLE balance_sheet AS
SELECT
    name,
    label,
    description,
    EXTRACT(YEAR FROM end_date)::INT AS year,
    end_date,
    value
FROM balance_sheet_raw
ORDER BY name, end_date;



-- CASH FLOW CLEAN


DROP TABLE IF EXISTS cash_flow;

CREATE TABLE cash_flow AS
SELECT
    name,
    label,
    description,
    EXTRACT(YEAR FROM end_date)::INT AS year,
    start_date,
    end_date,
    value
FROM cash_flow_raw
ORDER BY name, end_date;

