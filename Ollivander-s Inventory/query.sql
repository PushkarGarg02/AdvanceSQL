select id, age, coins, power from (select w.id id, wp.age age, w.coins_needed coins, w.power power,
 rank() over(partition by w.code,w.power order by w.coins_needed) rn
from wands w, wand_property wp
where w.code = wp.code
and wp.is_evil = 0 order by w.id)
where rn = 1
order by power desc, age desc;
