create database fikst�r
use fikst�r
create table fikst�r1 (ev char(20),deplasman char(20),galip char(20))
select * from fikst�r1
use fikst�r
insert into fikst�r1 (ev,deplasman,galip) values ('Ankarag�c�','Trabzonspor','Trabzonspor')
insert into fikst�r1 values ('Gaziantep FK','Yenimalatyaspor','Berabere')
insert into fikst�r1 values ('Medipol Ba�ak�ehir','Denizlispor','Berabere')
insert into fikst�r1 values ('�aykur Rizespor','Galatasaray','Galatasaray')
insert into fikst�r1 values ('Erzurumspor','Antalyaspor','Berabere')
insert into fikst�r1 values ('Alanyaspor','Konyaspor','Alanyaspor')
insert into fikst�r1 values ('Kas�mpa�a','Gen�lerbi�i','Kas�mpa�a')
insert into fikst�r1 values ('Fenerbah�e','Be�ikta�','Be�ikta�')
insert into fikst�r1 values ('Sivasspor','G�ztepe','G�ztepe')
insert into fikst�r1 values ('Kayserispor','Karag�mr�k','Berabere')
use fikst�r
create table Haftaninoyuncusu (adi char(20),soyadi char(20),kul�p char(20))
insert into Haftaninoyuncusu values ('Caner','Osmanpa�a','Sivasspor')
use fikst�r
create table Haftaninteknikdirekt�r� (adi char(20),soyadi char (20),kul�p char(20))
insert into Haftaninteknikdirekt�r� values ('Sergen','Yal��n','Be�ikta�')
select * from Haftaninoyuncusu
select * from Haftaninteknikdirekt�r�
use fikst�r
create table Haftaninhakemii (adi char(20),soyadi char(20),ev char(20),deplasman char(20))
insert into Haftaninhakemii values ('Bahattin','�im�ek','Alanyaspor','Konyaspor')
select * from Haftaninhakemii
select *from Haftaninoyuncusu a inner join fikst�r1 s on a.kul�p=s.ev
select *from Haftaninteknikdirekt�r� b inner join fikst�r1 s on b.kul�p=s.deplasman
select *from Haftaninhakemii c inner join fikst�r1 s on c.ev=s.galip

CREATE PROCEDURE [dbo].[10fikstur]
as
select *from Haftaninhakemii
select *from Haftaninoyuncusu
select *from Haftaninteknikdirekt�r�

create procedure Toplamtakim (@ev int,@deplasman int,@macyapantakimlar int output)
as
set @macyapantakimlar=@ev+@deplasman

declare @t int
exec Toplamtakim 10,10,@t output
print @t





















