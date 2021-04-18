#creation of bajaj2
create table bajajx 
select `Date`, `Close Price`,
20_day_MA - 50_day_ma 'Flag' , 
row_number() over () as 'Row'
from bajaj1;
alter table bajajx
add column signal1 varchar(6) default 'Hold';
select * 
from bajajx;
create table bajaj2 as
select a.`Date`, a.`close price`, a.flag, b.flag 'Flagp' , a.row , a.signal1 
from bajajx a inner join bajajx b on a.row = b.row-1;
update bajaj2
set signal1 = 'Buy'
where flag > 0 and Flagp <0 ;
update bajaj2 
set signal1='sell'
where flag<0 and Flagp>0;
select *
from bajaj2;

# creation of eicher2

create table eicherx 
select `Date`, `Close Price`,
20_day_MA - 50_day_ma 'Flag' , 
row_number() over () as 'Row'
from eicher1;
alter table eicherx
add column signal1 varchar(6) default 'Hold';
select * 
from eicherx;
create table eicher2 as
select a.`Date`, a.`close price`, a.flag, b.flag 'Flagp' , a.row , a.signal1 
from eicherx a inner join eicherx b on a.row = b.row-1;
update eicher2
set signal1 = 'Buy'
where flag > 0 and Flagp <0 ;
update eicher2 
set signal1='sell'
where flag<0 and Flagp>0;
select *
from eicher2;

# creation of hero2

create table herox 
select `Date`, `Close Price`,
20_day_MA - 50_day_ma 'Flag' , 
row_number() over () as 'Row'
from hero1;
alter table herox
add column signal1 varchar(6) default 'Hold';
select * 
from herox;
create table hero2 as
select a.`Date`, a.`close price`, a.flag, b.flag 'Flagp' , a.row , a.signal1 
from herox a inner join herox b on a.row = b.row-1;
update hero2
set signal1 = 'Buy'
where flag > 0 and Flagp <0 ;
update hero2 
set signal1='sell'
where flag<0 and Flagp>0;
select *
from hero2;

#creation of infosys2
create table infosysx 
select `Date`, `Close Price`,
20_day_MA - 50_day_ma 'Flag' , 
row_number() over () as 'Row'
from infosys1;
alter table infosysx
add column signal1 varchar(6) default 'Hold';
select * 
from infosysx;
create table infosys2 as
select a.`Date`, a.`close price`, a.flag, b.flag 'Flagp' , a.row , a.signal1 
from infosysx a inner join infosysx b on a.row = b.row-1;
update infosys2
set signal1 = 'Buy'
where flag > 0 and Flagp <0 ;
update infosys2 
set signal1='sell'
where flag<0 and Flagp>0;
select *
from infosys2;

# creation of tcs2

create table tcsx 
select `Date`, `Close Price`,
20_day_MA - 50_day_ma 'Flag' , 
row_number() over () as 'Row'
from tcs1;
alter table tcsx
add column signal1 varchar(6) default 'Hold';
select * 
from tcsx;
create table tcs2 as
select a.`Date`, a.`close price`, a.flag, b.flag 'Flagp' , a.row , a.signal1 
from tcsx a inner join tcsx b on a.row = b.row-1;
update tcs2
set signal1 = 'Buy'
where flag > 0 and Flagp <0 ;
update tcs2 
set signal1='sell'
where flag<0 and Flagp>0;
select *
from tcs2;

#creation of tvs2

create table tvsx 
select `Date`, `Close Price`,
20_day_MA - 50_day_ma 'Flag' , 
row_number() over () as 'Row'
from tvs1;
alter table tvsx
add column signal1 varchar(6) default 'Hold';
select * 
from tvsx;
create table tvs2 as
select a.`Date`, a.`close price`, a.flag, b.flag 'Flagp' , a.row , a.signal1 
from tvsx a inner join tvsx b on a.row = b.row-1;
update tvs2
set signal1 = 'Buy'
where flag > 0 and Flagp <0 ;
update tvs2 
set signal1='sell'
where flag<0 and Flagp>0;
select *
from tvs2;
