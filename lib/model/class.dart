class Course {
  String name;
  String day;
  String room;
  String time;
  String description;
  String imageAsset;

  Course({
    required this.name,
    required this.day,
    required this.room,
    required this.time,
    required this.description,
    required this.imageAsset,
  });
}

var courseList = [
  Course(
      name: 'METODE NUMERIK',
      day: 'Senin',
      room: 'F',
      time: '08:00 - 09:40',
      description:
          'Metode numerik adalah teknik untuk menyelesaikan permasalahan-permasalahan yang diformulasikan secara matematik dengan cara operasi hitungan (arithmetik)',
      imageAsset: 'images/courses/metnum.jpg'),
  Course(
      name: 'TEORI BAHASA DAN OTOMATA',
      day: 'Senin',
      room: 'F',
      time: '10:00 - 11:40',
      description:
          'Teori bahasa dan automata adalah studi tentang mesin abstrak dan automata, serta masalah komputasi yang dapat diselesaikan dengan menggunakan mereka',
      imageAsset: 'images/courses/tbo.jpg'),
  Course(
      name: 'PENGOLAHAN CITRA',
      day: 'Selasa',
      room: 'F',
      time: '10:00 - 12:30',
      description:
          'Pengolahan citra adalah penggunaan komputer digital untuk memproses gambar digital melalui suatu algoritma',
      imageAsset: 'images/courses/pengcit.jpg'),
  Course(
      name: 'PEMROGRAMAN OBJEK',
      day: 'Selasa',
      room: 'F',
      time: '13:00 - 14:40',
      description:
          'Pemrograman berorientasi objek adalah paradigma pemrograman yang didasarkan pada konsep "objek", yang dapat berisi data dan kode: data dalam bentuk bidang, dan kode, dalam bentuk prosedur',
      imageAsset: 'images/courses/oop.jpg'),
  Course(
      name: 'PEMROGRAMAN WEB',
      day: 'Selasa',
      room: 'F',
      time: '15:00 - 16:40',
      description:
          'Pengembangan web adalah pekerjaan yang terlibat dalam mengembangkan situs web untuk Internet. Pengembangan web dapat berkisar dari mengembangkan satu halaman statis sederhana dari teks biasa hingga aplikasi web yang kompleks',
      imageAsset: 'images/courses/pweb.png'),
  Course(
      name: 'KECERDASAN BUATAN',
      day: 'Rabu',
      room: 'F',
      time: '10:00 - 11:40',
      description:
          'Kecerdasan buatan atau Artificial Intelligence (AI) adalah simulasi dari kecerdasan yang dimiliki oleh manusia yang dimodelkan di dalam mesin dan diprogram agar bisa berpikir seperti halnya manusia.',
      imageAsset: 'images/courses/ai.jpg'),
  Course(
      name: 'TECHNOPRENEURSHIP',
      day: 'Rabu',
      room: 'F',
      time: '13:00 - 14:40',
      description:
          'Technopreneurship adalah entrepreneurship dalam bidang teknologi di mana keahlian yang dibutuhkan tak lagi hanya wirausaha,  tetapi juga pengetahuan akan teknologi mutakhir.',
      imageAsset: 'images/courses/techno.png'),
  Course(
      name: 'ETIKA PROFESI',
      day: 'Kamis',
      room: 'F',
      time: '08:00 - 09:40',
      description:
          'Etika profesi memiliki pengertian sebagai suatu sikap hidup yang bertujuan untuk dapat memberikan suatu pelayanan yang bersifat profesional terhadap masyarakat.',
      imageAsset: 'images/courses/etika.jpg'),
  Course(
      name: 'ANALISA ALGORITMA',
      day: 'Kamis',
      room: 'F',
      time: '10:00 - 11:40',
      description:
          'Analisa algoritma adalah proses menemukan kompleksitas komputasi algoritme—jumlah waktu, penyimpanan, atau sumber daya lain yang diperlukan untuk menjalankannya',
      imageAsset: 'images/courses/analog.jpg'),
  Course(
      name: 'KEAMANAN SISTEM KOMPUTER',
      day: 'Kamis',
      room: 'F',
      time: '13:00 - 15:30',
      description:
          'Keamanan sistem komputer adalah perlindungan sistem komputer dan jaringan dari pengungkapan informasi, pencurian atau kerusakan pada perangkat keras, perangkat lunak atau data elektronik mereka, serta dari gangguan atau penyesatan layanan yang mereka berikan',
      imageAsset: 'images/courses/sec.jpg'),
  Course(
      name: 'PEMROGRAMAN SYSTEM',
      day: 'Jumat',
      room: 'F',
      time: '08:00 - 09:40',
      description:
          'Pemrograman sistem melibatkan perancangan dan penulisan program komputer yang memungkinkan perangkat keras komputer untuk berinteraksi dengan pemrogram dan pengguna, yang mengarah pada pelaksanaan efektif perangkat lunak aplikasi pada sistem komputer.',
      imageAsset: 'images/courses/pemsys.jfif')
];
