# Poverty Measurement Analysis Using Stata
**EKN 310 — Public Economics and Fiscal Policy | University of Pretoria | 2026**

## Overview
This project applies quantitative poverty measurement techniques to a household income dataset using Stata. It covers the full analytical workflow from data import and variable construction through to policy interpretation, using both manual calculations and the DASP (Distributive Analysis Stata Package) module for verification.

## Research Question
How can we measure the incidence, depth, and severity of poverty across households, and what do regional disparities in poverty indicators imply for public policy?

## Dataset
A cross-sectional household dataset containing 6 observations across 4 variables:
- `income` — total household income
- `householdsize` — number of household members
- `region` — geographic region (A or B)
- Derived: `pcinc` — per capita income (constructed in analysis)

## Methods & Tools
- **Software:** Stata (with DASP module)
- **Techniques:**
  - Per capita income construction
  - Descriptive statistics (mean, standard deviation, confidence intervals)
  - Two-sample t-test for regional income comparison
  - FGT (Foster-Greer-Thorbecke) poverty indices: α = 0, 1, and 2
  - DASP `ifgt` command for automated FGT estimation
  - Regional poverty decomposition

## Key Findings

| Measure | Value |
|---|---|
| Mean per capita income | 169.17 |
| 95% Confidence Interval | [-34.61, 372.94] |
| Headcount Ratio (H) | 0.50 |
| Poverty Gap Index (PG) | 0.158 |
| Squared Poverty Gap (PG²) | 0.052 |
| Region A Headcount Ratio | 0.75 |
| Region B Headcount Ratio | 0.00 |

- 50% of households fall below the poverty line of 100
- Region A is significantly poorer than Region B (mean incomes: 88.75 vs 330)
- The t-test (t = -1.67, p = 0.1697) indicates a large income gap between regions, though the small sample limits statistical significance
- DASP results confirmed manual FGT calculations exactly

## Policy Implications
- Region A requires targeted intervention: job creation, skills development, social grants, and improved access to education and healthcare
- Region B should focus on maintaining income stability and preventing future poverty
- An increase in the poverty line from 100 to 150 would increase both the headcount ratio and poverty gap, highlighting the sensitivity of poverty statistics to threshold assumptions

## Files
| File | Description |
|---|---|
| `u23908972_Lutendo_Winnie_Lidzebe_individual_assignment_.do` | Stata do-file with all commands |
| `u23908972_Lutendo_Winnie_Lidzebe_individual_assignment.log` | Full Stata output log |
| `u23908972_Lutendo_Winnie_Lidzebe_individual_assignment.dta` | Stata dataset |
| `Exceldataset.xlsx` | Original raw data |
| `individual_assignment_WORD_document.docx` | Written analysis and interpretation |

## Author
**Lutendo Winnie Lidzebe** | u23908972
BCom Economics, University of Pretoria
# stata-poverty-analysis
