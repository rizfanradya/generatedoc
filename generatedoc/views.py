from django.shortcuts import render
from .models import Siswa


def index(request):
    data_siswa = Siswa.objects.all().order_by('nama')

    for siswa in data_siswa:
        nilai_rata_rata = sum([
            siswa.pendidikan_agama,
            siswa.pendidikan_pancasila,
            siswa.bahasa_indonesia,
            siswa.matematika,
            siswa.ipa,
            siswa.ips,
            siswa.seni_budaya,
            siswa.penjasorkes,
            siswa.bahasa_lampung,
            siswa.pendidikan_anti_korupsi
        ]) / 10

        siswa.nilai_rata_rata = nilai_rata_rata

    context = {'no_surat': '35', 'data': data_siswa}
    return render(request, 'index.html', context)
