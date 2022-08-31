class TempatWisata {
  String nama;
  String lokasi;
  String deskripsi;
  String gambar;
  List<String> gambarUrls;

  TempatWisata({
    required this.nama,
    required this.lokasi,
    required this.deskripsi,
    required this.gambar,
    required this.gambarUrls,
  });
}

var tempatWisata = [
  TempatWisata(
    nama: 'Candi Borobudur',
    lokasi: 'Magelang',
    deskripsi:
        'Candi Borobudur adalah sebuah candi Buddha yang terletak di Borobudur, Magelang, Jawa Tengah, Indonesia. Candi ini terletak kurang lebih 100 km di sebelah barat daya Semarang, 86 km di sebelah barat Surakarta, dan 40 km di sebelah barat laut Yogyakarta.',
    gambar: 'assets/images/borobudur.jpg',
    gambarUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/50/32/5a/borobudur-temple-the.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/cd/4f/71/borobudur-and-the-sky.jpg?w=2000&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/55/39/d7/borobudur-temple.jpg?w=2000&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-s/02/dd/25/02/candi-borobudur.jpg?w=600&h=-1&s=1',
    ],
  ),
  TempatWisata(
    nama: 'Hutan Pinus Kayon',
    lokasi: 'Semarang',
    deskripsi:
        'Hutan pinus yang terkenal di Semarang adalah hutan pinus kayon yang merupakan hutan pinus dengan panorama yang yang begitu indah dan terlihat begitu asli dan begitu asri. Bila Anda biasa melihat hutan pinus dengan berbagai macam tambahan spot yang sengaja dibuat maka hal ini berbeda dengan pinus kayon yang memang masih sangat asli dan begitu alami layaknya hutan pinus yang masih lekat dengan kealamiannya.',
    gambar: 'assets/images/hutan_pinus.jpg',
    gambarUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/5e/cd/f5/pine-forest.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/5e/cd/e9/pine-forest.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/5e/cd/d7/pine-forest.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/5e/cd/d7/pine-forest.jpg?w=1400&h=-1&s=1'
    ],
  ),
  TempatWisata(
    nama: 'Kawasan Wisata Baturaden',
    lokasi: 'Banyumas',
    deskripsi:
        'Baturraden adalah sebuah kecamatan di Kabupaten Banyumas, Provinsi Jawa Tengah, Indonesia. Kecamatan ini berjarak sekitar 7,5 Km dari Kota Purwokerto ke arah utara. Pusat pemerintahannya berada di Desa Rempoah. Kecamatan ini terletak di lereng selatan Gunung Slamet dan merupakan kawasan wisata.',
    gambar: 'assets/images/baturaden.jpg',
    gambarUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/9e/18/98/pancuran-7.jpg?w=2400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/19/f1/7d/pendanten-waterfall-fantastic.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/19/f4/de/penganten-waterfall.jpg?w=1400&h=-1&s=1',
    ],
  ),
  TempatWisata(
    nama: 'Taman Nasional Karimunjawa',
    lokasi: 'Jepara',
    deskripsi:
        'Taman Nasional Karimunjawa adalah sebuah taman nasional yang terletak di utara pulau Jawa. Wilayah taman nasional ini berada dalam administrasi Kabupaten Jepara. Pengelolaanya terdiri dari zona inti, zona perlindungan dan zona pemanfaatan',
    gambar: 'assets/images/karimun.jpg',
    gambarUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/0f/06/84/photo0jpg.jpg?w=2400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/e1/03/91/photo0jpg.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/6a/ef/70/kura-kura-resort.jpg?w=1800&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/5f/19/7d/ujung-gelam-karimunjawa.jpg?w=900&h=-1&s=1',
    ],
  ),
  TempatWisata(
    nama: 'Lawang Sewu',
    lokasi: 'Semarang',
    deskripsi:
        'Lawang Sewu adalah bangunan perkantoran yang terletak di seberang Tugu Muda, Kota Semarang, Jawa Tengah, Indonesia, yang dibangun sebagai kantor pusat Nederlandsch-Indische Spoorweg Maatschappij (NIS). Bangunan ini berstatus sebagai aset Kereta Api Indonesia (KAI) karena merupakan buah dari perebutan NIS oleh Djawatan Kereta Api Republik Indonesia (DKARI) pada masa Perang Kemerdekaan. Saat ini bangunan tersebut dijadikan sebagai museum dan galeri sejarah perkeretaapian oleh Unit Pusat Pelestarian dan Desain Arsitektur dan KAI Wisata.',
    gambar: 'assets/images/lawang_sewu.jpg',
    gambarUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/75/9f/a8/2018-02-02-01-34-02-largejpg.jpg?w=1000&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/44/a9/d1/lawang-sewu-building.jpg?w=700&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/41/39/a4/icon-di-kota-semarang.jpg?w=800&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/2f/49/14/photo6jpg.jpg?w=1100&h=-1&s=1',
    ],
  ),
  TempatWisata(
    nama: "Kota Lama",
    lokasi: 'Semarang',
    deskripsi:
        'Kota Lama Semarang adalah suatu kawasan di Semarang yang menjadi pusat perdagangan pada abad 19-20 . Pada masa itu, untuk mengamankan warga dan wilayahnya, kawasan itu dibangun benteng, yang dinamai benteng Vijfhoek. Untuk mempercepat jalur perhubungan antar ketiga pintu gerbang dibenteng itu maka dibuat jalan-jalan perhubungan, dengan jalan utamanya dinamai Heerenstraat. Saat ini bernama Jl. Letjen Soeprapto. Salah satu lokasi pintu benteng yang ada sampai saat ini adalah Jembatan Berok, yang disebut De Zuider Por. Kata Berok sendiri merupakan hasil pelafalan masyarakat Pribumi yang kesulitan melafalkan kata Burg dalam Bahasa Belanda.',
    gambar: 'assets/images/balaikota.jpg',
    gambarUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/46/20/80/img-20180302-110509-482.jpg?w=2400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/46/20/7f/img-20180307-152853-192.jpg?w=1800&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/3d/ba/66/kota-lama-semarang.jpg?w=2000&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/3d/ba/4e/kota-lama-semarang.jpg?w=2000&h=-1&s=1',
    ],
  ),
  TempatWisata(
    nama: 'Gua Petruk',
    lokasi: 'Kebumen',
    deskripsi:
        'Gua Petruk adalah sebuah situs geologi yang terbentuk dari proses alamiah di Kawasan Karst Gombong Selatan yang terletak di Dusun Mandayana, Desa Candirenggo, Kecamatan Ayah, Kabupaten Kebumen, Provinsi Jawa Tengah, Indonesia. ',
    gambar: 'assets/images/gua_petruk.jpg',
    gambarUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/34/2a/18/gua-petruk.jpg?w=700&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/17/cb/ca/gua-petruk.jpg?w=1200&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/17/cb/6e/gua-petruk.jpg?w=2000&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/17/ca/f9/gua-petruk.jpg?w=1200&h=-1&s=1',
    ],
  ),
  TempatWisata(
    nama: 'Umbul Ponggok',
    lokasi: 'Klaten',
    deskripsi:
        'Umbul Ponggok merupakan wisata air yang terletak di desa Ponggok, Klaten, Jawa Tengah. Umbul Ponggok merupakan mata air yang dimanfaatkan menjadi objek wisata, pemandian dan selam permukaan.',
    gambar: 'assets/images/ponggok.jpg',
    gambarUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/fe/c0/bb/umbul-ponggok.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/4e/b4/e0/nyewa-motor.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/4e/b4/e0/nyewa-motor.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/4e/b4/e0/nyewa-motor.jpg?w=1400&h=-1&s=1',
    ],
  ),
  TempatWisata(
    nama: 'Dataran Tinggi Dieng',
    lokasi: 'Wonosobo',
    deskripsi:
        'Dataran Tinggi Dieng atau Plato Dieng adalah sebuah wilayah di pusat Jawa Tengah yang memiliki ciri geologi, sejarah, dan pertanian yang dinilai khas. Dataran ini diapit oleh jajaran perbukitan di sisi utara dan selatannya, yang berasal dari aktivitas vulkanik yang sama dan disebut Pegunungan Dieng.',
    gambar: 'assets/images/dieng.jpg',
    gambarUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/76/9a/93/dataran-tinggi-dieng.jpg?w=800&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/66/0d/74/kawah-sikidang.jpg?w=2400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/66/0d/74/kawah-sikidang.jpg?w=2400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/66/0d/73/telaga-warna.jpg?w=2400&h=-1&s=1'
    ],
  ),
  TempatWisata(
    nama: 'Puri Maerokoco',
    lokasi: 'Semarang',
    deskripsi:
        'Puri Maerokoco atau sering disebut Taman Mini Jawa Tengah Indah adalah sebuah objek wisata yang berada di Jalan Yos Sudarso Semarang kurang lebih 5 Km dari Tugu Muda, adalah salah satu bagian taman dari kawasan PRPP Jawa Tengah. ',
    gambar: 'assets/images/maerokoco.jpg',
    gambarUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/57/3c/e8/kabupaten-yang-ada-di.jpg?w=1100&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/57/3d/01/jalan-setapak-melingkari.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/57/3e/0c/perahu-untuk-berkeliling.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/57/3d/96/representatif-dari-karimun.jpg?w=1100&h=-1&s=1'
    ],
  ),
];
