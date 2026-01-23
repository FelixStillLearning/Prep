-- - 2. IN, BETWEEN, LIKE

SELECT * FROM porto.mahasiswa WHERE prodi IN ('IF', 'Ekon', 'SI');
SELECT * FROM porto.mahasiswa WHERE nim BETWEEN '152023005' AND '152023025';
SELECT * FROM porto.mahasiswa WHERE kota_asal LIKE 'Jakarta';