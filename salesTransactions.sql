 --  SELECT * FROM sales.transactions limit 5;

-- total sales transactions in 2019. 
select sum(sales.transactions.sales_amount) from sales.transactions 
inner join sales.date on sales.transactions.order_date = sales.date.date 
where sales.date.year = 2019;

-- total sales transactions in 2020. 
select sum(sales.transactions.sales_amount) from sales.transactions 
inner join sales.date on sales.transactions.order_date = sales.date.date 
where sales.date.year = 2020;

-- total sales transactions in 2020 and in market code 001  
select sum(sales.transactions.sales_amount) from sales.transactions 
join sales.date on sales.transactions.order_date = sales.date.date 
where sales.date.year=2020 
and sales.transactions.market_code="Mark001"; 

-- distinct list of prodcuts sold in Mark001 
select distinct product_code from sales.transactions 
where market_code="Mark001"; 





