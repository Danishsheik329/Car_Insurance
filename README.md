
# Car Insurance-Dashboard
### 1.	Project Title / Headline
Car Insurance Data Insights Dashboard<br>
An interactive analytical dashboard that visualizes car insurance performance across multiple dimensions—focusing on claim trends, customer demographics, vehicle characteristics, and policy behavior to uncover data-driven insights for business decision-making.
### 2.	Short Description / Purpose
The Car Insurance Dashboard is a Power BI report designed to help insurance analysts, business managers, and policy planners explore how various factors—such as customer education, age, marital status, and vehicle use—affect total claims and total policy counts.
This tool enables better understanding of customer patterns, helps optimize policy pricing, and supports risk analysis.
### 3.	Tech Stack
List the key technologies used to build the dashboard.

Example:
The dashboard was built using the following tools and technologies:<br>
•  Power BI Desktop – Used for building the interactive dashboard and visuals.
•  SQL – Used for data retrieval, aggregation, and applying window and aggregate functions for calculated results.
•  Microsoft Excel – Used for data cleaning, removing duplicates, handling missing values, and preparing structured datasets.
•  Data Modeling – Relationships established between customer, vehicle, and policy tables for cross-filtering and KPI calculations.
•  File Formats – .pbix for Power BI report, .csv for dataset storage, and .png for dashboard preview.

### 4.	Data Source
Source: Mock Car Insurance Dataset (manually curated & cleaned using MS Excel).
The dataset contains policy details, claim amounts, and customer information such as:
• Education level
• Age group
• Marital status
• Vehicle make/company
• Zone (Urban/Rural)
• Car use type (Private/Commercial)

Claim amount and total policies.


### 5.	Features / Highlights
•	Business Problem<br>
Insurance companies often struggle to analyze how customer demographics and vehicle features impact claim frequency and total claim amounts.
Key questions include:
Which education group files the most claims?
Which car companies or use types lead to higher claim costs?
How do age group and marital status affect claim patterns?

•	Goal of the Dashboard<br>
To create an interactive Power BI tool that:
Visualizes total claim amount and total policies by key dimensions.
Helps management assess high-risk customer groups.
Identifies trends in claim behavior and policy distribution.
Supports pricing, marketing, and policy restructuring decisions.

•	Walkthrough of Key Visuals<br>
Key KPIs (Top Left)
Total Claim Amount: $187.8M
Total Policies: 37.5K
Average Claim Frequency: 0.5
Average Claim Amount: $5K
Male & Female Policyholders: 18.7K / 18.8K

-Dynamic Measure Filter Panel
A dynamic slicer enables users to toggle between Total Claim Amount and Total Policies, updating all visuals in real time.
This helps compare customer behavior and financial outcomes across multiple business aspects.

-Claim Amount & Total Policies by Car Use (Donut Chart)
Shows both Claim Amount and Total Policies distribution across Private and Commercial car usage.
Private cars hold the majority share in both policies and claims, indicating strong engagement from individual customers.

-Claim Amount & Total Policies by Car Company (Bar Chart)
Ranks top manufacturers such as Ford, Chevrolet, Toyota, Dodge, and GMC.
Higher policies and claims for these brands indicate popularity and maintenance cost exposure.

-Claim Amount & Total Policies by Coverage Zone (Donut Chart)
Compares data across Urban, Highly Urban, Suburban, and Rural zones.
Urban and highly urban areas lead in both policies and claims, aligning with higher population density and accident probability.

-Claim Amount & Total Policies by Age Group (Bar Chart)
Displays performance by customer age group (15–25, 26–35, 36–45, 46–55, 55+).
Ages 35–65 record higher claims and policy counts — representing the most financially active and vehicle-owning demographic.

-Claim Amount & Total Policies by Car Year (Line Chart)
Tracks claim and policy trends across manufacturing years (1990–2020).
Post-1990 models show steady increases in both policies and claim values, suggesting modern vehicles are more insured and costlier to repair.

-Claim Amount & Total Policies by Kids Driving (Bar Chart)
Highlights differences between adult and kid drivers.
Adults dominate both total claims and policy numbers, while minors contribute minimally — likely due to licensing and legal limits.

-Claim Amount & Total Policies by Education (Donut Chart)
Breaks down education-wise distribution.
Bachelors have the highest number of policies and total claims, followed by High School graduates — indicating higher insurance awareness among educated groups.

-Claim Amount & Total Policies by Education & Marital Status (Matrix Table)
Combines both dimensions for deeper segmentation.
Married and single individuals with Bachelor or High School education levels show strong engagement in both claims and policy ownership.

•	Business Impact & Insights<br>
Customer Segmentation: Bachelors and high school graduates hold the largest share in total policies and claims.
Vehicle Insights: Ford and Chevrolet contribute the highest claim amounts, signaling higher repair or risk costs.
Zone Analysis: Urban zones show higher claim frequency, suggesting concentrated policyholders and higher vehicle usage.
Age Factor: Customers aged 35–55 file more claims, indicating this group’s greater exposure to vehicle use.
Business Optimization: Helps the company design targeted premium structures and improve risk management strategies.
Financial Trend: Claim amounts have shown steady growth post-1990, reflecting market expansion and policy diversification

### 6.	Screenshots / Demos
Dashboard Looks like this: ![Dashboard Preview](https://github.com/Danishsheik329/Car_Insurance/blob/main/Screenshot%202025-11-09%20152013.png)
