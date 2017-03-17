DOMAINS
mhs=symbol
matakuliah=symbol
nilai=symbol

PREDICATES
nondeterm mahasiswa(mhs,matakuliah,nilai)
nondeterm matakuliah(matakuliah)

CLAUSES

matakuliah("AI").
matakuliah("PDE").
matakuliah("SO").

mahasiswa(irfan,"AI","A").
mahasiswa(komeng,"AI","D").
mahasiswa(dati,"AI","C").
mahasiswa(fatima,"AI","B").
mahasiswa(maspion,"AI","C").

mahasiswa(icky,"PDE","E").
mahasiswa(embang,"PDE","A").
mahasiswa(salmin,"PDE","D").
mahasiswa(vina,"PDE","B").
mahasiswa(sondang,"PDE","C").

mahasiswa(pamuji,"SO","D").
mahasiswa(luki,"SO","E").
mahasiswa(sadek,"SO","B").
mahasiswa(yusida,"SO","A").
mahasiswa(eka,"SO","A").

GOAL
mahasiswa(Nama,"AI",_);
mahasiswa(Nama,_,Lulus), Lulus<="C";
mahasiswa(Nama,_,Tidak_Lulus), Tidak_Lulus>"C";
matakuliah(Matkul);
mahasiswa(Nama,_,_).

