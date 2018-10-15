/*Write a query to output the names of those students whose best friends got offered a higher salary than them. Names must be ordered by the salary amount offered to the best friends. It is guaranteed that no two students got same salary offer.
*/
select s.name
from friends studentID, packages p1, packages p2, friends friendID,students s
where studentID.id = p1.id
and friendID.id = p2.id
and studentID.friend_id = friendID.id
and p2.salary > p1.salary
and s.id = studentID.id
order by p2.salary;
