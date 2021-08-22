Use DQLab 

#Mengambil seluruh kolom 
SELECT*FROM ms_produk;

#Mengambil satu kolom 
SELECT nama_produk FROM ms_produk;

#Mengambil beberapa kolom 
SELECT nama_produk, harga FROM ms_produk;

#Membatasi pengambilan jumlah row data 
SELECT nama_produk FROM ms_produk LIMIT 3;

#Penggunaan prefix 
SELECT ms_produk.kode_produk FROM ms_produk;	

#Penggunaan alias (AS) & menghilangkan keyword AS
SELECT no_urut AS Nomor, nama_produk AS nama FROM ms_produk;				
SELECT no_urut nomor, nama_produk nama FROM ms_produk;

#Menggabungkan prefix & alias
SELECT ms_produk.harga AS harga_jual FROM ms_produk;

#Menggunakan alias pada table 
SELECT*FROM ms_produk t2;

#Menggunakan prefix dgn alias table
SELECT t2.nama_produk, t2.harga FROM ms_produk t2;				

#Menggunakan filter WHERE (teks)
SELECT*FROM ms_produk 
WHERE nama_produk = 'Tas Travel Organizer DQLab';

#filter WHERE (angka)
SELECT*FROM ms_produk WHERE harga > 50000;

#Menggunakan operand OR 
SELECT*FROM ms_produk 
WHERE  nama_produk = 'Gantungan Kunci DQLab' 
OR nama_produk = 'Tas Travel Organizer DQLab' 
OR nama_produk = 'Flashdisk DQLab 64 GB';	

#Operand AND 
SELECT * FROM ms_produk 
WHERE nama_produk = 'Gantungan Kunci DQLab' 
AND harga < 50000;
