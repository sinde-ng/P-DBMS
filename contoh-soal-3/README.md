<h1>JAWABAN</h1>

<h3>Soal No. 1</h3>

```sql
CREATE TRIGGER aksi_ubah BEFORE UPDATE ON tiket0057
FOR EACH ROW
INSERT INTO log_perubahan
SET nama_tiket = OLD.nama_tiket,
harga_lama = OLD.harga,
harga_baru = NEW.harga,
waktu_perubahan = now()
```

<h3>Soal No. 3</h3>

```sql
CREATE VIEW view1 AS
SELECT pn.kode_penonton, pn.nama, pn.tanggal_beli, tk.nama_tiket, tk.harga
FROM penonton0057 AS pn, tiket0057 AS tk
WHERE pn.kamar = tk.nama_tiket
```

<h3>Soal No. 4</h3>

```sql
SELECT pn.kode_penonton, pn.nama, pn.jenis_kelamin, pn.alamat, pn.kamar,
IF (pn.kamar = 'VIP', 'poster',
	IF(pn.kamar = 'Early Bird', 'foto', 'tidak dapat')
) AS bonus
FROM penonton0057 AS pn
```
