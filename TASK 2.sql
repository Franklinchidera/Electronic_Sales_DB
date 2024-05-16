create database task2;
use task2;

select * from sales;

#1 Retrieve the total number of orders placed
select sum(quantity_ordered) as total_orders from sales;

#2 Calculate the total revenue generated from all orders 
select sum(sales) as total_revenue from sales;

#3 List the top 10 best-selling products
select product, count(product) as best_selling_products from sales 
group by product
order by best_selling_products desc limit 10;

#4 Find the total quantity of each product sold 
select product, sum(quantity_ordered) as quantity_sold from sales
group by product;

#5 Identify the customers who made the highest number of purchases 
select order_ID, product, purchase_address, city, sum(quantity_ordered) as purchases from sales 
group by order_ID, product, purchase_address, city
order by purchases desc limit 1;

#6 Determine the average order value
select avg(quantity_ordered) from sales ;

#7 List all orders placed on a specific date 
select * from sales
where order_date = '12/13/2019';

#8 Find the customers who have not placed any orders yet
select * from sales
where quantity_ordered = 0;

#9 Identify the city with the highest total sales revenue 
select city, sum(sales) as Highes_revenue from sales
group by city 
order by Highes_revenue desc limit 1; 

#10 Find the average qauntity of products ordered per order 
select order_ID, avg(quantity_ordered) from sales 
group by order_ID;

#11 Identify the peak hours for order placement 
select order_ID, count(order_date) as order_placement from sales
group by order_ID
order by order_placement desc limit 1
;

#12 List the products that have never been ordered 
select * from sales
where quantity_ordered = 0;

# 13 Find the total number of orders placed in each month 
select order_date, sum(quantity_ordered) from sales 
group by order_date;





