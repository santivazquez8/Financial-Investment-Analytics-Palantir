# Financial Investment Analytics - Palantir Technologies

Proyecto de análisis financiero desarrollado con información real de **Palantir Technologies** publicada en **SEC EDGAR**.

El objetivo fue combinar conocimientos contables y financieros con herramientas de Data Analytics para evaluar **crecimiento, rentabilidad, generación de caja, liquidez y estructura patrimonial** desde una perspectiva de inversión.

### Resultados principales

- Revenue: **USD 1,54B → USD 4,48B** entre 2021 y 2025.
- Revenue Growth 2025: **+56,18%**.
- Net Income 2025: **USD 1,63B**.
- Free Cash Flow 2025: **USD 2,10B**.
- Current Ratio 2024: **5,96**.
- Equity / Assets 2024: **78,9%**.
- Principal indicador a monitorear: **Stock-Based Compensation**.

**Herramientas:** PostgreSQL · SQL · Power Query · Power BI · DAX

![Financial Investment Analytics Overview](screenshots/00_dashboard_overview.png)

---

## Objetivo

Analizar la evolución financiera de Palantir y detectar señales relevantes para un potencial inversor.

El proyecto se enfoca en:

- crecimiento y rentabilidad;
- márgenes;
- generación de caja;
- liquidez y capital de trabajo;
- ROA y ROE;
- estructura patrimonial;
- Stock-Based Compensation.

El análisis no incluye valuación de la acción ni una recomendación de compra o venta.

---

## Datos y Preparación

Los datos fueron obtenidos desde **SEC EDGAR** mediante información financiera estructurada en formato **XBRL**.

La información fue transformada en Power Query y separada en:

- Income Statement
- Balance Sheet
- Cash Flow Statement

Luego, los datos limpios fueron cargados en PostgreSQL para realizar el análisis con SQL y posteriormente conectados a Power BI.

**Flujo del proyecto:**

`SEC EDGAR → XBRL → Power Query → PostgreSQL → SQL → Power BI`

![Power Query Transformation](screenshots/03_power_query_transformation.png)

---

## Análisis con SQL

Sobre las tablas de PostgreSQL se realizaron consultas para analizar:

1. Evolución de Revenue y crecimiento interanual.
2. Gross Profit, Operating Income y Net Income.
3. Net Income vs Operating Cash Flow.
4. Operating Cash Flow vs CapEx.
5. Evolución de la situación financiera.
6. Stock-Based Compensation.

![SQL Revenue Analysis](screenshots/05_sql_revenue_analysis.png)

Las consultas completas se encuentran disponibles en la carpeta `sql/`.

---

## Modelo y Métricas en Power BI

Las tablas de Income Statement, Balance Sheet y Cash Flow fueron relacionadas mediante una dimensión común de años (`Dim_Year`).

![Power BI Data Model](screenshots/06_powerbi_data_model.png)

Se desarrollaron medidas DAX para calcular indicadores como:

**Revenue Growth · Margins · Free Cash Flow · ROA · ROE · EBITDA · Current Ratio · Working Capital · Equity / Assets · Stock-Based Compensation**

---

## Dashboard en Power BI

El dashboard fue dividido en tres páginas.

### Overview

Resumen de Revenue, Net Income, Operating Cash Flow, Free Cash Flow, márgenes e Investment Signals.

La captura completa se muestra al comienzo del README.

### Profitability & Growth

Análisis de crecimiento, márgenes, Operating Income, Net Income, ROA, ROE y EBITDA.

![Profitability & Growth Dashboard](screenshots/08_dashboard_profitability_growth.png)

### Financial Position & Cash Flow

Análisis de liquidez, estructura patrimonial, capital de trabajo, Free Cash Flow y Stock-Based Compensation.

![Financial Position & Cash Flow Dashboard](screenshots/09_dashboard_financial_position.png)

---

## Principales Insights

### 1. Crecimiento acelerado

Revenue aumentó de aproximadamente **USD 1,54B en 2021 a USD 4,48B en 2025**.

El crecimiento se aceleró hacia el final del período y alcanzó **56,18% interanual en 2025**, el mayor crecimiento registrado entre los años analizados.

### 2. Transición hacia una compañía rentable

Palantir registraba pérdidas operativas y netas en 2021 y 2022, pero pasó a resultados positivos desde 2023.

En 2025 alcanzó aproximadamente:

- **Operating Income:** USD 1,41B.
- **Net Income:** USD 1,63B.
- **Operating Margin:** 31,59%.
- **Net Margin:** 36,52%.

El crecimiento de los ingresos comenzó a traducirse en una mejora significativa de los resultados.

### 3. Márgenes elevados y en expansión

Gross Margin se mantuvo por encima del 78% durante todo el período y alcanzó aproximadamente **82,37% en 2025**.

La mejora de Operating Margin y Net Margin muestra una mayor capacidad para convertir el crecimiento de ingresos en beneficios.

### 4. Fuerte generación de caja

Operating Cash Flow alcanzó aproximadamente **USD 2,13B en 2025**, mientras que Free Cash Flow llegó a **USD 2,10B**.

La pequeña diferencia entre ambas métricas se explica por un nivel de CapEx relativamente bajo, lo que permite que gran parte del efectivo generado por las operaciones quede disponible como Free Cash Flow.

### 5. Mejora de la rentabilidad sobre activos y patrimonio

ROA y ROE pasaron de valores negativos a positivos durante el período analizado.

En 2024 alcanzaron aproximadamente:

- **ROA:** 8,6%.
- **ROE:** 11,0%.

Esto muestra una mejora en la capacidad de la compañía para generar resultados utilizando sus activos y el patrimonio de los accionistas.

### 6. Posición financiera sólida

En 2024 Palantir presentó:

- **Current Ratio:** 5,96.
- **Working Capital:** aproximadamente USD 4,94B.
- **Equity / Assets:** 78,9%.

Los activos corrientes superan ampliamente a los pasivos corrientes y el patrimonio tiene un peso elevado dentro de la estructura financiera.

### 7. Stock-Based Compensation como indicador a monitorear

Stock-Based Compensation continúa siendo relevante por su posible efecto de dilución sobre los accionistas.

Sin embargo, hacia el final del período la generación de caja creció mucho más rápido:

- **Free Cash Flow 2025:** USD 2,10B.
- **Stock-Based Compensation 2025:** USD 0,68B.

Esto mejora considerablemente la relación entre generación de caja y compensación basada en acciones respecto de los primeros años analizados.

---

## Metodología y Limitaciones

- Income Statement y Cash Flow: **2021-2025**.
- Balance Sheet: **2021-2024**.
- ROA y ROE: **2022-2024**, utilizando activos y patrimonio promedio.
- EBITDA = **Operating Income + Depreciation & Amortization**.
- Free Cash Flow = **Operating Cash Flow - CapEx**.
- Las métricas EBITDA y FCF pueden diferir de las métricas ajustadas publicadas por Palantir.

---

## Conclusión

Palantir mostró durante el período analizado una combinación de **fuerte crecimiento, mejora de rentabilidad, elevada generación de caja y una posición financiera sólida**.

El Stock-Based Compensation continúa siendo un indicador relevante a monitorear. El proyecto analiza la calidad financiera del negocio, sin incorporar todavía una valuación de la acción.

---

## Estructura del Repositorio

```text
Financial-Investment-Analytics-Palantir/
│
├── data/
│   ├── raw/
│   └── clean/
│
├── sql/
├── powerbi/
├── screenshots/
└── README.md
