create database session2_baitap1;
use session2_baitap1;
create table vattu(
mavattu int primary key auto_increment,
tenvattu varchar(255) not null
);
create table phieuxuat(
sophieuxuat int primary key auto_increment,
ngayxuat date,
dongiaxuat float,
soluongxuat float,
mavattu int,
foreign key (mavattu) references vattu(mavattu)
);
create table phieunhap(
sophieunhap int primary key auto_increment,
ngaynhap date,
dongianhap float,
soluongnhap float,
mavattu int,
foreign key (mavattu) references vattu(mavattu)
);
create table dondathang(
madon int primary key auto_increment,
ngaydathang date,
mavattu int,
manhacungcap int,
foreign key (mavattu) references vattu(mavattu),
foreign key (manhacungcap) references nhacungcap(manhacungcap)
);
create table nhacungcap(
manhacungcap int primary key auto_increment,
tennhacungcap varchar(255) not null,
diachi varchar(255) not null,
sodienthoai varchar(255) not null
);