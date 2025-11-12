
create Database Excel1;

use excel1;

create table book1(
sale_id int primary key,
product varchar(50),
category varchar(20),
quantity int,
price decimal,
region varchar(10),
salesperson varchar(50),
sales_date date);

insert into book1(sale_id,product,category,quantity,price,region,salesperson,sales_date)values
(1,"Laptop","Electironics",5,50000,"East","John","2024-01-05"),
(2,"Mobile","Electronics",10,20000,"West","Mary","2024-01-10"),
(3,"Chair","Furniture",20,1500,"East","John","2024-02-15"),
(4,"Table","Furniture",8,5000,"North","Steve","2024-02-18"),
(5,"Laptop","Electronics",7,55000,"South","Mary","2024-03-01"),
(6,"Mobile","Electronics",15,18000,"East","John","2024-03-05"),
(7,"Sofa","Furniture",3,25000,"West","Steve","2024-03-20"),
(8,"Laptop","Electronics",2,520000,"North","Mary","2024-04-02"),
(9,"Chair","Furniture",30,1200,"South","John","2024-04-12"),
(10,"Mobile","Electronics",12,22000,"West","Steve","2024-04-15");

Select*from book1;

/* 1.Find Total Sale amount for each region */
select sum(price),region
from book1
group by region;


/* 2. Find total Quantity sold by each salesperson */
select salesperson,sum(price)
from book1
group by salesperson;

select*from book1;


/* 3. Show Categories where total Quantity sold is more then 30  */
SELECT category, 
       SUM(quantity) 
FROM book1
GROUP BY category
HAVING SUM(quantity) > 30;

/* 4.find Total revenue by each catagery */
select category,
sum(price*Quantity)as revenue
from book1
group by category;


/* 5.Find salesperson who sold total quantity more then 20. */
select salesperson,
sum(Quantity)
from book1
group by salesperson
having sum(Quantity)>20;

/*  6. find region wise average sales price */
select region,
avg(price) 
from book1
group by region;

/*  7. find total revenue for each salesperson and only having revenue above 30000.  */
select salesperson,
sum(price) as revenue
from book1
group by salesperson
having revenue>30000;

select*from book1;

/* 8. find how many product each category has. */
select category,
count(product) as Product_sale
from book1
group by category;

/* 9.find total sale permont.  */
select monthname(sales_date)as per_month,
sum(price)as Total_sales
from book1
group by  monthname(sales_date);


/* 10.find each regions maximum sales price. */
select region,
sum(price)as Maximum_salesprice
from book1
group by region;

/* 11.find each category average Quantity sold,but show only average >10. */
select category,
avg(quantity)as average_quantity
from book1
group by category
having average_quantity>10;

/* 12.find total revenue by region and category */
select region,category,
sum(price*quantity) as toal_revenue
from book1
group by region,category;


/*  13. find how many sales each sales person made in each region .  */
select region,salesperson,
sum(quantity*price)as sales
from book1
group by region,salesperson ;


/* 14. find the region where total quantit exceed 20 */
select region,
sum(Quantity) as Total_Quantity
from book1
group by region
having sum(Quantity) > 20;


/*  15. find Salesperson who sold is more then one region */
select salesperson,
count(region)
from book1
group by salesperson
having count(region)>1;
      

/* 16. find category having total revenue between ₹200000 and ₹1000000.  */
select category,
sum(price*Quantity) as Total_Revenue
from book1 
group by category
having sum(price*quantity)between 200000 and 1000000;

/*  17.find top 1 category with the highest total sale . */
select category,
sum(price*quantity) as total_sale
from book1
group by category
order by total_sale
limit 1;

/*  18.find salesperson average sales value per transition */
select salesperson,
avg(price) as avg_sales
from book1
group by salesperson;


/*  19.find category with minimum average price greater then ₹20000,  */
select category,
avg(price) as avg_price
from book1
group by category
having avg_price>20000;


/*  20.find region and salesperson combination whre revenue>₹200000.  */
select region,salesperson,
sum(price*quantity)as revenue
from book1
group by region,salesperson
having revenue>200000;