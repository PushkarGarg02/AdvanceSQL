'''
Write a query to print all prime numbers less than or equal to 1000 . Print your result on a single line, and use the ampersand (&) character as your separator (instead of a space).

For example, the output for all prime numbers  would be:
'''

2&3&5&7

Here goes the query:

select listagg(x,'&') within group(order by x) 
from 
  (select level x from dual where level >1 connect by level <=1000) temp 
where not exists 
    ( select 1 from dual where mod(temp.x,level) = 0 and level >1 connect by level <= floor(sqrt(temp.x)));

