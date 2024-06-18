-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2024 at 03:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first_name`, `last_name`, `username`, `password`) VALUES
(1, 'Personal', 'Blog', 'admin', '$2y$10$Rr.mYFFB6pIZhhVm5pd6GueEQHbuUl/abegut.MeQlyPYXy.mWO8S');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'Pendidikan'),
(2, 'Olahraga'),
(3, 'Politik'),
(4, 'Teknologi');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `crated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `comment`, `user_id`, `post_id`, `crated_at`) VALUES
(1, 'sangat bermafaat', 1, 1, '2024-06-09 21:04:35'),
(2, 'seru match nya', 1, 3, '2024-06-09 21:04:56'),
(3, 'tetap kawal no urut 2', 1, 5, '2024-06-09 21:05:27'),
(4, 'mantap elon mask panutanku', 1, 6, '2024-06-09 21:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(127) NOT NULL,
  `post_text` text NOT NULL,
  `category` int(11) NOT NULL,
  `publish` int(2) NOT NULL DEFAULT 1,
  `cover_url` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `crated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_title`, `post_text`, `category`, `publish`, `cover_url`, `crated_at`) VALUES
(1, 'Kemendikbud Fokus Kurangi Jumlah Anak Tidak Sekolah di Tahun 2025', '<div><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi (Kemendikbud Ristek) akan fokus untuk mengurangi jumlah anak yang tidak bersekolah di tahun 2025. Hal itu diungkapkan oleh Direktur Jenderal Paud, Pendidikan Dasar dan Pendidikan Menengah Kemendikbud Ristek Iwan Syahril dalam rapat kerja bersama Komisi X DPR, Rabu (5/6/2024). \"Salah satu yang berkaitan dengan wajib belajar itu kita akan fokus pada anak tidak sekolah,\" kata Iwan dikutip dari akun YouTube Tv Parlemen, Rabu. Baca juga: Kemendikbud Minta Tambahan Anggaran Rp 25 Triliun, Ini Alasannya Oleh karena itu, Kemendikbud akan segera berkoordinasi dengan pemerintah daerah untuk turut serta membantu mengurangi angka anak tidak sekolah. Kemendikbud Ristek, kata Iwan, juga telah mendapatkan tambahan anggaran untuk penyediaan pendidikan khusus demi mengurangi jumlah anak tidak sekolah. \"Jadi kita akan melakukan koordinasi dengan pemda dan intervensi terkait angka tidak sekolah tersebut supaya makin mengecil,\" ujarnya. Sementara itu, Kemendikbud Ristek secara keseluruhan juga mengusulkan tambahan anggaran tahun 2025 sebesar Rp 25 triliun. Dalam kesempatan yang sama, Sekretaris Jenderal Kemendikbud Ristek Suharti mengatakan, usulan tambahan anggaran itu disampaikan karena jika dilihat dari pagu berjalan tahun 2024, pagu indikatif tahun 2025 telah terjadi penurunan yang signifikan. \"Terjadi penurunan yang signifikan pagu berjalan 2024 sekitar Rp 101,3 triliun, sementara pagu indikatif tahun 2025 baru mencapai Rp 83 triliun,\" kata Suharti. Baca juga: Billy Mambrasar: Belajar Online Bisa Tekan Angka Putus Sekolah Oleh karena itu, kata Suharti, Kemendikbud Ristek mengusulkan tambahan anggaran sebesar Rp 25 triliun untuk menunjang dan memastikan semua program yang dilakukan bisa berjalan dan ditingkatkan. Suharti juga menjelaskan, dari pagu indikatif tahun 2025 yakni sebesar Rp 83,19 sebanyak Rp 41,5 triliun ditujukan untuk pendanaan wajib seperti Program Indonesia Pintar (PIP). Kemudian Kartu Indonesia Pintar (KIP) Kuliah, aneka tunjangan guru non PNS, tunjangan profesi dosen dan guru besar non PNS dan, BOPTN pendidikan tinggi dan vokasi. Sedangkan sebesar Rp 12,19 untuk program prioritas seperti platform Merdeka Belajar, Kurikulum Merdeka, asesmen nasional, pendampingan sekolah penggerak. Lalu, pendanan Guru Penggerak, SMK Pusat Keunggulan, pendidikan karakter, program literasi bahasa dan kesastraan, tugas dan fungsi reformasi birokrasi dan tata kelola.</span><br></div>', 1, 1, 'COVER-6665a5473f0332.74148180.jpg', '2024-06-09 20:51:19'),
(2, ' Home Internasional Kualifikasi Piala Dunia 2026 - Striker Penolong Timnas Indonesia Siap Hancurkan Mimpi Malaysia untuk Lolos', '<div>Peluang&nbsp;<a href=\"https://www.bolasport.com/tag/timnas-malaysia\" style=\"color: rgb(193, 39, 45); vertical-align: top; outline: 0px; text-decoration-line: none;\">timnas Malaysia</a>&nbsp;lolos ke putaran ketiga&nbsp;<a href=\"https://www.bolasport.com/tag/kualifikasi-piala-dunia-2026\" style=\"color: rgb(193, 39, 45); vertical-align: top; outline: 0px; text-decoration-line: none;\">Kualifikasi Piala Dunia 2026</a>&nbsp;Zona Asia terancam hangus.&nbsp;<span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Harimau Malaya hanya menempati peringkat tiga di klasemen Grup D pada ronde kedua saat ini.&nbsp;</span><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Mereka baru mengoleksi 6 poin dalam kondisi tertinggal dari dua kontestan teratas, Kirgistan dan Oman.&nbsp;</span><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Keduanya sama-sama meraup 9 poin dari 4 pertandingan awal.&nbsp;</span><a href=\"https://www.bolasport.com/tag/timnas-kirgistan\" style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); color: rgb(193, 39, 45); vertical-align: top; outline: 0px; text-decoration-line: none;\">Timnas Kirgistan</a><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp;dan Oman bisa memastikan kelolosan paling cepat, Kamis (6/6/2024).&nbsp;</span><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Kirgistan dijadwalkan menjamu Malaysia di Bishkek.&nbsp;</span><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Adapun Oman bertandang ke markas tim juru kunci, Taiwan, yang sudah dipastikan tereliminasi.&nbsp;</span><a href=\"https://www.bolasport.com/tag/timnas-malaysia\" style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); color: rgb(193, 39, 45); vertical-align: top; outline: 0px; text-decoration-line: none;\">Timnas Malaysia</a><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp;bisa tersingkir jika mereka kalah dari Kirgistan dan Oman minimal imbang dengan Taiwan.&nbsp;</span><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Selaku pemuncak klasemen sementara,&nbsp;</span><a href=\"https://www.bolasport.com/tag/timnas-kirgistan\" style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); color: rgb(193, 39, 45); vertical-align: top; outline: 0px; text-decoration-line: none;\">timnas Kirgistan</a><span style=\"font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">&nbsp;tak mau menyia-nyiakan peluang di depan mata.</span></div>', 2, 1, 'COVER-6665a62bab1072.51337264.jpg', '2024-06-09 20:55:07'),
(3, 'Prabowo-Gibran Bertemu di Hambalang, Habiburokhman: Sangat Mungkin Bahas Formasi Kabinet  Artikel ini telah tayang di Kompas.co', '<div><span style=\"font-family: Roboto, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><font color=\"#000000\">Wakil Ketua Umum Partai Gerindra Habiburokhman memprediksi isi pertemuan antara presiden terpilih Prabowo Subianto dan wakil presiden terpilih Gibran Rakabuming Raka adalah soal pembentukan formasi kabinet. Diketahui, Gibran mendatangi kediaman Prabowo di Hambalang, Kabupaten Bogor, Jawa Barat, pada Sabtu (8/6/2024). Habiburokhman memprediksi, baik Prabowo maupun Gibran saling memberikan kabar terbaru soal perkembangan politik dalam pertemuan tersebut. Baca juga: Hanura Buka Peluang Gabung Pemerintahan Prabowo-Gibran “Sangat mungkin juga soal format dan formasi kabinet dibahas, setidaknya tipis-tipis lah, karena pelantikan sudah semakin dekat,” kata Habiburokhman melalui pesan tertulis kepada awak media, Minggu (9/6/2024). Habiburokhman mengaku belum mendapatkan informasi soal isi pertemuan tersebut. “Kalau mau lebih akurat tentu ke Pak Dasco (Ketua Harian Gerindra). Tentu pertemuan (Prabowo-Gibran) tersebut adalah pertemuan penting membicarakan persoalan bangsa dan negara,” kata Habiburokhman. Dalam pertemuan Sabtu sore, Prabowo dan Gibran berdiskusi di ruang perpustakaan milik Prabowo. Dikutip dari siaran pers resmi, Gibran tampak memegang secarik buku kecil serta pena untuk mencatat poin penting pembicaraan yang dibahas pada Sabtu sore itu. “Sabtu sore di Padepokan Garudayaksa, bertukar pikiran ditemani kopi hambalang bersama wakil presiden terpilih @gibran_rakabuming,” tulis Prabowo dalam akun Instagramnya, @prabowo. Baca juga: Datangi Hambalang, Gibran Diskusi Bareng Prabowo di Ruang Perpustakaan Diketahui, Komisi Pemilihan Umum (KPU) RI menetapkan Prabowo-Gibran sebagai presiden dan wakil presiden terpilih hasil pemilihan presiden (Pilpres) 2024. Penetapan dilakukan setelah gugatan sengketa Pilpres 2024 yang diajukan Anies Baswedan-Muhaimin Iskandar dan Ganjar Pranowo-Mahfud MD ditolak Mahkamah Konstitusi (MK) RI. Prabowo-Gibran dinyatakan menang atas dua pasangan calon lainnya dengan selisih cukup jauh, dengan perolehan 96.214.691 suara atau sekitar 58,59 persen dari 164.227.475 suara sah nasional Pilpres 2024.</font></span><br></div>', 3, 1, 'COVER-6665a713286f29.69042599.jpeg', '2024-06-09 20:58:59'),
(4, 'Starlink Siapkan Layanan Internet untuk Ponsel di Indonesia, Operator Seluler Minta Keadilan  Artikel ini telah tayang di Kompa', '<div><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Layanan internet satelit Starlink milik Elon Musk bersiap menggelar layanan \"Direct to Cell\" di Indonesia. Situs resmi Starlink berbahasa Indonesia sudah memajang layanan Starlink Direct to Cell untuk pelanggan bisnis.&nbsp; Layanan ini memungkinkan internet satelit Starlink langsung terhubung ke smartphone atau handphone (HP) pengguna. Artinya, ponsel bisa terkoneksi tanpa harus terhubung dengan menara BTS operator seluler. Menyikapi strategi bisnis Starlink ini, operator seluler di Indonesia pun memberikan tanggapan mereka. Menurut XL Axiata, mereka melihat bahwa layanan Direc to Cell merupakan bentuk dari layanan direct to customer atau B2C.&nbsp; Sehingga, Head of External Communication XL Axiata, Henry Wijayanto mengatakan bahwa pemerintah harus menerapkan equal playing field, alias berkompetisi dengan baik dan adil di industri telekomunikasi Tanah Air.&nbsp; Baca juga: Starlink Siapkan Direct to Cell, HP Bisa Langsung Konek ke Internet Satelit Tanpa Operator Henry mengatakan, jika terjadi penjualan langsung kepada konsumen dalam layanan Direct to Cell, maka hal ini akan berdampak besar terhadap industri.&nbsp; Lihat Foto Group Head Corporate Communications XL Axiata Reza Zahid Mirza (kiri) dan Head of External Communication XL Axiata, Henry Wijayanto (kanan) saat ditemui di kawasan Jakarta Selatan, Rabu (5/6/2024) senada mengatakan bahwa XL berharap pemerintah menerapakan equal playing field kepada layanan internet Starlink. (KOMPAS.com/Yudha Pratomo) \"Jadi kami mendorong atau meminta pemerintah supaya Starlink setidaknya melakukan kerja sama dengan penyelenggara seluler, operator dalam hal ini. Jadi tidak direct langsung ke end user,\" kata Henry ditemui KompasTekno di kawasan Jakarta Selatan, Rabu (5/6/2024).&nbsp; Meski demikian, Henry juga menegaskan bahwa Starlink adalah sebuah \"hal baru\" yang bisa dikolaborasikan. Ia pun menegaskan bahwa XL Axiata tetap membuka peluang untuk berkolaborasi dengan Starlink. Dalam kesempatan yang sama, Group Head Corporate Communications XL Axiata Reza Zahid Mirza, mengatakan bahwa saat ini Xl Axiata masih menunggu arahan dari pemerintah terkait kehadiran Starlink di Indonesia.&nbsp; Baca juga: Merger XL Axiata dan Smartfren Kian Menguat, Seberapa Besar Entitas Barunya? Reza juga meminta agar pemerintah bisa menerapkan regulasi telekomunikasi yang sama kepada Starlink. Lihat Foto Starlink Direct to Cell.(Starlink) \"Kami berharap pemerintah menyamakan regulasi telekomunikasi kepada mereka. Jangan main masuk saja. Secara legal belum B2C,\" katanya. Baca juga: Starlink Masuk Indonesia, Ini Kata 3 Penyedia Layanan Internet di Tanah Air Ia juga mengatakan bahwa saat ini XL terus berkomunikasi dengan pemerintah dan Asosiasi Penyelenggara Telekomunikasi Seluruh Indonesia (ATSI), terkait kehadiran Starlink. Starlink sendiri resmi beroperasi sebagai pemain baru di industri penyedia layanan internet di Tanah Air, melalui PT Starlink Service Indonesia. Pada 2 Januari 2024, Starlink meluncurkan enam satelit Starlink pertama dengan kemampuan Direct to Cell. Informasi terbaru, SpaceX meluncurkan 20 satelit internet Starlink lagi pada 4 Juni 2024, termasuk 13 satelit yang dapat memancarkan layanan Direct to Cell.&nbsp; Pada 8 Januari 2024, Starlink mengungkapkan bahwa pihaknya telah berhasil mengirim dan menerima pesan teks pertamanya dari/ke smartphone di Bumi, menggunakan spektrum jaringan operator seluler AS, T-Mobile, melalui salah satu satelit Direct to Cell milik Starlink.&nbsp; Smartphone bisa menerima pesan via satelit secara langsung di mana pun mereka berada, di darat atau pesisir pantai, tanpa perlu mengubah komponen atau firmware pendukung.</span><br></div>', 4, 1, 'COVER-6665a7898c0040.13936142.jpg', '2024-06-09 21:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `post_like`
--

CREATE TABLE `post_like` (
  `like_id` int(11) NOT NULL,
  `liked_by` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `liked_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_like`
--

INSERT INTO `post_like` (`like_id`, `liked_by`, `post_id`, `liked_at`) VALUES
(1, 1, 1, '2024-06-09 21:04:23'),
(2, 1, 3, '2024-06-09 21:04:50'),
(3, 1, 5, '2024-06-09 21:05:06'),
(4, 1, 6, '2024-06-09 21:05:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `username`, `password`) VALUES
(1, 'Agus Sudandi', 'agus', '$2y$10$..q6VFqqzgSai16RYufki.aNkM9YSpgo2HFyiEa5BMVJkXECGWiza');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_like`
--
ALTER TABLE `post_like`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `post_like`
--
ALTER TABLE `post_like`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
