create schema assingment;
use assignment;
#checking if the data is imported properly
select *
from bajaj;
#creating bajaj1
create table bajaj1 as 
select Date, round(`Close Price`,2) as 'Close Price', 
round(avg(`Close Price`) over (rows between 0 preceding and 19 following),2) as 20_Day_MA,
round(avg(`Close Price`) over (rows between 0 preceding and 49 following),2) as 50_Day_MA from bajaj;
#checking bajaj1
select * 
from bajaj1;
#creating eicher1
create table eicher1 as 
select Date, round(`Close Price`,2) as 'Close Price', 
round(avg(`Close Price`) over (rows between 0 preceding and 19 following),2) as 20_Day_MA,
round(avg(`Close Price`) over (rows between 0 preceding and 49 following),2) as 50_Day_MA from eicher;
#checking eicher1
select *
from eicher1;
#creating hero1
create table hero1 as 
select Date, round(`Close Price`,2) as 'Close Price', 
round(avg(`Close Price`) over (rows between 0 preceding and 19 following),2) as 20_Day_MA,
round(avg(`Close Price`) over (rows between 0 preceding and 49 following),2) as 50_Day_MA from hero;
#checking hero1
select *
from hero1;
#create infosys1
create table infosys1 as 
select Date, round(`Close Price`,2) as 'Close Price', 
round(avg(`Close Price`) over (rows between 0 preceding and 19 following),2) as 20_Day_MA,
round(avg(`Close Price`) over (rows between 0 preceding and 49 following),2) as 50_Day_MA 
from infosys;
#checking infosys1
select *
from infosys1;
#creating tcs1
create table tcs1 as 
select Date, `Close Price`, 
round(avg(`Close Price`) over (rows between 0 preceding and 19 following),2) as 20_Day_MA,
round(avg(`Close Price`) over (rows between 0 preceding and 49 following),2) as 50_Day_MA from tcs;
#checking tcs1
select *
from tcs1;
#creating tvs1
create table tvs1 as 
select Date, round(`Close Price`,2) as 'Close Price', 
round(avg(`Close Price`) over (rows between 0 preceding and 19 following),2) as 20_Day_MA,
round(avg(`Close Price`) over (rows between 0 preceding and 49 following),2) as 50_Day_MA from tvs;
#checking tvs1
select *
from tvs1;
