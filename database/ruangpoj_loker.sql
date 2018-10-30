-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 02, 2018 at 09:29 AM
-- Server version: 5.7.23
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ruangpoj_loker`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_area` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `nama_area`, `area_slug`, `created_at`, `updated_at`) VALUES
(2, 'purbalingga', 'purbalingga', NULL, NULL),
(3, 'Purwokerto', 'purwokerto', NULL, NULL),
(4, 'Cilacap', 'cilacap', NULL, NULL),
(5, 'Banjarnegara', 'banjarnegara', NULL, NULL),
(6, 'Kebumen', 'kebumen', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `judul_artikel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_artikel` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_artikel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dibaca` int(11) NOT NULL DEFAULT '1',
  `created_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `user_id`, `judul_artikel`, `judul_slug`, `isi_artikel`, `tag_artikel`, `deskripsi_seo`, `dibaca`, `created_user`, `created_at`, `updated_at`) VALUES
(28, 1, 'Tips Agar Lolos Tes Kesehatan Pekerjaan ( Medical Check Up )', 'tips-agar-lolos-tes-kesehatan-pekerjaan-medical-check-up', '<p>Bagi para calon karyawan, tes kesehatan kerap menjadi momok yang menakutkan. Terutama bagi mereka yang memang jarang berolahraga atau punya bobot tubuh yang tidak ideal. Apalagi bagi mereka yang perokok berat.</p>\r\n<p>Namun demikian, tes kesehatan atau medical check up ini bukanlah sesuatu yang akan memberi Anda kegagalan. Karena, medical check up hanya melihat kondisi tubuh pada hari itu.</p>\r\n<p>Jika hari itu tubuh Anda bugar dan telah menyiapkan diri secara khusus maka peluang untuk lulus tes kesehatan sangatlah besar.</p>\r\n<p>Jadi, kalau Anda memang sudah mendapat jadwal untuk melakukan tes kesehatan, lakukan persiapan dengan baik jauh-jauh hari sebelumnya. Cara-caranya bisa Anda baca di artikel ini. Yuk simak bareng-bareng. <span id=\"more-1752\"></span></p>\r\n<h3>1. Istirahat dan Tidur yang Cukup</h3>\r\n<p>Ini menjadi poin penting yang harus Anda lakukan sebelum melakoni medical check up. Jangan pernah begadang di malam hari menjelang tes medis. Karena akan membuat kondisi tubuh tidak fit keesokan harinya.</p>\r\n<p>Apa pun alasannya, Anda dilarang keras begadang terutama menjelang hari tes medis. Ketika Anda kurang istirahat dan tidur tak hanya tekanan darah yang tidak normal, kondisi fisik lainnya pun pasti berada di bawah normal.</p>\r\n<p>Ada baiknya, Anda sudah merutinkan tidur lebih cepat dan bangun lebih awal beberapa hari sebelum melakukan medical check up. Sehingga kondisi tubuh Anda akan siap untuk menjalaninya nanti. Anda pun akan mendapat hasil positif dari tes medis tersebut.</p>\r\n<h3>2. Rutin Minum Air Putih</h3>\r\n<p>Normalnya, seseorang butuh asupan air minum sebanyak 8 gelas atau kurang lebih 2 liter dalam sehari. Rutin meminum air putih akan melancarkan metabolisme tubuh dan membuat kebugaran&nbsp; selalu terjaga.</p>\r\n<p>Jika Anda belum rutin minum air putih, maka setidaknya Anda harus memaksakan diri untuk rajin melakukannya dalam satu pekan sebelum tes medis. Tak perlu langsung 8 gelas perhari, lakukan secara bertahap hingga akhirnya bisa mencapai tahap maksimal.</p>\r\n<p>Minum air putih secara rutin bisa membuat Anda lulus tes kesehatan. Karena air putih yang diminum secara rutin bakal membantu tubuh membuang kotoran dan racun yang ada. Sehingga kondisi tubuh akan terlihat sehat saat menjalani pemeriksaan.</p>\r\n<h3>3. Jangan Minum Obat-obatan</h3>\r\n<p>Hal ini tak kalah penting. Hindari obat-obatan sebelum melakukan medical check up. Setidaknya dalam kurun waktu 3 hari sebelum jadwal tes medis.</p>\r\n<p>Bagaimanapun, zat atau bahan pembuat obat-obatan tersebut akan tersimpan dalam darah selama berhari-hari sejak diminum. Jika hal ini masih dilakukan, maka hasil tes darah Anda tidak akan maksimal.</p>\r\n<p>Ditakutkan, ada sisa obat yang justru akan membuat hasil tes darah berbeda dengan kondisi yang sebenarnya.</p>\r\n<p>Jika memang Anda tengah menjalani perawatan yang membuat Anda harus tetap minum obat, sebaiknya minta jadwal tes medis diubah. Sehingga tubuh Anda sudah berada dalam kondisi fit saat melakoni tes medis.</p>\r\n<h3>4. Hentikan Merokok</h3>\r\n<p>Tips ini memang sangat berat dilakukan oleh para perokok berat. Namun, mau tidak mau, Anda memang harus berhenti merokok. Setidaknya untuk sementara waktu sampai proses tes medis selesai dilakukan sepenuhnya.</p>\r\n<p>Kandungan nikotin yang menempel di paru-paru ini akan&nbsp; mudah terlihat dan terbaca saat dilakukan rontgen. Jelas, kondisi ini tidak bagus bagi Anda karena akan mengurangi penilaian di mata HRD.</p>\r\n<p>Karena itu, pastikan Anda sudah menghentikan, minimal mengurangi dalam jumlah banyak, beberapa hari sebelum tes medis. Agar kondisi&nbsp; paru-paru saat diperiksa tidak terlalu dipenuhi oleh tanda hitam nikotin yang menempel.</p>\r\n<h3>5. Perbanyak Konsumsi Sayur dan Buah-buahan</h3>\r\n<p>Sayur dan buah-buahan adalah jenis sumber makanan yang sangat dianjurkan untuk mendapatkan tubuh yang sehat dan bugar.</p>\r\n<p>Jika Anda selama ini masih kurang mengkonsumsi sayur dan buah-buhanan, maka dengan rutin mengkonsumsi keduanya akan membantu untuk lulus tes kesehatan.</p>\r\n<p>Kandungan serat yang tinggi di buah-buahan dan sayur akan sangat membantu metabolisme tubuh. Sehingga semua kotoran dan kandungan yang tidak dibutuhkan akan selalu dibuang.</p>\r\n<p>Lakukan kebiasaan mengkonsumsi sayuran dan buah-buahan ini setidaknya satu minggu sebelum menjalankan tes medis. Syukur-syukur kalau setelah tes medis Anda tetap rutin mengkonsumsinya. Sehingga tubuh Anda pun tetap selalu terjaga kebugarannya.</p>\r\n<h3 style=\"text-align: left;\">6.&nbsp; Hindari Makan Gorengan atau yang Mengandung Kolesterol</h3>\r\n<p>Gorengan menjadi jenis makanan yang punya karakter dan sifat yang berbanding terbalik dengan sayuran dan buah-buahan. Makan gorengan selain meningkatkan kadar kolesterol juga bisa memicu gula darah.</p>\r\n<p>Karena itu sebaiknya Anda menghindari mengkonsumsi gorengan sebelum menjalani medical check up. Jika hasil pemeriksaan menunjukkan kadar kolesterol dalam darah terlalu tinggi, Anda akan menyesal bukan?</p>\r\n<p>Tak hanya gorengan, semua bahan makanan yang diketahui mengandung kolesterol tinggi juga sebaiknya dihindari. Seperti telur puyuh dan daging bebek.</p>\r\n<p>Setidaknya sampai proses tes medis selesai dilakukan, setelah itu Anda tetap boleh kok menyantapnya kembali.</p>\r\n<h3>7. Minum Jus Temulawak</h3>\r\n<p>Jus Temulawak dipercaya mampu menurunkan kadar SGPT dan SGOT di dalam darah. Kalau memang Anda merasa atau mengetahui kadar SGPT dan SGOT cukup tinggi, ada baiknya rajin minum jus Temulawak ini agar bisa lulus tes kesehatan.</p>\r\n<p>Rutinkan minum jus Temulawak ini minimal sehari sekali. Namun, menjelang hari-H, sebaiknya minum secara rutin dua kali sehari.</p>\r\n<p>Diminum pagi hari dan menjelang tidur. Sehingga kandungan yang ada di dalam darah Anda lebih banyak hal-hal yang positif dibanding negatif.</p>\r\n<h3>8. Olahraga Ringan Seminggu Sebelumnya</h3>\r\n<p>Menjaga kebugaran dengan berolahraga ringan menjelang tes medis juga menjadi cara yang bisa Anda lakukan. Dengan berolahraga, selain metabolisme yang terjaga, aliran darah pun akan lebih lancar.</p>\r\n<p>Dengan demikian, Anda dipastikan akan berada dalam kondisi fit ketika melakukan tes medis.</p>\r\n<p>Olahraga ringan yang bisa Anda lakukan adalah joging atau berjalan cepat. Lakukan setidaknya 30 menit setiap hari. Setidaknya 1-2 minggu sebelum Anda melakukan medical check up.</p>\r\n<p>Dengan berolahraga, semua organ di dalam tubuh akan bekerja dengan aktif. Baik jantung, paru-paru, ginjal, maupun hati. Terutama untuk membuang berbagai zat negatif yang ada di dalam tubuh.</p>', 'tes-kesehatan-kerja', '8 Tips lolos seleksi kesehatan atau medical check up untuk pekerjaan', 19, 'admin', '2018-04-09 06:30:37', '2018-04-09 06:30:37'),
(29, 1, 'Baru Lulus Ingin Cepat Kerja ? Perhatikan 9 Tips Berikut', 'baru-lulus-ingin-cepat-kerja-perhatikan-9-tips-berikut', '<p>Menjadi seorang <em>fresh graduate</em> memang butuh kesabaran tinggi untuk mendapatkan pekerjaan. Pasalnya, mayoritas perusahaan akan mencari calon karyawan yang sudah memiliki pengalaman.</p>\r\n<p>Sementara, <em>fresh graduate</em> bisa dibilang minim pengalaman. Maklum, mereka baru saja lulus dan baru mendapatkan ijazah dari tempat pendidikannya.</p>\r\n<p>Namun demikian, bukan berarti fresh graduate tak punya peluang. Syaratnya, tentu saja mereka harus membekali diri dengan sejumlah skill yang bisa memberinya nilai tambah di&nbsp; hadapan perusahaan yang dilamarnya.</p>\r\n<p>Skill-skill ini kadang tidak diuji secara langsung. Tapi akan terbaca dari psikotest atau tes pendukung lainnya. Ketika skill tersebut terlihat dari hasil ujian, maka perusahaan akan punya gambaran soal kelebihan dari sang fresh graduate.</p>\r\n<p>Lalu, skill apa yang harus dimiliki seorang fresh graduate agar cepat mendapat pekerjaan?</p>\r\n<h3>1. Inisiatif</h3>\r\n<p>Ketika Anda melamar pekerjaan, yang akan menjadi pertimbangan pihak perusahaan adalah sikap konsistensi Anda. Apa yang Anda katakan sesuai dengan apa yang Anda kerjakan. Termasuk Anda memang dapat dipercaya untuk menyelesaikan tugas-tugas yang diberikan dengan baik.</p>\r\n<p>Sikap konsistensi ini erat hubungannya dengan Inisiatif yang harus muncul pada diri Anda. Ketika Anda menyanggupi untuk mengerjakan suatu tugas, maka otomatis akan timbul inisiatif Anda untuk memotivasi diri menyelesaikan tugas dengan baik.</p>\r\n<h3>2. Komitmen</h3>\r\n<p>&nbsp;</p>\r\n<p>Pertimbangan lain seorang fresh graduate dapat diterima menjadi karyawan sebuah perusahaan adalah memiliki komitmen. Perusahaan tentu menginginkan karyawan yang mempunyai komitmen tinggi.</p>\r\n<p>Seorang karyawan yang mau dan mampu memberikan waktu dan dedikasi terbaiknya yang bermanfaat untuk kemajuan perusahaan.</p>\r\n<p>Karyawan yang tidak memiliki komitmen terhadap tugasnya tentu dianggap tidak serius bekerja dan hanya merugikan perusahaan. Jika hal ini terlihat dari wawancara awal, tentu akan memperkecil peluang untuk bekerja pada perusahaan yang dilamar.</p>\r\n<p>Karena itu, tegaskan sejak awal bahwa Anda punya komitmen besar untuk tumbuh dan berkembang bersama perusahaan.</p>\r\n<p>&nbsp;</p>\r\n<h3>3. Fleksibilitas</h3>\r\n<p>&nbsp;</p>\r\n<p>Dalam dunia kerja, Anda akan menghadapi berbagai macam kondisi dan situasi yang tidak selalu menyenangkan, yang tidak dapat Anda hindari.</p>\r\n<p>Anda akan bertemu dengan berbagai macam karakter orang yang tentunya membutuhkan perlakuan yang berbeda pula. Di sinilah perlunya fleksibilitas dalam diri Anda.</p>\r\n<p>Fleksibilitas akan membantu untuk menghadapi suatu persoalan dalam pekerjaan dan menyelesaikannya dengan baik. Termasuk juga cara yang Anda gunakan untuk menghadapi karakter atasan, klien, ataupun rekan kerja yang berbeda-beda.</p>\r\n<h3>4. Manajemen Waktu</h3>\r\n<p>Skill untuk fresh graduate yang mesti dimiliki adalah soal manajemen waktu. Hal ini akan terlihat ketika Anda dipanggil untuk wawancara kerja.</p>\r\n<p>Bagaimana Anda melakukan manajemen waktu menjelang wawancara menjadi poin penting yang akan diperhatikan oleh pihak HRD. Terlambat datang ke wawancara, itu sudah menunjukkan Anda kurang bisa mengatur waktu dengan baik.</p>\r\n<p>Skill ini akan penting karena perusahaan akan melihat apakah Anda orang yang disiplin soal waktu, bagaimana menyusun prioritas kerja, dan dapatkah Anda menyelesaikan pekerjaan tepat waktu. Sehingga perusahaan yakin usaha mereka akan berkembang dengan kehadiran Anda.</p>\r\n<p>&nbsp;</p>\r\n<h3>5. Pemecahan Masalah</h3>\r\n<p>Terkait dengan masalah-masalah yang mungkin timbul dalam pekerjaan dan dalam hubungan dengan atasan, klien, ataupun rekan kerja, Anda dituntut untuk memiliki kemampuan memecahkan masalah.</p>\r\n<p>Harus siap menghadapi risiko dan konsekuensi yang timbul atas suatu masalah sekaligus berusaha menyelesaikan masalah secara profesional.</p>\r\n<p>Selain membuat Anda lebih berkarakter dan memunculkan kesan profesional, kemampuan memecahkan masalah akan meningkatkan nilai Anda sebagai karyawan.</p>\r\n<p>Tentu saja perusahaan akan memberikan apresiasi atas ketekunan dan tanggung jawab Anda dalam menyelesaikan masalah yang ada.</p>\r\n<p>&nbsp;</p>\r\n<h3>6. Mengoperasikan Komputer</h3>\r\n<p>&nbsp;</p>\r\n<p>Kemajuan teknologi yang semakin berkembang menuntut Anda untuk dapat mengikuti perkembangan zaman, terutama kemampuan memakai komputer.</p>\r\n<p>Program komputer dasar saat ini telah menjadi bagian dari kurikulum pendidikan, para lulusan diharapkan telah menguasai dasar-dasar Microsoft seperti Word, Excel, dan Powerpoint.</p>\r\n<p>Hampir seluruh perusahaan memberikan syarat &lsquo;terampil menggunakan komputer&rsquo; untuk para pelamar kerja. Kemampuan mengoperasikan komputer wajib Anda miliki jika tidak ingin tersingkir dari lapangan kerja saat ini.</p>\r\n<p>&nbsp;</p>\r\n<h3>7. Bekerja Mandiri</h3>\r\n<p>Tunjukkan bahwa Anda mampu bekerja mandiri dengan baik tanpa pengawasan. Karen hal ini akan selalu dituntut oleh banyak perusahaan. Karena tidak mungkin mengharapkan atasan Anda akan selalu ada untuk membantu.</p>\r\n<p>Seperti saat mengerjakan sendiri tugas-tugas kuliah tanpa bantuan siapapun dan bisa selesai dengan baik dan tepat waktu, seperti itulah cara kerja yang diharapkan oleh perusahaan terhadap karyawannya.</p>\r\n<p>Begitu pula saat Anda menghadapi masalah dalam pekerjaan. Sedapat mungkin Anda bisa mencari jalan keluar sendiri dalam menyelesaikan sebuah masalah. Kemandirian ini akan terlihat saat wawancara maupun tes lainnya.</p>\r\n<p>&nbsp;</p>\r\n<h3>8. Kerja Tim</h3>\r\n<p>Dalam dunia kerja, Anda akan bertemu dengan rekan kerja yang berbeda karakter, cara pandang, dan pemikiran dengan Anda. Tidak hanya satu, akan tetapi dalam sebuah tim.</p>\r\n<p>Karena itu perusahaan akan menuntut Anda mempunyai kemampuan untuk dapat bekerjasama dengan seluruh rekan kerja.</p>\r\n<p>Kemampuan bekerjasama yang baik, wajib Anda miliki dalam dunia kerja. Jika Anda tidak memiliki kemampuan bekerjasama dengan orang lain, Anda bisa kesulitan menyelesaikan pekerjaan yang memerlukan keahlian tertentu, yang ternyata dimiliki oleh rekan satu tim Anda.</p>\r\n<p>&nbsp;</p>\r\n<h3>9. Kreatif</h3>\r\n<p>Ide dan kreativitas adalah sesuatu yang mahal. Dan setiap perusahaan selalu menginginkan calon karyawan yang kreatif dan inovatif. Jadi, tunjukkan bahwa Anda seorang yang kreatif dan inovatif saat wawancara kerja.</p>\r\n<p>Dapatkan info melalui situs perusahaan, akun media sosial milik perusahaan, atau berita-berita mengenai perusahaan yang bersangkutan sebagai bahan untuk mendapatkan ide yang kreatif.</p>\r\n<p>Pihak HRD tentu akan melihat Anda sebagai orang yang dapat membantu perusahaan lebih berkembang dan berpikir untuk kemajuan perusahaan dengan ide-ide terbaru yang lebih kreatif.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'fresh-graduate', '9 Tips mudah bagi fresh graduate agar cepat mendapatkan pekerjaan', 12, 'admin', '2018-04-11 06:19:40', '2018-04-11 06:19:40'),
(30, 1, 'Mau Usaha Sampingan Tapi Modal Kecil ? Yuk Intip 8 Ide Bisnis Berikut', 'mau-usaha-sampingan-tapi-modal-kecil-yuk-intip-8-ide-bisnis-berikut', '<p>Usaha sampingan untuk karyawan adalah sesuatu yang lumrah dan tidak dilarang oleh perusahaan. Sayangnya, banyak karyawan yang belum memulai usaha sampingannya karena alasan modal.</p>\r\n<p>Banyak juga karyawan yang beranggapan harus memiliki modal besar untuk menjalankan sebuah bisnis sampingan. Tak heran, beberapa dari mereka meminjam uang ke bank sebagai modal usaha.</p>\r\n<p>Besar kemungkinan, jika tidak dikelola dengan baik, pinjaman tersebut akan membebani usahanya.</p>\r\n<p>Ujung-ujungnya, bukan penghasilan tambahan yang diperoleh, namun stres dan pusing karena harus membayar cicilan dan bunga pinjaman tersebut.</p>\r\n<p>Anda bisa menjalankan usaha sampingan dengan modal kecil. Berikut 17 ide usaha sampingan yang perlu Rp 10 juta atau kurang untuk memulainya.</p>\r\n<h3>1. Jasa Laundry</h3>\r\n<p>Sekarang ini banyak orang yang ingin serba praktis, tidak terkecuali dalam urusan mencuci dan menyetrika pakain. Ini adalah peluang bagi Anda yang ingin memulai jasa <em>laundry</em>.</p>\r\n<p>Agar menguntungkan, hal pertama yang perlu Anda pertimbangkan adalah pangsa pasar. Sebaiknya cari tempat yang banyak mahasiswa dan karyawan swasta (atau pegawai negeri sipil).</p>\r\n<p>Untuk urusan modal, Anda cukup punya uang Rp 10 juta. Malahan, menurut beberapa artikel yang saya baca, Anda bisa memulainya dengan modal Rp 7,5 juta saja.</p>\r\n<p>Uang tersebut setengahnya untuk membeli sebuah mesin cuci satu tabung otomatis dan sebuah mesin pengering.</p>\r\n<p>Setengahnya lagi untuk membeli perangkat pendukung (misalnya timbangan, plastik, dan setrika) dan gaji seorang pegawai (Rp 500 ribu s.d Rp 1 juta per bulan).</p>\r\n<p>&nbsp;</p>\r\n<h3>2. Menjual pulsa elektrik</h3>\r\n<p>Menjual pulsa merupakan ide bisnis yang menjajikan karena meningkatnya pengguna telepon seluler. Kabarnya, seorang pebisnis pulsa di Jakarta memiliki omset Rp 20 triliun setahun.</p>\r\n<p>Jika Anda ingin berbisnis pulsa, Anda bisa memilih pulsa elektrik sebagai tahap awal. Selain tidak berbentuk kartu yang perlu tempat, pulsa elektrik diaktifkan melalui telepon genggam Anda sehingga relatif tidak merepotkan.</p>\r\n<p>Untuk memulai bisnis pulsa elektrik, modal yang Anda sediakan tidak banyak, yaitu berkisar dari Rp 1 juta s.d Rp 3 juta. Calon konsumen Anda bisa saja teman sepekerjaan atau tetangga rumah Anda.</p>\r\n<p>&nbsp;</p>\r\n<h3>3. Menjual makanan untuk sarapan</h3>\r\n<p>Menyediakan makanan untuk sarapan merupakan ide bisnis sampingan yang menjanjikan bagi Anda. Hal ini karena banyak karyawan yang kerepotan menyediakan sendiri sarapannya.</p>\r\n<p>Menariknya lagi, Anda bisa memanfaatkan halaman depan rumah Anda untuk menjual makanan tersebut. Selain itu, menu yang Anda tawarkan bisa beragam, antara lain bubur ayam, nasi uduk, nasi kuning, dan gorengan.</p>\r\n<p>Jika Anda sudah beristri, menu tersebut mudah dibuat, bukan?</p>\r\n<p>Modal yang perlu Anda miliki untuk memulai usaha ini sekitar Rp 4 juta per bulan. Sekitar 80% uang tersebut untuk membeli bahan baku, misalnya telur, beras, daging ayam, tahu, tempe, dan sayuran.</p>\r\n<p>Sisanya untuk membeli bahan bakar dan transportasi. Dengan modal sebesar itu, Anda berpeluang mendapatkan penghasilan bersih sebesar Rp 2 juta per bulan.</p>\r\n<p>&nbsp;</p>\r\n<h3>4. Membuat blog</h3>\r\n<p>Anda sadari atau tidak, ngeblog sedang ngetren dalam lima tahun terakhir. Oleh karena itu, ngeblog bisa Anda jadikan sebagai pekerjaan sampingan untuk menghasilkan uang tambahan.</p>\r\n<p>Contohnya, saat saya menjadi karyawan swasta dulu, saya melakukan hal tersebut.</p>\r\n<p>Pondasi untuk menghasilkan banyak uang dari blog adalah postingan berkualitas. Anda bisa mencobanya dengan menulis postingan sesuai pekerjaan Anda sekarang.</p>\r\n<p>Sebagai contoh, jika Anda bekerja sebagai teknisi listrik, Anda bisa membuat blog dengan topik kelistrikan. Strategi ini akan memudahkan Anda dalam pembuatan postingan.</p>\r\n<p>Mengapa? Sederhana saja, karena Anda sudah tahu dan mengalami apa yang hendak ditulis.</p>\r\n<p>Berita bagus lainnya adalah modal yang perlu Anda sediakan untuk memulai ngeblog paling banyak Rp 1 juta setahun. Asumsinya, Anda membeli <em>domain</em> dan <em>hosting</em> di penyedia <em>hosting</em> lokal, dan membuat postingan sendiri.</p>\r\n<p>Bahkan, bisa tanpa modal jika Anda menggunakan platform blog gratisan, misalnya Blogspot.com.</p>\r\n<p>&nbsp;</p>\r\n<h3>5. Membuat toko online</h3>\r\n<p>Seperti halya ngeblog, membuat toko <em>online</em> juga sedang ngetren. Salah satu alasannya adalah gaya berbelanja masyarakat sekarang yang mulai bergeser ke gaya berbelanja <em>online</em>.</p>\r\n<p>Di lihat dari sisi barang yang dijual, Anda bisa menjual barang sendiri atau barang orang lain. Barang fisik yang umum dijual para pelaku toko <em>online</em> adalah pakain, obat herbal, kerajinan khas daerah, tas, dan kaos.</p>\r\n<p>Sementara itu, barang digital yang populer dijual adalah <em>ebook</em>, <em>software</em>, musik, <em>theme</em>, <em>plugin</em>, dan video tutorial.</p>\r\n<p>Modal yang perlu Anda siapkan untuk membuat toko <em>online</em> tidak besar. Sebagai contoh, modal Anda bisa seperti modal ngeblog di atas jika Anda mampu mendesain sendiri toko <em>online</em> Anda.</p>\r\n<p>Jangan khawatir, karena sekarang ini banyak <em>template</em> gratis toko <em>online</em>. Sekalipun harus membeli, banyak juga <em>template</em> yang harganya di bawah Rp 300 ribu.</p>\r\n<p>Tidak mau atau tidak bisa membuat toko online sendiri berbasis web? Tidak masalah. Anda bisa membuat toko online di marketplace. Dua marketplace yang populer di Indonesia adalah BukaLapak, tokopedia dan masih banyak lagi.</p>\r\n<p>Hal menarik lain mengenai toko online adalah Anda tidak harus repot mengirim barang jika Anda menggunakan sistem <em>dropshipping</em>. Para <em>dropshipper</em>-lah yang akan mengirim barang tersebut ke pembeli Anda.</p>\r\n<p>&nbsp;</p>\r\n<h3>6. Membuat warkop sederhana</h3>\r\n<p>Ide bisnis sampingan lain yang bisa Anda coba adalah membuat warung kopi (warkop) sederhana. Usaha ini sangat cocok bila lokasi rumah Anda atau tempat yang Anda sewa terletak di seputar kampus atau kawasan industri.</p>\r\n<p>Secara hitung-hitungan di atas kertas, bisnis warkop sangat menjanjikan karena keuntungan yang diperoleh bisa berlipat-lipat.</p>\r\n<p>Sebagai contoh, modal segelas kopi adalah Rp 2.000 dan Anda menjualnya seharga Rp 4.000.</p>\r\n<p>Selain itu, Anda juga bisa menjual makanan dan minuman lain, seperti jus, teh manis, gorengan, dan mie instan rebus/goreng. Menarik bukan?</p>\r\n<p>Bukan hanya itu, warkop sederhana ini bisa Anda perbesar nantinya jika omsetnya terus bertambah.</p>\r\n<p>Dengan demikian, mungkin saja Anda mengikuti jejak Yayank S. Sahara yang sukses berbisnis kedai kopi sekelas kedai kopi merek ternama.</p>\r\n<p>Berapa modal yang diperlukan untuk memulai usaha warkop sederhana? Anda bisa memulainya dengan modal Rp 10 juta.</p>\r\n<p>Uang tersebut sebagian besar dialokasikan untuk membeli sejumlah peralatan (gelas, sendok, kursi, meja, dan lain-lain) dan menyewa tempat jika bukan menggunakan rumah Anda.</p>\r\n<p>&nbsp;</p>\r\n<h3>7. Jasa desain grafis</h3>\r\n<p>Anda karyawan yang bekerja di perusahaan desain grafis atau menyukai desain grafis? Anda bisa menghasilkan uang dari keterampilan tersebut.</p>\r\n<p>Sebagai contoh, Anda bisa membuat jasa desain kartu nama, logo, baju, maskot, poster, <em>booth</em> dan interior.</p>\r\n<p>Jangan khawatir kalau di lingkungan tempat kerja Anda belum atau tidak ada konsumennya. Anda bisa memanfaatkan pasar desainer <em>online</em> yang ada di Indonesia, seperti Sribu.com dan Projects.co.id.</p>\r\n<p>Bila bisa berbahasa Inggris, Anda bisa mencoba pasar desainer internasional untuk menjangkau konsumen yang lebih luas.</p>\r\n<p>Beberapa situs luar negeri yang biasa digunakan desainer graifis Indonesia adalah 99designs.com, Elance.com, dan Upwork.com (dulu bernama Odesk.com).</p>\r\n<p>Perihal modal, jika Anda menggunakan pasar desain <em>online</em>, Anda cukup punya uang untuk membayar koneksi internet saja sepanjang Anda menggunakan perangkat atau software desain yang Anda miliki.</p>\r\n<p>Terlebih, jika Anda rutin tiap bulan mengeluarkan dana untuk internetan, bisa dibilang jasa desain grafis <em>online</em> ini tanpa modal.</p>\r\n<p>&nbsp;</p>\r\n<h3>8. Jasa pengetikan</h3>\r\n<p>Seperti halnya jasa penerjemahan, Anda umumnya tidak perlu modal menjalankan jasa pengetikan. Meskipun demikian, jasa pengetikan sebaiknya Anda pilih jika Anda tinggal di lingkungan sekolah atau kampus.</p>\r\n<p>Jamak diketahui, banyak siswa dan mahasiwa yang malas mengetik tugas atau skripsinya.</p>\r\n<p>Perihal tarif, Anda bisa menawarkan tarif per halaman atau jumlah kata. Sebagai contoh, Rp 2.000 untuk per halaman.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'usaha-sampingan,karyawan', 'Tips Bisnis sampingan modal kecil untuk karyawan', 9, 'admin', '2018-04-11 06:35:50', '2018-04-11 06:35:50'),
(31, 1, '5 Profesi Yang Cocok Buat Anda Punya Sifat Pendiam', '5-profesi-yang-cocok-buat-anda-punya-sifat-pendiam', '<p>Menjadi orang yang pendiam pasti bukan keinginan pribadi seseorang. Sifat ini biasanya sudah bawaan dari sejak lahir.</p>\r\n<p>Meski demikian, karakter pendiam bisa berkembang atau bertahan, bergantung pada orang-orang di sekitarnya.</p>\r\n<p>Mereka yang pendiam cenderung kurang percaya diri atau pemalu. Seperti takut bersaing dalam mendapatkan pekerjaan yang diinginkan.</p>\r\n<p>Jika Anda termasuk orang pendiam atau introvert, tak perlu berkecil hati.</p>\r\n<p>Ada sejumlah profesi atau pekerjaan yang justru lebih cocok ditangani oleh orang pendiam alias tak banyak bicara. Mau tahu apa saja profesi tersebut?</p>\r\n<p>&nbsp;</p>\r\n<h3>1. Akuntan</h3>\r\n<p>&nbsp;</p>\r\n<p>Saat bekerja, seorang akuntan akan sering bertemu dengan angka dan angka. Jarang bertemu dengan orang lain yang memaksa dia untuk berbicara.</p>\r\n<p>Hal yang dibutuhkan seorang akuntan adalah akurasi dan ketelitian. Salah menghitung, maka neraca keuangan perusahaan yang ditanganinya bisa berantakan.</p>\r\n<p>Profesi ini juga butuh konsistensi agar setiap hasil pekerjannya punya perhitungan yang seimbang.</p>\r\n<p>Karena butuh fokus yang sangat besar, akuntan memang cocok bagi mereka yang pendiam. Mereka akan bekerja tanpa banyak cakap dan hanya berusaha menyelesaikan tugas dengan baik.</p>\r\n<p>&nbsp;</p>\r\n<h3>2. Penulis</h3>\r\n<p>&nbsp;</p>\r\n<p>Zaman dulu para penulis bermodalkan mesin ketik manual, buku catatan, dan pensil. Kini, buku dan komputer menjadi &ldquo;senjata&rdquo; andalan para penulis.</p>\r\n<p>Ditambah modem atau koneksi internet yang digunakan untuk mencari bahan dan ide mengenai topik yang akan ditulis.</p>\r\n<p>Semua alat yang digunakan para penulis bersifat pribadi. Nyaris tidak berhubungan dengan orang lain.</p>\r\n<p>Karena tidak banyak interaksi dengan orang lain, menjadi penulis menjadi pilihan pas sebagai profesi untuk orang pendiam.</p>\r\n<p>Saat beraktivitas, penulis umumnya butuh ruangan yang tenang dan nyaman. Mereka akan diam dan banyak berpikir untuk menciptakan tulisan yang berkualitas dan bermanfaat bagi orang banyak.</p>\r\n<p>&nbsp;</p>\r\n<h3>3. Pustakawan</h3>\r\n<p>&nbsp;</p>\r\n<p>Mungkin tidak banyak yang tahu profesi yang satu ini. Padahal, sudah ada program studi <em>librarian</em> atau pustawakan di sejumlah Universitas Negeri maupun swasta di Indonesia.</p>\r\n<p>Dalam tugas kesehariannya, pustakawan akan lebih banyak bergelut dengan buku dan rak penyimpanan.</p>\r\n<p>Mereka hanya sesekali berinteraksi dengan orang lain saat ada yang membutuhkan bantuan untuk menemukan buku. Di luar itu, seorang pustawakan nyaris menghabiskan hari-harinya dengan buku dan buku.</p>\r\n<p>Karena itu, profesi ini cocok bagi Anda yang punya karakter pendiam.</p>\r\n<p>&nbsp;</p>\r\n<h3>4. Desainer Grafis</h3>\r\n<p>&nbsp;</p>\r\n<p>Para desainer grafis akan lebih banyak menghabiskan waktunya di depan komputer.</p>\r\n<p>Mereka menggunakan seluruh kemampuan dan imajinasinya untuk menghasilkan sebuah desain grafis yang menarik dan sesuai dengan kebutuhan pihak lain.</p>\r\n<p>Interaksi yang dilakukan para desainer grafis dengan orang lain baru terjadi saat melakukan <em>meeting</em> dengan klien atau sesama desainer grafis lainnya.</p>\r\n<p>Pertemuan ini biasanya bertujuan untuk menyamakan persepsi dan maksud dari desain yang akan dirancang.</p>\r\n<p>Selanjutnya, mereka akan kembali berkutat di depan komputer. Kadang kala mereka lupa waktu karena terlalu asyik merancang sebuah desain.</p>\r\n<p>&nbsp;</p>\r\n<h3>5. Pelukis</h3>\r\n<p>&nbsp;</p>\r\n<p>Pelukis merupakan pekerjaan yang sangat individualis. Jarang ditemukan pelukis yang bekerja bersama beberapa orang sekaligus untuk menghasilkan satu lukisan.</p>\r\n<p>Pasti kecenderungannya adalah satu kanvas untuk satu lukisan dari satu pelukis.</p>\r\n<p>Saat bekerja, para pelukis juga biasanya membutuhkan satu tempat yang tenang dan nyaman bagi dirinya agar semua imajinasi yang dimiliki bisa muncul dengan maksimal.</p>\r\n<p>Mereka tak membutuhkan kehadiran orang lain saat itu.</p>\r\n<p>Dari mulai bekerja hingga menyelesaikan satu lukisan, tak ada interaksi yang dilakukan dengan orang lain. Interaksi baru terjadi saat mereka melakukan pameran dan menerangkan makna dari lukisan yang dibuatnya.</p>', 'profesi,referensi-pekerjaan', '5 Profesi yang bagus bagi anda yang mempunyai sifat pendiam', 13, 'admin', '2018-04-12 02:23:02', '2018-04-12 02:23:02'),
(32, 1, '6 Tips Meningkatkan Komunikasi', '6-tips-meningkatkan-komunikasi', '<p>Sebagai manusia memang membutuhkan keberadaan orang lain dalam menjalani kehidupan sehari-hari. Dalam melakukan interaksi, tentu harus ada komunikasi dua arah yang saling memahami. Bayangkan, kalau hanya satu pihak saja yang paham atas apa yang diutarakannya.</p>\r\n<p>Melakukan komunikasi yang tepat dan bisa dimengerti orang lain merupakan salah satu cara berinteraksi yang benar. Dari mulai komunikasi di rumah dengan sesama anggota keluarga, dengan teman dan guru di sekolah, hingga sesama kolega di tempat kerja.</p>\r\n<p>Dengan memiliki keterampilan komunikasi yang memadai, maka pekerjaan Anda pun bisa terbantu. Lalu bagaimana cara meningkatkan keterampilan berkomunikasi?</p>\r\n<p>&nbsp;</p>\r\n<h3>1. Artikulasi</h3>\r\n<p>Satu poin penting yang tak bisa dilewatkan dalam berkomunikasi adalah berbicara dengan jelas. Artikulasi dari setiap kata yang Anda ucapkan harus jelas terdengar oleh lawan bicara. Jangan sampai mereka hanya mendengar gumaman saja yang pasti tidak akan dimengerti maksudnya.</p>\r\n<p>Jika Anda merasa sering berbicara seperti itu, mulai saat ini rajinlah berlatih mengucapkan kata-kata secara jelas dan tegas. Anda bisa berlatih dengan mengucapkan &lsquo;A,I,U,E,O&rsquo; dengan bentuk bibir dan suara yang benar.</p>\r\n<p>Bisa juga dengan merekam setiap pembicaraan yang Anda lakukan, kemudian dengarkan lagi di waktu senggang. Perhatikan kata-kata apa saja yang sering terucap dengan tidak jelas saat Anda berbicara.</p>\r\n<p>&nbsp;</p>\r\n<h3>2. Kontak Mata</h3>\r\n<p>Cara berikutnya untuk meningkatkan keterampilan berkomunikasi adalah selalu menjaga kontak mata saat berbicara dengan orang lain ataupun ketika Anda melakukan presentasi. Tentu saja, kontak mata ini dilakukan secara wajar. Tidak perlu sampai melotot atau justru terlalu memicingkan mata.</p>\r\n<p>Kirimkan sinyal positif saat Anda melakukan kontak mata di awal pembicaraan. Mulai dengan tersenyum saat Anda akan berbicara dengan orang lain. Sehingga mereka akan merasa nyaman dan mau menjadi berbicara dengan Anda.</p>\r\n<p>Percaya atau tidak, dengan melakukan kontak mata yang positif orang lain akan mempercayai kata-kata Anda. Sehingga setiap kalimat yang Anda ucapkan pun akan terdengar lebih meyakinkan di hadapan orang lain.</p>\r\n<p>&nbsp;</p>\r\n<h3>3. Penyelarasan</h3>\r\n<p>Berkomunikasi yang cerdas adalah selalu bisa menempatkan diri sesuai dengan lingkungan atau orang-orang yang menjadi lawan bicara. Anda tidak bisa menyamakan setiap gaya berbicara kepada setiap orang yang Anda temui.</p>\r\n<p>Berbicara kepada atasan pasti akan berbeda dengan berbicara kepada bawahan. Begitu pula ketika berbicara kepada orang tua pasti akan berbeda dengan cara berbicara kepada anak-anak. Untuk itulah Anda dituntut melakukan penyelarasan setiap kali melakukan komunikasi.</p>\r\n<p>Dengan melakukan penyelarasan, maka Anda akan terbantu untuk menyampaikan apa yang Anda inginkan. Karena lawan bicara Anda akan lebih mudah memahami setiap kalimat yang Anda ucapkan.</p>\r\n<p>&nbsp;</p>\r\n<h3>4. Bahasa Tubuh</h3>\r\n<p>Jika Anda sering menonton berita di televisi, pasti akan selalu melihat mimik dan ekspresi dari pembawa acara yang selalu menyesuaikan dengan berita yang dia kabarkan. Itu merupakan cara mereka untuk memudahkan penonton televisi memahami isi berita dengan lebih baik.</p>\r\n<p>Ekspresi wajah merupakan bagian dari bahasa tubuh yang sering digunakan untuk berkomunikasi secara efektif. Karena itu, latihlah menggunakan bahasa tubuh dengan baik untuk meningkatkan keterampilan berkomunikasi Anda.</p>\r\n<p>Tak hanya ekspresi, tapi juga gerakan tangan dan postur tubuh harus ikut dilakukan saat berkomunikasi.</p>\r\n<p>Pastikan Anda melakukan bahasa tubuh yang benar dan sesuai dengan apa yang Anda ucapkan. Perbedaan bahasa tubuh dengan kalimat yang muncul hanya akan membuat orang lain menjadi bingung.</p>\r\n<p>&nbsp;</p>\r\n<h3>5. Intonasi Suara</h3>\r\n<p>Berbicara dengan suara yang monoton hanya akan membuat orang lain cepat merasa bosan. Karena itu, pengaturan intonasi suara saat berbicara juga menjadi cara yang cukup efektif agar orang lain mengerti yang Anda bicarakan.</p>\r\n<p>Lakukan variasi intonasi suara dalam sebuah pembicaraan. Sesuaikan juga dengan kalimat yang tengah Anda ucapkan. Sehingga orang lain pun akan lebih mudah untuk memahami isi pembicaraan Anda.</p>\r\n<p>Anda harus tahu kapan berbicara dengan nada rendah, dan kapan harus sedikit menambah nada tinggi. Tentu saja hal ini bisa didapat melalui latihan dan jam terbang yang semakin tinggi.</p>\r\n<p>&nbsp;</p>\r\n<h3>6. Emosi</h3>\r\n<p>Saat Anda berbicara tentang sesuatu yang membangkitkan rasa emosional di dalam diri, jangan ikut larut di dalamnya. Tetap atur emosi Anda berada dalam kondisi stabil.</p>\r\n<p>Mengapa? Karena saat emosi Anda ikut larut dalam pembicaraan, maka kalimat yang Anda ucapkan akan cenderung tidak jelas terdengar.</p>\r\n<p>Bukan berarti Anda tidak boleh memasukkan unsur perasaan di dalam pembicaraan. Boleh-boleh saja, tapi Anda harus bisa mengontrolnya dengan baik. Jangan sampai emosi yang mengendalikan pembicaraan Anda. Jika itu yang terjadi, dapat dipastikan Anda sudah gagal dalam berkomunikasi.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'komunikasi', '6 Tips jitu meningkatkan ketrampilan komunikasi anda', 14, 'admin', '2018-04-13 01:52:52', '2018-04-13 01:52:52'),
(33, 1, 'Tips Agar Anda Lebih Produktif Dalam Bekerja', 'tips-agar-anda-lebih-produktif-dalam-bekerja', '<p>Di dunia ini tidak ada yang diberi jumlah waktu berbeda. Semuanya sama-sama punya waktu 24 jam sehari semalam. Lalu kenapa ada orang bisa lebih produktif setiap harinya dan ada juga yang sebaliknya?</p>\r\n<p>Mereka yang bisa lebih produktif dalam bekerja adalah yang tahu cara mengatur waktu.</p>\r\n<p>Tahu bagaimana menempatkan satu pekerjaan di atas pekerjaan yang lainnya, dan tahu persis apa yang harus diutamakan dalam setiap pekerjaan.</p>\r\n<p>Lalu, bagaimana agar anda juga lebih produktif terhadap pekerjaan anda ?</p>\r\n<h2>1. Buat To-Do List</h2>\r\n<p>Mengerjakan sesuatu tanpa perencanaan hanya akan membuat Anda bekerja tidak efektif. Hanya akan membuat Anda membuang energi tanpa hasil.</p>\r\n<p>Anda justru akan kebingungan apa yang harus dikerjakan untuk hari itu. Alhasil, waktu bekerja pun bakal terbuang percuma.</p>\r\n<p>Karena itu cara mengatur waktu yang baik adalah dengan membiasakan diri menyusun daftar apa yang harus dikerjakan esok hari. Susun daftar<em> to-do list </em>ini pada malam sebelum bekerja.</p>\r\n<p>Bikin juga daftar kegiatan untuk satu atau beberapa bulan ke depan. Bahkan sampai satu tahun kalau memang diperlukan.</p>\r\n<p>Gunakan aplikasi <em>reminder </em>yang banyak tersedia di smartphone. Aplikasi ini akan membantu mengingatkan Anda apa yang harus dikerjakan dalam waktu dekat.</p>\r\n<p>Karena tidak ada jaminan Anda akan bisa mengingat semua daftar <em>to-do list</em> tersebut. Ketika Anda lupa, maka kegiatan Anda bisa berantakan.</p>\r\n<p>&nbsp;</p>\r\n<h2>2. Buat Skala Prioritas</h2>\r\n<p>Setelah daftar apa yang harus Anda kerjakan selesai disusun, mulai tentukan mana yang mendapat prioritas utama dan mana yang bisa dikesampingkan lebih dulu. Lihat dengan seksama kegiatan hari itu dan tandai mana yang harus dilakukan lebih awal.</p>\r\n<p>Ketika Anda sudah menentukan pekerjaan mana yang menjadi prioritas, artinya Anda harus segera melakukannya. Jangan pernah menunda pekerjaan yang telah menjadi prioritas.</p>\r\n<p>Jika sebuah pekerjaan prioritas saja sudah Anda abaikan, bagaimana nasib pekerjaan nonprioritas?</p>\r\n<p>Jika Anda sudah menandai sebuah pekerjaan sebagai prioritas, maka tidak boleh ada hal lain yang bisa membuat pekerjaan tersebut menjadi tertunda. Abaikan semua gangguan yang datang sampai pekerjaan prioritas tersebut selesai secara tuntas.</p>\r\n<p>&nbsp;</p>\r\n<h2>3. Tentukan Tenggat Waktu</h2>\r\n<p>Setiap pekerjaan yang Anda lakukan harus punya batas atau tenggat waktu yang pasti. Jangan pernah membuat tenggat dari &ldquo;Jam Karet&rdquo;.</p>\r\n<p>Hal ini untuk memastikan bahwa Anda bisa menyelesaikan pekerjaan dengan baik dan tepat pada waktunya. Tenggat waktu juga melatih Anda untuk lebih bertanggung jawab terhadap pekerjaan yang diemban.</p>\r\n<p>Atur tenggat waktu setiap pekerjaan dan beri jeda sebelum melakukan pekerjaan berikutnya. Jeda ini bertujuan untuk memberi Anda kesempatan melakukan evaluasi, apakah pekerjaan tersebut sudah sesuai dengan arahan dan tujuan atau harus direvisi.</p>\r\n<p>Dengan demikian, pekerjaan Anda pun dipastikan punya kualitas sesuai standar yang ditetapkan perusahaan.</p>\r\n<p>Anda juga harus patuh terhadap tenggat yang sudah ditentukan. Mengabaikan tenggat waktu hanya akan membuat kerja Anda jauh dari efektif dan tidak akan produktif.</p>\r\n<p>&nbsp;</p>\r\n<h2>4. Fokus pada Pekerjaan</h2>\r\n<p>Agar Anda bisa menyelesaikan semua pekerjaan tepat waktu atau sesuai tenggat, tidak ada cara lain kecuali Anda fokus pada pekerjaan&nbsp; tersebut.</p>\r\n<p>Tinggalkan semua hal yang bisa berpotensi memunculkan gangguan terhadap proses kerja Anda. Inilah cara mengatur waktu agar Anda bisa menyelesaikan pekerjaan secara tuntas.</p>\r\n<p>Salah satu yang sangat berpotensi besar menjadi gangguan adalah smartphone. Pasang smartphone pada <em>silent mode,</em> sehingga Anda tidak akan mendengar ketika ada notifikasi yang masuk.</p>\r\n<p>Karena ketika ada bunyi notifikasi yang berasal dari aplikasi chat atau media sosial, Anda pasti cenderung akan melihat dan membukanya. Jangan lupa untuk memasang logo &ldquo;busy&rdquo; pada aplikasi chatting agar Anda tidak dihubungi sementara waktu.</p>\r\n<p>Ketika Anda bekerja dengan menggunakan internet, usahakan juga menghindari membuka situs yang tidak ada kaitannya dengan pekerjaan Anda.</p>\r\n<p>Kalau memang hanya dipakai untuk mengirim file melalui email, lakukan saja sesuai yang dibutuhkan. Setelah itu jangan terpancing untuk melakukan <em>browsing</em> yang hanya akan membuat waktu Anda terbuang sia-sia.</p>\r\n<p>&nbsp;</p>\r\n<h2>5. Jangan Coba Multitasking</h2>\r\n<p>Menjadi seorang <em>multitasking</em> memang terkesan hebat. Padahal melakukan banyak hal dalam waktu yang bersamaan hanya akan membuat Anda tidak fokus pada pekerjaan utama. Kalaupun pekerjaan bisa selesai pada waktunya, hasilnya pasti tidak akan optimal.</p>\r\n<p>Sekadar info, ketika seseorang dipaksa melakukan <em>multitasking</em>, maka otak akan bekerja jauh lebih keras dari biasanya.</p>\r\n<p>Kelelahan otak akan membuat tubuh cepat lelah dan mudah mengalami stres. Selain itu, kemampuan menyimpan memori terutama <em>short time memory</em> akan menurun.</p>\r\n<p>Penelitian juga menunjukkan bahwa ketika seseorang melakukan tugas satu ke tugas yang lain lebih dari 10 kali dalam sehari akan berpotensi membuat kinerja otak menurun.</p>\r\n<p>Ujungnya, pekerjaan Anda pun jauh dari kata efektif dan produktif. Fokus pada pekerjaan utama Anda maka hasilnya akan lebih produktif.</p>\r\n<p>&nbsp;</p>\r\n<h2>6. Delegasikan Pekerjaan yang Tidak Penting</h2>\r\n<p>Dalam Eisenhower Matrix yang dikemukakan Stephen R. Covey di buku <em>7 Habits of Highly Effective People, </em>ada satu kuadran di bagian &ldquo;<em>Not Important</em>&rdquo; yang bisa menjadi penghambat Anda menyelesaikan pekerjaan utama.</p>\r\n<p>Saat itulah Anda harus tahu apakah pekerjaan bisa diselesaikan sendiri atau harus didelegasikan kepada orang lain. Jika memang Anda masih butuh waktu tambahan menyelesaikan pekerjaan prioritas, Anda bisa mendelegasikan pekerjaan tambahan kepada orang lain yang memang kompeten.</p>\r\n<p>Memanfaatkan kemampuan orang lain untuk menyelesaikan pekerjaan Anda adalah cara efektif untuk memenuhi semua rencana kerja yang telah disusun.</p>\r\n<p>Apalagi jika memang waktu Anda sudah terlalu banyak dipakai menyelesaikan pekerjaan utama. Dengan mendelegasikan pekerjaan, daftar <em>to-do list </em>Anda akan tetap berjalan dengan lancar.</p>', 'karyawan,referensi-pekerjaan,komunikasi,tips-kerja', '6 Tips penting agar anda lebih produktif ketika bekerja', 12, 'admin', '2018-04-13 03:07:35', '2018-04-13 03:07:35'),
(34, 1, '5 Tips Agar Anda Tidak Menunda Pekerjaan Lagi', '5-tips-agar-anda-tidak-menunda-pekerjaan-lagi', '<p>Menunda pekerjaan tampaknya telah menjangkiti semua karyawan. Penyebabnya beragam, antara lain lupa, pusing karena membayangkan kerumitan pekerjaan tersebut, tidak punya waktu untuk mengerjakannya, atau merasa kewalahan.</p>\r\n<div style=\"float: none; margin: 8px 0 8px 0; text-align: center;\"><ins class=\"adsbygoogle\" style=\"display: block; height: 0px;\" data-ad-client=\"ca-pub-7957624555667031\" data-ad-slot=\"2412681940\" data-ad-format=\"auto\" data-adsbygoogle-status=\"done\"><ins id=\"aswift_0_expand\" style=\"display: inline-table; height: 0px; margin: 0px; padding: 0px; position: relative; visibility: visible; width: 660px; background-color: transparent;\"><ins id=\"aswift_0_anchor\" style=\"display: block; height: 0px; margin: 0px; padding: 0px; position: relative; visibility: visible; width: 660px; background-color: transparent; overflow: hidden; opacity: 0;\"><iframe id=\"aswift_0\" style=\"left: 0; position: absolute; top: 0; width: 660px; height: 60px;\" name=\"aswift_0\" width=\"660\" height=\"60\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" allowfullscreen=\"allowfullscreen\"></iframe></ins></ins></ins></div>\r\n<p>Dampaknnya adalah pekerjaan tidak selesai sesuai tenggat waktu, karyawan mengalami stres, atasan marah-marah, pekerjaan menumpuk, produktivitas kerja turun drastis, atau perasaan bersalah.</p>\r\n<p>Apakah Anda merasakan dampak tersebut? Jika ya, jangan khawatir.</p>\r\n<p>Anda bisa menghilangkan kebiasaan menunda pekerjaan. Untuk itu, cobalah satu atau lebih dari lima tips berikut.</p>\r\n<p>&nbsp;</p>\r\n<h3>1. Catat setiap tugas</h3>\r\n<p>Jika Anda menunda pekerjaan karena lupa, mulai sekarang catat tugas tersebut dengan baik. Anda dapat mencatatnya di buku harian, buku tuga, telepon seluler, laptop, kalender, atau papan tulis.</p>\r\n<p>Lihat catatan tersebut sebelum berangkat kerja dan masukkan dalam daftar yang harus dikerjakan (<em>to do list</em>) pada hari kerja tersebut.</p>\r\n<p>Baca juga: <a href=\"blog/tips-agar-anda-lebih-produktif-dalam-bekerja\" target=\"_blank\">Tips meningkatkan produktifitas dalam bekerja</a>&nbsp;</p>\r\n<p>Jika di kantor ada hal yang tidak direncanakan, misalnya atasan meminta rapat secara mendadak, buat pengingat (<em>reminder</em>) akan tugas yang tertera dalam <em>to do list</em> tersebut.</p>\r\n<p>Dengan begitu, Anda dapat mengerjakannya segera setelah rapat tersebut selesai.</p>\r\n<p>&nbsp;</p>\r\n<h3>2. Membagi pekerjaan besar menjadi tugas-tugas kecil</h3>\r\n<p>Jika Anda memiliki atau mendapat pekerjaan besar yang membuat kepala Anda pusing, pecah atau rinci pekerjaan tersebut menjadi tugas-tugas kecil berdasarkan urutan proses pengerjaannya.</p>\r\n<p>Setelah memecahnya, kerjakan tugas-tugas tersebut secara bertahap.</p>\r\n<p>Dengan mengerjakannya secara bertahap, Anda akan memiliki momentum kerja sehingga tidak terasa Anda akan menyelesaikan pekerjaan tersebut tepat waktu.</p>\r\n<p>Jika Anda tidak memecahnya, besar kemungkinan Anda akan stres memikirkan rumitnya atau besarnya pekerjaan yang harus Anda selesaikan.</p>\r\n<p>Ujung-ujungnya pekerjaan tersebut tidak selesai karena Anda mengeluh atau malas mengerjakannya.</p>\r\n<p>&nbsp;</p>\r\n<h3>3. Blok waktu untuk mengerjakannya</h3>\r\n<p>Sibuk atau tidak punya waktu mengerjakan tugas adalah alasan klasik yang menyebabkan penundaan pekerjaan.</p>\r\n<p>Solusinya adalah dengan memblok (mengalokasikan) waktu untuk mengerjakan pekerjaan yang harus diselesaikan.</p>\r\n<p>Jika sekarang Anda merasa tidak punya waktu, cermati manajemen waktu kerja Anda. Siapa tahu Anda membuang-buang waktu untuk hal di luar pekerjaan.</p>\r\n<p>Misalnya, terlalu sering membuka akun sosial media Anda (misalnya Facebook, Twitter, atau Instagram), ngobrol ngalor ngidul dengan rekan kerja, atau pura-pura sibuk.</p>\r\n<p>Kapan waktu terbaik mengerjakan tugas Anda?</p>\r\n<p>Itu tergantung pada aktivitas Anda, namun yang terbaik adalah pada waktu sebelum jam makan siang karena stamina Anda masih bagus.</p>\r\n<p>Saat mengerjakan tugas tersebut, cobalah menerapkan Teknik Pomodoro yaitu dengan mengeset waktu kerja per 25 menit lalu istirahat selama 5 menit.</p>\r\n<p>Hilangkan gangguan selama blok waktu tersebut sehingga Anda fokus.</p>\r\n<p>&nbsp;</p>\r\n<h3>4. Pakai Jurus 5 Menit</h3>\r\n<p>Tugas kecil yang tidak medesak sering Anda tunda, bukan? Jika ya, gunakan teknik 5 menit untuk mengerjakan tugas tersebut.</p>\r\n<p>Waktu lima menit ini dapat Anda dapatkan dengan mengurangi waktu makan siang Anda.</p>\r\n<p>Ingat, jangan remehkan tugas kecil yang tidak mendesak. Mengapa?</p>\r\n<p>Karena tugas-tugas tersebut akan menumpuk sehinga campur aduk dengan pekerjaan tugas besar lain yang Anda dapatkan berikutnya.</p>\r\n<h3>5. Terapkan Kaidah 80/20</h3>\r\n<p>Jika Anda seorang atasan yang sering menunda pekerjaan karena kewalahan, terapkan kaidah 80/20 (Prinsip Pareto). Tentukan 20% pekerjaan yang berdampak pada 80% hasil yang Anda peroleh.</p>\r\n<p>Setelah itu, fokus pada pekerjaan tersebut, sedangkan pekerjaan-pekerjaan lain bisa Anda delegasikan pada bawahan atau kontraktor Anda.</p>\r\n<p>Tentu saja, Anda yang bukan atasan dapat juga menerapkan kaidah ini.</p>\r\n<p>Sebagai contoh, jika dalam satu hari kerja Anda memiliki 10 pekerjaan, fokuskan pikiran dan waktu Anda pada 2 tugas terpenting. Setelah itu, baru mengerjakan 8 tugas lainnya.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'karyawan,referensi-pekerjaan,tips-kerja', 'tips sederhana agar kita tidak menunda-nunda pekerjaan', 13, 'admin', '2018-04-13 04:27:50', '2018-04-13 04:27:50');
INSERT INTO `artikel` (`id`, `user_id`, `judul_artikel`, `judul_slug`, `isi_artikel`, `tag_artikel`, `deskripsi_seo`, `dibaca`, `created_user`, `created_at`, `updated_at`) VALUES
(35, 1, '5 Tips Penting Agar Karyawan Anda Lebih Disiplin Dalam Bekerja', '5-tips-penting-agar-karyawan-anda-lebih-disiplin-dalam-bekerja', '<p><strong>#Kedisiplinan Kerja</strong> - Mengatur manusia merupakan tugas yang sulit, karena setiap orang punya pikiran, perasaan, keinginan, dan latar belakang yang berbeda-beda. Dalam menjalankan usaha, Anda akan merasakannya sendiri saat Anda berhadapan dengan karyawan Anda yang sering bermasalah dalam pekerjaannya.</p>\r\n<p>Salah satu permasalahan karyawan ialah ketidakdisiplinan. Karyawan yang tidak disiplin bekerja membuat Anda marah karena mereka tidak patuh pada peraturan dan tidak hormat pada Anda sebagai pemimpinnya. Mereka tampaknya sudah tidak giat lagi seperti pada bulan-bulan pertama bekerja.</p>\r\n<p>Beberapa contoh ketidakdisiplinan, yaitu sering datang telat atau tidak masuk kerja dengan berbagai alasan, tidak lagi produktif, mengerjakan hal lain di waktu kerja, sering telat menyelesaikan deadline, dan sering melanggar peraturan kerja lainnya. Jika ketidakdisiplinan tersebut seringkali terjadi, maka tentu dapat berdampak buruk bagi kemajuan bisnis Anda.</p>\r\n<p>Lalu apa yang harus Anda lakukan untuk mengatasi ketidakdisiplinan karyawan?</p>\r\n<h3>1. Berikan Sanksi</h3>\r\n<p>&nbsp;</p>\r\n<p><span class=\"td-sml-description\">Sangat sulit mengatur banyak karyawan. Anda perlu membuat daftar peraturan yang tegas untuk mencegah karyawan yang ingin bekerja sesuka hatinya. Peraturan dapat menjadi peringatan dan panduan apa yang boleh dan tidak boleh dilakukan.</span></p>\r\n<p><span class=\"td-sml-description\">Baca juga: <a href=\"blog/5-tips-agar-anda-tidak-menunda-pekerjaan-lagi\" target=\"_blank\">Tips agar tidak menunda pekerjaan</a></span></p>\r\n<p><span class=\"td-sml-description\">Misalnya, buat peraturan denda untuk keterlambatan masuk kerja sebesar Rp 1.000 per menit. Jika 10 menit terlambat, maka dendanya Rp 10.000. Jika satu jam terlambat, maka dendanya Rp 60.000. Hal ini akan membuat karyawan berusaha untuk lebih menghargai waktu dan juga uang mereka.</span></p>\r\n<p>&nbsp;</p>\r\n<h3><span class=\"td-sml-description\">2. Berikan reward</span></h3>\r\n<p>&nbsp;</p>\r\n<p><span class=\"td-sml-description\">Jangan Anda mengira bahwa membuat peraturan yang tegas akan selalu efektif membuat karyawan jadi disiplin. Ingat bahwa manusia itu sulit untuk diatur dan peraturan dapat membuat orang jadi tertekan. Maka dari itu, Anda perlu membuat mereka merasa termotivasi untuk menaati peraturan dengan menerapkan reward.</span></p>\r\n<p><span class=\"td-sml-description\">Sekecil apapun hasil positif yang ditunjukkan oleh karyawan, Anda perlu memberikan apreasiasi. Misalnya, Anda memberikan bonus Rp 300.000 untuk karyawan yang tidak pernah datang terlambat selama sebulan, atau memberikan bonus bagi yang berhasil menyelesaikan tugasnya dengan baik dan sesuai target.</span></p>\r\n<p>&nbsp;</p>\r\n<h3><span class=\"td-sml-description\">3. Jadikan Anda sebagai contoh</span></h3>\r\n<p>&nbsp;</p>\r\n<p><span class=\"td-sml-description\">Sebagai pemimpin, semua pandangan dan penilaian akan selalu mengarah ke diri Anda. Jika Anda tidak menjadi pemimpin yang baik dan benar, maka karyawan akan kehilangan respek dan menganggap remeh peraturan kerja yang Anda buat. Misalnya, Anda malah sering datang terlambat dan suka tidak menepati janji.</span></p>\r\n<p><span class=\"td-sml-description\">Untuk itu, berusahalah menjadi contoh terlebih dahulu. Lakukan apa yang Anda ucapkan. Jangan melanggar peraturan yang Anda sendiri buat. Tunjukkanlah hal-hal positif sehingga karyawan Anda juga akan mengikuti hal yang positif dari Anda.</span></p>\r\n<p>&nbsp;</p>\r\n<h3><span class=\"td-sml-description\">4. Ciptakan Lingkungan Kerja Yang Nyaman</span></h3>\r\n<p>&nbsp;</p>\r\n<p><span class=\"td-sml-description\">Karyawan Anda bisa merasa jenuh bekerja. Itu adalah hal yang bisa dimaklumi karena rutinitas dapat membuat seseorang menjadi stres, ditambah lagi banyak beban kerja, serta permasalahan pribadi yang membuatnya lelah. Apalagi suasana kerja juga tidak nyaman sehingga membuat mereka malas bekerja.</span></p>\r\n<p><span class=\"td-sml-description\">Untuk itu, Anda perlu menciptakan lingkungan kerja yang nyaman dan kondusif. Misalnya, dengan mengubah peraturan yang terlalu kaku dan mengekang, lebih ramah saat berkomunikasi dengan karyawan, menambah fasilitas yang dapat mendukung pekerjaan, mempercantik desain kantor, membangun rasa kekeluargaan di antara para karyawan, dan lain-lain. Buat mereka merasa bahwa tempat kerja seperti rumah kedua mereka.</span></p>\r\n<p>&nbsp;</p>\r\n<h3><span class=\"td-sml-description\">5. Ajak Mereka Ngobrol</span></h3>\r\n<p>&nbsp;</p>\r\n<p><span class=\"td-sml-description\">Terkadang, menurunnya kedisiplinan disebabkan oleh faktor personal yang dipendam oleh karyawan. Perhatikan perubahan perilaku mereka. Jika ada karyawan yang tidak lagi disiplin, coba ajak dia bicara baik-baik. Tegur dia dan tanyakan padanya tentang masalah yang dihadapinya. Komunikasi dua arah akan mencegah kesalahpahaman dan lebih efektif untuk menyadarkannya agar kembali bersikap disiplin dalam bekerja&nbsp;</span></p>\r\n<p><span class=\"td-sml-description\">Baca juga: <a href=\"blog/6-tips-meningkatkan-komunikasi\" target=\"_blank\">Tips meningkatkan ketrampilan komunikasi </a></span></p>', 'karyawan,komunikasi,tips-kerja', '5 Tips Mengatasi Karyawan Agar Mau Disiplin Dalam Bekerja', 9, 'admin', '2018-04-13 06:23:18', '2018-04-13 06:23:18'),
(36, 1, 'Pertanyaan Yang Sering Kita Jumpai Saat Interview Kerja', 'pertanyaan-yang-sering-kita-jumpai-saat-interview-kerja', '<p>Wawancara kerja (<em>job interview</em>) merupakan tahapan yang harus dilalui oleh mereka yang sedang mencari pekerjaan atau mendapatkan pekerjaan baru. Tak heran, tahapan ini sering membuat deg-degan atau stres bagi mereka yang akan menghadapinya.</p>\r\n<p>Apakah Anda salah satu dari mereka?</p>\r\n<p>Salah satu strategi menghadapi wawancara kerja apa pun adalah mempelajari contoh-contoh pertanyaan wawancara kerja.</p>\r\n<p>Dengan mempelajarinya, Anda mendapat gambaran seperti apa pertanyaan saat wawancara kerja dan membuat jawaban yang sesuai dengan pengalaman dan pendidikan Anda.</p>\r\n<p>Untuk membantu Anda melakukan hal tersebut, berikut 30 contoh pertanyaan wawancara kerja dan jawabannya.</p>\r\n<p>&nbsp;</p>\r\n<h3>Pertanyaan tentang data pribadi</h3>\r\n<p>Pertanyaan tentang data pribadi biasanya digunakan untuk membuka percakapan dan mencairkan suasana wawancara kerja yang tegang.</p>\r\n<p>Meskipun sebagai pertanyaan pembuka dan bersifat umum, Anda tetap harus antusias menjawabnya sehingga pewawancara tertarik kepada Anda.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>1. Ceritakan tentang diri Anda?</strong></p>\r\n<p>Kandidat: &ldquo;Nama saya Faisal Setiawan. Saya alumni Ilmu Komputer dari Universitas Indonesia. Sekarang ini saya bekerja di PT Maju Mundur sebagai teknisi jaringan. Saya bekerja di perusahaan tersebut sejak Januari 2013.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>2. Mengapa Anda memilih jurusan Ilmu Koputer?</strong></p>\r\n<p>Kandidat: &ldquo;Saya menyadari bahwa saya menyenangi komputer sejak sekolah dasar. Dengan kuliah di jurusan Ilmu Komputer, saya menambah wawasan dan pengetahuan saya tentang komputer.</p>\r\n<p>Selain itu, saya belajar di jurusan tersebut dengan menyenangkan karena topiknya sesuai dengan minat dan kesenangan saya.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>3. Bagaimana cara Anda membayar kuliah Anda?</strong></p>\r\n<p>Kandidat: &ldquo;Sebagian besar kuliah saya dibiayai orang tua saya. Namun, saya juga berusaha meringankan beban orang tua dengan bekerja sebagai paruh waktu di sebuah percetakan kaos dekat tempat tinggal saya.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>4. Apakah Anda memiliki rencana melanjutkan pendidikan?</strong></p>\r\n<p>Kandidat: &ldquo;Ya, rencananya 3 tahun mendatang. Hal ini karena saya kuliah D3 sehingga saya ingin meneruskan ke jenjang S1.</p>\r\n<p>Dengan kuliah di S1, wawasan dan pengetahuan saya akan meningkat sehingga saya bisa berkarier dengan lebih baik di masa mendatang.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>5. Selain pendidikan formal, apakah Anda memiliki keterampilan lain?</strong></p>\r\n<p>Kandidat: &ldquo;Ya. Saat kuliah saya mengikuti kursus bahasa Inggris dan bahasa Jepang. Selain itu, saya pernah juga mengikuti pelatihan kepemimpinan selama seminggu yang dilaksanakan himpunan mahasiswa universitas saya.</p>\r\n<p>Saya juga mampu mengoperasikan komputer dengan berbagai program, seperti MS Words, MS Excell, MS Power Point, Photoshop, dan MS Access.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>6. Apa makna pekerjaan buat Anda?</strong></p>\r\n<p>Kandidat: &ldquo;Bagi saya, pekerjaan bukan semata-mata mencari uang. Namun, bagaimana saya bisa melakukan yang terbaik sehingga berkontribusi bagi kemajuan perusahaan.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<h3>B. Pertanyaan tentang pengalaman dan keterampilan</h3>\r\n<p>Pertanyaan tentang pengalaman dan keterampilan ditujukan untuk mengetahui:</p>\r\n<ul>\r\n<li>tujuan karier Anda</li>\r\n<li>bagaimana cara Anda bekerja</li>\r\n<li>loyalitas Anda</li>\r\n<li>bagaimana Anda menghadapi suatu masalah pekerjaan</li>\r\n<li>berapa besar kontribusi yang akan Anda berikan kepada perusahaan.</li>\r\n</ul>\r\n<p>Dari jawaban yang Anda berikan, pewawancara kerja dapat menilai apakah Anda kandidat terbaik atau bukan untuk posisi yang Anda lamar.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>7. Apa kelebihan dan kekurangan Anda?</strong></p>\r\n<p>Kandidat: &ldquo;Kelebihan saya adalah jujur, cepat belajar, dan pekerja keras. Sementara itu, kelemahan saya adalah suka lupa. Namun, saya berusaha mengatasi kelemahan ini dengan mencatat hal-hal penting terkait pekerjaan di buku saku saya.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>8. Apakah Anda memiliki hubungan yang baik dengan rekan kerja?</strong></p>\r\n<p>Kandidat: &ldquo;Ya. Saya pikir hubungan saya dengan semua rekan kerja saya berjalan dengan baik.</p>\r\n<p>Memang pernah saya memiliki masalah dengan seorang rekan kerja terkait pembagian tanggung jawab, namun kami menyelesaikannya dengan cara berdiskusi bersama sehingga kami memiliki tanggung jawab masing-masing yang jelas.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>9. Apakah Anda lebih senang bekerja sorang diri atau dalam tim?</strong></p>\r\n<p>Kandidat: &ldquo;Bergantung pada pekerjaan yang harus saya selesaikan. Meskipun saya lebih senang bekerja sendiri, saya dapat bekerja dalam tim.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>10. Jika Anda diharuskan bekerja di dalam tim, posisi apa yang akan Anda pilih?</strong></p>\r\n<p>Kandidat: &ldquo;Saya lebih suka menjadi seorang konseptor. Dengan begitu, saya bisa merencanakan langkah-langkah yang harus diambil, membuat daftar sumber daya yang diperlukan, mengindentifikasi hambatan, dan membuat ukuran kesuksesan suatu projek.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>11. Bisakah Anda bekerja di bawah tekanan?</strong></p>\r\n<p>Kandidat: &ldquo;Ya. Selama ini bisa mengatasi tekanan pekerjaan saya. Selain itu, saya pikir tekanan bisa memberikan hasil yang positif bagi saya karena saya bisa mengeluarkan potensi, inisiatif, dan keterampilan saya untuk menyelesaikan pekerjaan tersebut.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>12. Bagaimana sikap Anda terhadap kritik yang ditujukan kepada Anda?</strong></p>\r\n<p>Kandidat: &ldquo;Dalam pemahaman saya, manusia pada umumnya tidak suka dikritik secara sembarangan. Secara pribadi, saya menerima kritik yang ditujukan kepada saya.</p>\r\n<p>Jika kritik itu baik dan membangun, saya akan dengan senang hati melaksanakannya demi memperbaiki diri sendiri. Jika sebaliknya, saya akan mengabaikannya.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>13. Menurut Anda, orang seperti apakah yang sulit diajak kerja sama?</strong></p>\r\n<p>Kandidat: &ldquo; Menurut saya, orang yang sulit diajak bekerja sama adalah orang yang tidak suka bekerja keras, suka melanggar aturan, banyak mengeluh, tidak memperhatikan kualitas pekerjaan, dan suka menjelek-jelekkan orang lain.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>14. Apabila bawahan Anda melakukan kesalahan, apa yang Anda lakukan?</strong></p>\r\n<p>Kandidat: &ldquo;Tidak ada orang yang sempurna. Saya akan memeriksa apa yang sebenarnya terjadi, mencari kerusakan akibat kesalahan tersebut, dan mencari penyebabnya.</p>\r\n<p>Setelah itu, saya menentukan tindakan perbaikan dan pencegahan agar kesalahan serupa tidak terjadi di kemudian hari. Saya juga akan memberi kesempatan kepada bawahan bersangkutan untuk memperbaiki kinerjanya.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>15. Apa yang akan Anda lakukan bila bawahan Anda mengeluhkan masalah pribadi mereka?</strong></p>\r\n<p>Kandidat: &ldquo;Saya akan menerima mereka di ruangan saya dan membiarkan mereka menceritakan masalah pribadinya. Jika diminta, saya akan mengajukan beberapa saran untuk masalah tersebut.</p>\r\n<p>Dari pengalaman saya, mereka pada umumnya hanya butuh seorang pendengar yang akan mendengarkan masalah mereka tanpa mengadilinya.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>16. Apa yang akan Anda lakukan ketika menghadapai masalah besar dalam pekerjaan?</strong></p>\r\n<p>Kandidat: &ldquo;Saya akan mencari akar masalah tersebut guna mendapatkan solusi yang tepat. Setelah itu, saya akan menjalankan solusi tersebut dalam rangka perbaikan.</p>\r\n<p>Sejalan dengan tindakan perbaikan tersebut, saya juga akan menetapkan tindakan pencegahan gara masalah tersebut tidak terjadi lagi.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>17. Mengapa Anda pindah kerja dari perusahaan sebelumnya?</strong></p>\r\n<p>Kandidat: &ldquo;Saya ingin pekerjaan yang lebih menantang, dan saya kira perusahaan ini dapat memenuhi keinginan saya tersebut.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>18. Apa halangan tersulit yang Anda temukan pada pekerjaan sebelumnya?</strong></p>\r\n<p>Kandidat: &ldquo;Halangan tersulit saya di pekerjaan tersebut adalah jam kerja yang tidak teratur. Terkadang saya bekerja di pagi hari dan di malam hari.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>19. Apakah Anda pernah bolos bekerja?</strong></p>\r\n<p>Kandidat: &ldquo;Sepanjang yang saya ingat, saya tidak pernah melakukannya. Jika ada keadaan darurat yang membuat saya tidak bisa masuk kerja, saya langsung memberitahukan hal tersebut kepada atasan saya.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>20. Apakah Anda bersedia bekerja lembur?</strong></p>\r\n<p>Kandidat: &ldquo;Ya, saya bersedia. Itu tidak masalah bagi saya.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>21. Apa yang membuat Anda tertarik bekerja di perusahaan kami?</strong></p>\r\n<p>Kandidat: &ldquo;Perusahaan ini menawarkan pekerjaan yang sesuai dengan pengalaman dan pendidikan saya. Dengan demikian, saya dapat berkontribusi dalam memajukan perusahaan ini.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>22. Seberapa baik Anda mengenal perusahaan kami?</strong></p>\r\n<p>Kandidat: &ldquo;Saya cukup mengenal perusahaan ini karena banyak teman yang membicarakan dan menggunakan produknya. Selain itu, saya juga melihat iklan perusahaan ini di media massa ternama.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>23. Menurut Anda, apa yang membuat perusahaan kami berbeda dengan perusahaan sejenis lainnya?</strong></p>\r\n<p>Kandidat: &ldquo;Sepanjang yang saya tahu, perusahaan ini menghasilkan produk yang berkualitas. Selain itu, fasilitas yang diberikan kepada karyawannya juga lebih baik daripada perusahaan lain.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>24. Jelaskan rencana Anda untuk lima tahun ke depan?</strong></p>\r\n<p>Kandidat: &ldquo; Jika saya diterima bekerja di sini, dalam lima tahun ke depan saya ingin menjadi supervisor. Oleh karena itu, saya akan mempelajari dan memahami ruang lingkup kerja dan tanggung jawab posisi tersebut.</p>\r\n<p>Setelah itu, saya akan berusaha keras memenuhi apa yang disyaratkan untuk menjadi seorang supervisor di perusahaan ini.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>25. Apakah Anda siap menerima tanggung jawab yang lebih besar?</strong></p>\r\n<p>Kandidat: &ldquo;Ya, saya siap. Dalam pandangan saya, saya harus siap menerima tanggung jawab yang besar dan posisi yang lebih tinggi guna mencapai karier yang diinginkan.</p>\r\n<p>Dengan cara tersebut, saya dapat memacu diri sendiri sehingga menjadi lebih baik.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>26. Lingkungan kerja seperti apa yang Anda sukai?</strong></p>\r\n<p>Kandidat: &ldquo;Saya suka bekerja dalam lingkungan yang adil atau segala sesuatunya transparan. Prosedur opersional standar (SOP) jelas, begitu juga dengan perkembangan karier.</p>\r\n<p>Hukuman dan penghargaan diberlakukan dengan objektif. Selain itu, saya juga senang bekerja dengan rekan-rekan yang optimistis dan bersemangat.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>27. Apakah Anda bersedia ditempatkan di luar kota?</strong></p>\r\n<p>Kandidat: &ldquo;Ya, saya bersedia. Bekerja di perusahaan ini berarti saya harus siap menerima keputusan dan kebijakan yang berlaku.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<h3>C. Pertanyaan seputar gaji</h3>\r\n<p>Pertanyaan seputar gaji biasanya ditanyakan pada akhir wawancara kerja. Jumlah pertanyaannya tidak banyak, namun berfokus pada berapa besar gaji yang Anda minta.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>28. Berapa gaji Anda sekarang?</strong></p>\r\n<p>Kandidat: &ldquo;Gaji pokok saya sekarang Rp 4 juta. Ditambah tunjangan dan bonus bulanan, total gaji saya adalah Rp 5 juta.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>29. Berapa gaji yang Anda harapkan untuk posisi ini?</strong></p>\r\n<p>Kandidat: &ldquo;Saya berharap memperoleh gaji sebesar Rp 8 juta.&rdquo;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>30. Kami tidak dapat memenuhi permintaan gaji Anda. Seberapa banyak Anda bisa menurunkan permintaan gaji tersebut?</strong></p>\r\n<p>Kandidat: &ldquo;Bagaimana kalau Rp 7 juta?&rdquo;</p>', 'interview-kerja,karyawan,referensi-pekerjaan,tips-kerja', 'Contoh Pertanyaan dan jawaban saat wawancara atau interview kerja', 12, 'admin', '2018-04-16 04:48:56', '2018-04-16 04:48:56');

-- --------------------------------------------------------

--
-- Table structure for table `employ_status`
--

CREATE TABLE `employ_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employ_status`
--

INSERT INTO `employ_status` (`id`, `nama_status`, `status_slug`, `created_at`, `updated_at`) VALUES
(1, 'Kontrak', 'kontrak', NULL, NULL),
(2, 'Pegawai Tetap', 'pegawai-tetap', NULL, NULL),
(4, 'Freelance', 'freelance', NULL, NULL),
(5, 'Tidak dijelaskan', 'tidak-dijelaskan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul_halaman` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_halaman` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id`, `judul_halaman`, `judul_slug`, `isi_halaman`, `created_at`, `updated_at`) VALUES
(1, 'About', 'about', '<p>Selamat datang di portal lowongan kerja nggolet.com</p>\r\n<p>nggolet.com dibangun untuk membantu anda yang berada di wilayah Purbalingga, Purwokerto, cilacap, banjarnegara dan kebumen mendapatkan informasi lowongan pekerjaan yang anda inginkan.</p>\r\n<p>nggolet.com saat ini masih dalam tahap pengembangan yang lebih luas dimana situs ini nantinya akan kami kembangan meliputi direktori tempat-tempat seperti cafe &amp; restoran, rumah sakit dan tempat umum lainnya.</p>\r\n<p>Kami selaku pengelola membuka bagi anda yang ingin ikut berpartisipasi mengembangkan website ini silahkan menghubungi kontak admin ke : pahlitamanata@gmail.com</p>', '2018-03-28 07:24:05', '2018-04-09 04:17:05'),
(2, 'Term Of Service', 'term-of-service', '<p>Calon pelanggan lowonganpurbalingga harus membaca, memahami dan menyetujui perjanjian berikut ini sebelum memutuskan untuk menggunakan servis lowonganpurbalingga Sebaliknya Anda harus tetap menyetujui perjanjian ini selama Anda menjadi client kami, termasuk penggantinya dan yang diijinkan menggantikannya.<br /><br />Pihak Penyewa (Selanjutnya Disebut \"Pelanggan\") DILARANG Untuk:<br /><br />1. Menggunakan layanan lowonganpurbalingga untuk kegiatan yang bertentangan dengan hukum yang berlaku di wilayah Republik Indonesia atau hukum yang ditetapkan di wilayah hukum tempat tinggal pelanggan atau hukum internasional.<br /><br />2. Menyimpan file atau content yang secara langsung atau tidak langsung mengandung file:<br /><br />&nbsp;&nbsp;&nbsp; Pirated software<br />&nbsp;&nbsp;&nbsp; Plagiat Software/Website<br />&nbsp;&nbsp;&nbsp; Program Hackers &amp; Phreaking atau archives<br />&nbsp;&nbsp;&nbsp; Content Phising<br />&nbsp;&nbsp;&nbsp; Warez Sites<br />&nbsp;&nbsp;&nbsp; Internet BOT , BNC, Egg Drop, dll<br />&nbsp;&nbsp;&nbsp; Isi situs melanggar copyright/hak patent<br />&nbsp;&nbsp;&nbsp; Menggunakan layanan lowonganpurbalingga untuk situs dewasa/porno<br /><br />3. Pelanggan lowonganpurbalingga dilarang untuk menggunakan&nbsp; layanan lowonganpurbalingga untuk penjualan obat aborsi, penjualan obat keras tanpa ijin, dan segala bentuk penjualan obat terlarang dan atau ilegal.<br /><br />4. Menggunakan layanan lowonganpurbalingga untuk kegiatan menjual atau membeli produk, barang atau layanan yang dapat merugikan pihak lain atau untuk tujuan penipuan dengan sistem hyip, skema piramida, money game, surat berantai, judi, dan sistem lain yang dilarang oleh Pemerintah Indonesia.</p>\r\n<p>&nbsp;</p>\r\n<h2 class=\"mt50 text-bold text-center\" style=\"text-align: center;\">Kewajiban Pemasang Iklan</h2>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>1. Bersedia \"membaca\" peraturan ini sebelum mendaftarkan diri &amp; bersedia \"mentaati\" peraturan ini setelah menggunakan layanan lowonganpurbalingga.</p>\r\n<p>2. Bertanggung jawab atas iklan yang telah di pasang di lowonganpurbalingga dengan melakukan verifikasi data melalui email.</p>\r\n<p>3. Bertanggung jawab untuk semua informasi yang diambil, disimpan, dan dikirimkan oleh pelanggan melalui layanan.</p>\r\n<p>4. Lowonganpurbalingga berhak menghapus atau tidak mempublish iklan apabila pengiklan melakukan etika buruk atau tindakan yang tidak sopan / tidak berprikemanusiaan secara berlebihan atau melampaui batas-batas kesopanan.</p>\r\n<p>5. Lowonganpurbalingga berhak untuk menampilkan informasi kontak yang berkaitan dengan iklan kepada publik.</p>\r\n<p>6. Lowonganpurbalingga tidak dapat mengembalikan uang sewa apabila terjadi musibah, kerusuhan atau segala hal yang tidak diinginkan dan di luar kemampuan kami.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2 class=\"mt50 text-bold text-center\" style=\"text-align: center;\">Kewajiban Pencari Kerja</h2>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>1. Selalu mengecek kantor fisik pada setiap lowongan kerja yang ada.</p>\r\n<p>2. Menanyakan langsung kepada pihak perusahaan/pengiklan terkait apabila terdapat syarat yang terkesan ganjil seperti mewajibkan membayarkan sejumlah uang tertentu dan lain sebagainya.</p>\r\n<p>3. Melaporkan kepada kami selaku layanan pengiklan jika terdapat iklan yang tidak sesuai agar kami bisa melakukan pencabutan atas iklan yang bersangkutan melalui halaman informasi kontak yang ada.</p>\r\n<p>&nbsp;</p>', '2018-04-02 02:12:47', '2018-04-02 02:13:49'),
(3, 'Panduan Pengiklan', 'panduan-pengiklan', '<p>Panduan posting iklan lowongan kerja:</p>\r\n<p>1. Jika anda perusahaan yang saat ini sedang membutuhkan SDM yang handal anda bisa mengiklankan lowongan kerja diperushaan anda melalui menu pada bagian atas website ini.</p>\r\n<p>2. Isikan semua field yang ada untuk kelengkapan informasi iklan anda, seperti:</p>\r\n<ol style=\"list-style-type: lower-alpha;\">\r\n<li>Alamat email valid yang anda gunakan.</li>\r\n<li>Judul Lowongan contohnya: Web Programmer PT. Maju Makmur sejahtera</li>\r\n<li>Isikan nama perusahaan anda.</li>\r\n<li>Jenis/kategori lowongan yang dibuka ( pada bagian ini anda bisa memilih lebih dari satu )</li>\r\n<li>Area/wilayah lowongan yang tersedia ( pada bagian ini anda bisa memilih lebih dari satu )</li>\r\n<li>Level pendidikan ( pada bagian ini anda bisa memilih lebih dari satu )</li>\r\n<li>Waktu atau jam kerja ( full time, freelance, part time )</li>\r\n<li>Level posisi jabatan ( tergolong level apakah lowongan yang anda buka ? staff non managemen atau direksi dan sebagainya )</li>\r\n<li>Status kepegawaian ( kontrak atau tetap )</li>\r\n<li>Deskripsi ( mohon isikan secara detail baik mengenai perusahaan, persyaratan yang dibutuhkan dan bagaimana cara melamar di perusahaan anda, serta alamat yang dituju )</li>\r\n<li>Uploadlah cover atau logo perusahaan anda.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p>Catatan:</p>\r\n<p>1. Mohon isikan alamat email yang valid untuk melakukan verifikasi data.</p>\r\n<p>2. Iklan yang anda muat tidak akan ditampilkan jika anda tidak melakukan verifikasi data melalui email.</p>', '2018-04-02 02:32:27', '2018-04-10 05:00:47');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_kategori` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul_web` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_web` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tlp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id`, `judul_web`, `url_web`, `meta_deskripsi`, `meta_keyword`, `alamat`, `tlp`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Info Lowongan Kerja Terupdate Purwokerto, Purbalingga, Cilacap dan Banjarnegara', 'localhost:8000', 'Kumpulan informasi lowongan kerja terlengkap dan terupdate untuk area banyumas, purbalingga, purwokerto, cilacap, banjar negara dan kebumen', 'Lowongan kerja Purbalingga, Lowongan Kerja Purwokerto, Lowongan kerja Cilacap, lowongan kerja Banjar Negara, Lowongan kerja Kebumen', 'Purbalingga', '085721868539', 'gagasagusbahtiar@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `nama_level`, `level_slug`, `created_at`, `updated_at`) VALUES
(1, 'Staff Pegawai (non-manajemen & non-supervisor)', 'staff-pegawai-non-manajemen-non-supervisor', '2018-03-23 19:52:07', '2018-03-23 19:52:07'),
(2, 'Lulusan baru / Pengalaman kerja kurang dari 1 tahun', 'lulusan-baru-pengalaman-kerja-kurang-dari-1-tahun', '2018-03-23 19:52:42', '2018-03-23 19:57:19'),
(3, 'CEO / GM / Direktur / Manajer Senior', 'ceo-gm-direktur-manajer-senior', '2018-03-23 19:53:14', '2018-03-23 19:53:14'),
(4, 'Lowongan Manajer / Asisten Manajer', 'lowongan-manajer-asisten-manajer', '2018-03-23 19:53:46', '2018-03-23 19:53:46'),
(5, 'Supervisor / Koordinator', 'supervisor-koordinator', '2018-03-23 19:54:06', '2018-03-23 19:54:06'),
(6, 'HRD', 'hrd', '2018-08-30 07:47:30', '2018-08-30 07:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `lowongan`
--

CREATE TABLE `lowongan` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `waktu_id` int(11) DEFAULT NULL,
  `employ_status_id` int(11) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `tipe_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul_lowongan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_perusahaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_lowongan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_lowongan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi_seo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_lowongan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `created_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_verify` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lowongan`
--

INSERT INTO `lowongan` (`id`, `user_id`, `waktu_id`, `employ_status_id`, `level_id`, `tipe_slug`, `area_slug`, `pendidikan_slug`, `judul_lowongan`, `judul_slug`, `nama_perusahaan`, `deskripsi_lowongan`, `tag_lowongan`, `deskripsi_seo`, `cover_lowongan`, `publish`, `created_user`, `user_verify`, `created_at`, `updated_at`) VALUES
(31, 1, 3, 1, 1, 'perbankan', 'purwokerto', 'sma-smk,diploma-d1-d2-d3,sarjana-s1-s2', 'Teller Magang Bina Bukopin (Teller MBB)', 'teller-magang-bina-bukopin-teller-mbb', 'PT Bank Bukopin Cabang Purwokerto', '<p>Syarat - syarat:</p><p>\r\n</p><ul><li>Laki-laki/Perempuan</li><li>\r\nUsia maks 25 tahun</li><li>\r\nPendidikan minimal SMK/Sedang kuliah IPK Min 2,75</li><li>\r\nBelum menikah dan tidak ada rencana menikah 2 tahun kedepan</li><li>\r\nMemiliki kemampuan analitis dan problem solving yang baik</li><li>\r\nTeliti, komunikatif, ramah, memilki sense of service</li><li>\r\nMemiliki penampila yang baik dan menarik</li><li>\r\nMampu bekerja mandiri maupun dalam tim</li><li>\r\nMemiliki tingi dan berat badan ideal (min 160cm/50k )<br></li></ul><p>\r\n\r\n\r\nBerkas surat lamaran beserta fotokopi ijazah terakhir yang telah \r\ndilegalisir, foto berwarna ukuran 3 x 4 ( 1 lembar ) dan sertifikat \r\npendukung lainnya.\r\n\r\n<br></p>', NULL, NULL, '1523242905.jpg', 'Y', 'admin', 'sukses', '2018-04-09 03:01:45', '2018-04-09 03:01:45'),
(32, 1, 3, 1, 1, 'hotel-dan-restoran', 'purwokerto', 'sma-smk', 'Chef Cashier Waiter BuldaQ Korean BBQ', 'chef-cashier-waiter-buldaq-korean-bbq', 'CV. Ertiwa Taruno Jaya', '<p>BuldaQ Korean BBQ ini adalah korean BBQ pertama di Purwokerto. BuldaQ mulai beroperasional sejak pertengahan tahun 2017 di 1st floor Rita Supermall. Sesuai namanya, BuldaQ mengusung konsep resto bergaya Korea. Ketika tiba, tampak depan dan interior BuldaQ bisa langsung membuat saya merasakan suasana ala-ala Korea.</p><p>Buldaq Korean BBQ saat ini membutuhkan karyawan untuk mengisi posisi :</p><p>1. Chef</p><p>2. Cashier</p><p>3. Waiters</p><p>4. Steawerd <br></p><p>5. Barista <br></p><p>Syarat :</p><ul><li>Laki-laki/Perempuan</li><li>Single</li><li>Usia 18th - 25th</li><li>Tinggi dan berat badan proporsional</li><li>Berpengalaman dan memiliki skil di bidangnya</li><li>Bersedia di tempatkan di semua cabang.</li></ul><p>Kelengkapan Berkas :</p><p>1. CV</p><p>2. FC Identitas KTP / SIM</p><p>3. FC Ijazah &amp; Transkip Nilai</p><p>4. Surat keterangan Sehat.</p><p>Segera kirim lamaran anda ke :</p><p>ertiwatarunojaya@gmail.com atau kirim langsung ke gerai Buldoq korean BBQ Rita Supermall purwokerto Lantai 1.<br></p>', NULL, NULL, '1523245247.jpg', 'Y', 'admin', 'sukses', '2018-04-09 03:40:47', '2018-04-09 03:40:47'),
(33, 1, 3, 1, 1, 'marketing', 'purwokerto', 'sma-smk', 'Marketing & Warehouse Maximus Autopart', 'marketing-warehouse-maximus-autopart', 'Maximus Autopart', '<p>Perusahaan Distributor sparepart motor mencari tenaga muda yang ulet dan handal untuk mengisi posisi :</p><p>1. Marketing ( MKT )</p><p>2. Staff Warehouse (WHS)</p><p>Syarat :</p><p>Pendidikan Minimal SMA/SMK/Sederajat</p><p>Sehat jasmani dan rohani</p><p>Pengalaman tidak diutamakan</p><p>Memiliki SIM C dan kendaraan pribadi untuk marketing</p><p>Komunikatif dan mampu bekerja secara tim</p><p>Mampu bekerja dengan target</p><p><br></p><p>Segera kirim lamaran ke:</p><p>MAXIMUS AUTOPART</p><p>JL. Sunan Bonang ( Depan Petro Futsal )</p><p>Dukuhwaluh, Purwokerto&nbsp; ( Paling lambat 13 April 2018 )<br></p>', NULL, NULL, NULL, 'Y', 'admin', 'sukses', '2018-04-09 03:48:13', '2018-04-09 03:48:13'),
(34, 1, 3, 2, 1, 'kesehatan', 'purwokerto', 'sma-smk', 'Etika Aesthetic Clinic', 'etika-aesthetic-clinic', 'Etika Aesthetic Clinic', '<p>Etika aesthetic clinic membuka kesempatan bagi anda yang memiliki semangat kerja tinggi untuk posisi :</p><p>1. Teraphist</p><p>2. Front Office</p><p>3. Marketing</p><p>Dengan persyaratan :</p><p>1. Perempuan</p><p>2. Usia 18 - 40 Tahun</p><p>3. Untuk teraphist pendidikan dan pengalaman tidak diutamakan.</p><p>4. Untuk front office mampu menguasai komputer dan media sosial dengan baik</p><p>5. Untuk marketing mampu menguasai media sosial dan diutamakan berpengalaman dibidangnya.</p><p>6. Jujur, komunikatif, mampu bekerja dalam team dan target. <br></p><p>Segera kirim lamaran anda ke:</p><p>Etika aesthitic clinic</p><p>Ruko JL. Brigjen Encung No. 3 Purwokerto</p><p>HP: 081329193301<br></p>', NULL, NULL, NULL, 'Y', 'admin', 'sukses', '2018-04-09 04:00:30', '2018-04-09 04:00:30'),
(35, 1, 1, 4, 1, 'advertising', 'purwokerto', 'sma-smk,diploma-d1-d2-d3,sarjana-s1-s2', 'Admin dan Marketing Ngapak Cloth', 'admin-dan-marketing-ngapak-cloth', 'Outleth Ngapak Cloth', '<h3><b>Admin / Front Office :</b></h3><p>1. Wanita</p><p>2. Berpenampilan menarik / rapi</p><p>3. Komunikatif, disiplin, kerja tim dan loyal</p><p>4. Aktif organisasi kampus dan sedang tidak menjabat sebagai pengurus</p><p>5. Mampu membagi waktu dengan baik</p><p>6. Menguasai Desain ( corel draw, photoshop, dll )</p><p>Fasilitas dan ketentuan :</p><p>a. 4 Jam kerja dalam sehari</p><p>b. Gaji pokok Rp. 450.000</p><p>c. Gaji tambahan apabila dapat mencapai target.</p><p>d. Tour Tahunan</p><p>e. Masa percobaan 1 bulan.</p><p><b></b>f. Mulai bekerja pada 12 April 2018.</p><h3><b>Marketing :</b><b></b></h3><p>1. Pria/wanita</p><p>2. Berpenampilan menarik/rapi</p><p>3. Komunikatif, disiplin, kerja tim dan loyal</p><p>4. Aktif organisasi kampus dan sedang tidak menjabat sebagai pengurus.</p><p>5. Mampu membagi waktu dengan baik</p><p>6. Mampu bekerja dengan tekanan.</p><p>7. Kreatif,inovatif dan cekatan</p><p>Fasilitas dan ketentuan :</p><p>a. Jam kerja bebas</p><p>b. Gaji pokok Rp. 300.000</p><p>c. Gaji tambahan jika mencapai target</p><p>d. Tour Tahunan</p><p>e. Masa percobaan 1 bulan.</p><p>f. Mulai bekerja pada 12 April 2018.</p><p><br></p><p>Persyaratan lamaran:</p><p>1. CV</p><p>2. Fotocopy KRS yang sedang dijalani, <br></p><p>3. Fotocopy pengalaman organisasi/ kerja / event yang pernah atau sedang diikuti</p><p><br></p><p>Maksimal batas pengumpulan lamaran pada 11 April 2018 ke:</p><p>Outlet Ngapak Cloth</p><p>JL. Gunung Slamet No. 20 Grendeng, Purwokerto<br></p><br><p></p><br><br><br>', NULL, NULL, NULL, 'Y', 'admin', 'sukses', '2018-04-09 06:06:57', '2018-04-09 06:08:12'),
(36, 1, 3, 1, 1, 'akuntansi', 'purwokerto', 'diploma-d1-d2-d3', 'Staff Accounting PT. Sutanto Arifchandra Elektronik', 'staff-accounting-pt-sutanto-arifchandra-elektronik', 'PT. Sutanto Arifchandra Elektronik', '<p>PT. Sutanto Arifchandra Elektronik ( Pabrik kabel kitani ) purwokerto membutuhkan karyawan untuk menempati posisi :</p><p>STAFF ACCOUNTING <br></p><p>Persyaratan :</p><p>1. Pria / Wanita</p><p>2. Lulusan min. D3 Akuntansi</p><p>3. IPK Min. 3.0</p><p>4. Umur maksimal 30 tahun</p><p>5. Menguasai pembuatan jurnal</p><p>Jika berminat silahkan kirim lamaran ke :</p><p>PT. Sutanto Arifchandra Elektronik (Pabrik kabel kitani)</p><p>JL. Supardjo Rustam Km. 4 Sokaraja<br></p>', NULL, NULL, '1523263028.jpg', 'Y', 'admin', 'sukses', '2018-04-09 08:37:08', '2018-04-09 08:37:08'),
(38, 2, 3, 1, 1, 'marketing,pekerjaan-umum', 'purwokerto', 'sma-smk,diploma-d1-d2-d3', 'Kasir, Pramuniaga, Maintenance, Gudang', 'kasir-pramuniaga-maintenance-gudang', 'Elizabeth Bag and Shoes', '<p>\r\n\r\n</p><p><strong>1.Kasir</strong></p><p><strong>2.Pramuniaga</strong></p><p><strong>3.Maintenance</strong></p><p><strong>4.Gudang<br></strong></p><p><strong>Persyaratan :</strong><br>– Wanita single [1,2]<br>– Usia maksimal 25 tahun [1,2]<br>– Pendidikan minimal SMU/SMK sederajat [1,2]<br>– Berpenampilan menarik dan komunikatif [1,2]<br>– Pendidikan minimal D3 Elektro [3,4]<br>– Mengerti listrik dengan spesialisasi arus kuat, mampu bekerja secara individu maupun team [3,4]<br>– Bersedia masuk di hari Sabtu/Libur/Hari besar, bekerja shift<br>– Jujur, disiplin, inisiatif tinggi dan mau belajar<br>– Penempatan kerja di Purwokerto</p><p><strong>Fasilitas :</strong><br>Gaji Menarik, BPJS Kesehatan dan BPJS Ketenagakerjaan</p><p><strong>Kirimkan lamaran lengkap ke :</strong><br>Toko Tas Elizabeth<br>Jalan Merdeka NO 38<br>Purwokerto</p><p><strong>atau via email ke purwokerto@elizabethbag.com</strong></p><p><strong>Paling lambat 9 Mei 2018</strong></p><p></p>', NULL, NULL, NULL, 'Y', 'surya', 'sukses', '2018-04-09 12:24:49', '2018-04-09 12:24:49'),
(39, 2, 3, 1, 1, 'marketing-penjualan', 'purwokerto', 'sma-smk', 'Sales/Marketing Toko Artomoro', 'salesmarketing-toko-artomoro', 'Toko Artomoro', '<p>Toko Artomoro&nbsp;yang bergerak di bidang perdagangan palawija membutuhkan tenaga kerja untuk posisi di bawah ini:</p>\r\n<p>SALES MARKETING</p>\r\n<p>&nbsp;</p>\r\n<p>Mencari customer baru dengan mengunjungi pasar/toko di kota dan kabupaten sekitar</p>\r\n<p><strong>Persyaratan:</strong><br />&ndash; Pria<br />&ndash; Usia maksimal 35 tahun<br />&ndash; Pendidikan minimal SMA/SMK Sederajat<br />&ndash; Memiliki kendaraan pribadi dan SIM C, dan juga dapat mengendarai mobil<br />&ndash; Mempunyai pengalaman di bidang Sales/Marketing minimal 1 tahun<br />&ndash; Lebih disukai jika memiliki pengalaman sebagai sales FMCG<br />&ndash; Berkomunikasi dengan baik, bertanggung jawab dan berdedikasi tinggi<br />&ndash; Dapat mengikuti jam kerja perusahaan 08:00 &ndash; 17:00<br />&ndash; Berdomisili di Purwokerto atau di sekitarnya, dan siap bekerja di luar kota</p>\r\n<p><strong>Kelebihan:</strong><br />&ndash; Uang makan yang cukup besar<br />&ndash; Gaji plus Bonus setara dua kali UMK atau lebih</p>\r\n<p><strong>2. Admin Gudang</strong></p>\r\n<p><strong>Persyaratan:</strong><br />&ndash; Pria<br />&ndash; Pendidikan minimal SMA/SMK Sederajat<br />&ndash; Mampu mengoperasikan komputer (Microsoft Office Excel dan Word)<br />&ndash; Proaktif, cekatan, sanggup bekerja keras, bertanggung jawab, dan jujur<br />&ndash; Lebih disukai jika memiliki pengalaman administrasi gudang<br />&ndash; Dapat mengikuti jam kerja perusahaan 08:00 &ndash; 17:00<br />&ndash; Berdomisili di Purwokerto atau di sekitarnya</p>\r\n<p><strong>Kirimkan lamaran lengkap (CV, fotokopi ijazah terakhir, SIM dan KTP) serta nomor yang dapat dihubungi ke:</strong><br />Toko Artomoro<br />Jalan Jenderal Sudirman No 786 (Sebelah toko Hero, depan Ruko Ps. Wage)<br />Purwokerto 53141</p>\r\n<p><strong>Paling lambat 30 April 2018</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, NULL, NULL, 'Y', 'surya', 'sukses', '2018-04-09 12:26:59', '2018-04-11 07:31:02'),
(40, 2, 3, 1, 1, 'pekerjaan-umum', 'purwokerto', 'sma-smk', 'Editor Foto Take & Capture Photo', 'editor-foto-take-capture-photo', 'Take & Capture Photo', '<p><strong>Take &amp; Capture Photo</strong>&nbsp;adalah sebuah perusahaan di purwokerto yang bergerak dibidang jasa fotografi. Sedang membuka lowongan untuk posisi :</p>\r\n<p>&nbsp;</p>\r\n<p><strong>EDITOR FOTO</strong></p>\r\n<p><strong>Persyaratan :</strong><br />&ndash; Wanita.<br />&ndash; Pendidikan Minimal SMA/K.<br />&ndash; Menguasai Adobe Photoshop dan Corel Draw.<br />&ndash; Umur maksimal 25 Tahun.<br />&ndash; Single.<br />&ndash; Surat lamaran lengkap dan surat berkelakuan baik dari kepolisian (SKCK).</p>\r\n<p><strong>Kirimkan lamaran lengkap anda via post ke :</strong><br />Take &amp; Capture Photo<br />Jl. Martadireja I No. 800 Purwokerto 53113</p>\r\n<p><strong>Paling lambat tanggal 30 April 2018</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, NULL, NULL, 'Y', 'surya', 'sukses', '2018-04-09 12:28:29', '2018-04-11 07:31:29'),
(41, 2, 3, 1, 1, 'pekerjaan-umum', 'purwokerto', 'sma-smk', 'Marketing dan Supir Irama Mas Group', 'marketing-dan-supir-irama-mas-group', 'SINAR JAYA ELECTRONIC (IRAMA MAS GROUP)', '<p><strong>SINAR JAYA ELECTRONIC (IRAMA MAS GROUP)</strong>&nbsp;membutuhkan karyawan untuk posisi :</p>\r\n<p>&nbsp;</p>\r\n<p><strong>1. SPG CAMERA &amp; HANDPHONE</strong></p>\r\n<p><strong>Persyaratan :</strong><br />&ndash; Minimal SMU/SMK<br />&ndash; Diutamakan pengalaman bid. Penjualan<br />&ndash; Usia min. 20 th , max. 25-27 tahun<br />&ndash; Berpenampilan menarik<br />&ndash; Jujur, ulet &amp; mau bekerja keras</p>\r\n<p><strong>2. SPM (SALES PROMOTION MAN)</strong></p>\r\n<p><strong>Persyaratan :</strong><br />&ndash; Minimal SMU<br />&ndash; Diutamakan pengalaman di bidang electronic<br />&ndash; Usia max 30 tahun<br />&ndash; Jujur, ulet &amp; mau bekerja keras</p>\r\n<p><strong>3. SUPIR (P)</strong></p>\r\n<p><strong>Persyaratan :</strong><br />&ndash; Minimal SMU<br />&ndash; Memiliki min . Sim a<br />&ndash; Max 35 tahun<br />&ndash; Jujur, mau bekerja keras</p>\r\n<p><strong>Kirimkan lamaran lengkap ke :</strong><br />SINAR JAYA ELECTRONIC (IRAMA MAS GROUP)<br />JL JEND. SUDIRMAN NO. 517 PURWOKERTO</p>\r\n<p><strong>Paling lambat 30 April 2018</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, NULL, NULL, 'Y', 'surya', 'sukses', '2018-04-09 12:29:56', '2018-04-11 07:32:09'),
(42, 2, 3, 1, 1, 'pekerjaan-umum', 'purwokerto,cilacap', 'sma-smk', 'Karyawan PT Parastar Distrindo', 'karyawan-pt-parastar-distrindo', 'PT Parastar Distrindo', '<p>PT Parastar Distrindo membutuhkan karyawan untuk posisi:</p>\r\n<p>&nbsp;</p>\r\n<p>1. Sales Canvasser</p>\r\n<p>Kualifikasi :<br />a. Pria usia max 30 tahun<br />b. Pendidikan minimal SMA atau Sederajat<br />c. Memiliki sepeda motor sendiri<br />d. Memiliki Sim C<br />e. Jujur, disiplin, komunikatif<br />f. Dapat bekerjasama dalam team<br />g. Siap bekerja dibawah tekanan</p>\r\n<p>Penempatan : Purwokerto, Majenang, Cilacap</p>\r\n<p>2. Branch Coordiantor</p>\r\n<p>Kualifikasi<br />a. Pria usia max 35 tahun<br />b. Pendidikan minimal SMU / Sederajat<br />c. Berpengalaman di bidang sales dan distribusi retail minimal 1 tahun<br />d. Dapat mengoperasikan Microsoft office<br />e. Memiliki kemampuan memimpin dan membangun team<br />f. Jujur, disiplin dan tegas<br />g. Dapat bekerja sama dalam team</p>\r\n<p>Penempatan : Majenang</p>\r\n<p>&nbsp;</p>\r\n<p>Kirim Lamaran, CV, Copy Ijazah, Copy KTP, Copy KK dan photo terbaru via email ke:</p>\r\n<p>recpara.smg@gmail.com</p>\r\n<p>dengan subject (posisi yang dilamar &amp; penempatan) contoh : sales canvasser Purwokerto</p>\r\n<p>Paling lambat 30 April 2018</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, NULL, NULL, 'Y', 'surya', 'sukses', '2018-04-09 12:31:47', '2018-04-11 07:32:52'),
(43, 1, 3, 1, 1, 'pembiayaan', 'purbalingga,purwokerto', 'sma-smk', 'Collector dan Surveyor FIF GROUP', 'collector-dan-surveyor-fif-group', 'FIF GROUP', '<p><strong>FIF GROUP</strong>&nbsp;merupakan perusahaan pembiayaan yang dimiliki sepenuhnya oleh Astra. FIF GROUP saat ini membutuhkan kandidat terbaik untuk menempati posisi sebagai:</p>\r\n<p>&nbsp;</p>\r\n<p><strong>1. COLLECTOR</strong><br /><strong>2. SURVEYOR</strong></p>\r\n<p><strong>KUALIFIKASI:</strong><br />1. Pria<br />2. Maks. 28 Tahun<br />3. Min. SMA/ Sederajat<br />4. Memiliki kendaraan pribadi dan sim C<br />5. Menyukai tantangan dan berorientasi pada target<br />6. Memiliki daya analisa dan kemampuan komunikasi yg baik<br />7. Berpengalaman lebih diutamakan/ tanpa pengalaman welcome</p>\r\n<p><strong>BENEFIT:</strong><br />1. Gaji pokok<br />2. Insentif<br />3. Bpjs kesehatan dan ketenagakerjaan<br />4. Asuransi<br />5. Rawat Jalan<br />6. Tunjangan Operasional</p>\r\n<p>Penempatan : Purwokerto dan Purbalingga</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Kirimkan Surat Lamaran Anda Via Pos Ke Alamat:</strong><br />FIF GROUP Cabang Purwokerto<br />Jl. Suparjo Rustam No.08 Berkoh<br />Purwokerto (cantumkan kode posisi di amplop)</p>\r\n<p>Atau<br /><strong>Email: nanki.nirmanto@sim.co.id</strong><br />085227872252 (WA Only)</p>\r\n<p><strong>Paling lambat 30 April 2018</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, NULL, NULL, 'Y', 'admin', 'sukses', '2018-04-09 12:34:15', '2018-04-11 07:33:22'),
(44, 1, 3, 1, 1, 'akuntansi', 'purbalingga,purwokerto', 'diploma-d1-d2-d3', 'Account Officer Koprasi Nusantara', 'account-officer-koprasi-nusantara', 'KopNus (Koprasi Nusantara)', '<p><strong>KopNus</strong>&nbsp;sebagai salah satu Koperasi tersebar, terbesar di Indonesia, yang bekerja sama dengan PT. Pos Indonesia, Bank BNI Syariah, Bank Mualamat, Bank Niaga Syariah dan Bank Permata Syariah dimana kami bergerak dalam bidang Kredit Pensiun, Pembiayaan Talangan Haji &amp; Umroh Cicilan Emas LM Antam dan Simpanan Deposito, mengajak para tenaga profesional untuk mengembangkan karir dan menempati posisi sebagai berikut :</p>\r\n<p>&nbsp;</p>\r\n<p><strong>ACCOUNT OFFICER (AO)</strong></p>\r\n<p><strong>Persyaratan :</strong><br />&ndash; Pendidikan Minimal Diploma 3 Semua Jurusan<br />&ndash; Diutamakan berpengalaman sebagai marketing<br />&ndash; Berpenampilan menarik<br />&ndash; Dapat berkomunikasi dengan baik<br />&ndash; Penempatan Purwokerto, Purbalingga, Cilacap Banjarnegara &amp; Kebumen</p>\r\n<p><strong>Benefit :</strong><br />&ndash; Gaji (Negotable)<br />&ndash; Insentif / Tunjangan<br />&ndash; Bonus<br />&ndash; THR<br />&ndash; Asuransi Kesehatan<br />&ndash; dan lain-lain</p>\r\n<p><strong>Kirim Lamaran dan CV Via Pos :</strong><br />Ke Koperasi Nusantara Cabang Purwokerto<br />d/a Kantor Pos Purwokerto<br />JI. Jenderal Sudirman No. 435<br />Purwokerto 53116</p>\r\n<p>Tulis kode Kota di Kanan Atas Amplop</p>\r\n<p><strong>Paling lambat tanggal 15 April 2018</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'Lowongan Purwokerto,lowongan Koperasi nusantara', 'Lowongan karyawan koperasi nusantara', NULL, 'Y', 'admin', 'sukses', '2018-04-09 12:36:27', '2018-04-11 09:04:42'),
(45, 2, 3, 1, 1, 'pekerjaan-umum', 'purbalingga', 'sma-smk', 'Pramuniaga dan Gudang Harum Swalayan', 'pramuniaga-dan-gudang-harum-swalayan', 'HARUM SWALAYAN', '<p><strong>Harum Swalayan</strong>&nbsp;membutuhkan karyawan untuk posisi :</p>\r\n<p>&nbsp;</p>\r\n<p><strong>1. Pramuniaga </strong><br /><strong>2. Bagian Gudang</strong></p>\r\n<p><strong>Persyaratan :</strong><br />&ndash; Pria<br />&ndash; Usia maksimal 25 tahun<br />&ndash; Pendidikan minimal SMA sederajat<br />&ndash; Siap kerja dengan sistem shift ]<br />&ndash; Domisili Purbalingga dan sekitarnya<br />&ndash; Jujur rajin ulet tanggung jawab<br />&ndash; Sehat jasmani dan rohani</p>\r\n<p><strong>Kirimkan lamaran lengkap ke :</strong><br />Harum Swalayan<br />Jalan Jenderal Soedirman 110<br />Purbalingga</p>\r\n<p><strong>Paling lambat 15 April 2018</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, NULL, NULL, 'Y', 'surya', 'sukses', '2018-04-09 12:37:59', '2018-04-11 07:34:28'),
(46, 2, 3, 1, 1, 'akuntansi,perbankan,staf-administrasi', 'purbalingga,purwokerto,cilacap', 'diploma-d1-d2-d3,sarjana-s1-s2', 'Teller Magang Bina Bukopin [Teller MBB]', 'teller-magang-bina-bukopin-teller-mbb', 'PT Bank Bukopin Tbk', '<p></p><p><strong>Teller Magang Bina Bukopin [Teller MBB]</strong><br><strong>Penempatan : Purwokerto, Purbalingga, Banjarnegara dan Cilacap</strong></p><p><strong>Persyaratan :</strong><br>– Pria/Wanita<br>– Usia maksimal 25 tahun<br>– Pendidikan SMA/D3/S1/Sedang Kuliah IPK minimal 2,7<br>– Fresh graduate/berpengalaman<br>– Belum menikah dan tidak ada rencana menikah 2 tahun ke dapan<br>– Memiliki kemampuan analitis dan problem solving yang baik<br>– Penampilan menarik dan baik<br>– Mampu bekerja mandiri maupun dalam tim<br>– Memiliki tinggi dan berat badan ideal [minimal 160 cm/50kg]</p><p><strong>Kirim lamaran lengkap ke :</strong><br>PT Bank Bukopin Tbk<br>Kompleks Pertokoan Nusantara No 1<br>Jalan Jenderal Soedirman<br>Purwokerto</p><p><strong>Paling lambat 16 April 2018</strong></p><br><p></p>', NULL, NULL, NULL, 'N', 'surya', 'sukses', '2018-04-09 12:39:27', '2018-04-11 01:17:18'),
(47, 2, 3, 1, 1, 'akuntansi', 'cilacap', 'sma-smk,diploma-d1-d2-d3,sarjana-s1-s2', 'Pembina Sentra BTPN Syariah', 'pembina-sentra-btpn-syariah', 'BTPN Syariah', '<p><strong>BTPN Syariah</strong>&nbsp;merupakan bank syariah pertama di Indonesia yang memberdayakan keluarga pra/cukup sejahtera, Mengundang putra-putri terbaik BREBES untuk mengikuti SELEKSI BTPN SYARIAH 2018 WILAYAH BREBES dengan posisi :</p>\r\n<p>&nbsp;</p>\r\n<p><strong>PEMBINA SENTRA</strong></p>\r\n<p><strong>KUALIFIKASI:</strong><br />&ndash; Pria/Wanita, usia maks. 28 tahun<br />&ndash; Pendidikan SMA / Sederajat, D1 &ndash; D3 dan S1<br />&ndash; Menyukai pekerjaan lapangan<br />&ndash; Mampu mengendarai sepeda motor dan memiliki SIM C<br />&ndash; Bersedia bekerja dan tinggal di desa-desa<br />&ndash; Penempatan Brebes dan Tegal</p>\r\n<p><strong>FASILITAS:</strong><br />&ndash; Pendapatan tetap dan THR<br />&ndash; Asuransi Kesehatan dan Ketenagakerjaan<br />&ndash; Pelatihan dan jenjang karir yang terbuka<br />&ndash; Wisma / Mess (tempat tinggal)<br />&ndash; Kebutuhan pokok<br />&ndash; BEASISWA<br />&ndash; Fasilitas kendaraan bermotor</p>\r\n<p><strong>Silahkan daftarkan diri anda melalui form e registrasi : <a href=\"//goo.gl/6vtNkH\" target=\"_blank\" rel=\"nofollow\">goo.gl/6vtNkH</a></strong></p>\r\n<p><strong>Pertanyaan mengenai seputar SELEKSI BTPN SYARIAH 2018 dan pendaftaran dapat menghubungi nomor HUMAN CAPITAL BTPN SYARIAH: 085647829912 (SMS ONLY)</strong></p>\r\n<p>HATI &ndash; HATI DENGAN PENIPUAN YANG MENGATASNAMAKAN BTPN SYARIAH!<br />PENYELENGGARAAN SELEKSI GRATIS TANPA DIPUNGUT BIAYA</p>\r\n<p><strong>Paling lambat 21 April 2018</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, NULL, NULL, 'Y', 'surya', 'sukses', '2018-04-09 16:27:24', '2018-04-11 07:34:07'),
(48, 2, 3, 1, 1, 'komputer-it-programmer', 'purwokerto', 'diploma-d1-d2-d3', 'Technical Support - Purwokerto', 'technical-support-purwokerto', 'PT. ASURANSI BINTANG', '<p>\r\n\r\n</p><div><div>Industri: Asuransi</div><div></div></div><div><div>Jenjang Karir: Staff ( &gt; 1 tahun pengalaman kerja)</div><div></div></div><div><div>Pendidikan: Diploma (D3)</div><div></div></div><div><div>Gaji yang Ditawarkan: Rp. 3 Juta - Rp. 4 Juta</div><div></div></div><div><div>Fasilitas &amp; Tunjangan: BPJS Ketenagakerjaan</div><div></div></div><div><div>Ditempatkan: Indonesia</div></div>\r\n\r\n<br><p></p><p>info&nbsp;Selengkapnya&nbsp;cek&nbsp;di&nbsp;web&nbsp;resmi&nbsp;PT&nbsp;ASURANSI&nbsp;BINTANG.<br></p><p>\r\n\r\n<a target=\"_blank\" rel=\"nofollow\" href=\"http://www.asuransibintang.com/\">http://www.asuransibintang.com/</a>\r\n\r\n<br></p>', NULL, NULL, '1523291929.jpg', 'Y', 'surya', 'sukses', '2018-04-09 16:38:49', '2018-04-09 16:38:49'),
(49, 2, 3, 1, 1, 'marketing,pekerjaan-umum', 'purbalingga,purwokerto', 'sma-smk', 'MARKETING, SALES COUNTER, ADM', 'marketing-sales-counter-adm', 'Artha Graha Motor', '<p>\r\n\r\n</p><h3>Artha Graha Motor <b></b><b></b>Dealer Suzuki<b></b><b></b><br></h3><h3>MARKETING</h3><h3>Syarat</h3><div><ol><li>Pria/Wanita</li><li>Usia maks 18 tahun</li><li>Pendidikan Min SMA/SMK</li><li>Punya kendaraan sendiri dan memiliki SIM C</li><li>Menyukai tantangan dalam hal penjualan</li><li>Berkelakuan baik</li><li>Menguasai area Purwokerto dan sekitarnya</li></ol></div>\r\n\r\n<b>SALES COUNTER</b><p></p><p><b>\r\n\r\nSyarat\r\n\r\n<br></b></p><p></p><ol><li>Pria/Wanita</li><li>Usia maks 18 tahun</li><li>Pendidikan Min SMA/SMK</li><li>Punya kendaraan sendiri dan memiliki SIM C</li><li>Menyukai tantangan dalam hal penjualan</li><li>Berkelakuan baik</li></ol><b>ADM</b><p></p><p><b>\r\n\r\n</b></p><h3><b>Syarat</b></h3><div><ol><li>Wanita</li><li>Usia maks 25 tahun</li><li>Pendidikan Min SMA/SMK</li><li>Jujur, rajin dan bertanggung jawab</li><li>Menguasai Komputer (Min MS Office)</li></ol></div><b><div>PALING LAMBAT 24 APRIL 2018</div><div>\r\n\r\nKirim lamaran dan CV via pos.\r\n\r\n\r\n\r\nJalan DI Panjaitan No 117 Purwokerto\r\n\r\n<br></div>\r\n\r\n<br></b><p></p>', NULL, NULL, NULL, 'Y', 'surya', 'sukses', '2018-04-09 16:51:58', '2018-04-09 16:51:58'),
(50, 1, 3, 1, 1, 'staf-administrasi,pekerjaan-umum', 'purwokerto', 'diploma-d1-d2-d3', 'ADMIN  Batavia Prosperindo Finance', 'admin-batavia-prosperindo-finance', 'Batavia Prosperindo Finance', '<p></p><h3>Perusahaan Pembiayaan Kendaraan<br></h3><h3>Syarat</h3><div><ol><li>Wanita, usia maks 29 tahun</li><li>Min D3</li><li>Berpenampilan menarik</li><li>Menguasai Komputer</li><li>Mempunyai loyalitas terhadap perusahaan</li><li>Mau belajar</li><li>Bisa bekerja secara individu maupun team</li><li>Penempatan di Purwokerto</li></ol></div><h3>Keterangan Lainnya</h3><div><p>Fasilitas</p><p>Gaji Menarik dan Uang lembur.</p><p><b>Paling Lambat 17 April 2018</b></p><p>Kirim lamaran via pos.Jalan S Parman No 239 C, Purwokerto</p></div><br><p></p>', NULL, NULL, NULL, 'Y', 'admin', 'sukses', '2018-04-09 16:55:43', '2018-04-10 01:43:39'),
(51, 1, 3, 1, 1, 'teknik-elektro,pekerjaan-umum', 'purwokerto', 'sma-smk', 'Teknisi AC Agung Jaya Electronic', 'teknisi-ac-agung-jaya-electronic', 'Agung Jaya Electronic', '<p>&nbsp;</p>\r\n<h3>Tugas</h3>\r\n<div>Melakukan pemasangan,perawatan,perbaikan semua jenis ac,survey lokasi,pengiriman barang</div>\r\n<h3>Syarat</h3>\r\n<div>\r\n<ol>\r\n<li>Mengerti memahami semua jenis ac,mampu melakukan perbaikan ac</li>\r\n<li>Memiliki sim A dan C</li>\r\n</ol>\r\n</div>\r\n<h3>Keterangan Lainnya</h3>\r\n<div>\r\n<p>Kirimkan lamaran anda ke :<br />Agung Jaya Electronic<br />Jl.Jend Sudirman No.687 Purwokerto</p>\r\n</div>\r\n<p><strong>PALING LAMBAT 30 APRIL 2018</strong></p>\r\n<p>&nbsp;</p>', NULL, NULL, NULL, 'Y', 'admin', 'sukses', '2018-04-09 16:58:43', '2018-04-11 07:35:06'),
(52, 2, 3, 1, 1, 'staf-administrasi,pekerjaan-umum', 'banjarnegara', 'sma-smk', 'KASIR', 'kasir', 'TELE RING', '<p>\r\n\r\n</p><div>Lowongan Kerja Banjarnegara,<b> TELE RING</b> Banjarnegara pada saat ini sedang membutuhkan <b>KASIR.</b></div><div><b><br></b></div><div><b>Syarat:</b></div><div>- Wanita.</div><div>- Pendidikan min SMA/SMK (diutamakan freshgrad)</div><div>- Komunikatif, supel, teliti, sabar, suka dengan gadget.</div><div>- Bersedia bekerja dalam sistem fulltime dan shift.</div><div>- Mau bekerja keras dalam tekanan dan target.</div><div>- Bersedia ditempatkan di Banjarnegara.</div><div><br></div><div><b>Kelengkapan:</b></div><div>- Surat lamaran kerja.</div><div>- Daftar riwayat hidup.</div><div>- FC E-KTP</div><div>- FC Ijazah terakhir.</div><div>- Pas foto 3x4 dua lembar.</div><div>- Berkas penunjang lainnya.</div><div><br></div><div><b>Fasilitas:</b></div><div>- Gaji Pokok.</div><div>- Insentif.</div><div><br></div><div>Kirimkan ke:</div><div><b>TELE RING Banjarnegara</b></div><div><b>Jl Letjend Soeprapto No. 41 Kuta Banjar</b></div><div><b>Banjarnegara 53418</b></div><div><br></div><div><b>CP : 093840055119 WA ONLY</b></div><div><br></div><div>urgent need</div><div>bulan April 2018</div><div><br></div><blockquote>jika ada pemungutan biaya selama proses seleksi mohon abaikan saja</blockquote>\r\n\r\n<br><p></p>', NULL, NULL, '1523330457.jpg', 'Y', 'surya', 'sukses', '2018-04-10 03:20:58', '2018-04-10 03:20:58'),
(53, 2, 1, 1, 1, 'staf-administrasi,marketing,pekerjaan-umum', 'purwokerto', 'sma-smk,diploma-d1-d2-d3', 'Admin Toko Online', 'admin-toko-online', 'Toko Online', '<p>\r\n\r\n</p><p>Dibutuhkan seorang Admin Toko Online. <br>Syarat:<br>- Wanita muslimah. <br>- Domisili Purwokerto Banyumas dan sekitar. <br>- Aktif sosmed dan <br>- Jujur, sopan, kreatif, aktif, dan bertanggung jawab. <br>- Menguasai Komputer secara general.</p><p>INFO lebih lanjut hubungi SMS/WA <u><u>081297978771</u></u></p><p>Jalan kuman lama 3 no.20<br>Purwokerto Lor</p><p>secepatnya</p>\r\n\r\n<br><p></p>', NULL, NULL, NULL, 'Y', 'surya', 'sukses', '2018-04-10 03:23:44', '2018-04-10 03:23:44'),
(54, 2, 3, 1, 1, 'staf-administrasi,pekerjaan-umum', 'purwokerto', 'sma-smk,diploma-d1-d2-d3', 'Customer Service Depo Pelita', 'customer-service-depo-pelita', 'Depo Pelita Sokaraja', '<p>&nbsp;</p>\r\n<p>Deposit Pelita sedang membutuhkan KARYAWATI untuk posisi :</p>\r\n<p><em><strong>COSTUMER SERVICE</strong></em>.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Dengan Persyaratan:</strong></p>\r\n<p>- Wanita pendidikan minimal SLTA.</p>\r\n<p>- Berpenampilan menarik.</p>\r\n<p>- Usia maks 25 tahun.</p>\r\n<p>- Pengalaman didunia broadcast.</p>\r\n<p>- Berwawasan luas.</p>\r\n<p>- Menguasai MS OFFICE</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Kirimkan ke:</p>\r\n<p>HRD DEPO PELITA Sokaraja</p>\r\n<p>Jl. Menteri Supeno no. 10 Sokaraja</p>\r\n<p>Banyumas</p>\r\n<p>&nbsp;</p>\r\n<p><strong>closing 28 April 2018</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, NULL, '1523330791.jpg', 'Y', 'surya', 'sukses', '2018-04-10 03:26:31', '2018-04-11 07:35:33'),
(55, 2, 3, 1, 1, 'akuntansi', 'purbalingga,purwokerto', 'diploma-d1-d2-d3', 'accounting', 'accounting', 'PT Sutanto Arifcandra elektronik (pabrik kabel kitani)', '<p>&nbsp;</p>\r\n<div>lowongan kerja PT Sutanto Arifcandra elektronik (pabrik kabel kitani) pada saat ini sedang membutuhkan karyawan untuk posisi :</div>\r\n<div><strong>Accounting.</strong></div>\r\n<div><strong><em>&nbsp;</em></strong></div>\r\n<h3>persaratan:</h3>\r\n<div>- pria atau wanita</div>\r\n<div>- minimal lulusan d3 akuntansi</div>\r\n<div>- umur maksimal 30 tahun</div>\r\n<div>- menguasai ms office</div>\r\n<div>- menguasai pembuatan jurnal</div>\r\n<div>&nbsp;</div>\r\n<div>kirimkan ke:</div>\r\n<div>PT Sutanto Arifcandra elektronik (pabrik kabel kitani) km.4</div>\r\n<div>Sokaraja Banyumas</div>\r\n<div>&nbsp;</div>\r\n<div>closing 15 april 2018</div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, NULL, '1523331099.jpg', 'N', 'surya', 'sukses', '2018-04-10 03:31:39', '2018-04-11 03:39:35'),
(57, 1, 3, 5, 1, 'pekerjaan-umum,ekspedisi-kurir', 'purbalingga,purwokerto', 'sma-smk,diploma-d1-d2-d3,sarjana-s1-s2', 'Sprinter J&T', 'sprinter-jt', 'J&T Express', '<h3>Persyaratan :</h3><p>1. Pria Usia 24 - 30 tahun</p><p>2. Pendidikan Minimal SMA/SMK - sederajat sudah menikan.</p><p>3. Pendidikan minimal S1 diperbolehkan belum menikah.</p><p>4. Wajib memiliki HP Android.</p><p>5. Memiliki SIM C aktif&nbsp; dan kendaraan motor pribadi.</p><p>6. Berpengalaman dibidang ekspedisi minimal 1tahun.</p><p>7. Berorientasi pada target dan memiliki kemampuan negoisasi.</p><p>8. Siap bekerja dibawah tekanan dan dilapangan.</p><p>9. Memiliki motivasi tinggi, jujur dan rajin</p><p>10. Menguasai area penempatan ( Purwokerto, patikraja, pabuaran, purbalingga dan bukateja )</p><p><br></p><h3>Segera kirim lamaran ke:</h3><p>Kantor pusat semarang J&amp;T Express</p><p>JL. Gajahmada No. 95C Kel. Miroto <br></p><p>Kec. Semarang Tengah, Kota Semarang - Jawa Tengah</p><h3>Atau bisa kirim ke:</h3><p>email : jnt.purwokerto.jateng@gmail.com ( tulis posisi pada subjek email )<br></p><p><br></p><p>Note:</p><p>- Tulis posisi yang dilamar pada amplop pojok kanan atas, <br></p><p><br></p>', NULL, NULL, '1523332686.jpg', 'Y', 'admin', 'sukses', '2018-04-10 03:56:29', '2018-04-10 03:58:06'),
(58, 2, 3, 1, 1, 'pekerjaan-umum', 'purbalingga,purwokerto,banjarnegara', 'sarjana-s1-s2', 'PEGAWAI', 'pegawai', 'PT Wijaya Karya (Persero)', '<p>\r\n\r\nPT Wijaya Karya Tbk ( Persero ) atau yang biasa disebut PT WIKA merupakan salah satu perusahaan BUMN yang bergerak dalam bidang konstruksi bangunan di Indonesia.<br></p><p>\r\n\r\n</p><p><strong>Posisi</strong>&nbsp;:</p><p><strong>PEGAWAI</strong></p><p><strong>Persyaratan</strong>&nbsp;:</p><ul><li>Lulusan S1 atau sederajat</li><li>Berasal dari jurusan :<ul><li>S1 Teknik Sipil (Struktur dan Transportasi)</li><li>S1 Akuntansi</li></ul></li><li>Fresh Graduate</li><li>Usia Max. 28 tahun</li><li>IPK min. :<ul><li>2,75 (PTN)</li><li>3,00 (PTS)</li></ul></li><li>Riwayat Kesehatan Baik (berat badan seimbang)</li><li>Tidak buta warna (Partial / Total)</li><li>Mampu bahasa Inggris secara lisan maupun tulisan (Nilai setara TOEFL min. 500)</li><li>Menguasai aplikasi software komputer di bidangnya</li><li>Mempunyai motivasi, energik, adaptif dan mampu bekerjasama dalam tim</li><li>Bersedia di tempatkan diseluruh wilayah operasi kerja perusahaan</li></ul><p><strong>&nbsp;</strong></p><p>Jika anda tertarik dengan Info Lowongan Bumn PT Wijaya Karya (WIKA) Terbaru ini dengan syarat yang telah kami tetapkan diatas, Silahakan Kirim lamaran ke PT Wijaya Karya (Persero) Tbk (WIKA) <a target=\"_blank\" rel=\"nofollow\" href=\"http://rekrutmen.org/\">DISINI</a>&nbsp;: <strong><a target=\"_blank\" rel=\"nofollow\" href=\"https://career.undip.ac.id/detail/vacancy/1668/calon-pegawai-wjaya-karya\">https://career.undip.ac.id/</a>&nbsp;</strong><strong>Silahkan Mendaftar</strong></p><p><strong>\r\n\r\n<strong>Pendaftaran paling lambat : 19 April 2018</strong>\r\n\r\n<br></strong></p>\r\n\r\n<br><p></p>', NULL, NULL, '1523332700.jpg', 'Y', 'surya', 'sukses', '2018-04-10 03:58:20', '2018-04-10 03:58:20'),
(59, 1, 3, 5, 1, 'properti-dan-bangunan,marketing-penjualan', 'purbalingga,purwokerto,kebumen', 'sma-smk', 'Retail Product Promotor & SPB PT. Propan Raya ICC', 'retail-product-promotor-spb-pt-propan-raya-icc', 'PT. Propan Raya ICC', '<p>PT. Propan Raya ICC merupakan salah satu perusahaan swasta nasional yang bergerak di bidang industri coating chemicals. saat ini membutuhkan beberapa tenaga kerja untuk mengisi posisi-posisi karyawan yang kami butuhkan di daerah jawa tengah dan sekitarnya:</p>\r\n<h3>Retail Product Promotor</h3>\r\n<p>1. Pria</p>\r\n<p>2. Usia Max 29 tahun</p>\r\n<p>3. Pendidikan min ( SMA/SMK)</p>\r\n<p>4. Menyukai kerja lapangan</p>\r\n<p>5. Dicari untuk area : kebumen, cilacap, purbalingga, dan purwokerto</p>\r\n<p>&nbsp;</p>\r\n<h3>SPB</h3>\r\n<p>1. Pria</p>\r\n<p>2. Usia max 29 tahun</p>\r\n<p>3. Pendidikan min ( SMA/SMK )</p>\r\n<p>4. Dicari untuk area: Bumiayu dan purbalingga</p>\r\n<p>5. Ramah dan semangat dalam bekerja.</p>\r\n<p>&nbsp;</p>\r\n<p>Segera kirim lamaran ke:</p>\r\n<h4>HRD. PT. Propan Raya ICC ( Depan RS. Budhi Asih ) atau email ke : galudrawiweha@gmail.com</h4>\r\n<p>Paling lambat tanggal 12 April 2018</p>\r\n<p>&nbsp;</p>', NULL, NULL, '1523333618.jpg', 'Y', 'admin', 'sukses', '2018-04-10 04:13:38', '2018-04-11 07:42:34'),
(60, 2, 3, 1, 1, 'properti-dan-bangunan,pekerjaan-umum', 'purwokerto', 'sma-smk', 'Marketing Meubel Margo Murah Baru', 'marketing-meubel-margo-murah-baru', 'Meubel Margo Murah Baru', '<p><strong>Pusat Meubel Margo Murah Baru</strong>&nbsp;adalah sebuah perusahaan yang bergerak dibidang perdagangan furniture (spring bed, bed set, lemari, sofa, meja makan, office equipment, kitchen set, dll). Kami berkembang dengan cepat dalam beberapa tahun terakhir dan saat ini kami sudah memiliki banyak cabang yang tersebar di Pulau Jawa.</p>\r\n<p>Saat ini kami membutuhkan tenaga profesional untuk ditempatkan di Margo Murah Baru Cabang Purwokerto, sebagai:</p>\r\n<p><strong>MARKETING (Pramuniaga) &ndash; PENEMPATAN CAB PURWOKERTO</strong></p>\r\n<p><strong>Persyaratan :</strong><br />&ndash; Pria/Wanita<br />&ndash; Usia Maksimum 25 tahun<br />&ndash; Pend Terakhir Minimal SMK/SMA berijazah<br />&ndash; Jujur, Ulet, Rapi, Teliti, Semangat Tinggi<br />&ndash; Bisa mengoperasikan komputer<br />&ndash; Tidak bertatto ( pada bagian yg tidak tertutup pakaian)<br />&ndash; Berkelakuan baik<br />&ndash; Sanggup bekerja secara shift<br />&ndash; Tidak sedang kuliah</p>\r\n<p><strong>Fasilitas :</strong><br />Gaji Pokok, Uang Makan, Tunjangan lain + ada bonus &amp; insentif pencapaian target)</p>\r\n<p><strong>Kirim Via Pos Lamaran disertai CV dan dokumen pendukung lainnya ke:</strong><br />Margo Murah Baru Cabang Purwokerto<br />Jl S Parman No 124 Purwokerto<br />( Sebelah hotel Tiara )</p>\r\n<p><strong>Atau</strong></p>\r\n<p><strong>HRD- CV. Margo Murah Baru</strong><br />Ruko Puri Pondok Indah 2, Klegen, Malangjiwan, Colomadu<br />Telp / SMS : 0815 7575 1876 (Jam Kerja)<br />Email : loker.mmb@gmail.com<br />Mohon mencantumkan no HP yang bisa dihubungi</p>\r\n<p><strong>Paling Lambat 22 April 2018</strong></p>', NULL, NULL, NULL, 'Y', 'surya', 'sukses', '2018-04-10 15:46:54', '2018-04-11 07:29:43'),
(61, 2, 3, 1, 1, 'hotel-dan-restoran,pekerjaan-umum', 'purbalingga,purwokerto', 'sma-smk', 'Karyawati Daily Fresh Cup Corn', 'karyawati-daily-fresh-cup-corn', 'Daily Fresh Cup Corn', '<p><strong>Daily Fresh Cup Corn Konter Rita SuperMall Purwokerto</strong>membutuhkan karyawan untuk posisi :</p>\r\n<p><strong>Karyawati Daily Fresh Cup Corn</strong></p>\r\n<p><strong>Persyaratan :</strong><br />&ndash; Wanita<br />&ndash; Usia maksimal 25th<br />&ndash; Pendidikan minimal SMA<br />&ndash; jujur, rajin, ulet dan bertanggung jawab</p>\r\n<p><strong>Kirimkan lamaran lengkap ke:</strong><br />Eigo Donuts &amp; Bakery<br />Jl. Dr. Suharso, komplek Ruko GOR Satria Kalibiru No.1 Purwokerto.</p>\r\n<p><strong>Paling lambat tanggal 15 April 2018</strong></p>', NULL, NULL, NULL, 'Y', 'surya', 'sukses', '2018-04-10 15:49:23', '2018-04-11 07:29:08'),
(62, 2, 3, 1, 1, 'kesehatan-dan-kecantikan,pekerjaan-umum', 'purbalingga,purwokerto', 'sma-smk', 'Shop Keeper Rubylicious', 'shop-keeper-rubylicious', 'Rubylicious', '<p><strong>Rubylicious</strong>&nbsp;membutuhkan karyawan untuk posisi :</p>\r\n<p><strong>Shop Keeper</strong></p>\r\n<p><strong>Persyaratan :</strong><br />&ndash; Perempuan usia 19-28 tahun<br />&ndash; Berpenampilan rapi, menarik dan menyukai fashion<br />&ndash; Pendidikan minimal lulusan SMK/SMA [tidak sedang kuliah]<br />&ndash; Mampu berkomunikasi dengan baik, sabar ramah dan sopan<br />&ndash; Sehat jasmani dan rohani<br />&ndash; Ethos kerja yang baik [integritas, teamwork, dedikasi, tepat waktu]<br />&ndash; Bertanggung jawab, dewasa dan disiplin<br />&ndash; Bersedia bekerja dalam sistem shifting [pagi dan siang]<br />&ndash; Berdomisili di Kota Purwokerto</p>\r\n<p><strong>Kirim surat lamaran , CV, dan foto terbaru dengan subyek :</strong><br />LAMARAN STORE PURWOKERTO<br /><strong>via email ke :&nbsp;rubylicious.hrd@gmail.com</strong></p>\r\n<p><strong>atau kirim lamaran Via POS ke:</strong><br />Jalan Sajiono no.13 Kotabaru [Belakang ROMIE]<br />Yogyakarta.</p>\r\n<p>Pertanyaan seputar lowongan hubungi ke no 0821 3400 1015<br />www.myrubylicious.com instagram @myrubylicious</p>\r\n<p><strong>Paling lambat 10 Mei 2018</strong></p>', NULL, NULL, NULL, 'Y', 'surya', 'sukses', '2018-04-10 15:50:52', '2018-04-11 07:28:41'),
(63, 2, 3, 1, 1, 'perbankan,staf-administrasi,pekerjaan-umum', 'purwokerto', 'diploma-d1-d2-d3,sarjana-s1-s2', 'Staff Admin Mutualplus Global Resources', 'staff-admin-mutualplus-global-resources', 'PT Mutualplus Global Resources', '<p><strong>PT Mutualplus Global Resources</strong> adalah Konsultan Manajemen Sumber Daya Manusia yang bergerak di bidang Jasa Rekrutmen, Alih Daya dan Tes Psikologi untuk kepentingan seleksi calon karyawan. Klien kami adalah PT. BANK RAKYAT INDONESIA (Persero) Tbk.</p>\r\n<p><strong>Staff Admin Purwokerto</strong></p>\r\n<p>Tugas dan Tanggung Jawab File berkas dokumen.</p>\r\n<p>Mengorganisir data-data perusahaan sesuai dengan divisinya.&nbsp;</p>\r\n<p>Membuat laporan sesuai dengan waktu yang ditentukan.</p>\r\n<p>Persyaratan :</p>\r\n<p>1. Belum menikah.</p>\r\n<p>2.Freshgraduate welcome to apply.</p>\r\n<p>3.Komunikatif, penampilan menarik, rapi, tinggi minimal 170 cm.</p>\r\n<p><strong>Tutup pada :&nbsp;18 April 2018</strong></p>\r\n<h5>Alamat</h5>\r\n<p>Ged Jaya Jl MH Thamrin 12 Ged Jaya Lt 2 Kebon Sirih, Menteng Jakarta Pusat 10340 DKI Jakarta</p>\r\n<h5>No. Telepon</h5>\r\n<p>(021) 3106663</p>', NULL, NULL, NULL, 'Y', 'surya', 'sukses', '2018-04-10 16:09:11', '2018-04-11 07:28:13'),
(64, 2, 3, 2, 1, 'pendidikan,pekerjaan-umum', 'purwokerto', 'sma-smk,diploma-d1-d2-d3', 'PENDIDIK Bimba Aiueo', 'pendidik-bimba-aiueo', 'Bimba Aiueo Mersi, Banyumas', '<div>\r\n<p>Dengan persyaratan sbb :<br />Wanita berusia antara 20 &ndash; 30 thn<br />Sehat jasmani dan rohani<br />Pendidikan minimal SMU sederajat<br />Berkepribadian ceria dan menyenangi dunia anak<br />Penenpatan unit Gerendeng, Karangwangkal, Bantarsoka, Pasirmuncang,Karanglewas Lor&amp;Kidul<br />Diutamakan yang berpengalaman mengajar PAUD atau TK dan domisili dekat dengan daerah tsb.<br />bersedia training dan magang sebelum mengajar<br />lamaran dikirimlangsung ke alamat ato email<br />Gaji 600.000 + Transport + Progresif/Insentif<br />Bagi yang berminat dapat menghubungi no dibawah ini :<br />Bimba AiUEO MERSI<br />Jl. Adipati Mersi No. 49 RT.04 RW. 04 Kel. Mersi Kec. Purwokerto Timur Kab. Banyumas</p>\r\n</div>\r\n<h5>Tanggung Jawab Pekerjaan :</h5>\r\n<div>\r\n<p>Memotivasi , sayang, ramah dan ceria terhadap anak kecil,anak didik.<br />Bersedia belajar dan training, promosi dan piket di unit.</p>\r\n</div>\r\n<h5>Syarat Pengalaman :</h5>\r\n<div>Diutamakan punya pengalaman mengajar.</div>\r\n<h5>Keahlian :</h5>\r\n<div>\r\n<p>Mengajar anak kecil</p>\r\n</div>\r\n<h5>Kualifikasi :</h5>\r\n<div>\r\n<p>Wanita usia 20-30th</p>\r\n</div>\r\n<h5>Tunjangan :</h5>\r\n<div>\r\n<p>Uang Makan, Transport dan Insentif</p>\r\n</div>\r\n<h5>Insentif :</h5>\r\n<div>\r\n<p>Insentif siswa baru dan pertumbuhan jumlah siswa.</p>\r\n</div>\r\n<h5>Waktu Bekerja :</h5>\r\n<div>07.30-16.00 wib</div>', NULL, NULL, '1523376891.jpg', 'Y', 'surya', 'sukses', '2018-04-10 16:14:51', '2018-04-10 16:14:51'),
(65, 2, 1, 1, 1, 'pendidikan,pekerjaan-umum', 'purbalingga,purwokerto', 'sarjana-s1-s2', 'Guru Bimbel Cendekia', 'guru-bimbel-cendekia', 'Bimbingan belajar Cendekia', '<div>\r\n<p>Berkas Lamaran :<br />&ndash; CV<br />&ndash; FC Ijasah<br />&ndash; FC Identitas (KTP_<br />&ndash; Berkas pendukung (Jika ada)</p>\r\n<p>Persyaratan Pelamar :<br />1. Pria/Wanita<br />2. Berkepribadian baik<br />3. Lulusan S1<br />4. Kompeten di bidangnya</p>\r\n</div>\r\n<h5>Tanggung Jawab Pekerjaan :</h5>\r\n<div>\r\n<p>Menjalankan proses KBM / course<br />mengikuti jadwal yang telah ditetapkan<br />membimbing siswa<br />membuat rencana pembelajaran<br />membuat laporan pengajaran dan perkembangan peserta</p>\r\n</div>\r\n<h5>Syarat Pengalaman :</h5>\r\n<div>menguasai proses dan materi belajar mengajar tingkat SD</div>\r\n<h5>Keahlian :</h5>\r\n<div>\r\n<p>menguasai materi, tips dan dapat menyampaikan materi ke peserta bimbingan, merumuskan soal dan melatih anak mudah mengerjakan soal.</p>\r\n</div>\r\n<h5>Kualifikasi :</h5>\r\n<div>\r\n<p>Jujur, berjiwa pendidik, inovatif</p>\r\n</div>\r\n<h5>Waktu Bekerja :</h5>\r\n<div>Senin-sabtu sesuai jadwal kelas pembelajaran</div>', NULL, NULL, '1523377085.jpg', 'Y', 'surya', 'sukses', '2018-04-10 16:18:05', '2018-04-11 07:27:41'),
(66, 2, 3, 1, 1, 'akuntansi,staf-administrasi,kesehatan-dan-kecantikan,pekerjaan-umum', 'purbalingga', 'sma-smk', 'Staff Accounting PT Sung Chang Indonesia Purbalingga', 'staff-accounting-pt-sung-chang-indonesia-purbalingga', 'PT Sung Chang Indonesia, Purbalingga', '<div>\r\n<p>Mengelola Administrasi Keuangan Perusahaan</p>\r\n</div>\r\n<h5>Tanggung Jawab Pekerjaan :</h5>\r\n<div>\r\n<p>Mengelola Administrasi Keuangan Perusahaan</p>\r\n</div>\r\n<h5>Syarat Pengalaman :</h5>\r\n<div>Freshgraduated &amp; Berpengalaman</div>\r\n<h5>Keahlian :</h5>\r\n<div>\r\n<p>Menguasai Microsoft Office</p>\r\n</div>\r\n<h5>Kualifikasi :</h5>\r\n<div>\r\n<p>&bull; Perempuan,Usia 18-28 Tahun<br />&bull; Pendidikan minimal SMK Jurusan Akutansi, dibuktikan dengan fotocopy ijazah<br />&bull; Mampu mengoperasikan komputer dengan baik ( Ms. Office terutama Ms. Excel )<br />&bull; Berpengalaman diutamakan<br />&bull; Memiliki SKCK dan Kartu Pencari Kerja ( Kartu Kuning )<br />&bull; Tidak sedang terikat kontrak dengan instansi lain<br />&bull; Berkelakuan baik, sehat Jasmani dan Rohani</p>\r\n<p>Bagi yang berminat silahkan datang langsung dan membawa berkas lamaran lengkap ke PT. Sung Chang Indonesia (Jl. Perintis No 8A Mewek, Kalimanah, Purbalingga</p>\r\n<p>Seleksi dilaksanakan setiap hari Rabu dan Sabtu jam 10.00 WIB</p>\r\n</div>\r\n<h5>Tunjangan :</h5>\r\n<div>\r\n<p>BPJS Kesehatan &amp; Ketenagakerjaan</p>\r\n</div>\r\n<h5>Waktu Bekerja :</h5>\r\n<div>07.30 &ndash; 15.30</div>\r\n<div>&nbsp;</div>\r\n<div><strong>Closing Date:&nbsp;April 21, 2018</strong></div>', NULL, NULL, '1523377329.jpg', 'Y', 'surya', 'sukses', '2018-04-10 16:22:09', '2018-04-11 07:26:56'),
(67, 2, 3, 1, 1, 'pekerjaan-umum,komputer-it-programmer', 'cilacap', 'sma-smk', 'Sales Canvasser PT. SENTRA SUKSES SOLUSINDO Cilacap', 'sales-canvasser-pt-sentra-sukses-solusindo-cilacap', 'PT. SENTRA SUKSES SOLUSINDO, Cilacap', '<div>\r\n<p><strong>PT. SENTRA SUKSES SOLUSINDO</strong> sebagai salah satu perusahaan distributor telekomunikasi ternama di Indonesia mengajak anda untuk bergabung dengan kami.</p>\r\n</div>\r\n<h3>Tanggung Jawab Pekerjaan :</h3>\r\n<div>\r\n<p>Canvasser penjualan prodak, manage customer dll</p>\r\n</div>\r\n<h3>Syarat Pengalaman :</h3>\r\n<div>Pengalaman minimal 1 th di Telekomunikasi atau pada bidangnya, lebih diutamakan.</div>\r\n<h3>Keahlian :</h3>\r\n<div>\r\n<p>Berpenampilan menarik, Komunikatif, Jujur, ulet, sabar, orientasi pada target dan proses, cekatan, pekerja keras, mampu bekerja dalam team dan individu</p>\r\n</div>\r\n<h3>Kualifikasi :</h3>\r\n<div>\r\n<p>1. Pria maks. 35 th<br />2. Pendidikan Min SMA / Sederajat<br />3. Meiliki Motor &amp; SIM C (SE) dan Sim A (MD)<br />4.&nbsp; Komunikatif &amp; Percaya diri<br />5.&nbsp; Mampu bekerja secara team dan individu</p>\r\n</div>\r\n<h3>Tunjangan :</h3>\r\n<div>\r\n<p>Tunjangan telekomunikasi, uang opprasional, BPJS Kesehatan dan Ketenagakerjaan</p>\r\n</div>\r\n<h3>Insentif :</h3>\r\n<div>\r\n<p>Incentife target, dll</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Closing Date:&nbsp;Mei 10, 2018</strong></p>\r\n</div>', NULL, NULL, '1523377476.jpg', 'Y', 'surya', 'sukses', '2018-04-10 16:24:36', '2018-04-11 07:26:19'),
(68, 1, 3, 1, 4, 'properti-dan-bangunan', 'cilacap', 'sarjana-s1-s2', 'Manager PT. Petra Global Utama Cilacap', 'manager-pt-petra-global-utama-cilacap', 'PT. Petra Global Utama, Cilacap', '<div>\r\n<p>PT PETRA GLOBAL UTAMA yang bergerak dibidang sewa menyewa property membutuhkan Building Manager yang kompeten dibidangnya.</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<h3>Tanggung Jawab Pekerjaan :</h3>\r\n<p>&nbsp;</p>\r\n<div>\r\n<p>&ndash; Bertanggung jawab atas pengembangan renevue, target dan pekerjaan yang diberikan oleh manajemen<br />&ndash; Membina dan menjaga hubungan baik dengan pihak internal dan eksternal<br />&ndash; Memonitor jalannya segala kegiatan dan aktivitas</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<h3>Syarat Pengalaman :</h3>\r\n<p>&nbsp;</p>\r\n<div>Pengalaman minimal 1 tahun</div>\r\n<div>&nbsp;</div>\r\n<h3>Keahlian :</h3>\r\n<div>\r\n<p>Dapat mengoperasikan komputer<br />Mempunyai jiwa kepemimpinan<br />Berwawasan luas trutama di bidang retail</p>\r\n</div>\r\n<h3>Kualifikasi :</h3>\r\n<p>&nbsp;</p>\r\n<div>\r\n<p>Building manager posisi penempatan di cilacap jawa tengah<br />Laki laki max usia 35 thn<br />Pendidikan min S1<br />Berpengalaman di bidangnya min 1 thn<br />Dapat mengoperasikan komputer<br />Mempunyai jiwa kepemimpinan<br />Berwawasan luas trutama di bidang retail</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Closing Date:</strong>&nbsp;<strong>Mei 2, 2018</strong></p>\r\n</div>', NULL, NULL, '1523377591.jpg', 'Y', 'admin', 'sukses', '2018-04-10 16:26:31', '2018-04-11 07:25:31'),
(69, 1, 3, 5, 1, 'pendidikan,marketing-penjualan', 'purwokerto', 'diploma-d1-d2-d3', 'Marketing dan Guru Bahasa Inggris Elti Gramedia', 'marketing-dan-guru-bahasa-inggris-elti-gramedia', 'ELTI Gramedia Purwokerto', '<p><strong>ELTI</strong> merupakan lembaga pendidikan Bahasa Inggris di Purwokerto dibawah Kompas Gramedia Group. Saat ini kami sedang membutuhkan kandidat untuk mengisi posisi berikut :</p>\r\n<h3><strong>1. Marketing Staff</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>&ndash; Pria/Wanita<br /> &ndash; Usia maksimal 25 tahun &amp; belum menikah<br /> &ndash; Pendidikan minimal DIII semua jurusan<br /> &ndash; Memiliki kemampuan komunikasi yang baik<br /> &ndash; Berkepribadian baik<br /> &ndash; Berpenampilan menarik<br /> &ndash; Mampu mengoperasikan computer (Ms.Word , Excel)</p>\r\n<h3><strong>2. Guru Bahasa Inggris</strong></h3>\r\n<p>&nbsp;</p>\r\n<p>&ndash; Pria/Wanita<br /> &ndash; Usia maksimal 30 tahun<br /> &ndash; Pendidikan minimal D3/S1 (Bahasa/Sastra Inggris )<br /> &ndash; Memiliki kemampuan Bahasa Inggris yang Baik ( Lisan/Tertulis )<br /> &ndash; Berkepribadian Baik<br /> &ndash; Mampu mengoperasikan computer (Ms.Word , Excel)</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Kirim lamaran lengkap via email atau ke alamat dibawah :</strong></p>\r\n<p><br /> HR Manager<br /> <strong>ELTI PURWOKERTO</strong><br /> Jalan Karang Kobar No 53<br /> PURWOKERTO 53115<br /> Telp (0281) 633716</p>\r\n<p>Atau via email ke <a href=\"mailto:purwokerto@elti.co.id\">purwokerto@elti.co.id</a></p>\r\n<p><span style=\"color: #ff0000;\"><strong>Paling lambat 30 April 2018</strong></span></p>', NULL, NULL, '1523429193.jpg', 'Y', 'admin', 'sukses', '2018-04-11 06:46:33', '2018-04-11 06:47:48'),
(70, 1, 3, 5, 1, 'staf-administrasi,marketing-penjualan', 'purwokerto', 'sma-smk', 'Lowongan Staff Admin dan Store Assistant Velvet Bags', 'lowongan-staff-admin-dan-store-assistant-velvet-bags', 'Velvet Bags Purwokerto', '<p><strong>Velvet Bags</strong> yang bergerak dibidang distribusi tas dan fashion wanita membutuhkan tenaga kerja handal dan profesional untuk mengisi posisi:</p>\r\n<p><strong>1. Staff Administrasi untuk online shop</strong></p>\r\n<p><strong>2. Store Assistant</strong></p>\r\n<h3>Persyaratan:</h3>\r\n<p>1. Wanita usia maksimal 25 tahun</p>\r\n<p>2. Pendidikan min. SMA/SMK/ Sederajat</p>\r\n<p>3. Memiliki pengalaman dibidang administrasi dan penjualan online lebih disukai</p>\r\n<p>4. Bisa mengoperasikan komputer ( Ms. Office &amp; Excell )</p>\r\n<p>5. Terbiasa kerja dengan target</p>\r\n<p>6. Bisa mengendarai sepeda motor</p>\r\n<p>7. Ramah, sabar dan dapat berkomunikasi dengan baik</p>\r\n<p>8. Domisili wilayah purwokerto</p>\r\n<p>&nbsp;</p>\r\n<p>Segera kirim lamaran anda ke:</p>\r\n<p>Perumahan Permata Hijau Blok. 3 No. 55</p>\r\n<p>JL. dr. Angka Bancar kembar, Purwokerto ( jam 3 - 5 sore )</p>\r\n<p>atau kirim melalui email ke:</p>\r\n<p><a href=\"mailto:hrd.am88@gmail.com\">hrd.am88@gmail.com</a></p>\r\n<p>&nbsp;</p>\r\n<p>Paling lambat 30 April 2018.</p>', 'lowongan Velvet Bags,lowongan purwokerto,lowker purwokerto', 'lowongan kerja staff administrasi dan store assistant velvet bags purwokerto', NULL, 'Y', 'admin', 'sukses', '2018-04-11 09:38:12', '2018-04-11 09:39:30');
INSERT INTO `lowongan` (`id`, `user_id`, `waktu_id`, `employ_status_id`, `level_id`, `tipe_slug`, `area_slug`, `pendidikan_slug`, `judul_lowongan`, `judul_slug`, `nama_perusahaan`, `deskripsi_lowongan`, `tag_lowongan`, `deskripsi_seo`, `cover_lowongan`, `publish`, `created_user`, `user_verify`, `created_at`, `updated_at`) VALUES
(71, 2, 3, 1, 1, 'akuntansi,staf-administrasi,marketing-penjualan,pembiayaan', 'purwokerto', 'sma-smk,diploma-d1-d2-d3,sarjana-s1-s2', 'Admin  PT Karya Tambali Pratama, Banyumas', 'admin-pt-karya-tambali-pratama-banyumas', 'PT Karya Tambali Pratama', '<p>Informasi lowongan kerja Administrasi Pembukuan Banyumas dari Perusahaan PT Karya Tambali Pratama , lowongan kerja Administrasi Pembukuan Banyumas terbaru ini berlokasi di kota Banyumas yang berada diprovinsi Jawa Tengah . Lowongan Kerja terbaru ini dibuka untuk para pencari kerja / jobseeker yang memiliki pendidikan terakhir / lulusan SMA . Lowongan Kerja dalam bidang Administrasi ini telah dibuka dan dipublikasikan hingga dengan waktu yang ditentukan.<br />Membuat invoice dan Surat Jalan, input &ndash; input data Melakukan Data Entry Administrasi Membantu penyediaan data untuk di lanjutkan ke bagian Akuntan / Accounting Membuat list daftar barang untuk staff gudang Buat schedule complainan dr customer dan service Menerima telepon dgn baik dan sopan Menawarkan product.</p>\r\n<h3><br />Persyaratan</h3>\r\n<p><br />1.Pria dan Wanita Usia 18 - 28 tahun.<br />2.Pendidikan Minimal SMA - S1.<br />3.Jujur, teliti, sabar dan sopan Bertanggung jawab, dan dapat bekerjasama dalam team.<br />4.Pengalaman minimal 1 tahun di bidang pembukuan / administrasi (Disukai) Menguasai Microsoft Office (Word, Excell, Power Point, dll)<br />&nbsp;</p>\r\n<p>Deadline : SECEPATNYA</p>', '#LokerPurwokerto,LokerBanyumas,#LokerAdmin,LokerStafAdmin', 'Lowongan kerja Staff Administrasi pembukuan PT Karya Tambali Pratama Banyumas.', NULL, 'Y', 'surya', 'sukses', '2018-04-11 11:08:55', '2018-04-11 11:15:53'),
(72, 2, 3, 1, 1, 'hotel-dan-restoran,marketing-penjualan,pekerjaan-umum', 'purbalingga,purwokerto', 'diploma-d1-d2-d3', 'Sales Marketing PT. Petra Sejahtera Abadi', 'sales-marketing-pt-petra-sejahtera-abadi', 'PT. Petra Sejahtera Abadi', '<p><strong>Job Desc :</strong></p>\r\n<p>1. Memasarkan seluruh produk perusahaan<br />2. Mencari customer baru<br />3. Berhubungan langsung dengan pihak outlet untuk ketersediaan produk, penempatan produk serta kelayakan produk di outlet<br />Cek expired produksi<br />4. Memastikan penempatan produk dan penanganan produk sesuai dengan standar dan dapat diterima oleh konsumen dengan baik<br />5. Implementasi dan eksekusi program promosi yang sudah diberikan agar target yang sudah ditentukan dapat tercapai<br />6. Membuat laporan mingguan dan bulanan progres wilayah yang menjadi tanggung jawabnya<br />7. Penempatan di Purwokerto</p>\r\n<p>&nbsp;</p>\r\n<h3>Persyaratan:</h3>\r\n<p><br />1.Usia maksimal 30 tahun<br />2.Pendidikan minimal D3 Semua Jurusan<br />3.Memiliki SIM C<br />4.Hafal jalan sekitar Purwokerto<br />5.Memiliki pengalaman minimal 2 tahun di bidang yang sama<br />6.Menguasai program komputer Ms Office (Excel, Word, Power Point)<br />7.Mampu bekerja secara individual &amp; team<br />8.Terbiasa dengan target<br />9.Jujur &amp; teliti</p>\r\n<p>&nbsp;</p>\r\n<h3>Fasilitas</h3>\r\n<p><br />a. Jenjang Karir<br /><br />b. BPJS Ketenagakerjaan<br /><br />&nbsp;<br />Alamat: Jalan Raya Serpong Km.7<br />Komp. Multiguna Blok F21/22<br />Serpong - Tangerang ((021) 539 7377)<br />Email : contact@petragroup.co.id<br /><br />&nbsp;<br /><br />Deadline : Secepatnya</p>', '#LokerPurwokerto,#LokerPurbalingga,#LokerSales,#LokerMarketing', 'Lowongan Pekerjaan Sales Marketing PT. Petra Sejahtera Abadi Purwokerto.', '1523452180.jpg', 'Y', 'surya', 'sukses', '2018-04-11 13:09:40', '2018-04-12 01:45:42'),
(73, 1, 3, 5, 1, 'kesehatan-dan-kecantikan', 'purwokerto', 'sma-smk', 'Beauty Advisor Wardah', 'beauty-advisor-wardah', 'PT. Paragon Technology and Innovation (Wardah)', '<p>Persyaratan :</p>\r\n<p>1. Wanita</p>\r\n<p>2. Berhijab</p>\r\n<p>3. Tinggi minimal 158cm dengan berat badan ideal.</p>\r\n<p>4. Pendidikan minimal SMA/SMK/Sederajat</p>\r\n<p>5. Berpenampilan menarik</p>\r\n<p>6. Aktif, mau belajar dan bersemangat</p>\r\n<p>7. Usia maksimal 28tahun bagi yang sudah berpengalaman, dan 25 tahun bagi yang tidak berpengalaman.</p>\r\n<p>&nbsp;</p>\r\n<p>Segera kirim lamaran ke:</p>\r\n<p>Kantor DC Purwokerto</p>\r\n<p>JL. Sukadamai No. 168 Purwokerto selatan.</p>\r\n<p>Deadline: 16 April 2018</p>', 'Lowongan Purwokerto,lowongan kerja wardah,lowongan beauty advisor,lowker purwokerto', 'Lowongan Beauty Advisor di PT. Paragon Wardah purwokerto terbaru april 2018', '1523498282.jpg', 'Y', 'admin', 'sukses', '2018-04-12 01:58:02', '2018-04-12 01:58:02'),
(74, 2, 3, 1, 1, 'kesehatan-dan-kecantikan,marketing-penjualan,pekerjaan-umum', 'purbalingga,purwokerto', 'sma-smk,diploma-d1-d2-d3', 'Sales', 'sales', 'Lux Indonesia Cabang Purwokerto', '<h5>1.Sales Promotion Girl (SPG)</h5>\r\n<h5>2.Public Relation (PR)</h5>\r\n<h5>3.Sales Canvasser (SC)</h5>\r\n<h4>Kualifikasi:</h4>\r\n<h5>1.Minimal pendidikan SMA/sederajat<br />2.Min D3 (No.2)<br />3.Usia min 18th<br />4.Komunikatif<br />5.jujur dan ramah<br />6.Berpenampilan rapi dan menarik<br />7.Memiliki semangat dan motivasi kerja tinggi<br />8.Bersedia bertugas di luar kota<br />9.Tidak sedang kuliah/bekerja<br />10.Pengalaman tidak diutamakan</h5>\r\n<h4>Tanggung jawab:</h4>\r\n<h5>1.Memperkenalkan produk kepada konsumen<br />2.Bertanggung jawab mencapai target penjualan<br />3.Mencapai produktivitas kerja yang maksimal<br />4.Mampu melakukan persentasi produk kepada konsumen</h5>\r\n<h4>Kami memberikan:</h4>\r\n<h5>1.Income UMR s/d 3Jt<br />2.Incentive<br />3.Bonus<br />4.Jenjang karir terbuka<br />5.Asuransi kesehatan</h5>\r\n<h5>Kirim Lamaran dan sertakan posisi pada pojok kanan atas ke alamat dibawah ini<br />PT.LUXINDO RAYA<br />JL.MOCH YAMIN NO 18 PURWOKERTO SELATAN<br />Tlp.(0281)634568 &ndash; fax.(0281)634568.<br />Up .Leni Triastuti H Cp 0813-93740500</h5>\r\n<h5><span style=\"color: #ff0000;\">Paling Lambat Tanggal 16 April 2018</span></h5>', '#LokerPurwokerto,#LokerPurbalingga,#LokerSPG,#LokerSales', 'Sales Promotion Girl, Sales Canvaser dan Public Relation di Lux Indonesia Cabang Purwokerto.', NULL, 'Y', 'surya', 'sukses', '2018-04-14 09:00:30', '2018-04-14 09:00:30'),
(75, 2, 3, 1, 4, 'arsitek,properti-dan-bangunan,teknik-elektro,marketing-penjualan,pekerjaan-umum', 'purbalingga,purwokerto', 'sma-smk,diploma-d1-d2-d3,sarjana-s1-s2', 'Manager dan Supervisor PT.Property Sanjaya Gemilang, Purwokerto.', 'manager-dan-supervisor-ptproperty-sanjaya-gemilang-purwokerto', 'PT.Property Sanjaya Gemilang Purwokerto.', '<p>PT.Property Sanjaya Gemilang merupakan<br />Perusahaan Nasional bergerak di bidang Real Estate, membutuhkan talenta-talenta berbakat untuk mengisi posisi :</p>\r\n<p><br />1. Project Manager.<br />2. Senior Manager Keuangan.<br />3. SPV Keuangan<br />4. Marketing Manager.<br />5. SPV Marketing.<br />6. Marketing Executive.</p>\r\n<p><br /><strong>Persyaratan :</strong></p>\r\n<p><br />1.Pria.<br />2.Pendidikan Min S1 Teknik Sipil/SMK Tek Bangunan, lebih diutamakan yang berpengalaman dibidangnya. (1)<br />3.Pendidikan Min S1 Akuntansi (2).<br />4.Pendidikan Min DIII Akuntansi (3).<br />5.Pendidikan Min SMK / SMA Lebih diutamakan berpengalaman dibidangya (4.5).<br />6.Disipli,Jujur,Target Oriented,Memiliki Etos Kerja Yang Baik.<br />7.Sehat jasmani dan rokhani.<br />8.Memiliki Skill Komunikasi yang bagus,Good Looking &amp; Strong Leadership.<br />9.Disipli,Jujur,Target Oriented,Memiliki Etos Kerja Yang Baik.<br />10.Dapat bekerjasama team maupun Bekerja Sendiri.</p>\r\n<p><br />Kirimkan lamaran lengkap ke :<br />HRD MANAGER PT. PROPERTY SANJAYA GEMILANG<br />GEDUNG SANJAYA LAND<br />JL. JEND SOEDIRMAN TIMUR 168 BERKOH<br />Purwokerto (Sebelah Bakmi Nyemek Bu Trimo)</p>\r\n<p><br />Deadline : 13 Mei 2018</p>', '#LokerPurwokerto,#LokerPurbalingga,#LokerSupervisor,#LokerManager,#LokerMarketing', 'Lowongan Kerja Supervisor, Marketing dan Manager PT.Property Sanjaya Gemilang Purwokerto.', NULL, 'Y', 'surya', 'sukses', '2018-04-15 08:45:10', '2018-04-16 01:09:49'),
(76, 1, 3, 5, 5, 'staf-administrasi,marketing-penjualan', 'cilacap', 'sma-smk,sarjana-s1-s2', 'Supervisor, Pramuniaga dan Gudang Elizabeth Bag and shoes', 'supervisor-pramuniaga-dan-gudang-elizabeth-bag-and-shoes', 'Elizabeth Bag and shoes', '<p>1. Supervisor ( SPV )</p>\r\n<p>2. Pramuniaga (PA)</p>\r\n<p>3. Gudang ( GD )</p>\r\n<p>Persyaratan :</p>\r\n<p>a. Wanita (1,2 ) / Pria (3 )</p>\r\n<p>b. Belum menikah ( 2 )</p>\r\n<p>c. Usia maksimal 27th ( 1 ), 23 th ( 2 ), 25th ( 3)</p>\r\n<p>d. Pendidikan S.1 Semua jurusan ( 1 ), SMA/SMK ( 2, 3 )</p>\r\n<p>e. Bersedia bekerja shift dan tidak bisa part time</p>\r\n<p>&nbsp;</p>\r\n<p>Fasilitas :</p>\r\n<p>Gaji menarik, BPJS Kesehatan dan Ketenagakerjaan</p>\r\n<p>&nbsp;</p>\r\n<p>Segera kirim lamaran ke:</p>\r\n<p>TOKO TAS ELIZABETH</p>\r\n<p>JL. Jendral Sudirman No. 8 Cilacap</p>\r\n<p>atau kirim ke email:</p>\r\n<p><a href=\"mailto:cilacap@elizabethbag.com\">cilacap@elizabethbag.com</a></p>\r\n<p>&nbsp;</p>\r\n<p>Deadline : secepatnya !</p>\r\n<p>&nbsp;</p>', 'lowongan elizabeth bag cilacap,lowongan purwokerto,lowongan cilacap,toko tas elizabeth', 'Lowongan supervisor, pramuniaga dan gudang terbaru toko tas elizabeth cilacap', '1523859001.jpg', 'Y', 'admin', 'sukses', '2018-04-16 06:10:02', '2018-04-16 06:10:02'),
(77, 2, 3, 1, 1, 'staf-administrasi,pendidikan,pekerjaan-umum', 'purbalingga,purwokerto', 'sma-smk,sarjana-s1-s2', 'Tenaga Pendidik SD dan PAUD Sekolah Alam Banyu Belik Banyumas.', 'tenaga-pendidik-sd-dan-paud-sekolah-alam-banyu-belik-banyumas', 'Sekolah Alam Banyu Belik Banyumas', '<p>Tenaga Pendidik SD dan PAUD Sekolah Alam Banyu Belik Banyumas.<br />Sekolah Alam Banyu Belik mengajak Anda yang mencintai dunia anak-anak dan mencintai alam<br />untuk bergabung dengan teamwork untuk posisi :</p>\r\n<p><br />1. Fasilitator / Tenaga Pendidik SD Alam Banyu Belik (A)<br />2. Fasilitator / Tenaga Pendidik PAUD Banyu Belik (B)<br />3. Tenaga Administrasi (C)</p>\r\n<p><br /><strong>Persyaratan :</strong></p>\r\n<p><br />1.Wanita / laki-laki muslim (A,B,C)<br />2.Usia max. 28 tahun (A,B), max. 25 tahun (C)<br />3.Pendidikan minimal S1 pendidikan (kecuali PJOK &amp; PAI) (A)<br />4.Pendidikan minimal S1 semua jurusan (B)<br />5.Pendidikan minimal SMA/SMKk (diutamakan handal dalam keuangan) (C)<br />6.Berbadan sehat dan tidak memiliki penyakit kambuhan dengan bukti dari dokter (A,B,C)<br />7.Mencintai dunia anak dan anak &ndash; anak (A,B,C)<br />8.Bisa membaca Al-Qur&rsquo;an (A,B,C)<br />9.Menguasai komputer (minimal Micr. Office, Excel, Internet) (A,B,C)<br />10.Memiliki komitmen tinggi dalam dakwah dan bertanggung jawab (A,B,C)<br />11.Berjiwa murobbi (A,B,C)<br />12.Berpenampilan islami dan menjadi teladan dalam berperilaku (bagi wanita berjilbab syar&rsquo;i) (A,B,C)</p>\r\n<p><br /><strong>Kirimkan lamaran lengkap ke :</strong></p>\r\n<p><br />Sekolah Alam Banyu Belik<br />Jalan Raya Karangnangka RT 02/ RW 05<br />Kecamatan Kedungbanteng Banyumas<br />kode pos (53152)<br />Deadline : 12 Mei 2018</p>', '#LokerPurwokerto,#LokerPurbalingga,#LokerGuru,#LokerPendidikan,#LokerPaud', 'Loker Fasilitator atau Tenaga Pendidik di SD dan PAUD Sekolah Alam Banyu Belik Banyumas', NULL, 'Y', 'surya', 'sukses', '2018-04-18 10:31:57', '2018-04-19 01:03:16'),
(78, 2, 3, 1, 5, 'akuntansi,staf-administrasi,pekerjaan-umum', 'purbalingga,purwokerto', 'sma-smk,sarjana-s1-s2', 'finance & Logistic PT. Parastar Distrindo Authorized Dealer XL Axiata Cabang Purwokerto.', 'finance-logistic-pt-parastar-distrindo-authorized-dealer-xl-axiata-cabang-purwokerto', 'PT. Parastar Distrindo Authorized Dealer XL Axiata Cabang Purwokerto.', '<p>finance &amp; Logistic PT. Parastar Distrindo Authorized Dealer XL Axiata Cabang Purwokerto membutuhkan segera karyawan untuk posisi :</p>\r\n<h3><br /><strong>A. Back End Supervisor (finance &amp; Logistic)</strong></h3>\r\n<p><br /><strong>Kualifikasi :</strong></p>\r\n<p><br />1.Pria / Wanita<br />2.Pendidikan minimal S1 Jurusan management / accounting<br />3.Mampu mengoperasikan Microsoft Office<br />4.Berpengalaman dibidang Accounting min 2 tahun<br />5.Disiplin, Tegas dan bertanggung jawab<br />6.Dapat bekerjasama dalam team<br />7.Siap bekerja dibawah tekanan<br />8.Memiliki jiwa leadership yang tinggi</p>\r\n<h3><br />B. Finance &amp; Logistic Control</h3>\r\n<p><br /><strong>Kualifikasi :</strong></p>\r\n<p><br />1.Pria<br />2.Pendidikan minimal SMA<br />3.Berpengalaman dibidang yang sama diutamakan<br />4.Mampu mengoperasikan Microsoft Office<br />5.Dapat bekerjasama dalam team<br />6.Siap bekerja dibawah tekanan<br />7.Disiplin, jujur, teliti, &amp; bertanggung jwab<br />8.Siap melakukan perjalan dinas keliling kantor cabang luar kota jika dubutuhkan<br />Penempatan : Purwokerto</p>\r\n<p>&nbsp;</p>\r\n<p><br />Kirim Lamaran, CV, Copy Ijazah, Copy KTP dan photo terbaru via email ke:<br />recpara.smg@gmail.com dengan subject posisi yang dilamar<br />JL. Gatot Soebroto 16A-B Purwokerto<br />Deadline : 10 Mei 2018</p>', '#LokerPurwokerto,#LokerPurbalingga,#LokerSupervisor,#LokerXLAxiata', 'Lowongan kerja Finance dan Back End Supervisor di PT. Parastar Distrindo Authorized Dealer XL Axiata Cabang Purwokerto.', NULL, 'Y', 'surya', 'sukses', '2018-04-18 10:41:48', '2018-04-19 01:04:57'),
(79, 2, 3, 1, 1, 'advertising,marketing-penjualan,pekerjaan-umum', 'purbalingga,purwokerto', 'sma-smk,diploma-d1-d2-d3', 'Graphic Designer www.thehive.id Purwokerto', 'graphic-designer-wwwthehiveid-purwokerto', 'Graphic Designer', '<h5>Graphic Designer www.thehive.id Purwokerto<br />Graphic Designer<br />Penempatan : Kantor Purwokerto</h5>\r\n<h4>Persyaratan :</h4>\r\n<h5>1.Pria/Wanita<br />2.Maksimal umur 25 tahun<br />3.Menguasai Photoshop, CorelDraw &amp;Adobe Illustrator<br />4.Pendidikan terakhir minimal SMA/SMK/MA<br />5.Kreatif dan inofatif<br />6.Bisa bekerjasama dengan tim<br />7.Pekerja keras, jujur, Disiplin dan bertanggung jawab.</h5>\r\n<h5>Untuk informasi silakan hubungi kontak di bawah :<br />WhatsApp: +6282312974247 (Wisnu)<br />Email: wisnuwahyu498@gmail.com<br />Line: wisnuwahyupamuji<br />Web: www.thehive.id</h5>\r\n<h5>Deadline 20 Mei 2018</h5>', '#LokerPurwokerto,#LokerPurbalingga,#LokerDesigner', 'Lowongan kerja Graphic Designer di www.thehive.id Purwokerto', NULL, 'Y', 'surya', 'sukses', '2018-04-23 08:44:07', '2018-04-23 08:44:07'),
(80, 2, 0, 1, 1, 'kesehatan-dan-kecantikan', 'purbalingga,purwokerto', 'sma-smk', 'Facial Therapist Erha Skin Purwokerto', 'facial-therapist-erha-skin-purwokerto', 'Erha Skin Purwokerto', '<h5>Erha Skin Purwokerto membutuhkan karyawan untuk posisi :</h5>\r\n<h5>Facial Therapist [FT]</h5>\r\n<h5>Persyaratan :</h5>\r\n<h5>1.Wanita<br />2.Usia maksimal 26 tahun<br />3.Pendidikan minimal SMK Kecantikan/ SMA sederajat<br />4.Pengalaman 1 tahun sebagai beatuician/facial therapist<br />5.Berpengalaman atau belum berpengalaman, silahkan boleh coba</h5>\r\n<h5>Kirimkan lamaran lengkap ke :<br />Erha Skin<br />Ruko Centrum Unit D<br />Jln. Komisaris Bambang Suprapto<br />Purwokerto Timur<br />Telp 0281-643692</h5>\r\n<h5>Atau via email ke :<br />meiliasariika@gmail.com</h5>\r\n<h5>Deadlin 22 Mei 2018</h5>', '#LokerPurwokerto,#LokerPurbalingga,#Lokererhaskin', 'Lowongan Kerja Facial Therapist di Erha Skin Purwokerto', NULL, 'Y', 'surya', 'sukses', '2018-04-24 16:39:25', '2018-04-24 16:39:25'),
(81, 2, 3, 1, 4, 'staf-administrasi,mekanik', 'purwokerto', 'sarjana-s1-s2', 'Admin dan Manager PT Gajah Mada Mobilindo Purwokerto', 'admin-dan-manager-pt-gajah-mada-mobilindo-purwokerto', 'PT Gajah Mada Mobilindo Purwokerto', '<h5>PT Gajah Mada Mobilindo membutuhkan karyawan untuk posisi :</h5>\r\n<h5>A. Front Office / Admin</h5>\r\n<h5>Persyaratan :</h5>\r\n<h5>1.Wanita<br />2.Usia maksimal 40 tahun.<br />3.Lulusan minimal S1 lebih diutamakan.<br />4.Mempunyai pengalaman di bagian Front Office / Administrator minimal 3 tahun.<br />5.Memiliki jiwa kepemimpinan<br />6.Siap kerja shift<br />7.Bisa berbahasa Inggris pasif.<br />8.Memiliki kemampuan berkomunikasi dengan baik.<br />9.Bertanggung jawab, jujur dan berdedikasi tinggi.</h5>\r\n<h5>B. Manager</h5>\r\n<h5>Persyaratan :</h5>\r\n<h5>1.Wanita<br />2.Usia maksimal 40 tahun.<br />3.Lulusan minimal S1 lebih diutamakan.<br />4.Mempunyai pengalaman di bagian Manager Rumah Makan minimal 3 tahun.<br />5.Memiliki jiwa kepemimpinan<br />6.Siap kerja shift<br />7.Bisa berbahasa Inggris pasif.<br />8.Memiliki kemampuan berkomunikasi dengan baik.<br />9.Bertanggung jawab, jujur dan berdedikasi tinggi.</h5>\r\n<h5>Kirimkan lamaran lengkap dan nomor yang bisa dihubungi ke:<br />Gajah Mada Motor Purwokerto<br />Jalan S Parman No 83<br />Purwokerto 53141</h5>\r\n<h5>Deadline 23 Mei 2018</h5>', '#LokerPurwokerto,#LokerPurbalingga', 'Lowongan Kerja Admin dan Manager di PT Gajah Mada Mobilindo Purwokerto', NULL, 'Y', 'surya', 'sukses', '2018-04-24 16:45:08', '2018-04-24 16:45:08'),
(82, 2, 3, 1, 1, 'advertising,kesehatan-dan-kecantikan,pekerjaan-umum', 'purbalingga,purwokerto', 'sma-smk,diploma-d1-d2-d3', 'Admin, Editor dan Fotografer Aleryne Photo Studio Purwokerto', 'admin-editor-dan-fotografer-aleryne-photo-studio-purwokerto', 'Aleryne Photo Studio Purwokerto', '<h5>Aleryne Photo Studio membutuhkan karyawan untuk posisi :</h5>\r\n<h5>1. Admin<br />2. Editor<br />3. Fotografer</h5>\r\n<h5>Persyaratan :</h5>\r\n<h5>1.Pria/Wanita<br />2.Usia minimal 18 tahun.<br />3.Pendidikan minimal SMP/Sederajat.<br />4.Berpenampilan menarik dan SOPAN SANTUN dalam bekerja.<br />5.Jujur, disiplin, kreatif, ramah dan bertanggung jawab.<br />6.Dapat bekerja sama dengan baik dengan Team.<br />7.Domisili Purwokerto dan sekitarnya.<br />8.Bisa mengoperasikan komputer.<br />9.Bisa menggunakan photoshop (nilai plus).<br />10.Mau belajar dan menerima kritik untuk lebih baik.</h5>\r\n<h5>Kirim lamaran lengkap dan disertai dengan no hp dan account media sosial (fb/instagram) via email:</h5>\r\n<h5>ke : aleryne.id@gmail.com @gmail.com</h5>\r\n<h5>Alamat Perusahaan :<br />Jl. Brigjend Encung Kompleks Ruko Merah no. 2<br />(Sebelah Barat DAMKAR)<br />Purwokerto</h5>\r\n<h5>Deadline 20 Mei 2018</h5>', '#LokerPurwokerto,#LokerPurbalingga,#LokerEditor,#LokerFotographer', 'Lowongan kerja Admin, Editor dan Fotografer di Aleryne Photo Studio Purwokerto', NULL, 'Y', 'surya', 'sukses', '2018-04-24 16:49:48', '2018-04-24 16:49:48'),
(83, 1, 3, 1, 1, 'hotel-dan-restoran,marketing-penjualan', 'purwokerto', 'diploma-d1-d2-d3', 'Sales Executive Hotel Santika Purwokerto', 'sales-executive-hotel-santika-purwokerto', 'Hotel Santika Purwokerto', '<p>Qualification:</p>\r\n<p>1. Male / Female, Max 25 years old</p>\r\n<p>2. Minimum D3 all majors or Hotel background</p>\r\n<p>3. At least 1year experiences in the same position</p>\r\n<p>4. Able to drive and having SIM A license</p>\r\n<p>5. Communicative, Highly motivated and target oriented</p>\r\n<p>&nbsp;</p>\r\n<p>Please submit your resume and recent photograph with subject \"SE\"</p>\r\n<p>to: <a href=\"mailto:hrd@purwokerto.santika.com\">hrd@purwokerto.santika.com</a> ( Max, April 30, 2018 ).</p>\r\n<p>&nbsp;</p>\r\n<p>Hotel Santika Purwokerto</p>\r\n<p>JL. Gerilya Barat No. 30 A Purwokerto Selatan</p>\r\n<p>Ph : (0281) 657 8080 Fax : (0281 ) 657 8090</p>', 'Lowongan kerja Purwokerto,Lowongan Hotel Santika Purwokerto,Lowker Hotel Santika', 'Info lowongan kerja hotel santika purwokerto terbaru 2018', NULL, 'Y', 'admin', 'sukses', '2018-04-28 01:33:10', '2018-04-28 01:33:10'),
(84, 1, 3, 1, 1, 'marketing-penjualan', 'cilacap', 'sarjana-s1-s2', 'Account Officer Pension Mandiri Taspen Purwokerto', 'account-officer-pension-mandiri-taspen-purwokerto', 'Mandiri Taspen KC Purwokerto', '<p>Dibutuhkan :</p>\r\n<p>Account Officer Pension (OAP)</p>\r\n<p>&nbsp;</p>\r\n<p>Kualifikasi:</p>\r\n<p>1. Wanita</p>\r\n<p>2. Diutamakan berdomisili area cilacap</p>\r\n<p>3. Berpengalaman di perbankan minimal 1 tahun sebagai marketing</p>\r\n<p>4. Usia maksimal 35 tahun</p>\r\n<p>5. Minimal pendidikan S1</p>\r\n<p>6. IPK Minimal 2.75</p>\r\n<p>7. Belum pernah mengikuti seleksi di Bank Mandiri Taspen</p>\r\n<p>8. Tidak memiliki keluarga inti di Bank Mandiri Taspen ( orang tua &amp; saudara sekandung )</p>\r\n<p>9. Menguasai ms. office</p>\r\n<p>10. Mampu bekerja dengan target</p>\r\n<p>&nbsp;</p>\r\n<p>Segera kirim lamaran ke :</p>\r\n<p>PT. Bank mandiri Taspen KC Purwokerto</p>\r\n<p>JL. Jendral Soedirman, Ruko Nusantara No. 2-3 Purwokerto 53116</p>\r\n<p>&nbsp;</p>\r\n<p>Maksimal : 18 Mei 2018</p>', 'Lowongan Kerja Bank,Lowker Bank Mandiri Taspen,Lowongan Purwokerto', 'Lowongan kerja Account Officer Pension (AOP) PT. Bank Mandiri Taspen Purwokerto Terbaru 2018', '1524880493.jpg', 'Y', 'admin', 'sukses', '2018-04-28 01:54:54', '2018-04-28 01:54:54'),
(85, 3, 1, 1, 3, 'arsitek,pendidikan,mekanik', 'purbalingga,banjarnegara', 'diploma-d1-d2-d3', 'Menjadi Tuyul', 'menjadi-tuyul', 'PT Tuyul Sedunia', '<p>Bekerja 2 jam</p>', NULL, NULL, NULL, 'Y', 'admin demo', 'sukses', '2018-08-30 07:49:28', '2018-08-30 07:49:28');

-- --------------------------------------------------------

--
-- Table structure for table `mainmenu`
--

CREATE TABLE `mainmenu` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_menu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `posisi` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mainmenu`
--

INSERT INTO `mainmenu` (`id`, `nama_menu`, `link`, `aktif`, `posisi`, `created_at`, `updated_at`) VALUES
(2, 'Tentang Kami', '/p/about', 'Y', 2, NULL, NULL),
(3, 'Syarat dan Ketentuan', '/p/term-of-service', 'Y', 2, NULL, NULL),
(4, 'Posting Lowongan', '/p/panduan-pengiklan', 'Y', 2, NULL, NULL),
(5, 'Hubungi Kami', '/hubungi-kami', 'Y', 2, NULL, NULL),
(6, 'Artikel', '/blog', 'Y', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_06_081450_create_permission_tables', 1),
(4, '2018_03_06_082258_create_kategori_table', 2),
(5, '2018_03_06_082432_create_tipe_pekerjaan_table', 3),
(6, '2018_03_06_082548_create_tipe_gaji_table', 4),
(7, '2018_03_06_082739_create_pendidikan_table', 5),
(8, '2018_03_07_135635_create_waktu_kerja_table', 6),
(9, '2018_03_07_151219_create_mainmenu_table', 7),
(10, '2018_03_07_151458_create_submenu_table', 8),
(11, '2018_03_08_091021_create_halaman_table', 9),
(12, '2018_03_09_063203_create_perusahaan_table', 10),
(13, '2018_03_09_063439_create_lowongan_table', 11),
(14, '2018_03_16_021623_create_area_table', 12),
(15, '2018_03_16_074602_create_webmaster_table', 13),
(16, '2018_03_16_080146_create__konfigurasi_table', 14),
(17, '2018_03_20_114637_create_employ_status_table', 15),
(18, '2018_03_24_012024_create_level_table', 16),
(19, '2018_03_29_034105_create_sosial_media_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_pendidikan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikan_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id`, `nama_pendidikan`, `pendidikan_slug`, `created_at`, `updated_at`) VALUES
(1, 'SMA SMK', 'sma-smk', NULL, NULL),
(2, 'Diploma D1 / D2 /D3', 'diploma-d1-d2-d3', NULL, NULL),
(3, 'Sarjana S1 / S2', 'sarjana-s1-s2', NULL, NULL),
(4, 'Master S2', 'master-s2', NULL, NULL),
(5, 'Doktor S3', 'doktor-s3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `display_name`, `name`, `created_at`, `updated_at`) VALUES
(1, 'lihat master menu', 'lihat_master_menu', NULL, NULL),
(2, 'lihat pendidikan', 'lihat_pendidikan', NULL, NULL),
(3, 'tambah pendidikan', 'tambah_pendidikan', NULL, NULL),
(4, 'edit pendidikan', 'edit_pendidikan', NULL, NULL),
(5, 'hapus pendidikan', 'hapus_pendidikan', NULL, NULL),
(6, 'lihat tipe pekerjaan', 'lihat_tipe_pekerjaan', NULL, NULL),
(7, 'tambah tipe pekerjaan', 'tambah_tipe_pekerjaan', NULL, NULL),
(8, 'edit tipe pekerjaan', 'edit_tipe_pekerjaan', NULL, NULL),
(9, 'hapus tipe pekerjaan', 'hapus_tipe_pekerjaan', NULL, NULL),
(10, 'lihat bidang pekerjaan', 'lihat_bidang_pekerjaan', NULL, NULL),
(11, 'tambah bidang pekerjaan', 'tambah_bidang_pekerjaan', NULL, NULL),
(12, 'edit bidang pekerjaan', 'edit_bidang_pekerjaan', NULL, NULL),
(13, 'hapus bidang pekerjaan', 'hapus_bidang_pekerjaan', NULL, NULL),
(14, 'lihat golongan gaji', 'lihat_golongan_gaji', NULL, NULL),
(15, 'tambah golongan gaji', 'tambah_golongan_gaji', NULL, NULL),
(16, 'edit golongan gaji', 'edit_golongan_gaji', NULL, NULL),
(17, 'hapus golongan gaji', 'hapus_golongan_gaji', NULL, NULL),
(18, 'lihat hak akses', 'lihat_hak_akses', NULL, NULL),
(19, 'tambah hak akses', 'tambah_hak_akses', NULL, NULL),
(20, 'edit hak akses', 'edit_hak_akses', NULL, NULL),
(21, 'hapus hak akses', 'hapus_hak_akses', NULL, NULL),
(24, 'lihat grup pengguna', 'lihat_grup_pengguna', '2018-03-07 05:06:18', '2018-03-07 05:06:18'),
(25, 'tambah grup pengguna', 'tambah_grup_pengguna', '2018-03-07 05:06:26', '2018-03-07 05:06:26'),
(26, 'edit grup pengguna', 'edit_grup_pengguna', '2018-03-07 05:06:38', '2018-03-07 05:06:38'),
(27, 'hapus grup pengguna', 'hapus_grup_pengguna', '2018-03-07 05:06:45', '2018-03-07 05:06:45'),
(28, 'lihat daftar pengguna', 'lihat_daftar_pengguna', '2018-03-07 05:33:10', '2018-03-07 05:33:10'),
(29, 'tambah daftar pengguna', 'tambah_daftar_pengguna', '2018-03-07 05:33:21', '2018-03-07 05:33:21'),
(30, 'edit daftar pengguna', 'edit_daftar_pengguna', '2018-03-07 05:33:26', '2018-03-07 05:33:26'),
(31, 'hapus daftar pengguna', 'hapus_daftar_pengguna', '2018-03-07 05:33:33', '2018-03-07 05:33:33'),
(32, 'lihat waktu kerja', 'lihat_waktu_kerja', '2018-03-07 07:53:26', '2018-03-07 07:53:26'),
(33, 'tambah waktu kerja', 'tambah_waktu_kerja', '2018-03-07 07:53:31', '2018-03-07 07:53:31'),
(34, 'edit waktu kerja', 'edit_waktu_kerja', '2018-03-07 07:53:36', '2018-03-07 07:53:36'),
(35, 'hapus waktu kerja', 'hapus_waktu_kerja', '2018-03-07 07:53:43', '2018-03-07 07:53:43'),
(36, 'user manajemen menu', 'user_manajemen_menu', '2018-03-07 08:08:35', '2018-03-07 08:08:35'),
(37, 'menu grup', 'menu_grup', '2018-03-07 08:28:25', '2018-03-07 08:28:25'),
(38, 'lihat menuutama', 'lihat_menuutama', '2018-03-07 08:29:17', '2018-03-07 08:29:17'),
(39, 'tambah menuutama', 'tambah_menuutama', '2018-03-07 08:29:22', '2018-03-07 08:29:22'),
(40, 'edit menuutama', 'edit_menuutama', '2018-03-07 08:29:27', '2018-03-07 08:29:27'),
(41, 'hapus menuutama', 'hapus_menuutama', '2018-03-07 08:29:33', '2018-03-07 08:29:33'),
(42, 'lihat submenu', 'lihat_submenu', '2018-03-08 01:14:28', '2018-03-08 01:14:28'),
(43, 'tambah submenu', 'tambah_submenu', '2018-03-08 01:14:35', '2018-03-08 01:14:35'),
(44, 'edit submenu', 'edit_submenu', '2018-03-08 01:14:41', '2018-03-08 01:14:41'),
(45, 'hapus submenu', 'hapus_submenu', '2018-03-08 01:14:46', '2018-03-08 01:14:46'),
(46, 'lihat halaman', 'lihat_halaman', '2018-03-08 02:13:19', '2018-03-08 02:13:19'),
(47, 'tambah halaman', 'tambah_halaman', '2018-03-08 02:13:26', '2018-03-08 02:13:26'),
(48, 'edit halaman', 'edit_halaman', '2018-03-08 02:14:12', '2018-03-08 02:14:12'),
(49, 'hapus halaman', 'hapus_halaman', '2018-03-08 02:14:33', '2018-03-08 02:14:33'),
(50, 'super admin', 'super_admin', '2018-03-14 01:25:16', '2018-03-14 01:25:16'),
(51, 'lihat lowongan', 'lihat_lowongan', '2018-03-14 01:47:37', '2018-03-14 01:47:37'),
(52, 'tambah lowongan', 'tambah_lowongan', '2018-03-14 01:47:45', '2018-03-14 01:47:45'),
(53, 'edit lowongan', 'edit_lowongan', '2018-03-14 01:47:52', '2018-03-14 01:47:52'),
(54, 'hapus lowongan', 'hapus_lowongan', '2018-03-14 01:47:59', '2018-03-14 01:47:59'),
(55, 'lihat area', 'lihat_area', '2018-03-15 19:19:35', '2018-03-15 19:19:35'),
(56, 'tambah area', 'tambah_area', '2018-03-15 19:19:40', '2018-03-15 19:19:40'),
(57, 'edit area', 'edit_area', '2018-03-15 19:19:45', '2018-03-15 19:19:45'),
(58, 'hapus area', 'hapus_area', '2018-03-15 19:19:50', '2018-03-15 19:19:50'),
(59, 'website config', 'website_config', '2018-03-16 00:38:52', '2018-03-16 00:38:52'),
(60, 'verifikasi webmaster', 'verifikasi_webmaster', '2018-03-16 00:53:12', '2018-03-16 00:53:12'),
(61, 'konfigurasi website', 'konfigurasi_website', '2018-03-16 01:09:13', '2018-03-16 01:09:13'),
(62, 'lihat perusahaan', 'lihat_perusahaan', '2018-03-19 21:42:22', '2018-03-19 21:42:22'),
(63, 'tambah perusahaan', 'tambah_perusahaan', '2018-03-19 21:42:30', '2018-03-19 21:42:30'),
(64, 'edit perusahaan', 'edit_perusahaan', '2018-03-19 21:42:41', '2018-03-19 21:42:41'),
(65, 'hapus perusahaan', 'hapus_perusahaan', '2018-03-19 21:42:48', '2018-03-19 21:42:48'),
(66, 'lihat kategori', 'lihat_kategori', '2018-03-20 01:35:50', '2018-03-20 01:35:50'),
(67, 'tambah kategori', 'tambah_kategori', '2018-03-20 01:35:58', '2018-03-20 01:35:58'),
(68, 'edit kategori', 'edit_kategori', '2018-03-20 01:36:06', '2018-03-20 01:36:06'),
(69, 'hapus kategori', 'hapus_kategori', '2018-03-20 01:36:15', '2018-03-20 01:36:15'),
(70, 'lihat status', 'lihat_status', '2018-03-20 04:51:41', '2018-03-20 04:51:41'),
(71, 'tambah status', 'tambah_status', '2018-03-20 04:51:48', '2018-03-20 04:51:48'),
(72, 'edit status', 'edit_status', '2018-03-20 04:51:53', '2018-03-20 04:51:53'),
(73, 'hapus status', 'hapus_status', '2018-03-20 04:51:59', '2018-03-20 04:51:59'),
(74, 'ubah status pengguna', 'ubah_status_pengguna', '2018-03-20 07:08:52', '2018-03-20 07:08:52'),
(75, 'ubah status lowongan', 'ubah_status_lowongan', '2018-03-20 07:41:59', '2018-03-20 07:41:59'),
(76, 'ubah status perusahaan', 'ubah_status_perusahaan', '2018-03-22 02:13:35', '2018-03-22 02:13:35'),
(77, 'ubah status menu', 'ubah_status_menu', '2018-03-22 04:51:15', '2018-03-22 04:51:15'),
(78, 'pasang loker', 'pasang_loker', '2018-03-22 07:58:50', '2018-03-22 07:58:50'),
(79, 'pasang lokasi', 'pasang_lokasi', '2018-03-22 07:59:03', '2018-03-22 07:59:03'),
(80, 'my account', 'my_account', '2018-03-22 08:10:08', '2018-03-22 08:10:08'),
(81, 'user logout', 'user_logout', '2018-03-22 08:12:17', '2018-03-22 08:12:17'),
(82, 'lihat level', 'lihat_level', '2018-03-23 19:39:24', '2018-03-23 19:39:24'),
(83, 'tambah level', 'tambah_level', '2018-03-23 19:39:29', '2018-03-23 19:39:29'),
(84, 'edit level', 'edit_level', '2018-03-23 19:39:35', '2018-03-23 19:39:35'),
(85, 'hapus level', 'hapus_level', '2018-03-23 19:39:41', '2018-03-23 19:39:41'),
(86, 'lihat sosial media', 'lihat_sosial_media', '2018-03-28 20:42:51', '2018-03-28 20:42:51'),
(87, 'tambah sosial media', 'tambah_sosial_media', '2018-03-28 20:42:56', '2018-03-28 20:42:56'),
(88, 'edit sosial media', 'edit_sosial_media', '2018-03-28 20:43:07', '2018-03-28 20:43:07'),
(89, 'hapus sosial media', 'hapus_sosial_media', '2018-03-28 20:43:13', '2018-03-28 20:43:13'),
(90, 'lihat artikel', 'lihat_artikel', '2018-04-03 04:36:19', '2018-04-03 04:36:19'),
(91, 'tambah artikel', 'tambah_artikel', '2018-04-03 04:36:27', '2018-04-03 04:36:27'),
(92, 'edit artikel', 'edit_artikel', '2018-04-03 04:36:32', '2018-04-03 04:36:32'),
(93, 'hapus artikel', 'hapus_artikel', '2018-04-03 04:36:37', '2018-04-03 04:36:37'),
(94, 'lihat tag', 'lihat_tag', '2018-04-03 04:36:49', '2018-04-03 04:36:49'),
(95, 'tambah tag', 'tambah_tag', '2018-04-03 04:36:54', '2018-04-03 04:36:54'),
(96, 'edit tag', 'edit_tag', '2018-04-03 04:37:03', '2018-04-03 04:37:03'),
(97, 'hapus tag', 'hapus_tag', '2018-04-03 04:37:08', '2018-04-03 04:37:08');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `nama_perusahaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perusahaan_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_perusahaan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_perusahaan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar_cover` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `created_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `display_name`, `name`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'super_admin', NULL, NULL),
(2, 'user', 'user', NULL, NULL),
(3, 'demo', 'demo', '2018-08-16 08:21:12', '2018-08-16 08:21:12');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(62, 2),
(63, 2),
(64, 2),
(90, 2),
(91, 2),
(92, 2),
(93, 2),
(94, 2),
(95, 2),
(1, 3),
(2, 3),
(3, 3),
(6, 3),
(7, 3),
(10, 3),
(11, 3),
(14, 3),
(15, 3),
(18, 3),
(24, 3),
(32, 3),
(33, 3),
(36, 3),
(38, 3),
(39, 3),
(42, 3),
(43, 3),
(46, 3),
(47, 3),
(51, 3),
(52, 3),
(55, 3),
(56, 3),
(60, 3),
(61, 3),
(62, 3),
(66, 3),
(67, 3),
(70, 3),
(71, 3),
(82, 3),
(83, 3),
(86, 3),
(87, 3),
(90, 3),
(91, 3),
(94, 3),
(95, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sosial_media`
--

CREATE TABLE `sosial_media` (
  `id` int(10) UNSIGNED NOT NULL,
  `fb` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ig` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sosial_media`
--

INSERT INTO `sosial_media` (`id`, `fb`, `ig`, `twt`, `created_at`, `updated_at`) VALUES
(1, 'gagas', 'gagas', 'gagas', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_sub` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_sub` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainmenu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `nama_tag`, `tag_slug`, `created_at`, `updated_at`) VALUES
(13, 'Interview kerja', 'interview-kerja', NULL, NULL),
(14, 'Psikotes', 'psikotes', NULL, NULL),
(15, 'tes kesehatan kerja', 'tes-kesehatan-kerja', NULL, NULL),
(16, 'Fresh Graduate', 'fresh-graduate', NULL, NULL),
(17, 'Usaha Sampingan', 'usaha-sampingan', NULL, NULL),
(18, 'Karyawan', 'karyawan', NULL, NULL),
(19, 'Profesi', 'profesi', NULL, NULL),
(20, 'Referensi Pekerjaan', 'referensi-pekerjaan', NULL, NULL),
(21, 'Komunikasi', 'komunikasi', NULL, NULL),
(22, 'Tips Kerja', 'tips-kerja', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tipe_gaji`
--

CREATE TABLE `tipe_gaji` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategori_gaji` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tipe_gaji`
--

INSERT INTO `tipe_gaji` (`id`, `kategori_gaji`, `created_at`, `updated_at`) VALUES
(1, '0-500', NULL, NULL),
(2, '500-1000', NULL, NULL),
(3, '1000-1500', NULL, NULL),
(4, '1500-2000', NULL, NULL),
(5, '> 2000', NULL, NULL),
(6, 'Negoisasi', NULL, NULL),
(7, 'Tidak disebutkan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tipe_pekerjaan`
--

CREATE TABLE `tipe_pekerjaan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_tipe` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tipe_pekerjaan`
--

INSERT INTO `tipe_pekerjaan` (`id`, `nama_tipe`, `tipe_slug`, `created_at`, `updated_at`) VALUES
(3, 'Akuntansi', 'akuntansi', NULL, NULL),
(4, 'Audit dan Pajak', 'audit-dan-pajak', NULL, NULL),
(5, 'Perbankan', 'perbankan', NULL, NULL),
(6, 'Staf Administrasi', 'staf-administrasi', NULL, NULL),
(7, 'Advertising', 'advertising', NULL, NULL),
(8, 'Arsitek', 'arsitek', NULL, NULL),
(9, 'Properti dan Bangunan', 'properti-dan-bangunan', NULL, NULL),
(10, 'Pendidikan', 'pendidikan', NULL, NULL),
(11, 'Mekanik', 'mekanik', NULL, NULL),
(12, 'Teknik Elektro', 'teknik-elektro', NULL, NULL),
(13, 'Kesehatan dan Kecantikan', 'kesehatan-dan-kecantikan', NULL, NULL),
(14, 'Hotel dan Restoran', 'hotel-dan-restoran', NULL, NULL),
(15, 'Marketing / Penjualan', 'marketing-penjualan', NULL, NULL),
(16, 'Pekerjaan Umum', 'pekerjaan-umum', NULL, NULL),
(17, 'Komputer / IT / Programmer', 'komputer-it-programmer', NULL, NULL),
(18, 'Ekspedisi / Kurir', 'ekspedisi-kurir', NULL, NULL),
(19, 'Pembiayaan', 'pembiayaan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'puspitaamelia67@gmail.com', '$2y$10$DzvQEkZfNbvlx8f5QG8/0O56/d2jYqNd.G38v4nYK8O0u2xOo1uJm', 1, 'ujN11v8sJKICnb9Bmp7i09glgLteAMofPbOJe65wWiKJDr5wsSZQ7gyRrzGh', NULL, '2018-04-09 02:45:00'),
(2, 'surya', 'surya@admin.com', '$2y$10$6NNgoP7C4195LTX/tTWOiOs66m3qfXcyK2v5htRS.uTChffVnScQC', 1, 'V6LH7U4elfYOPmBGAh7pnUKcfqqmLT7C9gnkv7KyR3I5MSlNusVpUekafPr8', '2018-04-09 02:46:43', '2018-04-09 02:46:47'),
(3, 'admin demo', 'demo@gmail.com', '$2y$10$Fua0GmSMyWT.c0MD4c/VM.AewXEfSii5B3OfxbhlToYzs5jmxGNGK', 1, '8M8DxZIRwIEesPgKFgCQ6l3T6A22UfhdiCIKv4PH9Gmj3VE2CZPqpzCQgEbl', '2018-08-16 08:21:42', '2018-08-16 08:21:48');

-- --------------------------------------------------------

--
-- Table structure for table `user_has_permissions`
--

CREATE TABLE `user_has_permissions` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_roles`
--

CREATE TABLE `user_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_has_roles`
--

INSERT INTO `user_has_roles` (`role_id`, `user_id`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `waktu_kerja`
--

CREATE TABLE `waktu_kerja` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_waktu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `waktu_kerja`
--

INSERT INTO `waktu_kerja` (`id`, `nama_waktu`, `waktu_slug`, `created_at`, `updated_at`) VALUES
(1, 'part time', 'part-time', NULL, NULL),
(3, 'full time', 'full-time', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `webmaster`
--

CREATE TABLE `webmaster` (
  `id` int(10) UNSIGNED NOT NULL,
  `google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bing` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webmaster`
--

INSERT INTO `webmaster` (`id`, `google`, `bing`, `created_at`, `updated_at`) VALUES
(1, 'gUOB9R1yk6En5R9lnUEftbtHeNoblD47IqBvh-41yTk', '458E3AD105280D3EE719B2A5F1F5916D', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employ_status`
--
ALTER TABLE `employ_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainmenu`
--
ALTER TABLE `mainmenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sosial_media`
--
ALTER TABLE `sosial_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipe_gaji`
--
ALTER TABLE `tipe_gaji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipe_pekerjaan`
--
ALTER TABLE `tipe_pekerjaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `user_has_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `user_has_roles_user_id_foreign` (`user_id`);

--
-- Indexes for table `waktu_kerja`
--
ALTER TABLE `waktu_kerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webmaster`
--
ALTER TABLE `webmaster`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `employ_status`
--
ALTER TABLE `employ_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lowongan`
--
ALTER TABLE `lowongan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `mainmenu`
--
ALTER TABLE `mainmenu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sosial_media`
--
ALTER TABLE `sosial_media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tipe_gaji`
--
ALTER TABLE `tipe_gaji`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tipe_pekerjaan`
--
ALTER TABLE `tipe_pekerjaan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `waktu_kerja`
--
ALTER TABLE `waktu_kerja`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `webmaster`
--
ALTER TABLE `webmaster`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD CONSTRAINT `user_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD CONSTRAINT `user_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
