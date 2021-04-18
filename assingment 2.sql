create table master_table as
select tvs.Date, 
round(tvs.`Close Price`,2) as TVS,
round(tcs.`Close Price`,2) as TCS,
round(infosys.`Close Price`,2) as Infosys, 
round(eicher.`Close Price`,2) as Eicher, 
round(hero.`Close Price`,2) as Hero, 
round(bajaj.`Close Price`,2) as Bajaj
from tvs 
left join tcs on tvs.Date = tcs.Date
left join infosys on tvs.Date = infosys.Date
left join eicher on tvs.Date = eicher.Date
left join hero on tvs.Date = hero.Date
left join bajaj on tvs.Date = bajaj.Date;

select * 
from master_table;