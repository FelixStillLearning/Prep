-- is null and is not null

SELECT * FROM porto.mahasiswa;

-- ubah dulu salah satu jadi null

UPDATE porto.mahasiswa SET Prodi = NULL Where nim = '152023001';
UPDATE porto.mahasiswa SET kota_asal = NULL Where nim = '152023002';
SELECT * FROM porto.mahasiswa Where prodi is null OR kota_asal is null;

-- Order by desc / asc

SELECT * From porto.mahasiswa ORDER BY NIM DESC;
SELECT * FROM porto.mahasiswa ORDER BY NIM;
