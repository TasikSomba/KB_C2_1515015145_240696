PREDICATES

ketua(STRING,symbol)
wakil_ketua(STRING,STRING)
sekertaris(STRING,STRING)
wakil_sekertaris(STRING,STRING)
bendahara(STRING,STRING)
wakil_bendahara(STRING,STRING)
kordinator_acara(STRING,STRING)
anggota_seksi_acara(STRING,STRING)
kordinator_konsumsi(STRING,STRING)
anggota_seksi_konsumsi(STRING,STRING)
kordinator_perlengkapan(STRING,STRING)
anggota_seksi_perlengkapan(STRING,STRING)
kordinator_usaha_dana(STRING,STRING)
anggota_seksi_usaha_dana(STRING,STRING)
kordinator_dokumentasi(STRING,STRING)
anggota_seksi_dokumentasi(STRING,STRING)

nondeterm rekan_pencarian_dana(STRING,STRING)

CLAUSES
ketua("Tomy",ketua_panitia).
wakil_ketua("Misel","Tomy").
sekertaris("Merti","Tomy").
wakil_sekertaris("Novi","Merti").
bendahara("Gustri","Tomy").
wakil_bendahara("Ebed","Gustri").
kordinator_acara("Ayub","Tomy").
anggota_seksi_acara("Silas","Ayub").
kordinator_konsumsi("Mikael","Tomy").
anggota_seksi_konsumsi("Geo","Mikael").
kordinator_perlengkapan("Yoal","Tomy").
anggota_seksi_perlengkapan("Rehan","Yoal").
kordinator_usaha_dana("Agre","Gustri").
anggota_seksi_usaha_dana("Algras","Agre").
kordinator_dokumentasi("Lia","Tomy").
anggota_seksi_dokumentasi("Gea","Lia").

rekan_pencarian_dana(A,B):-anggota_seksi_usaha_dana(A,C),kordinator_usaha_dana(C,B).
rekan_pencarian_dana(A,B):-kordinator_usaha_dana(A,C),bendahara(C,B).

GOAL
rekan_pencarian_dana("Algras",X).
