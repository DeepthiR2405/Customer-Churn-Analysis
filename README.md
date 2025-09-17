# Customer-Churn-Analysis
End-to-end customer churn prediction project using MySQL, Python, and Power BI. Includes RFM analysis, churn flag creation, machine learning modeling, and interactive dashboards to identify at-risk customers, improve retention strategies, and support data-driven decisions.
📊 Customer Churn Prediction & Analysis
📌 Project Overview

This project focuses on analyzing and predicting customer churn for a SaaS-based business using SQL, Python, and Power BI. It integrates data preprocessing, feature engineering, machine learning modeling, and dashboard visualization to identify churn patterns and support data-driven decision-making.

By combining SQL-based data modeling, Python predictive analytics, and Power BI dashboards, this end-to-end project demonstrates real-world data analytics and business intelligence workflows.

🛠️ Tech Stack

Database & Querying: MySQL (Workbench)

Data Analysis & ML: Python (Pandas, NumPy, Scikit-learn, Matplotlib, Seaborn)

Visualization & BI: Power BI

Notebook: Jupyter Notebook

📂 Project Components

SQL Querying (SQL Query.sql)

Created database saas_churn and tables (sales_data, customer_summary).

Designed RFM metrics (Recency, Frequency, Monetary) and customer-level aggregations.

Added churn flag:

1 → Customer inactive for >180 days.

0 → Active customer.

Python Analysis & Prediction (Customer_Churn_Prediction.ipynb)

Imported customer summary dataset.

Performed data cleaning & feature engineering.

Encoded categorical variables and built a churn prediction model using machine learning (Logistic Regression, Random Forest, etc.).

Evaluated model performance with accuracy, precision, recall, and F1-score.

Generated visual insights on churn drivers.

Power BI Dashboard (Customer Churn Analysis.pbix)

Interactive dashboard highlighting:

Customer churn rates by industry, segment, country, and region.

RFM distribution across customers.

Churn vs Non-Churn comparison on revenue, frequency, and product usage.

Provided a business-focused view for decision-makers.

🚀 Key Features

📌 End-to-end ETL → ML → BI pipeline.

📊 RFM Analysis to segment customers.

🤖 Machine Learning model to predict churn probability.

📉 Business insights into high-risk customers and revenue impact of churn.

📈 Interactive Power BI dashboard for real-time tracking.

📊 Sample Dashboard

(Screenshot placeholder – add an image of your Power BI dashboard here)

📑 How to Run

SQL Setup

Run SQL Query.sql in MySQL Workbench.

Import your sales dataset into the sales_data table.

Python Analysis

Open Customer_Churn_Prediction.ipynb in Jupyter Notebook.

Run the notebook to preprocess data, train models, and generate insights.

Power BI Dashboard

Open Customer Churn Analysis.pbix in Power BI Desktop.

Refresh data connection to link with your MySQL database or exported CSV.

🎯 Business Impact

Helps reduce churn by identifying at-risk customers.

Supports marketing strategies through customer segmentation.

Improves customer lifetime value (CLV) and retention rate.

📝 Author

👩‍💻 Developed by Deepthi Sindhe

Skills Used: SQL | Python | MySQL Workbench | Scikit-learn | Power BI

Domain: SaaS Analytics, Customer Retention, Predictive Modeling
