select case when grades.grade<8 then 'NULL' else name end as nameTemp, grades.grade, marks 
from students, grades 
where marks>= min_mark and marks <= max_mark
order by grade desc, nameTemp;
