CREATE DATABASE gelsinbiyemek;
USE gelsinbiyemek;
CREATE TABLE kullancilar(
	kullanciID INT PRIMARY KEY IDENTITY(1,1),
	kullanciAdi NVARCHAR(50) NOT NULL,
	sifre NVARCHAR(8) NOT NULL
);
INSERT INTO kullancilar (kullanciAdi, sifre) VALUES ('ahmedtab1', 'zzxxccvv');
INSERT INTO kullancilar (kullanciAdi, sifre) VALUES ('ahmedtab2', 'zzxxccvv');
INSERT INTO kullancilar (kullanciAdi, sifre) VALUES ('ahmedtab3', 'zzxxccvv');

CREATE TABLE firma (
	firmaID INT PRIMARY KEY IDENTITY(1,1),
	ismi NVARCHAR(100) NOT NULL,
	adresi NVARCHAR(MAX) NOT NULL,
	acilmaSaati TIME NOT NULL,
	kapanmaSaati TIME NOT NULL,
	yetkiliNo NVARCHAR(50) ,
	puan INT DEFAULT 0
);
INSERT INTO firma (ismi, adresi, acilmaSaati, kapanmaSaati, yetkiliNo, puan) VALUES ('TAB', 'TURKEY/ISTANBUL', '07:00:00', '19:00:00', '05325232745', 0);
INSERT INTO firma (ismi, adresi, acilmaSaati, kapanmaSaati, yetkiliNo, puan) VALUES ('TAB1', 'TURKEY/ISTANBUL', '10:00:00', '23:59:59', '05325232745', 1);
INSERT INTO firma (ismi, adresi, acilmaSaati, kapanmaSaati, yetkiliNo, puan) VALUES ('TAB2', 'TURKEY/ISTANBUL', '09:00:00', '15:00:00', '05325232745', 2);
INSERT INTO firma (ismi, adresi, acilmaSaati, kapanmaSaati, yetkiliNo, puan) VALUES ('TAB3', 'TURKEY/ISTANBUL', '07:00:00', '16:00:00', '05325232745', 3);
INSERT INTO firma (ismi, adresi, acilmaSaati, kapanmaSaati, yetkiliNo, puan) VALUES ('TAB4', 'TURKEY/ISTANBUL', '07:00:00', '23:00:00', '05325232745', 4);
INSERT INTO firma (ismi, adresi, acilmaSaati, kapanmaSaati, yetkiliNo, puan) VALUES ('TAB5', 'TURKEY/ISTANBUL', '12:00:00', '19:00:00', '05325232745', 5);
INSERT INTO firma (ismi, adresi, acilmaSaati, kapanmaSaati, yetkiliNo, puan) VALUES ('TAB6', 'TURKEY/ISTANBUL', '11:00:00', '22:00:00', '05325232745', 6);
INSERT INTO firma (ismi, adresi, acilmaSaati, kapanmaSaati, yetkiliNo, puan) VALUES ('TAB7', 'TURKEY/ISTANBUL', '08:00:00', '20:00:00', '05325232745', 7);
INSERT INTO firma (ismi, adresi, acilmaSaati, kapanmaSaati, yetkiliNo, puan) VALUES ('TAB8', 'TURKEY/ISTANBUL', '06:00:00', '14:00:00', '05325232745', 8);
INSERT INTO firma (ismi, adresi, acilmaSaati, kapanmaSaati, yetkiliNo, puan) VALUES ('TAB9', 'TURKEY/ISTANBUL', '09:00:00', '16:00:00', '05325232745', 9);

CREATE TABLE urun (
	urunID int primary key identity(1,1),
	adi nvarchar(100) not null,
	urunTuru nvarchar(30) not null,
	fiyat int not null,
	stokDurum int not null,
	firmaID int,
	constraint fk_firma_urun foreign key(firmaID) references firma(firmaID)
);


insert into urun (adi, urunTuru, fiyat, stokDurum, firmaID) values ('CocaCola', 'icecek', 10, 4, 1);
insert into urun (adi, urunTuru, fiyat, stokDurum, firmaID) values ('ayran', 'icecek', 5, 9, 2);
insert into urun (adi, urunTuru, fiyat, stokDurum, firmaID) values ('soda', 'icecek', 8, 4, 3);
insert into urun (adi, urunTuru, fiyat, stokDurum, firmaID) values ('milkshek', 'icecek', 20, 5, 1);
insert into urun (adi, urunTuru, fiyat, stokDurum, firmaID) values ('sogukcay', 'icecek', 2, 20, 8);
insert into urun (adi, urunTuru, fiyat, stokDurum, firmaID) values ('lahmacun', 'yiyecek', 25, 10, 8);
insert into urun (adi, urunTuru, fiyat, stokDurum, firmaID) values ('adanakebap', 'yiyecek', 30, 0, 8);
insert into urun (adi, urunTuru, fiyat, stokDurum, firmaID) values ('kasarlidoner', 'yiyecek', 20, 1, 5);
insert into urun (adi, urunTuru, fiyat, stokDurum, firmaID) values ('balik', 'yiyecek', 50, 9, 9);
insert into urun (adi, urunTuru, fiyat, stokDurum, firmaID) values ('doner', 'yiyecek', 18, 0, 2);

create table kampanya(
	kamapanyaID int primary key identity(1,1) not null,
	kampanyaBilgisi nvarchar(max),
	yuzdeIndirimMiktari int,
	firmaID int,
	constraint fk_kampanya_firma foreign key(firmaID) references firma(firmaID)
);

insert into kampanya (kampanyaBilgisi, yuzdeIndirimMiktari, firmaID) values ('ramazan ayi', 25, 8);
insert into kampanya (kampanyaBilgisi, yuzdeIndirimMiktari, firmaID) values ('yeniacilis', 10, 8);
insert into kampanya (kampanyaBilgisi, yuzdeIndirimMiktari, firmaID) values ('yeni urunler', 20, 2);
insert into kampanya (kampanyaBilgisi, yuzdeIndirimMiktari, firmaID) values ('herkes yesin', 30, 2);
insert into kampanya (kampanyaBilgisi, yuzdeIndirimMiktari, firmaID) values ('ramazan ayi', 25, 1);
insert into kampanya (kampanyaBilgisi, yuzdeIndirimMiktari, firmaID) values ('bahar donemi', 5, 9);
insert into kampanya (kampanyaBilgisi, yuzdeIndirimMiktari, firmaID) values ('efsane idirim', 20, 5);
insert into kampanya (kampanyaBilgisi, yuzdeIndirimMiktari, firmaID) values ('indirim', 15, 4);
insert into kampanya (kampanyaBilgisi, yuzdeIndirimMiktari, firmaID) values ('', 15, 2);
insert into kampanya (kampanyaBilgisi, yuzdeIndirimMiktari, firmaID) values ('ozel gun', 15, 8);

create table musteri (
	musteriID int primary key identity(1,1) not null,
	isim nvarchar(50) not null,
	soyisim nvarchar(50),
	telefon nvarchar(15),
	eposta nvarchar(30),
	adres nvarchar(200),
	puan int default 0,
	yuzdeIndirim int default 0,
);

insert into musteri (isim, soyisim, telefon, eposta, adres, puan, yuzdeIndirim) values ('Ahmed', 'Tabso', '05385232745', 'tabsoahmed02@gmail.com', 'Bahceli evler / Sanliurfa', 10, 15);
insert into musteri (isim, soyisim, telefon, eposta, adres, puan, yuzdeIndirim) values ('ali', 'ak', '05385232745', 'tabsoahmed02@gmail.com', 'Bahceli evler / Sanliurfa', 0, 20);
insert into musteri (isim, soyisim, telefon, eposta, adres, puan, yuzdeIndirim) values ('mehemt', 'kara', '05385232745', 'tabsoahmed02@gmail.com', 'Bahceli evler / Sanliurfa', 0, 0);
insert into musteri (isim, soyisim, telefon, eposta, adres, puan, yuzdeIndirim) values ('mahmut', '', '05385232745', 'ahmed02@gmail.com', 'Bahceli evler / Sanliurfa', 5, 5);
insert into musteri (isim, soyisim, telefon, eposta, adres, puan, yuzdeIndirim) values ('tuba', 'ozmen', '05385232745', '@gmail.com', 'Bahceli evler / Sanliurfa', 55, 0);
insert into musteri (isim, soyisim, telefon, eposta, adres, puan, yuzdeIndirim) values ('adil', 'yildiz', '05385232745', '@gmail.com', 'Bahceli evler / Sanliurfa', 45, 0);
insert into musteri (isim, soyisim, telefon, eposta, adres, puan, yuzdeIndirim) values ('merve', 'yildirim', '05385232745', '@gmail.com', 'Bahceli evler / Sanliurfa', 20, 25);
insert into musteri (isim, soyisim, telefon, eposta, adres, puan, yuzdeIndirim) values ('fatma', 'kanoglu', '05385232745', '@gmail.com', 'Bahceli evler / Sanliurfa', 5, 5);
insert into musteri (isim, soyisim, telefon, eposta, adres, puan, yuzdeIndirim) values ('esma', '', '05385232745', 'tabsoahed02@gmail.com', 'Bahceli evler / Sanliurfa', 0, 15);
insert into musteri (isim, soyisim, telefon, eposta, adres, puan, yuzdeIndirim) values ('gul', '', '05385232745', '@gmail.com', 'Bahceli evler / Sanliurfa', 0, 30);

create table siparis(
	siparisID int primary key identity(1,1) not null,
	musteriID int not null,
	siparisAlinmaSaati date default getdate(),
	totalFiyat int,
	constraint fk_fatura_musteri foreign key(musteriID) references musteri(musteriID)
);

insert into siparis (musteriID, siparisAlinmaSaati, totalFiyat) values (1, getdate(), 100);
insert into siparis (musteriID, siparisAlinmaSaati, totalFiyat) values (1, getdate(), 200);
insert into siparis (musteriID, siparisAlinmaSaati, totalFiyat) values (2, getdate(), 50);
insert into siparis (musteriID, siparisAlinmaSaati, totalFiyat) values (3, getdate(), 75);
insert into siparis (musteriID, siparisAlinmaSaati, totalFiyat) values (5, getdate(), 125);
insert into siparis (musteriID, siparisAlinmaSaati, totalFiyat) values (9, getdate(), 60);
insert into siparis (musteriID, siparisAlinmaSaati, totalFiyat) values (3, getdate(), 40);
insert into siparis (musteriID, siparisAlinmaSaati, totalFiyat) values (4, getdate(), 300);
insert into siparis (musteriID, siparisAlinmaSaati, totalFiyat) values (7, getdate(), 25);
insert into siparis (musteriID, siparisAlinmaSaati, totalFiyat) values (2, getdate(), 70);


create table siparistekiUrunler (
	id int primary key identity(1,1) not null,
	siparisID int not null,
	urunID int not null,
	musteriID int not null,
	constraint fk_siparistekiUrunler_siparis foreign key(siparisID) references siparis(siparisID),
	constraint fk_siparistekiUrunler_urun foreign key(urunID) references urun(urunID),
	constraint fk_siparistekiUrunler_musteri foreign key(musteriID) references musteri(musteriID)
);

insert into siparistekiUrunler (siparisID, urunId, musteriID) values (1, 1, 1);
insert into siparistekiUrunler (siparisID, urunId, musteriID) values (1, 9, 1);
insert into siparistekiUrunler (siparisID, urunId, musteriID) values (1, 10, 1);
insert into siparistekiUrunler (siparisID, urunId, musteriID) values (2, 3, 1);
insert into siparistekiUrunler (siparisID, urunId, musteriID) values (2, 4, 1);
insert into siparistekiUrunler (siparisID, urunId, musteriID) values (2, 5, 1);
insert into siparistekiUrunler (siparisID, urunId, musteriID) values (3, 7, 2);
insert into siparistekiUrunler (siparisID, urunId, musteriID) values (5, 6, 5);
insert into siparistekiUrunler (siparisID, urunId, musteriID) values (7, 3, 3);
insert into siparistekiUrunler (siparisID, urunId, musteriID) values (4, 2, 3);

create table fatura (
	faturaID int primary key identity(1,1) not null,
	siparisID int not null,
	musteriID int not null,
	total int,
	constraint fk_fatura_siparis foreign key(siparisID) references siparis(siparisID),
	constraint fkfaturamusteri foreign key(musteriID) references musteri(musteriID)
);
insert into fatura (siparisID, musteriID, total) values (1, 1, 100);
insert into fatura (siparisID, musteriID, total) values (2, 1, 200);
insert into fatura (siparisID, musteriID, total) values (3, 2, 50);
insert into fatura (siparisID, musteriID, total) values (4, 3, 75);
insert into fatura (siparisID, musteriID, total) values (5, 5, 125);
insert into fatura (siparisID, musteriID, total) values (6, 9, 60);
insert into fatura (siparisID, musteriID, total) values (7, 3, 40);
insert into fatura (siparisID, musteriID, total) values (8, 4, 300);
insert into fatura (siparisID, musteriID, total) values (9, 7, 25);
insert into fatura (siparisID, musteriID, total) values (10, 2, 70);

create table degerlendirme (
	id int primary key identity(1,1),
	musteriID int not null,
	firmaID int not null,
	puan int not null,
	yorum nvarchar(100),
	constraint fk_degerlendirme_musteri foreign key(musteriID) references musteri(musteriID),
	constraint fk_degerlendirme_firma foreign key(firmaID) references firma(firmaID)
);

insert into degerlendirme (musteriID, firmaID, puan, yorum) values (1, 1, 8, 'iyi');
insert into degerlendirme (musteriID, firmaID, puan, yorum) values (1, 2, 7, 'iyi');
insert into degerlendirme (musteriID, firmaID, puan, yorum) values (1, 3, 6, 'iyi');
insert into degerlendirme (musteriID, firmaID, puan, yorum) values (1, 5, 9, 'iyi');
insert into degerlendirme (musteriID, firmaID, puan, yorum) values (2, 1, 3, 'iyi');
insert into degerlendirme (musteriID, firmaID, puan, yorum) values (3, 9, 10, 'iyi');
insert into degerlendirme (musteriID, firmaID, puan, yorum) values (5, 10, 2, '');
insert into degerlendirme (musteriID, firmaID, puan, yorum) values (6, 3, 3, '');
insert into degerlendirme (musteriID, firmaID, puan, yorum) values (7, 2, 0, 'kotu');
insert into degerlendirme (musteriID, firmaID, puan, yorum) values (8, 6, 1, 'kotu');

--1)yapildi

--2)
select * from siparistekiUrunler;

--4)
select * from kampanya;

--6)
select top 5 count(musteriID) as musterininyorumsaysisi,musteriID
from degerlendirme
group by musteriID
order by musterininyorumsaysisi desc;

--7)
create trigger siparisSilGuncelle
on siparistekiUrunler
instead of delete
as
declare @deletedUrunId as int;
select @deletedUrunId = (select urunID from deleted);
update urun set stokDurum = stokDurum + 1
where urunID = @deletedUrunId;



--8)
create procedure addSiparis (
	@siarisID int,
	@musteriID int,
	@totalFiyat int
)
as
insert into siparis(musteriID, totalFiyat) values (@musteriID, @totalFiyat);
insert into fatura(siparisID, musteriID, total) values (@siarisID, @musteriID, @totalFiyat);


--10)
create procedure gunluk
as
select count(*) from siparis 
where siparis.siparisAlinmaSaati > getdate() - 1 
and siparis.siparisAlinmaSaati < getdate() + 1;

exec gunluk;

--11)
create procedure musteriPuaniVeSiparisleri(
	@musteriID int
)
as
select count(*) musterininsiparissayisi from musteri
inner join siparistekiUrunler on musteri.musteriID = siparistekiUrunler.musteriID
where musteri.musteriID = @musteriID;

exec musteriPuaniVeSiparisleri 1;

--12)
create trigger silmeDenemeMusteri
on musteri
instead of delete 
as
select getdate() silmeDenemeMusteri from musteri
where musteriID in (select musteriID from DELETED);

delete from musteri 
where musteri.musteriID = 10;

create trigger silmeDenemeFirma 
on firma
instead of delete 
as
select getdate() silmeDenemeFirma from firma
where firmaID in (select firmaID from DELETED);

delete from firma 
where firma.firmaID = 10;