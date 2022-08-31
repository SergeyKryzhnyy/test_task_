SELECT name FROM `contacts` WHERE id IN
	(SELECT id_contact FROM `friends`
     	GROUP BY id_contact
     	HAVING COUNT(id_friend) > 5);
