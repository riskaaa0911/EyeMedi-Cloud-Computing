-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Des 2023 pada 08.12
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `testimoni` text DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `input`
--

CREATE TABLE `input` (
  `id` int(11) NOT NULL,
  `urlKanan` varchar(255) DEFAULT NULL,
  `urlKiri` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `output`
--

CREATE TABLE `output` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `penyebab` text DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20231130081010-create-users.js'),
('20231206035317-output.js'),
('20231206042509-output.js'),
('20231206043959-feedback.js'),
('20231206053519-input.js'),
('20231206054500-input.js');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'user0', 'user0@gmail.com', 'sha1$74797fbe$1$974606a0ab6b65082234ccbbef20b43fb6d17b4c', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(2, 'user1', 'user1@gmail.com', 'sha1$d1d25202$1$6e4ef4fd8630cf0f3a4c6bdea1ce2814dcf1b8c4', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(3, 'user2', 'user2@gmail.com', 'sha1$61d4d95a$1$5cf92c54354bf74bd3bba80c57efe3d09ed8bd5d', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(4, 'user3', 'user3@gmail.com', 'sha1$395fec32$1$04a1f4dc3259a71704ee3f5251d4054cb277bca5', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(5, 'user4', 'user4@gmail.com', 'sha1$c03d90d3$1$21e6fd1b5d9594c63a62fae9797ee936e1fbd4ac', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(6, 'user5', 'user5@gmail.com', 'sha1$7aaf6dcf$1$db9fb1859b0c831f50d4b794876a1912fb45966d', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(7, 'user6', 'user6@gmail.com', 'sha1$f090db1c$1$b94174228e2bd72f17a6aa4f5fda6789caaa54e4', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(8, 'user7', 'user7@gmail.com', 'sha1$641bd364$1$c6822d7f8567ca461ac47e846cf697dd43e9a331', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(9, 'user8', 'user8@gmail.com', 'sha1$fc359393$1$fc302dc2b843242587d8ccf52b57906264c3532d', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(10, 'user9', 'user9@gmail.com', 'sha1$af286fb9$1$b86ece611dc859176bfff97371c606dde5bbaa47', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(11, 'user10', 'user10@gmail.com', 'sha1$10a3a0e8$1$4eee1be240baf3149f8bd2abe094c3253911f8bf', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(12, 'user11', 'user11@gmail.com', 'sha1$fb9afec4$1$f17b08d9ce80f4dee96eedd2d827273b75b8aa82', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(13, 'user12', 'user12@gmail.com', 'sha1$f7f2e447$1$ab58ce5d4bce380a4527f57bd41a8b09a63b4c64', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(14, 'user13', 'user13@gmail.com', 'sha1$24083568$1$fd54fcf65e99138b6024f54bf30689c486192d25', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(15, 'user14', 'user14@gmail.com', 'sha1$7413c196$1$42f717bcadd395838f2b00958cc6237739b47825', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(16, 'user15', 'user15@gmail.com', 'sha1$f5488391$1$15489da0c95872f00bb8b7f926df96de2588aba0', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(17, 'user16', 'user16@gmail.com', 'sha1$3952f60f$1$67f49246ca86404c3dffd7f4fbe454f290610891', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(18, 'user17', 'user17@gmail.com', 'sha1$067a0215$1$345f236e941df572eb60a6e4781e991797a4bb02', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(19, 'user18', 'user18@gmail.com', 'sha1$1e46d4ba$1$cd686b94031e735834163679ec54fda7743d9545', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(20, 'user19', 'user19@gmail.com', 'sha1$ce1a5693$1$96ed328aed3a34aca8cf8f0ae4b9eb90b8b15453', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(21, 'user20', 'user20@gmail.com', 'sha1$7be7b334$1$eb9cb2b1973409dbe59aedb9b1007cf9c73f7a9a', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(22, 'user21', 'user21@gmail.com', 'sha1$10c62391$1$de921c3f9f36c3a2d10a816bc5056ee7178bafae', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(23, 'user22', 'user22@gmail.com', 'sha1$d5d31c90$1$6aa0e7ffed1eba245df8dd217295e86aca2f7964', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(24, 'user23', 'user23@gmail.com', 'sha1$93048abd$1$490205a82db66d55332f0aebcd6583c3f8ca8044', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(25, 'user24', 'user24@gmail.com', 'sha1$c2e78912$1$1e1660d97b4d5a4b65b53d54e6d38c9e2160af6c', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(26, 'user25', 'user25@gmail.com', 'sha1$a6704272$1$1c9caac27bdbb7284eccc3954c431e724a8ae7a2', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(27, 'user26', 'user26@gmail.com', 'sha1$5688187b$1$a1717f8f45bb648bbf3b7364a6ac52bf09ef32a8', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(28, 'user27', 'user27@gmail.com', 'sha1$5355e307$1$55467526db32c2901ecd9e464c1b67321a3ec983', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(29, 'user28', 'user28@gmail.com', 'sha1$e78b8df4$1$915c36588e7bc67f03c7dcea0cc781684c83d126', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(30, 'user29', 'user29@gmail.com', 'sha1$3e10f246$1$b48bee9623472fbb87855f0d23baaa2601194285', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(31, 'user30', 'user30@gmail.com', 'sha1$bbbd90d0$1$772c5ecf42207ef25ea87949bb6d7cec1565c919', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(32, 'user31', 'user31@gmail.com', 'sha1$7765c669$1$556df7fa896043b4e4478d125f7f8a00a8e7635d', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(33, 'user32', 'user32@gmail.com', 'sha1$3ae4fea8$1$825716a7d36e13e716a9cfe67972235b5eac9e8a', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(34, 'user33', 'user33@gmail.com', 'sha1$f70d4a96$1$c617bfbdce63e62a41f16adfe0c2e5d4e8116190', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(35, 'user34', 'user34@gmail.com', 'sha1$67aaab18$1$658eb99fab3bb3be57c4c414962fe2ab7688bd9c', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(36, 'user35', 'user35@gmail.com', 'sha1$78277836$1$e29d88e55e798b7797c9244d687a994a083fa5bf', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(37, 'user36', 'user36@gmail.com', 'sha1$1287655d$1$faf363fd05b7d6102c403979b37a035a9e399662', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(38, 'user37', 'user37@gmail.com', 'sha1$1686d532$1$cb54c3dc21325b731feb45619061ee14f532da56', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(39, 'user38', 'user38@gmail.com', 'sha1$549a86a6$1$6365df8b2eb75836b618a448803d17b2a18ac2d3', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(40, 'user39', 'user39@gmail.com', 'sha1$b98d19b6$1$50f6d2ccb778654fb5ecb1f382947611132f2f3e', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(41, 'user40', 'user40@gmail.com', 'sha1$8bb2d0ca$1$d86a8ecfabfa9525e5e578d60b94976579843838', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(42, 'user41', 'user41@gmail.com', 'sha1$473faece$1$150c03bd62ea8e1fccbdc3823af59444e03a84b6', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(43, 'user42', 'user42@gmail.com', 'sha1$2fbed59a$1$b4cdeccd49fc6564c3d553a0d1a26ab65b9ee23e', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(44, 'user43', 'user43@gmail.com', 'sha1$d7a42b09$1$fd344f7ad586ede29f05f67c4d8f75bc68f0d7e0', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(45, 'user44', 'user44@gmail.com', 'sha1$d2a79bf7$1$367d118c72852c6421e8f538df32fdd011d4c0a1', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(46, 'user45', 'user45@gmail.com', 'sha1$ac8b6f0a$1$70982a95176c403cbf5e76613ae8bec2a98db037', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(47, 'user46', 'user46@gmail.com', 'sha1$f4d7214d$1$e79dcebbf197a9381399982f6bcce28b56206da4', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(48, 'user47', 'user47@gmail.com', 'sha1$f70d76c4$1$bd989b4f2a81fa4a0bdafc7c8eb9c695d87280fd', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(49, 'user48', 'user48@gmail.com', 'sha1$e848cc41$1$f7628618a85dab8dc280f0e79ce5e52828bc658e', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(50, 'user49', 'user49@gmail.com', 'sha1$3db810ed$1$93cedb3fcfde30edf575a7f62b0185dec978b79f', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(51, 'user50', 'user50@gmail.com', 'sha1$7d7378e6$1$56f80ff21b58ba483813f5b968c0fbb2c52f409c', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(52, 'user51', 'user51@gmail.com', 'sha1$9ceabf70$1$15f0dbc9c24162735a56a3828b75010048370be0', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(53, 'user52', 'user52@gmail.com', 'sha1$412ed444$1$9721489ee3b4eb0e7e62959b46236341304b5455', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(54, 'user53', 'user53@gmail.com', 'sha1$c8fe08a5$1$b4640dca2a3e6b3db3d36288eccf932d500fabeb', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(55, 'user54', 'user54@gmail.com', 'sha1$ebc53a36$1$dc8efb265cd70af528280b02ed1489de4a6f69a3', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(56, 'user55', 'user55@gmail.com', 'sha1$7598a667$1$60dc2b4bd6f04b96c0caaa7b82ac4e3f72651a48', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(57, 'user56', 'user56@gmail.com', 'sha1$f1846f31$1$e1f0e366a683cb7be5de4d7083059b32d98fde4a', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(58, 'user57', 'user57@gmail.com', 'sha1$f1e84438$1$83973a4aa717a0f9f5b55bf4bb76ebe745639238', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(59, 'user58', 'user58@gmail.com', 'sha1$0e2f1430$1$4ebe31ea74368a7585c7859f0ff156af7a5f69da', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(60, 'user59', 'user59@gmail.com', 'sha1$ab414fe9$1$e1650e2c26abe85b1847f4b8c899cdb35b31827e', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(61, 'user60', 'user60@gmail.com', 'sha1$072bd733$1$e8013dc2f7f2c27103fa955abc2aca81b40dcdd9', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(62, 'user61', 'user61@gmail.com', 'sha1$279c7098$1$fed1cfa4e87ad27c03fdd4265fe8dbede74807d7', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(63, 'user62', 'user62@gmail.com', 'sha1$e593dcad$1$6bd9c2c9d408f2f2470a9a0e0e4b0c305a0b17fc', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(64, 'user63', 'user63@gmail.com', 'sha1$f8c8c235$1$00b3c5d4c700303df7d3677cc03814ac78347453', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(65, 'user64', 'user64@gmail.com', 'sha1$5e0a183f$1$1a085bdad98495ea108d28ff1ad80efb55e9b0f0', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(66, 'user65', 'user65@gmail.com', 'sha1$826c6c8f$1$f610122ad653e56b2c51f188da3ed43fc0a1717c', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(67, 'user66', 'user66@gmail.com', 'sha1$862fd03b$1$04654725e360bf94e7bbb97ff25646aac4f646f6', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(68, 'user67', 'user67@gmail.com', 'sha1$f7f6ddc6$1$7898700b04f6b01fe328747d41724ebf90ed076a', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(69, 'user68', 'user68@gmail.com', 'sha1$566b8639$1$4e0ce700477e5b9bc0bf13b83ae5564251fd18a1', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(70, 'user69', 'user69@gmail.com', 'sha1$aad352a5$1$d31c43394272dca52bc1dda6ac15f7d87183ddd5', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(71, 'user70', 'user70@gmail.com', 'sha1$e0279816$1$ff3d85fd8c30dce9280bdfb6ddea64e9d35dfa40', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(72, 'user71', 'user71@gmail.com', 'sha1$a2bd81f0$1$1d22f87c2c2a6cffc72c0d6553e64c6ec5db381c', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(73, 'user72', 'user72@gmail.com', 'sha1$a4c703eb$1$23781548a9c2a09556248550d7f460a205874f10', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(74, 'user73', 'user73@gmail.com', 'sha1$cc3490b7$1$806c1d057ede75f940387207dba55b1cd6f751ba', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(75, 'user74', 'user74@gmail.com', 'sha1$2652d56c$1$253a1246ce00ad559571cfed970f5026a406c070', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(76, 'user75', 'user75@gmail.com', 'sha1$15f097a0$1$4bef2e22b9412f9c1e990deb80a7a12032403313', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(77, 'user76', 'user76@gmail.com', 'sha1$953b784e$1$e34306debdf3b9723c119e94c3fb4cc8129958ee', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(78, 'user77', 'user77@gmail.com', 'sha1$003a2014$1$45080689cea9227bf958de6e48d383cfb24d62d9', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(79, 'user78', 'user78@gmail.com', 'sha1$a5724a95$1$0cbbc0434e9dae1d6626b9c2496f1ab5e9ca3b03', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(80, 'user79', 'user79@gmail.com', 'sha1$fb2d4783$1$9e7c7f4830e321f4e1acfafacb5c8cf33623ba8a', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(81, 'user80', 'user80@gmail.com', 'sha1$2c525a2e$1$4fdb6062213321fdd3f21be8c4eb6f59b6bc6649', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(82, 'user81', 'user81@gmail.com', 'sha1$c9fa935b$1$b154bad436b469c95ac99c297bed7f2b54ea5fd6', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(83, 'user82', 'user82@gmail.com', 'sha1$c7d5c272$1$07a7bf0df15a91dbdf16e0364d2ace6a36043b02', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(84, 'user83', 'user83@gmail.com', 'sha1$aec4f519$1$fe7a2eb077126da03a5d94a2b8f048c413758784', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(85, 'user84', 'user84@gmail.com', 'sha1$5e596170$1$ebd242b61cbe5a4b53c8003d7f01697fc9b9483f', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(86, 'user85', 'user85@gmail.com', 'sha1$f08772b2$1$4d5c6f7f34e00fc42b2a5dc8a4dc6c6df148e7ec', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(87, 'user86', 'user86@gmail.com', 'sha1$248eafde$1$5d9d218cff4a6b2479affd9d08ea24f0782e955e', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(88, 'user87', 'user87@gmail.com', 'sha1$5ca9e8cd$1$6e416916b1d613f29eaf2b9cfc0abcdb3617bb26', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(89, 'user88', 'user88@gmail.com', 'sha1$a736e1de$1$a016e48ff7c0d848a4e36e560a25e1dcb3fdb9a8', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(90, 'user89', 'user89@gmail.com', 'sha1$13ab0646$1$598cdb23c2fcdb8a336feafba1344d2b0c7772e8', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(91, 'user90', 'user90@gmail.com', 'sha1$a8bc0883$1$05e1174a8f226129f13bab142f41ef33ff56340c', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(92, 'user91', 'user91@gmail.com', 'sha1$6fc469fb$1$9f16262f41aac2170062a7cbf03c1e4d0179c463', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(93, 'user92', 'user92@gmail.com', 'sha1$12d83c40$1$44e3d0fb2344708ef1c06a48e19e8af202ebeafc', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(94, 'user93', 'user93@gmail.com', 'sha1$7c40fc0f$1$52347db15b325b743def5fa1fc96f8563fb14967', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(95, 'user94', 'user94@gmail.com', 'sha1$7659de41$1$3c962d8bc111ea61d2ece98c14d190e8e0b39b8b', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(96, 'user95', 'user95@gmail.com', 'sha1$25fcd75b$1$9c42333a6ddf92a70ba663b4761022fcbb006464', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(97, 'user96', 'user96@gmail.com', 'sha1$bbc05819$1$a2705a021160284c35dd50642042c084865b7dd3', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(98, 'user97', 'user97@gmail.com', 'sha1$e503b6b8$1$af714120c6e27e0100136484f1d832e6506463ba', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(99, 'user98', 'user98@gmail.com', 'sha1$8b06fe55$1$e899dbb60ce2969b46e6f9b998d850b1d119ffcf', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(100, 'user99', 'user99@gmail.com', 'sha1$072912d6$1$606dc29e4d0be9d2bc86068776a606ebb238dc72', '2023-11-30 09:29:12', '2023-11-30 09:29:12'),
(101, 'riska', 'riska@gmail.com', 'sha1$6af0de07$1$34c631c83d8572328cb14a66152360d4aa41ea9c', '2023-11-30 16:25:23', '2023-11-30 16:25:23'),
(102, 'user', 'user@gmail.com', 'sha1$002b5e2f$1$86913c81a86aba1521e85f4373d8c3838efe46fa', '2023-11-30 17:12:21', '2023-11-30 17:12:21'),
(104, 'mia', 'mia@gmail.com', 'sha1$3df7c667$1$ca22ac24f626a7c83a4ccf5363849cfec8e56d38', '2023-12-02 12:59:28', '2023-12-02 12:59:28'),
(105, 'bangchan', 'bangchan@gmail.com', 'sha1$4f6610b5$1$6b560d631327624e703b2f8aba5c0bc3ed8fa7fb', '2023-12-02 14:41:30', '2023-12-02 14:41:30'),
(106, 'alika', 'alika@gmail.com', 'sha1$10d1fff6$1$489eb144477d9605d794d30703f0f1ffef59cea7', '2023-12-04 15:25:12', '2023-12-04 15:25:12'),
(107, 'Elsa', 'elsanabiilah13@gmail.com', 'sha1$e6410a77$1$040af41abc855e7f65b088f3d36fe30cd9249489', '2023-12-06 06:13:08', '2023-12-06 06:13:08');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_userId_fk` (`userId`);

--
-- Indeks untuk tabel `input`
--
ALTER TABLE `input`
  ADD PRIMARY KEY (`id`),
  ADD KEY `input_userId_fk` (`userId`);

--
-- Indeks untuk tabel `output`
--
ALTER TABLE `output`
  ADD PRIMARY KEY (`id`),
  ADD KEY `output_userId_fk` (`userId`);

--
-- Indeks untuk tabel `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `input`
--
ALTER TABLE `input`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `output`
--
ALTER TABLE `output`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feedback_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `input`
--
ALTER TABLE `input`
  ADD CONSTRAINT `input_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `input_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `output`
--
ALTER TABLE `output`
  ADD CONSTRAINT `output_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `output_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
