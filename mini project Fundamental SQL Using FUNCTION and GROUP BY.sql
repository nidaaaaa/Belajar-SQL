#Data Penjualan

#Total jumlah seluruh penjualan (total/revenue).
SELECT SUM(total) as total 
FROM tr_penjualan;

#Total quantity seluruh produk yang terjual.
SELECT SUM(qty) as qty 
FROM tr_penjualan;

#Total quantity dan total revenue untuk setiap kode produk.
SELECT kode_produk, 
SUM(qty) as qty, SUM(total) as total 
FROM tr_penjualan;

#Rata - Rata total belanja per kode pelanggan.
SELECT kode_pelanggan, 
avg(total) as avg_total 
FROM tr_penjualan
GROUP BY kode_pelanggan;
SELECT kode_transaksi,kode_pelanggan,no_urut,kode_produk, nama_produk, qty, total,
CASE  
    WHEN total > 300000 THEN 'High'
    WHEN total < 100000 THEN 'Low'   
    ELSE 'Medium'  
END as kategori
FROM tr_penjualan;
