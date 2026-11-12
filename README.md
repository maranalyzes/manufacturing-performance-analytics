# manufacturing-performance-analytics
Industrial manufacturing performance and predictive maintenance analysis using Python, SQL and Power BI.

# Manufacturing Performance Analytics
### Predictive Maintenance & Operational Performance

**Data Analytics Portfolio Project | Project 01**

## Project Overview

This project explores the AI4I 2020 Predictive Maintenance dataset to identify patterns associated with machine failures and investigate how operating conditions relate to maintenance risk.

The objective is to transform manufacturing data into meaningful insights that could support preventive maintenance planning and operational decision-making.

## Business Objectives

- Assess data quality and dataset structure.
- Identify the most frequently observed machine failure modes.
- Compare operating conditions between failed and non-failed records.
- Investigate failure rates across tool wear and torque ranges.
- Translate analytical findings into potential business recommendations.

## Dataset

**AI4I 2020 Predictive Maintenance Dataset**

Source: [UCI Machine Learning Repository](https://archive.ics.uci.edu/dataset/601/ai4i+2020+predictive+maintenance+dataset)

- 10,000 observations
- 14 variables
- Synthetic predictive maintenance dataset

## Tools & Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- Google Colab
- GitHub

## Key Findings

**1. Machine Failure Modes**

Heat Dissipation Failure (HDF) was the most frequently observed failure mode, with 115 records.

**2. Operating Conditions**

Failed-machine records showed higher average torque and tool wear, alongside lower rotational speed.

**3. Tool Wear**

The 201–250 minute tool wear group showed a 15.26% failure rate, compared with 2.17% in the 0–50 minute group.

**4. Torque**

The 60–80 Nm group showed the highest observed failure rate (41.95%). The 0–20 Nm group also showed an elevated rate (14.59%).

## Business Recommendations

- Monitor tool wear as part of preventive maintenance planning.
- Investigate unusual torque readings.
- Review heat dissipation and operating conditions.
- Explore multiple machine parameters to support maintenance decisions.

## Project Structure

```text
manufacturing-performance-analytics/
├── data/
│   └── raw/
├── notebooks/
│   └── 01_exploratory_data_analysis.ipynb
├── sql/
├── powerbi/
├── reports/
├── images/
├── README.md
└── requirements.txt
```

## Limitations

- The dataset is synthetic and does not represent actual production operations.
- The findings describe associations, not causal relationships.
- Some operating ranges contain relatively few observations.
- Further validation with real industrial data would be necessary.

## Project Status

**Phase 1 — Exploratory Data Analysis: Completed**

**Phase 2 — SQL Analysis: Planned**

**Phase 3 — Power BI Dashboard: Planned**

## Author

Data Analytics Portfolio Project by [maranalyzes](https://github.com/maranalyzes).

