# Snowflake Sales Analytics Data Transformation Pipeline use Case

## Overview
This project implements a data transformation pipeline for sales analytics. The goal is to consolidate and transform sales data from multiple sources into a unified format suitable for analysis. The pipeline utilizes dbt (data build tool) for data transformation and FiveTran for data extraction and loading.

## Objectives
1. **Data Transformation Techniques**: Clean and prepare the raw sales data by removing duplicates and normalizing date formats.
2. **Installing dbt**: Set up dbt and configure a simple project.
3. **Version Control with GitHub**: Use GitHub for version control to manage the dbt project.
4. **Building Sample Models in dbt**: Create a basic dbt model to transform the raw sales data.
5. **Monitoring Alerts**: Implement basic monitoring and alerting mechanisms.

## Project Structure
sales-analytics-pipeline/
│
├── dbt_project.yml          # Configuration file for dbt project
├── models/                  # Directory for dbt models
│   ├── sales_data_transformation.sql  # dbt model for transforming sales data
│
├── snapshots/               # Directory for dbt snapshots (if applicable)
│
├── tests/                   # Directory for dbt tests
│
└── README.md                # Project documentation
## Installation

### Prerequisites
- Python 3.7 or higher
- pip (Python package manager)

### Steps to Install dbt
1. Install dbt using pip:
bash
pip install dbt-core
2. Create a new dbt project:
bash
dbt init sales_analytics_pipeline
3. Navigate to the project directory:
bash
cd sales_analytics_pipeline
4. Configure the `dbt_project.yml` file to set up your project settings.

## Version Control with GitHub
1. Initialize a Git repository:
bash
git init
2. Add project files to the repository:
bash
git add .
3. Commit the initial project setup:
bash
git commit -m "Initial project setup"
4. Push to GitHub:
bash
git remote add origin <your_github_repo_url>
git push -u origin main
## Building Sample Models in dbt
1. Write a dbt model to transform the raw sales data into a structured format in the `models/` directory.

2. Run the dbt model:
bash
dbt run
3. Validate the results to ensure the transformation was successful.

## Monitoring Alerts
- Set up basic email notifications for pipeline failures using the FiveTran dashboard.

## Deliverables
1. A fully functional data transformation pipeline that consolidates and cleans sales data from multiple sources.
2. A dbt project with well-documented models and configurations.
3. A GitHub repository with version-controlled dbt project files.
4. A FiveTran setup with automated data extraction and loading.
5. A monitoring and alerting system to track the status of data pipelines.

## Submission
- Submit the GitHub repository link containing the dbt project.
- Provide access to the FiveTran dashboard and monitoring alerts.
- Include a report detailing the implementation process, challenges faced, and how they were resolved.

## License
This project is licensed under the sankara Narayana License - see the [LICENSE](LICENSE) file for details.
## Notes
1. Replace <your_github_repo_url> with the actual URL of your GitHub repository.
2. You can add more details to the README as needed, especially in the "Building Sample Models in dbt" section, to provide specific instructions or examples related to your models.
3.Make sure to include any additional files or directories that are part of your project structure.

dbt Project Documentation
Overview
This documentation provides an overview of the dbt project, including the models and sources used for data transformation and analysis within the Snowflake data warehouse.
Project Metadata
dbt Version: 1.8.7
Generated At: 2024-10-06
Database: SNOWFLAKEFIVETRANSDBTRAINING
Models
1. raw_onlineshop_orders_sale
Type: BASE TABLE
Schema: SNOWFLAKEFIVETRANSDBTRAINING
Database: SNOWFLAKEFIVETRANSDBTRAINING
Owner: ACCOUNTADMIN
Columns:
ORDER_DATE: DATE - The date of the order.
TOTAL_ORDERS: NUMBER - The total number of orders.
TOTAL_SALES: NUMBER - The total sales amount.
Statistics:
Last Modified: 2024-10-06 08:37 UTC
Approximate Size: 1536 bytes
Row Count: 48
Has Stats: Yes
2. my_second_dbt_model
Type: BASE TABLE
Schema: SNOWFLAKEFIVETRANSDBTRAINING
Database: SNOWFLAKEFIVETRANSDBTRAINING
Owner: ACCOUNTADMIN
Columns:
ID: NUMBER - The primary key for this table.
Statistics:
Last Modified: 2024-10-06 08:37 UTC
Approximate Size: 1024 bytes
Row Count: 1
Has Stats: Yes
3. raw_stripe_payments
Type: BASE TABLE
Schema: SNOWFLAKEFIVETRANSDBTRAINING
Database: SNOWFLAKEFIVETRANSDBTRAINING
Owner: ACCOUNTADMIN
Columns:
ID: NUMBER - The primary key for this table.
ORDER_ID: NUMBER - The ID of the associated order.
PAYMENT_METHOD: TEXT - The method of payment used.
AMOUNT: NUMBER - The payment amount.
Statistics:
Last Modified: 2024-10-06 08:37 UTC
Approximate Size: 2560 bytes
Row Count: 113
Has Stats: Yes
4. my_first_dbt_model
Type: BASE TABLE
Schema: SNOWFLAKEFIVETRANSDBTRAINING
Database: SNOWFLAKEFIVETRANSDBTRAINING
Owner: ACCOUNTADMIN
Columns:
ID: NUMBER - The primary key for this table.
Statistics:
Last Modified: 2024-10-06 08:37 UTC
Approximate Size: 1024 bytes
Row Count: 2
Has Stats: Yes
5. raw_onlineshop_orders
Type: BASE TABLE
Schema: SNOWFLAKEFIVETRANSDBTRAINING
Database: SNOWFLAKEFIVETRANSDBTRAINING
Owner: ACCOUNTADMIN
Columns:
ID: NUMBER - The primary key for this table.
USER_ID: NUMBER - The ID of the user who placed the order.
ORDER_DATE: DATE - The date the order was placed.
STATUS: TEXT - The status of the order.
Statistics:
Last Modified: 2024-10-06 08:37 UTC
Approximate Size: 2560 bytes
Row Count: 99
Has Stats: Yes
Sources
1. RAW_STRIPE_PAYMENTS
Type: BASE TABLE
Schema: SNOWFLAKEFIVETRANSDBTRAINING
Database: SNOWFLAKEFIVETRANSDBTRAINING
Owner: ACCOUNTADMIN
Columns:
ID: NUMBER - The primary key for this table.
ORDER_ID: NUMBER - The ID of the associated order.
PAYMENT_METHOD: TEXT - The method of payment used.
AMOUNT: NUMBER - The payment amount.
Statistics:
Last Modified: 2024-10-06 08:37 UTC
Approximate Size: 2560 bytes
Row Count: 113
Has Stats: Yes
2. RAW_ONLINESHOP_ORDERS
Type: BASE TABLE
Schema: SNOWFLAKEFIVETRANSDBTRAINING
Database: SNOWFLAKEFIVETRANSDBTRAINING
Owner: ACCOUNTADMIN
Columns:
ID: NUMBER - The primary key for this table.
USER_ID: NUMBER - The ID of the user who placed the order.
ORDER_DATE: DATE - The date the order was placed.
STATUS: TEXT - The status of the order.
Statistics:
Last Modified: 2024-10-06 08:37 UTC
Approximate Size: 2560 bytes
Row Count: 99
Has Stats: Yes