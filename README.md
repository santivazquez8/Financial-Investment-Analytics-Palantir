# Financial Investment Analytics - Palantir Technologies

Proyecto de análisis financiero desarrollado con información real de **Palantir Technologies** publicada en **SEC EDGAR**.

El objetivo fue combinar conocimientos contables y financieros con herramientas de Data Analytics para analizar la compañía desde una perspectiva de inversión, evaluando **crecimiento, rentabilidad, generación de caja, liquidez y estructura patrimonial**.

### Principales resultados

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

## Objetivo del Proyecto

El análisis buscó responder una pregunta principal:

**¿Cómo evolucionó la situación financiera de Palantir y qué señales pueden resultar relevantes para un potencial inversor?**

Se analizaron principalmente:

- crecimiento de ingresos;
- evolución de resultados y márgenes;
- generación de flujo de efectivo;
- liquidez y capital de trabajo;
- rentabilidad sobre activos y patrimonio;
- estructura patrimonial;
- Stock-Based Compensation.

El proyecto analiza la calidad financiera del negocio y no busca determinar si la acción está cara o barata ni emitir una recomendación de compra o venta.

---

## Datos y Preparación

Los datos fueron obtenidos desde **SEC EDGAR**, utilizando la información financiera estructurada en formato **XBRL** correspondiente a Palantir Technologies.

El archivo original fue procesado en Power Query y separado en tres estados financieros:

- Income Statement
- Balance Sheet
- Cash Flow Statement

Luego, los datos limpios fueron exportados como CSV y cargados en PostgreSQL.

**Flujo del proyecto:**

`SEC EDGAR → XBRL → Power Query → PostgreSQL → SQL → Power BI`

![Power Query Transformation](screenshots/03_power_query_transformation.png)

Los archivos utilizados se encuentran disponibles en las carpetas `data/raw/` y `data/clean/`.

---

## Análisis con SQL

Sobre las tablas de PostgreSQL se desarrollaron consultas orientadas a analizar:

1. Evolución de Revenue y crecimiento interanual.
2. Gross Profit, Operating Income y Net Income.
3. Net Income vs Operating Cash Flow.
4. Operating Cash Flow vs CapEx.
5. Evolución de la situación financiera.
6. Stock-Based Compensation.

![SQL Revenue Analysis](screenshots/05_sql_revenue_analysis.png)

Entre los principales resultados se observó una fuerte aceleración del crecimiento, el paso de pérdidas a resultados positivos desde 2023 y una mejora significativa en la generación de caja.

---

## Modelo y Métricas en Power BI

Las tablas finales de PostgreSQL fueron conectadas a Power BI y relacionadas mediante una dimensión común de años (`Dim_Year`).

![Power BI Data Model](screenshots/06_powerbi_data_model.png)

También se desarrollaron medidas DAX para construir indicadores como:

- Revenue Growth
- Gross, Operating y Net Margin
- Operating Cash Flow
- Free Cash Flow
- ROA y ROE
- EBITDA
- Current Ratio
- Working Capital
- Equity / Assets
- Stock-Based Compensation

Estas métricas alimentan los KPIs y gráficos utilizados en las tres páginas del dashboard.

---

## Dashboard en Power BI

El dashboard fue dividido en tres páginas.

### 1. Overview

Presenta una lectura rápida de:

- Revenue
- Net Income
- Operating Cash Flow
- Free Cash Flow
- márgenes;
- crecimiento;
- principales Investment Signals.

La captura completa del Overview se muestra al inicio del README.

### 2. Profitability & Growth

Profundiza el análisis de crecimiento y rentabilidad mediante Revenue Growth, márgenes, Gross Profit, Operating Income, Net Income, ROA, ROE y EBITDA.

![Profitability & Growth Dashboard](screenshots/08_dashboard_profitability_growth.png)

### 3. Financial Position & Cash Flow

Analiza liquidez, capital de trabajo, estructura patrimonial, Free Cash Flow y Stock-Based Compensation.

![Financial Position & Cash Flow Dashboard](screenshots/09_dashboard_financial_position.png)

---

## Principales Insights

- **Crecimiento:** Revenue aumentó de **USD 1,54B en 2021 a USD 4,48B en 2025**, con un crecimiento interanual de **56,18% en 2025**.

- **Rentabilidad:** Palantir pasó de pérdidas operativas y netas en 2021-2022 a resultados positivos desde 2023. En 2025 alcanzó aproximadamente **USD 1,41B de Operating Income** y **USD 1,63B de Net Income**.

- **Generación de caja:** Operating Cash Flow alcanzó aproximadamente **USD 2,13B** y Free Cash Flow **USD 2,10B en 2025**, mostrando una fuerte capacidad de generación de fondos.

- **Solidez financiera:** en 2024 la compañía presentó un **Current Ratio de 5,96**, Working Capital de aproximadamente **USD 4,94B** y un **Equity / Assets de 78,9%**.

- **Riesgo a monitorear:** Stock-Based Compensation continúa siendo relevante por su posible impacto sobre la dilución de los accionistas, aunque hacia el final del período el Free Cash Flow creció considerablemente más rápido.

---

## Metodología y Limitaciones

- Income Statement y Cash Flow abarcan **2021-2025**.
- Balance Sheet se analiza entre **2021-2024**, según la disponibilidad de los conceptos XBRL seleccionados.
- ROA y ROE se calcularon utilizando activos y patrimonio promedio, por lo que se muestran entre **2022-2024**.
- EBITDA fue calculado como **Operating Income + Depreciation & Amortization** y no corresponde al Adjusted EBITDA informado por Palantir.
- Free Cash Flow fue calculado como **Operating Cash Flow - CapEx**.
- Total Liabilities se interpreta como Pasivo Total y no como deuda financiera.

---

## Conclusión

Durante el período analizado, Palantir mostró una combinación de **fuerte crecimiento, mejora de rentabilidad, expansión de márgenes, creciente generación de Free Cash Flow y una posición financiera sólida**.

El Stock-Based Compensation continúa siendo uno de los principales indicadores a monitorear desde la perspectiva del accionista.

El proyecto se concentra en el análisis financiero del negocio. Una posible extensión futura sería incorporar **valuación, comparación con competidores y un modelo DCF**.

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
