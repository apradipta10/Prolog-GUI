?-
  G_gambar is bitmap_image("background.bmp",_),
   window(class(window1), title("Pendeteksi Handphone Rusak - Prologger"), pos(200, 100), size(520, 540)).

  window1(init) :-
     button( class(mulai), text("Mulai"), pos(350, 210), size(120, 35) ),
     button( class(tentang), text("Tentang"), pos(350, 250), size(120, 35) ),
     button( class(prologger), text("Prologger"), pos(350, 290), size(120, 35) ),
     button( class(exit), text("Exit"), pos(350, 330), size(120, 35) ).


  window1(paint):-
     draw_bitmap(0,0,G_gambar,_,_).

  mulai(press) :-
     window(class(window2), title("Pendeteksi Handphone Rusak - Prologger"), pos(260, 160), size(520, 540)).

  tentang(press) :-
     message("Tentang","Aplikasi ini bertujuan untuk membantu orang untuk mendeteksi handphone nya rusak",_).

  prologger(press) :-
     message("Tentang","Aplikasi ini bertujuan untuk membantu orang untuk mendeteksi handphone nya rusak",_).
    
  exit(press) :-
     not(yes_no("Konfirmasi","Apakah Anda yakin ingin keluar?",?),
     close_window(_)).


window2(init):-
 button( class(power), text("IC POWER"), pos(300, 210), size(120, 35) ),
 button( class(signal), text("IC SIGNAL"), pos(300, 250), size(120, 35) ),
 button( class(lcd), text("LCD"), pos(300, 290), size(120, 35) ),
 button( class(interface), text("IC INTERFACE"), pos(300, 330), size(120, 35) ),
 button( class(socket), text("SOCKET CHARGE"), pos(100, 210), size(120, 35) ),
 button( class(speaker), text("SPEAKER"), pos(100, 250), size(120, 35) ),
 button( class(keypad), text("KEYPAD"), pos(100, 290), size(120, 35) ),
 button( class(matot), text("MATI TOTAL"), pos(100, 330), size(120, 35) ).


power(press) :-
     message("power", " Solusi :\n" +
	                 "- Lepas battery lalu pasang lagi atau coba pakai battery lain dan coba hidupkan\n" +
	                 "- Periksa konektor battery dan coba tekan untuk melihat tingkat lentur atau tidak,bila rusak ganti yang baru\n" +
	                 " Perkiraan Biaya Rp.200.000", !).

signal(press) :-
     message("signal"," Solusi :\n" +
	                 "- Ponsel harus di Flash dengan versi yang sama atau dengan Versi yang lebih Rendah ( Down Grade ) atau dengan versi yang lebih tinggi ( Up Grade )\n" +
	                 "- Periksa komponen ponsel yang ada hubungan dengan frekwensi mengalami kerusakan\n" +
	                 " Perkiraan Biaya Rp.300.000", ?).

lcd(press) :-
     message("lcd", " Solusi :\n" +
	                 "- Bongkar chasing handphone kamu (dalam keadaan menyala). Bersihkan dulu dengan sikat, debu yang ada pada celah Back Chasing/Chasing handphone agar tidak risih. Gosok secara beraturan LCD yang rusak secara perlahan dengan pengorek telinga\n" +
	                 "- Jika bergaris kebawah (Vertical), gosok secara halus keatas dan kebawah. Jika membentuk lingkaran, gosok secara halus searah jarum jam. Jika bergaris kesamping (Horizontal), gosok secara halus kekiri dan ke kanan. Jika sudah, Restart handphone\n" +
	                 " Perkiraan Biaya Rp.900.000", !).


interface(press) :-
     message("interface", " Solusi :\n" +
	                 "- Lepaskan IC UI, lalu hidupkan ponsel. Maka ada tampilan pada LCD ponsel Insert SIM Card\n" +
	                 "- Pasang IC UI yang baru. Hidupkan ponsel, maka ponsel akan bekerja dengan baik\n" +
	                 " Perkiraan Biaya Rp.500.000", !).



socket(press) :-
     message("socket", " Solusi :\n" +
	                 "- Periksa slot positif dan negatif baterai dengan menggunakan alat multi tester. Lakukan kalibrasi sesuai dengan pedoman yang ditentukan\n" +
	                 "- Gunakan Kabel Data USB untuk charger. Tukar Kabel Charger atau Adapter nya dan test di handphone lainnya\n" +
	                 " Perkiraan Biaya Rp.600.000", !).



speaker(press) :-
     message("speaker", " Solusi :\n" +
	                 "- Kalau anda menggunakan microSD card coba dilepaskan dan dipasang kembali. Jadi lepaskan dahulu kemudian nyalakan handphone anda dan pasangkan kabel headphonenya, kalau muncul suaranya maka pasang kembali kartu SDnya. Belum sempat saya coba kalau yang ini karena sudah berhasil diperbaiki, tapi saya tuliskan karena banyak orang mengatakan ini bisa menjadi penyebabnya\n" +
	                 "- Silahkan coba install aplikasi SoundAbout untuk “memaksa” Android menggunakan jalur audio mana dalam perangkatnya\n" +
	                 " Perkiraan Biaya Rp.200.000", !).


keypad(press) :-
     message("keypad", " Solusi :\n" +
	                 "- hang pada menu, tidak bisa bergerak ke kiri atau ke kanan dikarenakan tuts keypad sudah aus\n" +
	                 " Perkiraan Biaya Rp.100.000", !).


matot(press) :-
     message("matot", " Solusi :\n" +
	                 "- Handphone Mati Total! Silahkan Lempar dan Beli yang Baru:\n" +
	                 " Perkiraan Biaya Rp.800.000", !).

window2(paint):-
     draw_bitmap(0,0,G_gambar,_,_).

