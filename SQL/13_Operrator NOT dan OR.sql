-- Materi Hari ini 
-- - 1. Not and OR
-- - 2. IN, BETWEEN, LIKE
-- - 3. ORDER BY DESC/ASC

/* 

Contoh 


*/

SELECT (2=2)
SELECT NOT (2=2)
SELECT (3 != 3 )
SELECT NOT (3 != 3)

SELECT * FROM porto.mahasiswa WHERE NOT nim = '152023001';

SELECT  (2=2) AND (3 != 3)
SELECT  (2=2) or (3 != 3)

SELECT * FROM porto.mahasiswa WHERE kota_asal = 'Bandung' AND prodi = 'IF';
SELECT * FROM porto.mahasiswa WHERE kota_asal = 'Jakarta' OR prodi =  'Teknik Informatika';
