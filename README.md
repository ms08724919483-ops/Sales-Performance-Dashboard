 # 📊 Sales Performance Dashboard (2024) | Excel, SQL, Power BI

Interactive dashboard to analyze sales performance across **4 regions** and **12 months** using **48,000+ sales records**. Focused on trend discovery, return behavior, and product contribution to support faster business decisions.

---

## 📌 Project Highlights
- Analyzed **48,000+ sales records** across **North, South, East, West** (Jan–Dec 2024)
- Identified **growth trends** and **seasonal patterns** through monthly revenue + MoM comparisons
- Cleaned and validated raw data in **Excel** (missing dates, invalid values, standardization)
- Built **Power BI dashboard** with interactive filters (Region, Channel, Month)
- Designed **10 KPIs** including **Revenue Growth**, **Return Rate**, and **Product Contribution**

---

## 🧰 Tools Used
- **Excel** (data cleaning, validation, calculated columns)
- **SQL (MySQL 8+)** (KPI queries, aggregation, trend analysis)
- **Power BI** (data model, DAX measures, interactive visuals)

---

## 📂 Repository Structure
```
Sales-Performance-Dashboard/
│
├── data/
│   ├── fact_sales_raw.csv
│   ├──dim_customer.csv
│   └── dim_product.csv
│
├── sql/
│   └── kpi_queries.sql
│
├── powerbi/
│   ├── Sales_Dashboard.pbix
│   └── screenshots/
│       └── dashboard_overview.png
│── README.md          ⭐ (most important)
```


---

## 🧼 Data Cleaning (Excel)
Performed cleaning and validation before analysis:
- Filled missing dates and standardized format to **YYYY-MM-DD**
- Removed invalid rows (negative quantity, zero/blank prices, out-of-range discounts)
- Fixed inconsistent region values (e.g., `N0rth → North`)
- Created calculated fields: **Gross Amount**, **Discount Amount**, **Net Revenue**


---

## 📊 KPIs Included
- Total Revenue  
- Total Orders  
- Total Units Sold  
- Average Order Value (AOV)  
- Top 3 Types of Customers
- Revenue Trend (Monthly)  
- Return Rate %  
- Revenue by Region  
- Product Contribution
- Revenue by Channel  

---

## 🔎 Key Insights
- Revenue shows clear seasonality with spikes during **Oct–Nov** (festive season)
- Certain regions consistently outperform others in revenue contribution
- A small set of products contributes a large share of total revenue (Pareto effect)
- Return rates vary by region and product category, enabling targeted action

---

## 🖼️ Dashboard Preview

<img width="907" height="505" alt="Dashboard" src="https://github.com/user-attachments/assets/411a7e9d-1312-40c4-a0a5-3012a6924110" />
  





## 📬 Contact
**Manish Sharma**  
📧 [Gmail](manish.sh8724@gmail.com)
LinkedIn: https://www.linkedin.com/in/manish-sharma-552b892b7/  
GitHub: https://github.com/ms08724919483-ops

