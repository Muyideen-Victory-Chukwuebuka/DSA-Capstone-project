create database KMS

select * from kms



select [product_category], count (distinct customer_name) as Totalpurchase 
from KMS
group by [product_category]
order by Totalpurchase desc

select customer_name,
sum(order_quantity)as totalsales
from kms
group by customer_name
order by totalsales desc


select * from kms

select customer_name, product_category, product_name,
sum(order_quantity) as total_quantity,
sum(sales) as total_sales,
sum(Profit) as total_Profit
from kms
where Customer_Name in (select Customer_Name
from kms
group by Customer_Name)
group by Customer_Name, Product_Category, Product_Name
order by Customer_Name, total_sales desc 

---- subquaries ----
---- t0p 3-----
select top 3 * from (
		select region, Sales
		from KMS) as totalsales 
		order by Sales desc

		--- bottom 3---
		select top 3 * from (
		select region, Sales
		from KMS) as totalsales 
		order by Sales desc

		select * from kms

		select top 3 * from (
		select region, Sales
		from KMS) as totalsales 
		order by Sales desc

select top 3
Ship_Mode, Shipping_Cost
from KMS
order by Shipping_Cost desc

---- small bussiness segment 
select
Customer_Segment, Sales
from KMS
order by Sales desc

--- total sales ----

select [Customer_Segment], count (distinct Sales) as Totalsales
from KMS
group by [Customer_Segment]
order by Totalsales desc

 --- highest sales----

select * from (
		select Customer_Name, Sales, Customer_Segment
		from KMS) as totalsales
		order by Sales desc

		----date range---
		select * from (
		select Customer_Name, Order_Quantity, Customer_Segment, Order_Date
		from KMS) as totalsales
		where Order_Date between '2009-01-01' and '2012-12-01'
		order by Order_Date desc

		select * from KMS

		--- profit--
		select * from (
		select Customer_Name, Sales, Customer_Segment, Profit
		from KMS) as totalsales
		order by Profit desc

		---- returned item and segment -----