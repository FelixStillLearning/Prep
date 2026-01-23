-- Materi Hari ini 
-- -distinct 
-- -limit 

AlTER TABLE porto.Mahasiswa ALTER COLUMN Kota_asal TYPE TEXT;
ALTER TABLE porto.Mahasiswa ALTER COLUMN prodi TYPE TEXT;

INSERT INTO porto.mahasiswa (nim, nama_depan, nama_belakang, kota_asal, prodi) VALUES
('152023001', 'Budi', 'Santoso', 'Bandung', 'IF'),
('152023002', 'Siti', 'Aminah', 'Jakarta', 'SI'),
('152023003', 'Andi', 'Pratama', 'Surabaya', 'IF'),
('152023004', 'Dewi', 'Lestari', 'Malang', 'DKV'),
('152023005', 'Rian', 'Hidayat', 'Bogor', 'IF'),
('152023006', 'Putri', 'Wulandari', 'Depok', 'SI'),
('152023007', 'Eko', 'Nugroho', 'Bekasi', 'Arsi'),
('152023008', 'Fajar', 'Setiawan', 'Medan', 'IF'),
('152023009', 'Gita', 'Pertiwi', 'Solo', 'Sipil'),
('152023010', 'Hendra', 'Kusuma', 'Yogya', 'IF'),
('152023011', 'Indah', 'Permata', 'Semarang', 'SI'),
('152023012', 'Joko', 'Susilo', 'Bali', 'Seni'),
('152023013', 'Kartika', 'Sari', 'Makassar', 'IF'),
('152023014', 'Lukman', 'Hakim', 'Bandung', 'IF'),
('152023015', 'Maya', 'Angelina', 'Cimahi', 'DKV'),
('152023016', 'Nina', 'Zatulini', 'Garut', 'SI'),
('152023017', 'Oscar', 'Wijaya', 'Bandung', 'IF'),
('152023018', 'Panji', 'Gumilang', 'Jakarta', 'Hukum'),
('152023019', 'Qori', 'Sandioriva', 'Aceh', 'IF'),
('152023020', 'Rina', 'Nose', 'Bandung', 'Seni'),
('152023021', 'Surya', 'Saputra', 'Jakarta', 'IF'),
('152023022', 'Tia', 'Ivanka', 'Medan', 'SI'),
('152023023', 'Umar', 'Bakri', 'Padang', 'Sipil'),
('152023024', 'Vina', 'Panduwinata', 'Bogor', 'Musik'),
('152023025', 'Wahyu', 'Setiawan', 'Solo', 'IF'),
('152023026', 'Xena', 'Warrior', 'Yogya', 'Fisip'),
('152023027', 'Yogi', 'Finanda', 'Malang', 'IF'),
('152023028', 'Zaskia', 'Sungkar', 'Jakarta', 'Mode'),
('152023029', 'Ahmad', 'Dhani', 'Surabaya', 'Musik'),
('152023030', 'Bunga', 'Citra', 'Jakarta', 'Seni'),
('152023031', 'Choky', 'Sitohang', 'Bandung', 'Kom'),
('152023032', 'Desta', 'Mahendra', 'Solo', 'DKV'),
('152023033', 'Enzy', 'Storia', 'Jakarta', 'IF'),
('152023034', 'Ferry', 'Maryadi', 'Bandung', 'Kom'),
('152023035', 'Gading', 'Marten', 'Jakarta', 'SI'),
('152023036', 'Hesti', 'Purwadinata', 'Bogor', 'Kesehatan'),
('152023037', 'Irfan', 'Hakim', 'Bandung', 'Agama'),
('152023038', 'Judika', 'Sihotang', 'Medan', 'Musik'),
('152023039', 'Kiky', 'Saputri', 'Garut', 'Sastra'),	
('152023040', 'Luna', 'Maya', 'Bali', 'Bisnis'),
('152023041', 'Maudy', 'Ayunda', 'Jakarta', 'Ekon'),
('152023042', 'Naff', 'Band', 'Bandung', 'Musik'),
('152023043', 'Opick', 'Tomboati', 'Jember', 'Agama'),
('152023044', 'Pevita', 'Pearce', 'Jakarta', 'Seni'),
('152023045', 'Raffi', 'Ahmad', 'Bandung', 'Bisnis'),
('152023046', 'Sule', 'Prikitiew', 'Cimahi', 'Seni'),
('152023047', 'Tulus', 'Rusydi', 'Bukit', 'Arsi'),
('152023048', 'Uus', 'Wijaksana', 'Bandung', 'Sastra'),
('152023049', 'Vidi', 'Aldiano', 'Jakarta', 'Ekon'),
('152023050', 'Wendi', 'Cagur', 'Jakarta', 'Seni');

SELECT * FROM porto.mahasiswa;
SELECT * FROM porto.ipk;
SELECT DISTINCT nim FROM porto.ipk;
SELECT DISTINCT semseter FROM porto.ipk LIMIT 3;

-- Rename nama column 
ALTER TABLE porto.ipk 
RENAME COLUMN semseter TO semester;

-- distinct itu digunakan buat liat data unique nya 

SELECT DISTINCT nim FROM porto.ipk ORDER BY nim LIMIT 3;

