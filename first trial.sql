create DATABASE toko_sederhana;
use toko_sederhana;

create table penjualan (
id int auto_increment primary key,
tanggal date,
produk varchar(50),
jumlah int,
harga decimal(10,2),
pelanggan varchar(50)
);

insert into penjualan (tanggal, produk, jumlah, harga, pelanggan)
values
('2025-11-01', 'Sabun', 5, 3000, 'Alya'),
('2025-11-02', 'Shampoo', 2, 15000, 'Budi'),
('2025-11-03', 'Odol', 3, 12000, 'Citra'),
('2025-11-03', 'Sabun', 1, 3000, 'Dewi'),
('2025-11-03', 'Shampoo', 1, 15000, 'Alya');

select * from penjualan;

select produk, sum(jumlah*harga) as total_penjualan #total penjualan per produk
from penjualan 
group by produk;

select pelanggan, count(*) as frekuensi #pelanggan yang paling sering beli
from penjualan
group by pelanggan
order by frekuensi desc;

select produk, avg(harga) #rata rata harga 
from penjualan
group by produk;

create table produkset (
id_produk int auto_increment primary key,
nama_produk varchar(100),
kategori varchar(50),
harga decimal(10,2),
stok int
);

insert into produkset (nama_produk, kategori, harga, stok)
values
('Sabun', 'Kebutuhan rumah', 3000, 50),
('Shampoo', 'Perawatan diri', 15000, 30),
('Odol', 'Kebutuhan rumah', 12000, 40),
('Lotion', 'Perawatan diri', 25000, 20);

select * from produkset;

select * 
from produkset
where kategori = 'Perawatan diri'
