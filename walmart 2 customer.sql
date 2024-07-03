-- How many unique customer types does the data have?
SELECT distinct (customer_type) FROM data
-- How many unique payment methods does the data have?
select distinct(payment) from data
-- What is the most common customer type?
SELECT distinct(Customer_type),count(Customer_type) FROM data
group by Customer_type
-- Which customer type buys the most?
select customer_type,count(quantity) as total_quantity from data
group by customer_type
-- What is the gender of most of the customers?
SELECT DISTINCT Customer_type, Gender, COUNT(Quantity) AS total_quantity
FROM data
GROUP BY Customer_type, Gender
ORDER BY total_quantity DESC;
-- What is the gender distribution per branch?
SELECT distinct(branch), Gender FROM data
order by branch
-- Which time of the day do customers give most ratings?
select distinct(rating),customer_type,Time_0f_day from data
order by rating desc
-- Which time of the day do customers give most ratings per branch?
SELECT distinct branch,rating,Time_0f_day,time from data
order by rating desc
-- Which day fo the week has the best avg ratings?
SELECT day_name,avg(rating) from data
group by day_name
order by avg(Rating) desc
-- Which day of the week has the best average ratings per branch?
SELECT branch,day_name,avg(rating) from data
group by branch,day_name
order by avg(Rating) desc
limit 1