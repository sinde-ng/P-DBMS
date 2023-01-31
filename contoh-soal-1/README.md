<h1>JAWABAN</h1>

<h3>Soal No. 5</h3>

```sql
CREATE TRIGGER penarikan_saldo AFTER INSERT ON penarikan0057
FOR EACH ROW
BEGIN
	UPDATE nasabah0057 SET saldo = saldo - NEW.nominal WHERE no_rekening = NEW.no_rekening;
END
```

<h3>Soal No. 7</h3>

```sql
CREATE VIEW view1 AS SELECT nb.no_rekening, nb.saldo,
IF(nb.saldo > 3000000, 'kompor gas',
   IF(nb.saldo > 2000000, 'dispenser', 'payung')
) AS bonus
FROM nasabah0057 as nb
```

<h3>Soal No. 8</h3>

```sql
SELECT nb.no_rekening, nb.saldo FROM nasabah0057 AS nb
```

<h3>Soal No. 10</h3>

```sql
CREATE TRIGGER catat_perubahan_data BEFORE UPDATE ON nasabah0057
FOR EACH ROW
INSERT INTO log_nasabah0057
SET no_rekening = OLD.no_rekening,
saldo_lama = OLD.saldo,
saldo_baru = NEW.saldo,
waktu_perubahan = now()
```
