-- =========================================
-- FINANCIAL INVESTMENT ANALYTICS
-- Palantir Technologies
-- Staging / RAW Tables
-- =========================================



-- INCOME STATEMENT


DROP TABLE IF EXISTS income_statement_raw;

CREATE TABLE income_statement_raw (
    name TEXT,
    label TEXT,
    description TEXT,
    end_date DATE,
    value BIGINT,
    fiscal_year INT,
    fiscal_period TEXT,
    form TEXT,
    filed_date DATE,
    frame TEXT,
    start_date DATE
);



-- BALANCE SHEET


DROP TABLE IF EXISTS balance_sheet_raw;

CREATE TABLE balance_sheet_raw (
    name TEXT,
    label TEXT,
    description TEXT,
    end_date DATE,
    value BIGINT,
    fiscal_year INT,
    fiscal_period TEXT,
    form TEXT,
    filed_date DATE,
    frame TEXT,
    start_date DATE
);



-- CASH FLOW STATEMENT


DROP TABLE IF EXISTS cash_flow_raw;

CREATE TABLE cash_flow_raw (
    name TEXT,
    label TEXT,
    description TEXT,
    end_date DATE,
    value BIGINT,
    fiscal_year INT,
    fiscal_period TEXT,
    form TEXT,
    filed_date DATE,
    frame TEXT,
    start_date DATE
);
