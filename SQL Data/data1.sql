SELECT 
    *
FROM
    sales.transactions;



-- how many of currencies
select distinct currency from transactions;
-- number of transactions
select count(*) from transactions;

-- market code of Chennai is Mark001 so lets check out all transactions 
-- from Mark00l(Chennai)
select * from sales.transactions where market_code = 'Mark001';

-- total amount of sales = 18227503
select sum(transactions.sales_amount) from sales.transactions where market_code = 'Mark001';

-- maximum sales_amount in chennai = 393866
select max(transactions.sales_amount) from sales.transactions where market_code = 'Mark001';

-- maximum sales_qty in chennai = 1259
select max(transactions.sales_qty) from sales.transactions where market_code = 'Mark001';

-- product sold in chennai
select distinct product_code from transactions where market_code = 'Mark001';

-- January-2021 Transactions sales amount = 25659711
select sum(transactions.sales_amount) from transactions inner join date 
ON transactions.order_date = date.date where date.year = '2020' and date.month_name='January';

-- Total sales amount in Chennai by January 2020 = 2463024
select sum(transactions.sales_amount) from transactions inner join date
ON transactions.order_date = date.date WHERE date.year=2020 and transactions.market_code='Mark015';

select avg(transactions.profit_margin) from transactions inner join date
on transactions.order_data = date.date where date.year=2020 and customer_code='Mark015';

select sum(transactions.profit) from transactions inner join date on transactions.order_date=date.date
where data.year=2020 and customer_code='Mark015';
