-- cara menampilkan data di data output 
SELECT * FROM porto.mahasiswa;
-- nama column sebagai pengganti bintang
SELECT nim FROM porto.mahasiswa
ORDER BY NIM DESC;

--menampilkan data dengan condition 
-- ada beberapa kondisi dimana 
-- keyword : WHERE

Select * FROM porto.mahasiswa WHERE nim = 152023148;
select * FROM porto.mahasiswa WHERE kota_asal = 'Bandung';
select * FROM porto.mahasiswa WHERE LOWER(kota_asal) = 'bandung';
select * from porto.mahasiswa where kota_asal ILIKE 'bandung';
SELECT * FROM porto.mahasiswa WHERE NIM <= 152023144;
SELECT * FROM porto.mahasiswa WHERE NIM >= 152023144;
SELECT * FROM porto.mahasiswa WHERE prodi iS Null;

UPDATE porto.mahasiswa SET prodi = NULL WHERE nim = 152023148;

DELETE FROM porto.mahasiswa WHERE nim = 152023148;
INSERT INTO porto.mahasiswa (nim, nama_depan, nama_belakang, kota_asal, prodi) 
VALUES (152023148, 'Felix', 'Angga Resky', 'Bandung', 'informatika'); 
delete from porto.mahasiswa WHERE kota_asal = 'Bandung';

-- Truncate 
TRUNCATE porto.mahasiswa; 

-- Drop table
DROP TABLE porto.mahasiswa;

-- create Table
CREATE TABLE measurement (
    city_id         int not null,
    logdate         date not null,
    peaktemp        int,
    unitsales       int
) PARTITION BY RANGE (logdate);

ALTER TABLE porto.Mahasiswa 
ALTER COLUMN nim TYPE INTEGER 
USING nim::INTEGER;

-- create table 

CREATE TYPE status_approval AS ENUM ('APPROVED', 'NOT_APPROVED');

CREATE TABLE porto.SKK (
id_skk INTEGER PRIMARY KEY,
Kegiatan VARCHAR (50),
APPROVED status_approval DEFAULT 'APPROVED'
);
