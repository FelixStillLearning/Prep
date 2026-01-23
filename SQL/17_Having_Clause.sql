/*
HAVING CLAUSE -- memfilter data hasi; dari qeury kita, mirip WHERE
*/

SELECT 
	semester,
	AVG(ipk) rerata_ipk
FROM porto.ipk 
	WHERE semester = '1'
GROUP BY semester;

-- having 
SELECT 
	semester,
	AVG(ipk) rerata_ipk
FROM porto.ipk 
GROUP BY semester
HAVING semester = '1';

--kekurangan nya kita harus melakukan agregasi dlu

SELECT 
	semester,
	AVG(ipk) rerata_ipk
FROM porto.ipk 
GROUP BY semester
HAVING AVG(ipk) < 3.5;


