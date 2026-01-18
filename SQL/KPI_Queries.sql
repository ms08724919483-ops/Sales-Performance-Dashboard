-- -----Monthly Revenue---------
Select 
	Date_format(order_date, "%y-%m-01") as Month,
    sum(net_revenue) as Total_Revenue
From fact_sales_raw
Group by Month
Order by Month;


-- ------Regional Performance-----------
Select
	region,
    sum(net_revenue) as Total_Sales
From fact_sales_raw
Group by region
Order by Total_Sales DESC;


-- ----Revenue Rate BY Region-------------
Select
	Region,
    sum(net_revenue) as Revenue,
    Round((sum(net_revenue)/(Select sum(net_revenue) From fact_sales_raw))* 100,2) as Region_Revenue_Rate
from fact_sales_raw
Group by Region;

-- -------Return Rate by Region----------
Select
	Region,
    Round(sum(returned) / Count(*) * 100, 2) as Region_Return_Rate
From fact_sales_raw
group by Region
Order by Region_Return_Rate;


-- ----Product Contribution Rate------------
Select 
	p.product as Product_Name,
    p.Category,
    sum(s.net_revenue) as Total_Sales,
    Round(sum(s.net_revenue) / (Select sum(net_revenue) From fact_sales_raw) * 100, 2) as Contribution_pct
From fact_sales_raw as s
Join dim_product as p on p.product_key = s.product_key
Group by p.product, p.category;

-- -----MoM Growth(%) ---------
With Mom as (
	Select
		date_format(order_date, "%y-%m-01") as Month_Start,
		sum(net_revenue) as Revenue
	From fact_sales_raw
	Group by Month_Start
    )
    Select
		Month_Start,
        Revenue,
        Round(((Revenue - LAG(Revenue) Over (Order By Month_Start)) / nullif(LAG(Revenue) Over (Order By Month_Start), 0) * 100), 2) as MoM_Growth
	From MoM
    Order by Month_Start;
    
-- -----Top 10 Customer By Revenue---------
Select
	c.customer_key,
    c.segment,
    sum(s.net_revenue) as Total_Revenue
From fact_sales_raw as s
Join dim_customer as c on c.customer_key = s.customer_key
Group by c.customer_key, c.segment
Order by Total_Revenue DESC
Limit 10;