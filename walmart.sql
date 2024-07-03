-- Which branch sold more products than average product sold?
select branch,sum(quantity) as avg_product from data
group by branch
having sum(Quantity)>(select avg(quantity) from data)
order by avg_product desc
-- What is the most common product line by gender?
select distinct(product_line),count(gender) as total_cnt from data 
group by product_line
order by total_cnt desc
-- What is the average rating of each product line?
select product_line,avg(Rating) from data
group by product_line
order by avg(Rating) desc
