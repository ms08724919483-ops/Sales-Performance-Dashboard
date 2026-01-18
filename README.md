 # 📊Sales Performance Dashboard (2024) | Excel, SQL, Power BI

Interactive dashboard to analyze sales performance across **4 regions** and **12 months** using **48,000+ sales records**. Focused on trend discovery, return behavior, and product contribution to support faster business decisions.

---

## 📌 Project Highlights
- Analyzed **48,000+ sales records** across **North, South, East, West** (Jan–Dec 2024)
- Identified **growth trends** and **seasonal patterns** through monthly revenue + MoM comparisons
- Cleaned and validated raw data in **Excel** (missing dates, invalid values, standardization)
- Built **Power BI dashboard** with interactive filters (Region, Channel, Month)
- Designed **10+ KPIs** including **MoM Growth**, **Return Rate**, and **Product Contribution**

---

## 🧰 Tools Used
- **Excel** (data cleaning, validation, calculated columns)
- **SQL (MySQL 8+)** (KPI queries, aggregation, trend analysis)
- **Power BI** (data model, DAX measures, interactive visuals)

---

## 📂 Repository Structure
Sales-Performance-Dashboard/
│── README.md          ⭐ (most important)
│
├── data/
│   ├── raw/
│   │   └── fact_sales_raw.csv
│   └── cleaned/
│       └── fact_sales_cleaned.xlsx
│
├── sql/
│   └── kpi_queries.sql
│
├── powerbi/
│   ├── Sales_Dashboard.pbix
│   └── screenshots/
│       └── dashboard_overview.png



---

## 🧼 Data Cleaning (Excel)
Performed cleaning and validation before analysis:
- Filled missing dates and standardized format to **YYYY-MM-DD**
- Removed invalid rows (negative quantity, zero/blank prices, out-of-range discounts)
- Fixed inconsistent region values (e.g., `N0rth → North`)
- Created calculated fields: **Gross Amount**, **Discount Amount**, **Net Revenue**

> Output used for analysis: `data/cleaned/fact_sales_cleaned.xlsx`

---

## 📊 KPIs Included (10+)
- Total Revenue  
- Total Orders  
- Total Units Sold  
- Average Order Value (AOV)  
- Month-over-Month (MoM) Growth %  
- Revenue Trend (Monthly)  
- Return Rate %  
- Revenue by Region / City  
- Product Contribution %  
- Channel Mix (Online/Retail/Distributor)  
- Top Customers by Revenue  

---

## 📈 Power BI Dashboard Pages (Suggested)
1. **Executive Summary** — Revenue, Orders, MoM Growth, Return Rate, AOV  
2. **Trends** — Monthly revenue trend + MoM growth  
3. **Region Performance** — Revenue + Return rate by region/city  
4. **Product Performance** — Top products + contribution analysis  
5. **Customer Insights** — Top customers + segment performance  

---

## 🔎 Key Insights (Example)
- Revenue shows clear seasonality with spikes during **Oct–Nov** (festive season)
- Certain regions consistently outperform others in revenue contribution
- A small set of products contributes a large share of total revenue (Pareto effect)
- Return rates vary by region and product category, enabling targeted action

---

## 🖼️ Dashboard Preview
Add screenshots here:

![Dashboard Overview](powerbi/screenshots/dashboard_overview.png)  
![MoM Trend](powerbi/screenshots/trends_mom.png)  
![Product Contribution](powerbi/screenshots/product_contribution.png)

---

## ▶️ How to Run / Use
### Option A: Power BI (recommended)
1. Open `powerbi/Sales_Dashboard.pbix`
2. Update dataset path if needed (Data source settings)
3. Refresh visuals

### Option B: SQL KPIs
1. Import cleaned data into MySQL
2. Run queries from `sql/kpi_queries.sql` to compute KPI tables/views

---

## 📬 Contact
**Manish Sharma**  
LinkedIn: <your-link-here>  
GitHub: <your-link-here>

