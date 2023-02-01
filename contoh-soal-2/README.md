<h1>JAWABAN</h1>

<h3>Soal No. 5</h3>

```sql
CREATE VIEW view1 AS SELECT tk.kode_atk, tk.nama, tk.jumlah,
IF(tk.jumlah > 10, 'banyak', 'limit') AS keterangan
FROM atk0057 AS tk
```

<h3>Soal No. 7</h3>

```sql
CREATE TRIGGER tambah_data_pemasukan AFTER INSERT ON pemasukan0057
FOR EACH ROW
INSERT INTO log_pemasukan0057 SET
kejadian = "tambah data",
waktu = now()
```

<h3>Soal No. 8</h3>

```sql
CREATE TRIGGER perubahan_jumlah AFTER INSERT ON pemasukan0057
FOR EACH ROW
BEGIN
	UPDATE atk0057 SET jumlah = jumlah + NEW.qty WHERE kode_atk = NEW.kode_atk;
END
```
