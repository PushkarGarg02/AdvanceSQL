select studentID.id, p1.salary, studentID.friend_id, p2.salary 
from friends studentID, packages p1, packages p2, friends friendID
where studentID.id = p1.id
and friendID.id = p2.id
and studentID.friend_id = friendID.id
and p2.salary > p1.salary;
