--DECLARE @Sayi int
--SET @Sayi = 25
--SELECT @Sayi

--DECLARE @KISI1 VARCHAR(20)
--SET @KISI1 = 'MURAT'
--SELECT @KISI1

--DECLARE @SAYI1 INT, @SAYI2 INT, @TOPLAM INT
--SET @SAYI1 = 20
--SET @SAYI2 = 30
--SET @TOPLAM = @SAYI1 + @SAYI2
--SELECT @TOPLAM

--DECLARE @SAYI INT, @BIRLER INT, @ONLAR INT, @YUZLER INT, @TOPLAM INT
--SET @SAYI = 555
--SET @BIRLER = @SAYI % 10
--SET @YUZLER = @SAYI / 100
--SET @ONLAR = (@SAYI / 10) % 10
--SET @TOPLAM = @BIRLER + @ONLAR + @YUZLER
--SELECT @TOPLAM

--USE SatisDB

--SELECT * FROM TBLMUSTERI
--DECLARE @Bakiye int
--SET @Bakiye = (SELECT MAX (MUSTERIBAKIYE) FROM TBLMUSTERI)
--SELECT @Bakiye

--SELECT * FROM TBLURUNLER

--DECLARE @stok int
--SELECT @stok = (SELECT MAX(URUNSTOK) FROM TBLURUNLER)
--SELECT @stok FROM TBLURUNLER WHERE URUNSTOK = @stok

--select @@SERVERNAME, @@ERROR, @@DEFAULT_LANGID, @@LANGUAGE, @@MAX_CONNECTIONS,
--@@MICROSOFTVERSION, @@IDENTITY, @@TEXTSIZE, @@VERSION

--Print 'Merhaba'
--DECLARE @S1 INT, @S2 INT, @SONUC INT
--SET @S1 = 4
--SET @S2 = 8
--SET @SONUC = @S1 * @S2
--PRINT '4 �LE 8 �ARPIMININ SONUCU:'
--PRINT @SONUC

--DECLARE @Kisiler TABLE
--(
--KisiID int identity(1,1),
--KisiAD varchar(10),
--KisiSehir varchar(15)
--)
--INSERT INTO @Kisiler(KisiAD,KisiSehir) VALUES ('AL�','MALATYA')
--INSERT INTO @Kisiler (KisiAD,KisiSehir) VALUES ('EMEL','TRABZON')
--SELECT * FROM @Kisiler WHERE KisiSehir LIKE '%r%'

--if(10 < 5)
--PRINT 'MERHABA'
--ELSE
--PRINT 'SELAM'

--SELECT * FROM TBLURUNLER

--DECLARE @TOPLAM INT
--SET @TOPLAM = (SELECT SUM(URUNSTOK) FROM TBLURUNLER)

--IF(SELECT SUM(URUNSTOK) FROM TBLURUNLER) > 100
--PRINT 'TOPLAM URUN SAYISI: '+ CAST (@TOPLAM AS VARCHAR)  +' 100 DEN BUYUK'
--ELSE
--PRINT 'TOPLAM URUN SAYISI 100 DEN K���K'

--IF(SELECT COUNT(*) FROM TBLURUNLER) > 20
--PRINT '20 DEN FAZLA �E��T �R�N VAR'
--ELSE
--PRINT '20 DEN AZ �E��T �R�N VAR'

--select URUNAD, URUNMARKA, URUNDURUM =
--CASE URUNDURUM
--WHEN '1' THEN '�R�N VAR'
--WHEN '0' THEN '�R�N YOK'
--END
--from TBLURUNLER

--SELECT URUNAD, URUNMARKA, KATEGORI =
--CASE KATEGORI
--WHEN '1' THEN 'LAPTOP'
--WHEN '2' THEN 'BEYAZ E�YA'
--WHEN '3' THEN 'K���K EV ALET�'
--END
--FROM TBLURUNLER

--CREATE PROCEDURE TEST4
--AS
--SELECT URUNAD, URUNMARKA, URUNSTOK, URUNSTOK =
--CASE
--WHEN URUNSTOK >= 1 AND URUNSTOK <= 5 THEN 'KR�T�K SEV�YE'
--WHEN URUNSTOK >= 6 AND URUNSTOK <= 10 THEN 'TAKV�YE YAPILMALI'
--WHEN URUNSTOK >= 10  THEN '�R�N STOK SAYISI YETERL�'
--END
--FROM TBLURUNLER

--DECLARE @Sayac int
--set @Sayac = 1
--WHILE @Sayac <= 5
--BEGIN
--PRINT 'MERHABA SQL DERSLER�'
--SET @Sayac = @Sayac+1
--END

--DECLARE @i INT
--SET @i = 1
--WHILE @i <= 10
--BEGIN
--PRINT @i
--SET @i+=1
--END

--DECLARE @TOPLAM INT, @SAYAC INT
--SET @SAYAC = 1
--SET @TOPLAM = 0
--WHILE @SAYAC <= 10
--BEGIN
--SET @TOPLAM = @TOPLAM + @SAYAC
--SET @SAYAC += 1
--END
--PRINT @TOPLAM


--WHILE (SELECT AVG(URUNSATISFIYAT - URUNALISFIYAT) FROM TBLURUNLER WHERE KATEGORI = 2) < = 450
--BEGIN
--UPDATE TBLURUNLER SET URUNSATISFIYAT += URUNSATISFIYAT*10/100
--END
--SELECT * FROM TBLURUNLER

--WHILE (SELECT SUM(URUNSTOK) FROM TBLURUNLER) <= 200
--BEGIN
--UPDATE TBLURUNLER SET URUNSTOK += 1
--END
--SELECT * FROM TBLURUNLER

--WAITFOR DELAY '00:00:05'
--INSERT INTO TBLKATEGORI (KATEGORIAD) VALUES ('D��ER')
--SELECT * FROM TBLKATEGORI
