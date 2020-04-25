  Id   Role	    Name	   Building	Years_employed
  1   Engineer	Becky A.	1e	     4
  2   Engineer	Dan B.	    1e       2
  3   Engineer	Sharon F.	1e	     6
  4   Engineer	Dan M.	    1e	     4
  5   Engineer	Malcom S.	1e	     1
  6   Artist	Tylar S.	2w	     2
  7   Artist	Sherman D.	2w	     8
  8   Artist	Jakob J.	2w	     6
  9   Artist	Lillia A.	2w	     7
  10  Artist	Brandon J.	2w	     7
  11  Manager	Scott K.	1e	     9
  12  Manager	Shirlee M.	1e	     3
13    Manager	Daria O.	2w    	 6


SELECT COUNT(role) AS num_artists  FROM employees WHERE role="Artist";
SELECT role ,COUNT (role) AS nums  FROM employees GROUP BY role;
SELECT role, SUM(years_employed)
FROM employees
GROUP BY role
HAVING role = "Engineer";