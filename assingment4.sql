create function result (d char(20))
returns char(20) deterministic
return 
(
select signal1
from bajaj2 where `date` = d
);
select `date`, result(`date`)
from bajaj2
where result(`date`) = 'sell';
