create database bigmart;
use bigmart;

drop database if exists bigmart;

create table produk (
id int auto_increment primary key,
item varchar(50), 
tipe varchar(50),
MRP decimal(10,2),
outlet varchar(50)
);

drop table if exists produk;

insert into produk (item, tipe, MRP, outlet)
values 
('FDW58', 'snack foods', 107.86, 'tier 1'),
('FDW14', 'dairy', 87.32, 'tier 2'),
('NCN55', 'others', 241.74, 'tier 3'),
('FDQ58', 'snack foods', 155.03, 'tier 2'),
('FDY38', 'dairy', 234.23, 'tier 3'),
('FDH56', 'fruits and vegetables', 117.15, 'tier 1'),
('FDL48', 'baking goods', 50.10, 'tier 3'),
('FDC48', 'baking goods', 81.06, 'tier 3'),
('FDN33', 'snack foods', 95.74, 'tier 2'),
('FDA36', 'baking goods', 186.89, 'tier 2'),
('FDT44', 'fruits and vegetables', 118.35, 'tier 2'),
('FDQ56', 'fruits and vegetables', 85.39, 'tier 2'),
('NCC54', 'health and hygiene', 240.42, 'tier 1');

select * from produk;
describe produk;

select tipe, count(*) as frekuensi
from produk
group by tipe
order by frekuensi desc;

select *
from produk
where tipe = 'health and hygiene';

select *
from produk
where  tipe = 'dairy';

select tipe, avg(MRP) AS rata2harga #ratarata harga per tipe produk
from produk
group by tipe;

select outlet, avg(MRP) AS rata2harga
from produk
group by outlet;