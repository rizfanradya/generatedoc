from django.db import models


class Siswa(models.Model):
    nama = models.CharField(max_length=100)
    tempat_tanggal_lahir = models.CharField(max_length=100)
    nomor_induk_siswa = models.CharField(max_length=20)
    nisn = models.CharField(max_length=20)
    pendidikan_agama = models.FloatField()
    pendidikan_pancasila = models.FloatField()
    bahasa_indonesia = models.FloatField()
    matematika = models.FloatField()
    ipa = models.FloatField()
    ips = models.FloatField()
    seni_budaya = models.FloatField()
    penjasorkes = models.FloatField()
    bahasa_lampung = models.FloatField()
    pendidikan_anti_korupsi = models.FloatField()

    def __str__(self):
        return self.nama
