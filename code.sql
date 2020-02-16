--- 1st problem 
SELECT CITY,STATE FROM STATION;

--- 2nd  problem 
select round(sum(lat_n),2), round(sum(long_w),2) from station;

--- 3rd problem
SELECT DISTINCT CITY FROM STATION 
WHERE mod(ID,2) = 0;
--- 4th problem 
select count(city) - count(distinct city) from station ;

--- 5th problem 
select City, length from (select City, length(city)as length from STATION order by length asc, city asc)
where rownum=1
order by city;

select City, length from (select City, length(city)as length from STATION order by length desc, city asc)
where rownum=1
order by city;

--- 6 th problem 

select CITY from station where CITY like 'A%' or CITY like 'E%' or CITY like 'I%' or CITY like 'O%' or CITY like 'U%' order by CITY;

--- 7th problem 
select distinct city from station 
where substr(city,-1) in ('a','e','i','o','u');

--- 8th problem 

select distinct city from station 
where lower(substr(city,1,1)) in ('a','e','i','o','u')
and substr(city,-1) in ('a','e','i','o','u');
                   
 --- 9th problem 
 
  select distinct city from station 
where lower(substr(city,1,1)) not in ('a','e','i','o','u');
--- 10th problem 
select distinct city from station 
where substr(city,-1) not in ('a','e','i','o','u');
                   
 --- 11th problem 
                  select distinct city from station 
where lower(substr(city,1,1)) not in ('a','e','i','u','o')
or substr(city,-1) not in ('a','e','i','u','o');
     
                   
                   
--- 12 th problem ..
                   
select distinct city from station 
where lower(substr(city,1,1)) not in ('a','e','i','u','o')
and substr(city,-1) not in ('a','e','i','u','o');
                   
                   
--- 16 th problem 
select round(min(lat_n),4) from station 
where lat_n>38.7780;

--- 17 th problem 
 
select round(long_w,4) from station 
where lat_n = (select min(lat_n) from station where lat_n >38.7780);
                   
                   
---  18th problem 

                   
                   
