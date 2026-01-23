/* lanjut materi hari ini adalah 
- Avg, MEDIAN, MOD 
- GROUP BY
- HAVING
*/
-- rata rata
SELECT AVG(ipk) FROM porto.ipk;

-- MEDIAN 
SELECT PERCENTILE_CONT(0.5) WITHIN GROUP(ORDER BY ipk) FROM porto.ipk;

-- MOD
SELECT MOD(10, 3)

SELECT MOD(nim, 2) FROM porto.ipk ORDER BY NIM;

-- GROUP BY
-- coumn yang dirgup harus sama dengan yang di select, jumlah yang di group by harusama dengan yang di select
SELECT kota_asal, COUNT(*) FROM porto.mahasiswa GROUP BY kota_asal;

SELECT nim, kota_asal, Count(*) FROM porto.mahasiswa GROUP BY nim,kota_asal;

SELECT nim, kota_asal, count(*), MAX(nim), MIN(nim) FROM porto.mahasiswa GROUP BY nim,kota_asal;

SELECT semester, count(*), MAX(ipk), MIN(ipk) FROM porto.ipk GROUP BY semester;