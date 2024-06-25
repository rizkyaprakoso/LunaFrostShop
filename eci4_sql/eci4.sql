-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2024 at 07:01 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `biodata` varchar(100) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`biodata`, `value`) VALUES
('alamat', 'Jl. Kalibata Utara II No. 16, RT.02/RW.12,\r\nKalibata, Kec. Kota Jakarta Selatan,\r\nDaerah Khusus Ibukota Jakarta, 12760.\r\n'),
('email', 'savetimestudio@mail.com'),
('facebook', 'https://web.facebook.com/profile.php?id=100070926137595'),
('instagram', 'https://www.instagram.com/savetimestudio_official/'),
('logo', 'logo.png'),
('no_rek', '5865086293'),
('phone', '089524803228'),
('sejarah', '<p class=\"MsoNormal\" style=\"line-height:150%\">Sejarah<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\">Perjalanan\r\nSaveTime Studio dimulai dari semangat dan hasrat untuk mengabadikan momen-momen\r\nberharga dalam bentuk visual yang luar biasa. Didirikan pada tahun 2017, studio\r\nini lahir dari impian pendirinya untuk membawa inspirasi dan keindahan dalam\r\nsetiap bidikan kamera. Dari awalnya hanya sebagai ide di balik lensa, SaveTime\r\nStudio tumbuh menjadi destinasi yang dihormati dalam dunia Photography dan\r\nVideography.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\">Dalam beberapa\r\ntahun pertama, SaveTime Studio telah mengalami berbagai tantangan dan\r\npencapaian yang luar biasa. Kami telah berkolaborasi dengan berbagai klien,\r\nmerayakan momen-momen bahagia dalam pernikahan, ulang tahun, dan peristiwa\r\npenting lainnya. Kami juga telah menjadi bagian dari proyek-proyek kreatif yang\r\nunik, menghasilkan video klip, iklan, dan konten visual yang menginspirasi.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\">Seiring\r\nberjalannya waktu, kami terus berinvestasi dalam pengembangan tim profesional\r\nkami dan teknologi terbaru dalam industri ini. Kita telah membentuk ikatan kuat\r\ndengan klien dan mitra, yang mendorong kita untuk terus tumbuh dan berinovasi.\r\nSetiap momen dalam perjalanan SaveTime Studio adalah bagian dari narasi yang tak\r\nterpisahkan, dari pencapaian ke pencapaian, dari pelajaran ke pelajaran.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\">Hari ini,\r\nSaveTime Studio menjadi simbol kualitas, kreativitas, dan dedikasi dalam dunia\r\nPhotography dan Videography. Kami tidak hanya mengabadikan momen, tetapi kami\r\njuga menceritakan cerita di balik setiap gambar dan video. Melalui pengalaman\r\npanjang kami, kami berjanji untuk terus memberikan layanan terbaik kepada klien\r\nkami, menghadirkan keindahan dan emosi dalam setiap karya kami. Kami mengundang\r\nAnda untuk bergabung dalam perjalanan kami, di mana setiap bidikan adalah\r\nekspresi seni dan setiap momen adalah kenangan yang abadi.<o:p></o:p></p>'),
('tentang', '<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\"><b>Profil Usaha: SaveTime Studio<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\"><b>Alamat:<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\">Jl. Kalibata\r\nUtara II No. 16, RT.02/RW.12,<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\">Kalibata, Kec.\r\nKota Jakarta Selatan,<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\">Daerah Khusus\r\nIbukota Jakarta, 12760.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\"><b>Kontak:<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\">Telepon:\r\n089524803228<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\">Instagram:\r\nhttps://www.instagram.com/savetimestudio_official/<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\">Facebook:\r\nhttps://web.facebook.com/profile.php?id=100070926137595<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\"><b>Deskripsi Usaha:<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\">SaveTime Studio\r\nadalah sebuah usaha yang bergerak di bidang pelayanan jasa Photography dan\r\nVideography. Kami menyediakan berbagai layanan profesional untuk memenuhi\r\nkebutuhan visual Anda, baik itu untuk momen spesial, keperluan bisnis, atau\r\nproyek kreatif.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\"><b>Layanan yang Kami Tawarkan:<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\"><b>Photography:</b> Kami memiliki tim\r\nfotografer berpengalaman yang siap membantu Anda dalam mengabadikan momen-momen\r\nberharga dalam foto berkualitas tinggi. Mulai dari potret pribadi hingga acara\r\nbesar seperti pernikahan dan acara perusahaan, kami siap memberikan hasil\r\nterbaik.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\"><b>Videography:</b> Tim videographer kami akan\r\nmenghasilkan video berkualitas tinggi yang akan menghidupkan kembali\r\nmomen-momen berharga dalam gerakan. Kami dapat membuat video dokumentasi, klip\r\nacara, video musik, iklan, dan lainnya sesuai dengan kebutuhan Anda.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\"><b>Studio:</b> Kami memiliki studio\r\nberfasilitas lengkap yang dapat digunakan untuk berbagai jenis pemotretan dan\r\npengambilan gambar. Studio kami dilengkapi dengan peralatan canggih dan\r\npencahayaan profesional, menciptakan lingkungan ideal untuk menghasilkan gambar\r\ndan video berkualitas.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\"><b>Documentation:</b> Kami juga menyediakan\r\nlayanan dokumentasi untuk berbagai acara seperti pernikahan, ulang tahun,\r\nseminar, dan lainnya. Tim kami akan dengan teliti mengabadikan setiap momen\r\npenting dalam acara Anda.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\">Rental Kamera:\r\nJika Anda membutuhkan peralatan fotografi dan videografi untuk keperluan\r\nsementara, kami menyediakan layanan rental kamera dengan berbagai pilihan\r\nperalatan berkualitas tinggi.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\"><b>Jam Operasional:<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\">Senin - Minggu:\r\n08.00 - 21.00<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\">Dengan komitmen\r\nuntuk memberikan hasil terbaik dan layanan yang memenuhi harapan, SaveTime\r\nStudio siap menjadi mitra visual Anda dalam setiap momen berharga dan proyek\r\nkreatif Anda. Hubungi kami melalui telepon atau melalui akun media sosial kami\r\nuntuk informasi lebih lanjut atau pemesanan layanan.<o:p></o:p></p>');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `id` int(5) UNSIGNED NOT NULL,
  `img` varchar(100) NOT NULL,
  `judul` varchar(255) NOT NULL DEFAULT '',
  `deskripsi` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`id`, `img`, `judul`, `deskripsi`) VALUES
(1, '1691072186_5f19c14b61cdf9ba74c0.jpg', 'SaveTime Studio', 'Ciptakan kenangan abadi Anda bersama Kami'),
(2, '1691072221_8ae8acbe9d39cd8a5f96.jpg', 'SaveTime Studio', 'Jadikan setiap momen berharga Anda menjadi sempurna bersama Kami'),
(3, '1691072291_677bcb86c751c74600dd.jpg', 'SaveTime Studio', 'Raih kekekalan momen indah dalam setiap bidikan, hanya di SaveTime Studio'),
(4, '1691072414_ee69119bf72159438ab9.jpg', 'SaveTime Studio', 'Ciptakan kisah yang tak terlupakan melalui sentuhan visual yang unik'),
(5, '1691072438_208371c79f5efca0b9c5.jpg', 'SaveTime Studio', 'Mengubah momen menjadi seni, merangkai cerita unik dalam setiap gambar');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `nama_lengkap`, `email`, `password`, `alamat`) VALUES
(3, 'Allison Hubert', 'allisonhubert@gmail.com', 'allison123', 'allison123'),
(4, 'Lando Norris', 'landonorris@gmail.com', 'lando123', 'lando123'),
(5, 'Carlos Sainz', 'carlossainz55@gmail.com', 'carlos123', 'Marabella, Spain'),
(6, 'Charles Leclerc', 'charlesleclerc@gmail.com', 'charles123', 'Monte Carlo, Monaco'),
(7, 'Max Vertsappen', 'maxverstappen@gmail.com', 'max123', 'Monaco st'),
(8, 'Alexandra Mleux', 'alexandramleux@gmail.com', 'alexandra123', 'Monaco'),
(9, 'Oscar Piastri', 'oscarpiastri@gmail.com', 'oscar123', 'London');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) UNSIGNED NOT NULL,
  `small` varchar(255) NOT NULL,
  `medium` varchar(255) NOT NULL,
  `large` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `small`, `medium`, `large`) VALUES
(1, 'default.png', 'default.png', 'default.png');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) DEFAULT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '20181211100537', 'App\\Database\\Migrations\\Migration_Install_ion_auth', 'default', 'App', 1691071254, 1),
(2, '2023-07-03-134508', 'App\\Database\\Migrations\\Paket', 'default', 'App', 1691071254, 1),
(3, '2023-07-10-130625', 'App\\Database\\Migrations\\CreateTransaksiTable', 'default', 'App', 1691071254, 1),
(4, '2023-07-15-131754', 'App\\Database\\Migrations\\CreateTablePortofolio', 'default', 'App', 1691071254, 1),
(5, '2023-07-16-080020', 'App\\Database\\Migrations\\CreateBiodataTable', 'default', 'App', 1691071254, 1),
(6, '2023-07-16-122551', 'App\\Database\\Migrations\\CreateCarouselTable', 'default', 'App', 1691071254, 1),
(7, '2023-07-21-154506', 'App\\Database\\Migrations\\Visitors', 'default', 'App', 1691071254, 1);

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `id` int(5) UNSIGNED NOT NULL,
  `category_id` int(5) UNSIGNED NOT NULL,
  `katalog` varchar(255) NOT NULL DEFAULT 'Studio',
  `title` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `price_disc` int(11) DEFAULT NULL,
  `description` text NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id`, `category_id`, `katalog`, `title`, `price`, `price_disc`, `description`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(14, 1, 'Studio', 'Colorado Spring Jacket', 1200000, 0, '<p>A Colorado jacket is a versatile and casual outerwear piece inspired by the rugged outdoors of Colorado. It\'s often a lightweight jacket or shirt jacket, designed for comfort and functionality in mild weather. Featuring durable materials like cotton or canvas, it may include practical details such as multiple pockets and a relaxed fit. Perfect for outdoor activities or casual everyday wear, a Colorado jacket combines style with utility, embodying the adventurous spirit of its namesake state.<br></p>', '1718560977_107d95d6c75d5057b30b.jpeg', 1, '2024-06-16 13:02:57', '2024-06-21 13:26:58'),
(15, 1, 'Studio', 'Retro Men Shirt', 500000, 0, '<p>This shirt features a timeless retro design, characterized by its striking white and brown color scheme. The white base is complemented by brown accents, giving it a sophisticated yet relaxed look. The intricate pattern adds a touch of elegance, making it suitable for both casual and semi-formal occasions.<br></p>', '1718561023_6dcad2eb3d2cd9b8a3dd.jpeg', 1, '2024-06-16 13:03:43', '2024-06-22 22:13:06'),
(16, 1, 'Studio', 'Green and White Shirt', 450000, 0, '<p>A green and white shirt features a stylish combination of colors, blending green and white patterns or stripes. This shirt is versatile, suitable for both casual and semi-formal occasions. It typically offers a relaxed fit with short or long sleeves, crafted from comfortable fabrics like cotton or linen. Perfect for adding a fresh and vibrant touch to your wardrobe, the green and white shirt pairs well with jeans or chinos for a smart yet laid-back look.<br></p>', '1718561082_dd6c3be13994ff208b8c.jpeg', 1, '2024-06-16 13:04:42', '2024-06-21 13:25:15'),
(17, 1, 'Studio', 'White Linen Shirt', 960000, 0, '<p>A white linen shirt is a lightweight and breathable essential for warm weather. It features a collared neckline and button-up front, offering a comfortable and relaxed fit. Ideal for casual or semi-formal occasions, it pairs effortlessly with shorts or linen trousers, providing a classic and stylish look.<br></p>', '1718561115_39afd1de7c5f858934ed.jpeg', 1, '2024-06-16 13:05:15', '2024-06-21 13:24:44'),
(18, 1, 'Studio', 'Navy Blue Polo Shirt', 2000000, 0, '<p>A navy blue polo shirt is a classic and versatile piece of casual attire. It features a collared neckline with buttons, short sleeves, and is typically made from breathable cotton or cotton-blend fabric. The deep navy color offers a timeless and sophisticated look that pairs well with jeans, chinos, or shorts. Perfect for both casual outings and semi-dressy occasions, a navy blue polo shirt combines comfort with effortless style for a smart yet relaxed appearance.<br></p>', '1718561151_10fe7ac86ef0b345aad3.jpeg', 1, '2024-06-16 13:05:51', '2024-06-21 13:23:56'),
(19, 1, 'Studio', 'Long Black Sweater ', 550000, 0, '<p>A long black sweater is a versatile and cozy wardrobe staple, ideal for cooler weather. It typically features a longer length that extends below the hips or to mid-thigh, providing warmth and comfort. Made from soft materials like wool, cashmere, or acrylic, it offers a relaxed fit and can be styled in various ways. Perfect for layering over leggings or jeans, a long black sweater adds a stylish and effortless touch to casual or semi-formal outfits.<br></p>', '1718561188_fd32b2302cfe25007452.jpeg', 1, '2024-06-16 13:06:28', '2024-06-21 13:23:28'),
(20, 1, 'Studio', 'Summer Shirt ', 765000, 0, '<p>A summer shirt is designed to keep you cool and comfortable during warm weather. Typically made from lightweight and breathable fabrics like cotton or linen, it offers a relaxed fit and often features short sleeves. These shirts come in various styles including button-downs, polos, or t-shirts, in a range of colors and patterns suitable for casual outings or beach days. Perfect for staying stylish and cool under the sun, a summer shirt is a essential piece for your seasonal wardrobe.<br></p>', '1718561233_b3508ce7fa1eaf7cc366.jpeg', 1, '2024-06-16 13:07:13', '2024-06-21 13:22:57'),
(21, 1, 'Studio', 'Orange Cardigan', 325000, 0, '<p>An orange cardigan is a vibrant and versatile addition to any wardrobe. This cozy garment typically features a button-up front and is crafted from soft, comfortable materials like cotton or wool. The bold orange color adds a pop of brightness to your outfit, making it suitable for both casual and semi-formal occasions. Pair it with jeans or a dress for a stylish and cozy look, perfect for layering during cooler seasons.<br></p>', '1718561285_65817ec8d82a6000095d.jpeg', 1, '2024-06-16 13:08:05', '2024-06-21 13:22:25'),
(22, 1, 'Studio', 'Orange Funky Shirt', 680000, 0, '<p>An orange funky shirt is a bold and vibrant choice that adds personality to any wardrobe. Featuring a bright orange color and unique patterns or designs, it exudes a playful and trendy vibe. Perfect for casual outings or events where you want to stand out, this shirt pairs well with jeans or shorts, making it a statement piece for those who enjoy expressive fashion.<br></p>', '1718561325_d6fc99f240bf6dd62af3.jpeg', 1, '2024-06-16 13:08:45', '2024-06-21 13:21:44'),
(23, 1, 'Studio', 'Olive Green Suit ', 2500000, 0, '<p>An olive green suit is a stylish option for men\'s formal attire. It features a tailored jacket and matching trousers in shades of olive green, offering a modern and versatile look. Suitable for both professional settings and special occasions, it pairs well with a variety of shirt and tie combinations, adding a unique touch to any wardrobe.<br></p>', '1718561373_9792a40ec6ce9cfc9359.jpeg', 1, '2024-06-16 13:09:33', '2024-06-21 13:21:00'),
(24, 1, 'Studio', 'Retro Suit', 3500000, 0, '<p>A retro suit captures the stylish essence of past decades, blending classic tailoring with vintage flair. Typically featuring unique patterns, bold colors, or distinctive lapel styles, these suits evoke nostalgia while offering a fashionable statement. Perfect for themed events, parties, or those who appreciate timeless fashion with a touch of history.<br></p>', '1718561411_46a53ac825a9bc06c324.jpeg', 1, '2024-06-16 13:10:11', '2024-06-21 13:20:20'),
(25, 1, 'Studio', 'Formal Grey Suit', 4300000, 0, '<p>A formal grey suit is a timeless and sophisticated choice for men\'s formal attire. It consists of a tailored jacket and matching trousers in shades of grey, ranging from charcoal to lighter tones. Crafted from high-quality wool or wool blends, these suits offer a refined appearance suitable for weddings, business meetings, or other formal occasions. The versatility of grey allows for easy pairing with various shirt colors and accessories, making it a staple in every gentleman\'s wardrobe.<br></p>', '1718561453_41a1479d4fdcf880bb75.jpeg', 1, '2024-06-16 13:10:53', '2024-06-21 13:19:44'),
(26, 1, 'Studio', 'Formal Blue Suit', 210000, 0, '<p>A formal blue suit is a classic and versatile choice for men\'s formal attire. It features a tailored jacket and matching trousers in shades of blue, ranging from navy to lighter hues. Typically crafted from high-quality wool or wool blends, these suits exude elegance and sophistication. Perfect for weddings, business meetings, or any formal event, a blue suit offers a timeless look that pairs well with a variety of shirts and accessories.<br></p>', '1718561493_f94f0d9fec2ebd8a91dd.jpeg', 1, '2024-06-16 13:11:33', '2024-06-21 13:19:08'),
(28, 1, 'Studio', 'Formal Beige Pants', 890000, 0, '<p>Formal beige pants are stylish and refined trousers perfect for dressy occasions. They are typically tailored from quality fabrics like wool or cotton blends, offering a polished look. Ideal for pairing with dress shirts and blazers, they create a sophisticated outfit suitable for various formal settings.<br></p>', '1718561570_bc06eae3fd571b2985de.jpeg', 1, '2024-06-16 13:12:50', '2024-06-21 13:18:32'),
(29, 1, 'Studio', 'Baggy Jeans', 570000, 0, '<p>Baggy jeans are characterized by their loose fit and relaxed silhouette, offering comfort and a laid-back style. These jeans typically feature a roomy fit through the thighs and legs, providing ease of movement. Popular in casual fashion, they often have a low-rise waist and may include distressed details or oversized pockets for added flair. Baggy jeans are perfect for those seeking a comfortable and effortlessly cool look.<br></p>', '1718561607_ba9421b981b05594936c.jpeg', 1, '2024-06-16 13:13:27', '2024-06-21 13:17:30'),
(30, 1, 'Studio', 'Cargo Pants', 700000, 0, '<p>Cargo pants are practical and stylish trousers known for their multiple pockets and rugged appearance. Originally designed for military use, they offer functionality with ample storage for various items. Modern styles often feature a relaxed fit with straight or tapered legs, suitable for casual and outdoor activities. Cargo pants are ideal for those who value utility and comfort without sacrificing style.<br></p>', '1718561768_7a2a5ec80ead989b7a88.jpeg', 1, '2024-06-16 13:16:08', '2024-06-21 13:17:02'),
(31, 1, 'Studio', 'Dark Grey Sweater', 350000, 0, '<p>A dark grey sweater is a versatile wardrobe staple, blending classic style with practicality. Its neutral color complements various outfits, making it easy to pair with jeans or dress pants. Perfect for staying warm and stylish in cooler weather, it\'s an essential piece for casual or semi-formal occasions.<br></p>', '1718561843_e9ef1ea4191e444b6107.jpeg', 1, '2024-06-16 13:17:23', '2024-06-21 13:16:36'),
(32, 1, 'Studio', 'Vintage Formal Suit', 4500000, 0, '<div class=\"flex flex-grow flex-col max-w-full\"><div data-message-author-role=\"assistant\" data-message-id=\"d2ceea91-85ea-4fbe-8393-ee660d93df89\" dir=\"auto\" class=\"min-h-[20px] text-message flex flex-col items-start whitespace-pre-wrap break-words [.text-message+&amp;]:mt-5 juice:w-full juice:items-end overflow-x-auto gap-2\"><div class=\"flex w-full flex-col gap-1 juice:empty:hidden juice:first:pt-[3px]\"><div class=\"markdown prose w-full break-words dark:prose-invert dark\"><p>A vintage formal suit for men captures timeless elegance with classic styles from past decades. These suits feature tailored jackets and matching trousers, often crafted from wool or tweed. They showcase peak or notch lapels and may include subtle patterns, offering a sophisticated look perfect for special occasions or themed events.<br></p></div></div></div></div>', '1718561906_44fd361fcab78e4bd7a4.jpeg', 1, '2024-06-16 13:18:26', '2024-06-21 13:16:00'),
(33, 2, 'Studio', 'Leather Jacket', 350000, 0, '<p>A leather jacket is a timeless and iconic piece of outerwear known for its durability, versatility, and stylish appeal. Typically crafted from genuine or faux leather, these jackets come in various styles such as moto, bomber, or biker. They offer a rugged yet sophisticated look that can be dressed up or down, making them suitable for both casual wear and more formal occasions. A leather jacket is a staple in any wardrobe, adding a touch of edge and elegance to your outfit year-round.<br></p>', '1718567001_d0c948ed93b952ad5f3a.jpeg', 1, '2024-06-16 14:43:21', '2024-06-21 13:15:10'),
(34, 2, 'Studio', 'Pink Short Pants', 240000, 0, '<p>Pink short pants offer a playful and vibrant option for warm weather. These shorts, typically crafted from lightweight and breathable fabrics, combine comfort with a cheerful pop of color. Perfect for casual outings, beach days, or lounging at home, pink short pants add a fun and stylish element to your summer wardrobe.<br></p>', '1718567066_9d613c235fe438740779.jpeg', 1, '2024-06-16 14:44:26', '2024-06-21 13:14:37'),
(35, 2, 'Studio', 'Grey Women Top', 145000, 0, '<p>A grey women\'s top is a versatile wardrobe essential that combines understated elegance with practicality. This neutral color complements various skin tones and can be effortlessly paired with different bottoms. Whether it\'s a simple tee, blouse, or sweater, a grey women\'s top offers a timeless and stylish option suitable for casual outings or layered looks.<br></p>', '1718567132_775692e3cde98060530b.jpeg', 1, '2024-06-16 14:45:32', '2024-06-21 13:14:04'),
(36, 2, 'Studio', 'Long Silk Skirt', 250000, 0, '<p>A long silk skirt embodies luxurious elegance with its flowing silhouette and smooth texture. Crafted from high-quality silk, this skirt offers comfort and a sophisticated appearance suitable for various occasions. Ideal for those seeking a blend of comfort and refined style, whether for formal events or everyday elegance.<br></p>', '1718567176_0d3a0c472dbace2fbf6c.jpeg', 1, '2024-06-16 14:46:16', '2024-06-21 13:13:20'),
(37, 2, 'Studio', 'Polkadot Mini Dress', 500000, 0, '<div class=\"flex flex-grow flex-col max-w-full\"><div data-message-author-role=\"assistant\" data-message-id=\"54019e65-9230-4b04-b53e-4886a0c7565f\" dir=\"auto\" class=\"min-h-[20px] text-message flex flex-col items-start whitespace-pre-wrap break-words [.text-message+&amp;]:mt-5 juice:w-full juice:items-end overflow-x-auto gap-2\"><div class=\"flex w-full flex-col gap-1 juice:empty:hidden juice:first:pt-[3px]\"><div class=\"markdown prose w-full break-words dark:prose-invert dark\"><p>A polka dot mini dress is a playful and timeless choice that combines retro charm with modern style. Featuring classic polka dot patterns on a mini-length silhouette, this dress offers a fun and flirty look. Perfect for casual outings or parties, it adds a touch of whimsy and vintage flair to your wardrobe.<br></p></div></div></div></div>', '1718567221_f6e6b5dec734ef09dfb8.jpeg', 1, '2024-06-16 14:47:01', '2024-06-21 13:09:31'),
(38, 2, 'Studio', 'Long Floral Dress', 780000, 0, '<p>A long floral dress combines elegant length with vibrant floral patterns, offering a stylish and feminine look. Perfect for various occasions, it exudes a relaxed yet sophisticated charm, ideal for both casual and semi-formal settings.<br></p>', '1718567260_7c4bb8851e8484bcc08c.jpeg', 1, '2024-06-16 14:47:40', '2024-06-21 13:08:54'),
(39, 2, 'Studio', 'Wedding Guest Dress', 600000, 0, '<div class=\"flex flex-grow flex-col max-w-full\"><div data-message-author-role=\"assistant\" data-message-id=\"63c1fcd5-4130-484d-8ed4-c36de39f0531\" dir=\"auto\" class=\"min-h-[20px] text-message flex flex-col items-start whitespace-pre-wrap break-words [.text-message+&amp;]:mt-5 juice:w-full juice:items-end overflow-x-auto gap-2\"><div class=\"flex w-full flex-col gap-1 juice:empty:hidden juice:first:pt-[3px]\"><div class=\"markdown prose w-full break-words dark:prose-invert dark\"><div class=\"flex flex-grow flex-col max-w-full\"><div data-message-author-role=\"assistant\" data-message-id=\"63c1fcd5-4130-484d-8ed4-c36de39f0531\" dir=\"auto\" class=\"min-h-[20px] text-message flex flex-col items-start whitespace-pre-wrap break-words [.text-message+&amp;]:mt-5 juice:w-full juice:items-end overflow-x-auto gap-2\"><div class=\"flex w-full flex-col gap-1 juice:empty:hidden juice:first:pt-[3px]\"><div class=\"markdown prose w-full break-words dark:prose-invert dark\"><p>A wedding guest dress is a stylish and appropriate choice for attending weddings. It typically features elegant designs and flattering cuts suitable for formal or semi-formal settings. Ideal for celebrating love and special occasions with grace and sophistication.<br></p></div></div></div></div></div></div></div></div>', '1718567297_01cc19f821b5d8928c47.jpeg', 1, '2024-06-16 14:48:17', '2024-06-21 13:08:14'),
(40, 2, 'Studio', 'Black Floral Dress', 950000, 0, '<div class=\"flex flex-grow flex-col max-w-full\"><div data-message-author-role=\"assistant\" data-message-id=\"a0208a90-df4a-40c7-a7e5-773334d6b943\" dir=\"auto\" class=\"min-h-[20px] text-message flex flex-col items-start whitespace-pre-wrap break-words [.text-message+&amp;]:mt-5 juice:w-full juice:items-end overflow-x-auto gap-2\"><div class=\"flex w-full flex-col gap-1 juice:empty:hidden juice:first:pt-[3px]\"><div class=\"markdown prose w-full break-words dark:prose-invert dark\"><p>A black floral dress combines the classic elegance of black with the playful charm of floral patterns. It\'s a versatile and stylish choice for various occasions, blending sophistication with a touch of femininity. Perfect for effortlessly chic looks, whether for daytime outings or evening events.<br></p></div></div></div></div>', '1718567491_87e1013022db15802374.jpeg', 1, '2024-06-16 14:51:31', '2024-06-21 13:07:32'),
(41, 2, 'Studio', 'Black Top', 310000, 0, '<p>A black top is a versatile wardrobe staple that offers timeless elegance and easy pairing with various bottoms. It provides a classic and sophisticated look suitable for both casual and formal occasions. The simplicity of its design allows for effortless styling, making it a must-have essential in any woman\'s closet.<br></p>', '1718567530_863c6b67c78ce4382566.jpeg', 1, '2024-06-16 14:52:10', '2024-06-21 13:06:26'),
(42, 2, 'Studio', 'Boho Floral Top', 267000, 0, '<p>A boho floral top blends the free-spirited essence of bohemian style with the charming appeal of floral patterns. This top features relaxed cuts, flowing fabrics, and vibrant floral prints, capturing a casual yet chic aesthetic. Perfect for pairing with jeans or skirts, it adds a touch of bohemian flair to any outfit, making it ideal for relaxed gatherings or everyday wear.<br></p>', '1718567584_ede909c5944bb4c75389.jpeg', 1, '2024-06-16 14:53:04', '2024-06-21 13:05:41'),
(43, 2, 'Studio', 'Vintage Top', 150000, 0, '<p>A vintage top embodies the nostalgic charm and timeless style of past eras, offering a unique and often one-of-a-kind piece for fashion enthusiasts. These tops are characterized by their retro designs, which may include intricate patterns, classic cuts, or distinctive fabrics that evoke a sense of nostalgia. Whether it\'s a floral blouse from the 1960s or a graphic tee reminiscent of the 1980s, vintage tops bring a touch of history and individuality to any wardrobe. They are perfect for those who appreciate sustainable fashion and wish to add a piece of history to their style repertoire.<br></p>', '1718567633_b64fea06182778a94de5.jpeg', 1, '2024-06-16 14:53:54', '2024-06-21 13:04:49'),
(44, 2, 'Studio', 'Long Denim Skirt', 350000, 0, '<p>Embrace timeless style and casual elegance with our Long Denim Skirt for adult women. Crafted from premium denim, this skirt combines the durability of jeans with the feminine silhouette of a skirt, offering comfort and versatility for everyday wear.<br></p>', '1718567673_4fa1eb9f0ac90fdffb56.jpeg', 1, '2024-06-16 14:54:33', '2024-06-21 13:04:10'),
(45, 2, 'Studio', 'Floral Jeans', 540000, 0, '<p>Floral jeans are a fashionable choice that combines the classic appeal of denim with vibrant floral patterns. They add a playful and colorful touch to your wardrobe, suitable for various casual and semi-formal occasions. Ideal for those who want to make a stylish statement with their everyday attire.<br></p>', '1718567712_132fc1257afa99fcdc4f.jpeg', 1, '2024-06-16 14:55:12', '2024-06-21 13:01:34'),
(46, 2, 'Studio', 'Formal Pants', 800000, 0, '<p>Formal pants are essential attire for professional and sophisticated occasions. Designed to convey elegance and professionalism, these pants typically feature tailored cuts and high-quality fabrics such as wool, polyester blends, or cotton. They come in various styles including straight-leg, slim-fit, or wide-leg, and are often paired with dress shirts, blazers, or suit jackets. Formal pants are versatile, suitable for business meetings, formal events, or office wear, ensuring a polished and distinguished appearance. Ideal for individuals who prioritize classic style and professional attire.<br></p>', '1718567748_c709304075eef7feef25.jpeg', 1, '2024-06-16 14:55:48', '2024-06-21 13:01:13'),
(47, 2, 'Studio', 'Brown Leather Pants', 770000, 0, '<p>Brown leather pants offer a classic and stylish option for those seeking a versatile and durable wardrobe staple. Combining the timeless appeal of leather with the earthy tones of brown, these pants exude sophistication and rugged charm. Ideal for both casual and semi-formal settings, they provide comfort and durability while enhancing any outfit with a touch of luxury and texture. Perfect for those who appreciate quality craftsmanship and timeless fashion.<br></p>', '1718567784_141121e6de524a23fc89.jpeg', 1, '2024-06-16 14:56:24', '2024-06-21 12:46:37'),
(48, 2, 'Studio', 'Red Leather Jacket', 2000000, 0, '<p>A red leather jacket is a vibrant and stylish choice for adding a pop of color to your wardrobe. It\'s versatile, offering a bold statement piece that pairs well with both casual and dressy outfits. Perfect for those looking to stand out with confidence and style.<br></p>', '1718567827_49caccbdff5f349d611b.jpeg', 1, '2024-06-16 14:57:08', '2024-06-21 12:45:48'),
(49, 2, 'Studio', 'Elegance Silk Dress', 3500000, 0, '<p>Step into sophistication and allure with the Midnight Elegance Silk Evening Dress, a luxurious statement piece designed to captivate attention at any formal occasion. This dress combines exquisite craftsmanship with timeless elegance for a memorable evening.<br></p>', '1718567876_85b7244e386a48b3772e.jpeg', 1, '2024-06-16 14:57:56', '2024-06-21 12:44:49'),
(50, 2, 'Studio', 'Off Shoulder Top', 930000, 0, '<p>Elevate your wardrobe with the Elegant Breeze Off-Shoulder Top, a sophisticated and stylish addition designed to accentuate your femininity and elegance. Perfect for both casual outings and special occasions, this top combines chic design with comfort.<br></p>', '1718567928_0ed1b4184ac4713e55cf.jpeg', 1, '2024-06-16 14:58:48', '2024-06-21 12:43:47'),
(51, 3, 'Studio', 'Pink Summer Dress', 500000, 0, '<p>Dress your little princess in the Summer Bliss Toddler Girl Pink Dress, a delightful ensemble that combines elegance with comfort for sunny days. This dress is designed to keep her cool and stylish while enjoying outdoor adventures or special occasions.<br></p>', '1718568763_0696e2d776e68e90c944.jpeg', 1, '2024-06-16 15:12:43', '2024-06-21 12:41:39'),
(52, 3, 'Studio', 'Hoodie for Kids', 200000, 0, '<p>Equip your young adventurer with the Adventure Seeker Kids\' Hoodie, a versatile and comfortable essential for cool weather. This hoodie blends practicality with style, perfect for outdoor activities, playdates, or casual outings.<br></p>', '1718568800_85db573a970e1585ec2f.jpeg', 1, '2024-06-16 15:13:20', '2024-06-21 12:41:03'),
(53, 3, 'Studio', 'All Set Clothes', 420000, 0, '<p>Dress your little princess in adorable style with the Playful Ensemble Toddler Girl All Set, a charming collection that combines comfort with fashionable flair. This set provides everything she needs to look cute and feel comfortable throughout the day.<br></p>', '1718568839_6966aa4a3f84bf5747f8.jpeg', 1, '2024-06-16 15:13:59', '2024-06-21 12:39:59'),
(54, 3, 'Studio', 'Long Striped Shirt', 230000, 0, '<p>Elevate your little boy’s wardrobe with the Stripes &amp; Style Toddler Long Striped Shirt, a versatile and trendy addition that combines comfort with modern flair. This shirt is designed to keep him looking sharp and feeling comfortable for any occasion.<br></p>', '1718568875_b835da44115348ad695d.jpeg', 1, '2024-06-16 15:14:35', '2024-06-21 12:39:23'),
(55, 3, 'Studio', 'Scenery Sweater', 179000, 0, '<p>Embark on a journey of style and comfort with the Adventure Scenery Toddler Sweater, an imaginative addition to any young explorer’s wardrobe. This sweater captures the essence of outdoor adventure and natural beauty, making it perfect for boys who love to explore and dream.<br></p>', '1718568944_00fe712f378fcb269859.jpeg', 1, '2024-06-16 15:15:44', '2024-06-21 12:38:55'),
(56, 3, 'Studio', 'Artsy Jumper', 376000, 0, '<p>Inspire your little artist with the Creative Canvas Toddler Jumper, a unique and playful addition to his wardrobe. This artsy jumper blends creativity with comfort, making it perfect for imaginative play and everyday adventures.<br></p>', '1718568985_e0378d62b6487e58b17b.jpeg', 1, '2024-06-16 15:16:25', '2024-06-21 12:38:17'),
(57, 3, 'Studio', 'Pink Winter Jacket', 700000, 0, '<p>Prepare your little princess for chilly adventures with the Frosty Pink Winter Wonderland Jacket, a stylish and cozy outerwear essential. This jacket combines warmth, functionality, and adorable style, ensuring your girl stays snug and fashionable during the cold season.<br></p>', '1718569029_c507a46d0aa85dc9c2a6.jpeg', 1, '2024-06-16 15:17:09', '2024-06-21 12:37:33'),
(58, 3, 'Studio', 'Flower Sweater', 650000, 0, '<p>Wrap your little princess in cozy charm with the Blooming Blossoms Toddler Flower Sweater, a delightful addition to her wardrobe. This sweater combines warmth with feminine elegance, featuring a lovely floral design that adds a touch of whimsy to any outfit.<br></p>', '1718569080_136f7e5b33c53a086421.jpeg', 1, '2024-06-16 15:18:00', '2024-06-22 22:12:37'),
(59, 3, 'Studio', 'Brooklyn Shirt', 125000, 0, '<p>Inspire your little explorer with the Brooklyn Adventure Toddler Shirt, a stylish and versatile addition to his wardrobe. Designed for comfort and coolness, this shirt embodies urban flair while offering practicality for everyday adventures.<br></p>', '1718569128_bf9c3e4d6e72573d8ce4.jpeg', 1, '2024-06-16 15:18:48', '2024-06-21 12:36:05'),
(60, 3, 'Studio', 'Fun Vibes Jumper', 1500000, 0, '<p>Add a burst of fun and energy to your toddler boy’s wardrobe with the Fun Vibes Toddler Colorful Jumper. This vibrant and playful jumper is designed to bring joy and excitement to everyday wear, making it a favorite for both parents and little adventurers.<br></p>', '1718569172_38b1e51cb34c1b78d875.jpeg', 1, '2024-06-16 15:19:32', '2024-06-21 12:35:24'),
(61, 3, 'Studio', 'Poppy Sweater', 880000, 0, '<p>Wrap your little one in warmth and style with the Poppy Fields Toddler Sweater, a charming addition to any toddler’s wardrobe. This cozy sweater not only keeps your child snug on cooler days but also adds a cheerful touch with its vibrant colors and playful design.<br></p>', '1718569210_d13a495034b6d9552433.jpeg', 1, '2024-06-16 15:20:11', '2024-06-21 12:34:11'),
(63, 3, 'Studio', 'Starry Sky Dress', 1000000, 0, '<p>Dress your little princess in understated elegance with the Starry Sky Toddler Grey Dress, a charming addition to her wardrobe. This dress combines simplicity with sophistication, perfect for special occasions, family gatherings, or simply adding a touch of grace to everyday moments.<br></p>', '1718569300_7478cc99d55b63b26efc.jpeg', 1, '2024-06-16 15:21:40', '2024-06-21 12:33:32'),
(64, 3, 'Studio', 'Jumper Jeans', 1400000, 0, '<p>Prepare your little explorer for fun-filled adventures with the Adventure Ready Toddler Jumper &amp; Jeans Set. This stylish yet practical ensemble combines comfort with rugged durability, perfect for active toddlers who love to play and explore outdoors.<br></p>', '1718569355_f34b0b47cd07540159f5.jpeg', 1, '2024-06-16 15:22:36', '2024-06-21 12:32:18'),
(65, 3, 'Studio', 'Boho Shirt', 670000, 0, '<p>Infuse your toddler girl’s wardrobe with a touch of free-spirited charm with the Boho Blossom Toddler Shirt. This delightful shirt combines bohemian style with comfort, creating a versatile piece that\'s perfect for playdates, picnics, or any casual outing.<br></p>', '1718569399_a6b812a77003c338185c.jpeg', 1, '2024-06-16 15:23:19', '2024-06-21 12:31:36'),
(69, 3, 'Studio', 'Cozy Brown Jumper', 1000000, 0, '<p>Wrap your little one in warmth and comfort with the Snuggly Bear Brown Jumper, a perfect addition to any toddler boy’s wardrobe. This cozy jumper is designed to provide maximum comfort and style, making it ideal for chilly days, family gatherings, or casual outings.<br></p>', '1718569704_76da158984f8c1be3dde.jpeg', 1, '2024-06-16 15:28:24', '2024-06-21 12:31:01'),
(70, 3, 'Studio', 'Full Set Clothes', 870000, 0, '<p>Dress your little princess in the enchanting Little Emerald Ensemble, a complete set of stylish and comfortable clothes perfect for any occasion. This coordinated outfit combines elegance and practicality, ensuring your toddler looks adorable while staying cozy and free to play.<br></p>', '1718569743_50db8f8bc1116996aacb.jpeg', 1, '2024-06-16 15:29:03', '2024-06-21 12:29:56'),
(71, 3, 'Studio', 'Rainbow Cardigan', 1900000, 0, '<p>Introduce a splash of color to your little one\'s wardrobe with the Rainbow Adventure Cardigan. This cozy, vibrant cardigan is designed to keep your toddler warm while adding a fun and cheerful touch to any outfit. Perfect for playdates, outings, or simply brightening up a cloudy day, this cardigan is a must-have for every young explorer.<br></p>', '1718569793_1bcc04030a3202c779c2.jpeg', 1, '2024-06-16 15:29:53', '2024-06-21 12:29:10'),
(72, 3, 'Studio', 'Garden Party Dress', 2500000, 0, '<p>Step into a world of whimsy and wonder with the Enchanted Garden Party Dress, a delightful addition to any young girl’s wardrobe. This charming dress is perfect for birthdays, family gatherings, or any special occasion that calls for a touch of magic and elegance.</p>', '1718569826_8be56b41bdc03ddaec14.jpeg', 1, '2024-06-16 15:30:26', '2024-06-22 22:08:48');

-- --------------------------------------------------------

--
-- Table structure for table `paket_category`
--

CREATE TABLE `paket_category` (
  `id` int(5) UNSIGNED NOT NULL,
  `category` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `paket_category`
--

INSERT INTO `paket_category` (`id`, `category`, `image`) VALUES
(1, 'Men', 'studio.png'),
(2, 'Women', 'kameradanhandphone.png'),
(3, 'Kids', 'cetakfoto.png');

-- --------------------------------------------------------

--
-- Table structure for table `portofolio`
--

CREATE TABLE `portofolio` (
  `id` int(5) UNSIGNED NOT NULL,
  `portofolio` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`portofolio`)),
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `portofolio`
--

INSERT INTO `portofolio` (`id`, `portofolio`, `is_active`, `created_at`, `updated_at`) VALUES
(2, '[\"1692016842_ab0b16af857a022a34f6.jpg\"]', 1, '2023-08-14 07:40:42', '2023-08-14 07:40:42'),
(3, '[\"1692016853_a46776c1349e51c7ba64.jpg\"]', 1, '2023-08-14 07:40:53', '2023-08-14 07:40:53'),
(4, '[\"1692016860_a561cbfb9a781d8b1457.jpg\"]', 1, '2023-08-14 07:41:00', '2023-08-14 07:41:00'),
(5, '[\"1692016866_0ad1f46ea03ffbd1a04e.jpg\"]', 1, '2023-08-14 07:41:06', '2023-08-14 07:41:06'),
(6, '[\"1692016871_984b93ef544e4c5f549c.jpg\"]', 1, '2023-08-14 07:41:11', '2023-08-14 07:41:11'),
(7, '[\"1692016876_58bae388e52681182fe1.jpg\"]', 1, '2023-08-14 07:41:16', '2023-08-14 07:41:16'),
(8, '[\"1718563536_2fc38bca338d6e1e3f6c.jpg\",\"1718579336_efc20544a22522fe07f8.jpeg\"]', 1, '2024-06-16 13:45:36', '2024-06-16 18:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(5) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telepon` varchar(100) DEFAULT NULL,
  `paket` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`paket`)),
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `paid_at` datetime DEFAULT NULL,
  `paid_by` varchar(100) DEFAULT NULL,
  `paid_phone` varchar(100) DEFAULT NULL,
  `paid_email` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` char(255) DEFAULT '00:00',
  `foto_ktp` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `jenis_pengiriman` varchar(255) DEFAULT NULL,
  `ongkir` float DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `bukti_transfer` longtext DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `kode_transaksi`, `nama`, `email`, `telepon`, `paket`, `is_paid`, `paid_at`, `paid_by`, `paid_phone`, `paid_email`, `tanggal`, `jam`, `foto_ktp`, `address`, `jenis_pengiriman`, `ongkir`, `subtotal`, `total`, `bukti_transfer`, `created_at`, `updated_at`) VALUES
(31, 'TZ00001', 'Allison Hubert', 'allisonhubert@gmail.com', '', '[{\"id_paket\":\"32\",\"qty\":1},{\"id_paket\":\"49\",\"qty\":1},{\"id_paket\":\"50\",\"qty\":1}]', 1, '2024-06-17 22:14:07', NULL, NULL, NULL, NULL, '00:00', NULL, 'allison123', 'sicepat_best', 27000, 8930000, 8957000, './assets/upload/WhatsApp Image 2024-06-18 at 10.12.26 AM.jpeg', '2024-06-17 22:11:27', '2024-06-17 22:14:07'),
(32, 'TZ00002', 'Lando Norris', 'landonorris@gmail.com', '', '[{\"id_paket\":\"31\",\"qty\":1},{\"id_paket\":\"14\",\"qty\":1}]', 1, '2024-06-17 22:18:18', NULL, NULL, NULL, NULL, '00:00', NULL, 'Monte Carlo, Monaco', 'sicepat_reg', 23000, 1550000, 1573000, './assets/upload/WhatsApp Image 2024-06-18 at 10.12.26 AM.jpeg', '2024-06-17 22:17:16', '2024-06-17 22:18:18'),
(33, 'TZ00003', 'Carlos Sainz', 'carlossainz55@gmail.com', '', '[{\"id_paket\":\"58\",\"qty\":1},{\"id_paket\":\"60\",\"qty\":1},{\"id_paket\":\"19\",\"qty\":1}]', 1, '2024-06-17 22:22:15', NULL, NULL, NULL, NULL, '00:00', NULL, 'Marabella, Spain', 'sicepat_best', 27000, 2700000, 2727000, './assets/upload/WhatsApp Image 2024-06-18 at 10.12.26 AM.jpeg', '2024-06-17 22:21:23', '2024-06-17 22:22:15'),
(35, 'TZ00005', 'Alexandra Mleux', 'alexandramleux@gmail.com', '', '[{\"id_paket\":\"37\",\"qty\":1},{\"id_paket\":\"49\",\"qty\":1}]', 1, '2024-06-22 21:51:14', NULL, NULL, NULL, NULL, '00:00', NULL, 'Monaco', 'sicepat_best', 27000, 4000000, 4027000, './assets/upload/WhatsApp Image 2024-06-18 at 10.12.26 AM.jpeg', '2024-06-22 21:47:11', '2024-06-22 21:51:14'),
(36, 'TZ00006', 'Oscar Piastri', 'oscarpiastri@gmail.com', '', '[{\"id_paket\":\"18\",\"qty\":1},{\"id_paket\":\"51\",\"qty\":1}]', 1, '2024-06-22 22:08:07', NULL, NULL, NULL, NULL, '00:00', NULL, 'London', 'sicepat_best', 27000, 2500000, 2527000, './assets/upload/WhatsApp Image 2024-06-18 at 10.12.26 AM.jpeg', '2024-06-22 22:00:43', '2024-06-22 22:08:07');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_backup`
--

CREATE TABLE `transaksi_backup` (
  `id` int(5) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telepon` varchar(100) DEFAULT NULL,
  `paket` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`paket`)),
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `paid_at` datetime DEFAULT NULL,
  `paid_by` varchar(100) DEFAULT NULL,
  `paid_phone` varchar(100) DEFAULT NULL,
  `paid_email` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` char(255) DEFAULT '00:00',
  `foto_ktp` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `jenis_pengiriman` varchar(255) DEFAULT NULL,
  `ongkir` float DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `bukti_transfer` longtext DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `transaksi_backup`
--

INSERT INTO `transaksi_backup` (`id`, `kode_transaksi`, `nama`, `email`, `telepon`, `paket`, `is_paid`, `paid_at`, `paid_by`, `paid_phone`, `paid_email`, `tanggal`, `jam`, `foto_ktp`, `address`, `jenis_pengiriman`, `ongkir`, `subtotal`, `total`, `bukti_transfer`, `created_at`, `updated_at`) VALUES
(2, 'TR00002', 'Susanti', 'savetimestudio@mail.com', '081373642782', '[{\"id_paket\":\"8\",\"qty\":\"1\"}]', 0, NULL, NULL, NULL, NULL, '2023-08-30', '09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-03 10:14:45', '2023-08-03 10:14:45'),
(19, 'TR00019', 'Salmanan', 'salmanan@yahoo.co.id', '02112341234', '[{\"id_paket\":\"11\",\"qty\":\"1\"}]', 1, NULL, NULL, NULL, NULL, '2023-08-30', '09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 07:49:10', '2023-08-14 07:49:10'),
(20, 'TR00004', 'Andre', 'andre12@gmail.com', '082212341234', '[{\"id_paket\":\"12\",\"qty\":\"1\"}]', 1, NULL, 'Midtrans', NULL, NULL, '2023-08-23', '09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 11:09:49', '2023-08-14 11:09:49'),
(21, 'TR00005', 'Yudi', 'yudi@gmail.com', '082212340000', '[{\"id_paket\":\"7\",\"qty\":\"1\"}]', 1, NULL, 'Midtrans', NULL, NULL, '2023-08-23', '11:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 11:29:12', '2023-08-14 11:29:12'),
(22, 'TR00006', 'Andre', 'yudi@gmail.com', '0210000001', '[{\"id_paket\":\"11\",\"qty\":\"1\"}]', 0, NULL, NULL, NULL, NULL, '2023-08-31', '10:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-29 14:20:42', '2023-08-29 14:20:42'),
(23, 'TX00007', 'admin', 'myudha317@gmail.com', '0210000001', '[{\"id_paket\":\"4\",\"qty\":\"1\"}]', 0, NULL, NULL, NULL, NULL, '2023-09-13', '09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-05 04:33:33', '2023-09-05 04:33:33'),
(24, 'TX00008', 'admin', 'myudha317@gmail.com', '0210000001', '[{\"id_paket\":\"4\",\"qty\":\"1\"}]', 0, NULL, NULL, NULL, NULL, '2023-09-13', '09:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-05 04:34:46', '2023-09-05 04:34:46'),
(25, 'TX00009', 'admin', 'myudha317@gmail.com', '0210000001', '[{\"id_paket\":\"4\",\"qty\":\"1\"}]', 0, NULL, NULL, NULL, NULL, '2023-09-13', '09:00', '__gotou_hitori_bocchi_the_rock_drawn_by_higuma29__sample-0078907fd7c46d46f3e9cf0e65186618-20230905043507.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-05 04:35:07', '2023-09-05 04:35:07'),
(27, 'TZ00009', 'Yudha', 'myudha3150@gmail.com', '', '[{\"id_paket\":\"12\",\"qty\":1},{\"id_paket\":\"7\",\"qty\":1},{\"id_paket\":\"2\",\"qty\":1},{\"id_paket\":\"11\",\"qty\":1}]', 0, NULL, NULL, NULL, NULL, NULL, '00:00', NULL, 'Jalan Apel Raya, Depok', 'jne_reg', 15000, 9700000, 9715000, './assets/upload/EM-TI175G_2_.jpg', '2024-06-13 03:13:48', '2024-06-13 03:46:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `img` int(11) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `img`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$j0evWL.bZcwT1aMW/5nybe8dI7aFev1jr33GPcyoTbT8WSl7o9sY6', 'admin@admin.com', '74c81099d2e72d091e58', '$2y$10$eh.3aA9YvB7fSeb7btwCOuDPhJ8mAIVfAkhw.TkJf9UXrQvsxRZse', NULL, NULL, NULL, NULL, NULL, 1268889823, 1718577526, 0, 'Admin', 'istrator', 'ADMIN', '0', 1),
(2, '::1', 'lunafrostshop@gmail.com', '$2y$12$Bp0R3./oProHEDT6T1hUieMQ1KbHC.AM/pwx3CIZWlg1xmzzWsc5y', 'lunafrostshop@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1718577606, 1719291575, 1, 'Luna', 'Frost', 'Luna Frost Shop', '17748093211', 1),
(3, '::1', 'allisonhubert@gmail.com', '$2y$10$P8MoNOXhVI98AH5jZ03RheEdMLu7n7K9AUxOfTMa1nR.y9bCs7Aue', 'allisonhubert@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1718577844, 1718680108, 1, 'Allison', 'Hubert', '', '0812345678910', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(5, 3, 2),
(6, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `id` int(5) UNSIGNED NOT NULL,
  `ip` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `hits` int(11) NOT NULL,
  `online` varchar(25) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`id`, `ip`, `date`, `hits`, `online`, `time`) VALUES
(1, '::1', '2023-08-05', 2, '1691241010', '2023-08-05 08:09:37'),
(2, '::1', '2023-08-12', 23, '1691820958', '2023-08-12 01:05:54'),
(3, '::1', '2023-08-14', 507, '1692030552', '2023-08-14 00:44:24'),
(4, '::1', '2023-08-17', 162, '1692300642', '2023-08-17 13:18:02'),
(5, '::1', '2023-08-29', 32, '1693336842', '2023-08-29 13:36:32'),
(6, '::1', '2023-08-30', 7, '1693383175', '2023-08-30 03:07:21'),
(7, '::1', '2023-09-05', 68, '1693934383', '2023-09-05 03:44:57'),
(8, '::1', '2024-06-12', 44, '1718254784', '2024-06-12 22:58:18'),
(9, '::1', '2024-06-13', 399, '1718270194', '2024-06-13 00:00:04'),
(10, '::1', '2024-06-16', 179, '1718579377', '2024-06-16 12:51:38'),
(11, '::1', '2024-06-17', 292, '1718680985', '2024-06-17 07:33:59'),
(12, '::1', '2024-06-21', 205, '1718996083', '2024-06-21 11:06:32'),
(13, '::1', '2024-06-22', 105, '1719115177', '2024-06-22 21:36:59'),
(14, '::1', '2024-06-23', 8, '1719131330', '2024-06-23 01:32:50'),
(15, '::1', '2024-06-24', 68, '1719291526', '2024-06-24 22:22:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`biodata`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paket_category_id_foreign` (`category_id`);

--
-- Indexes for table `paket_category`
--
ALTER TABLE `paket_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portofolio`
--
ALTER TABLE `portofolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_transaksi` (`kode_transaksi`);

--
-- Indexes for table `transaksi_backup`
--
ALTER TABLE `transaksi_backup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_transaksi` (`kode_transaksi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `remember_selector` (`remember_selector`),
  ADD KEY `users_img_foreign` (`img`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_groups_user_id_foreign` (`user_id`),
  ADD KEY `users_groups_group_id_foreign` (`group_id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `paket_category`
--
ALTER TABLE `paket_category`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `portofolio`
--
ALTER TABLE `portofolio`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `transaksi_backup`
--
ALTER TABLE `transaksi_backup`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `paket`
--
ALTER TABLE `paket`
  ADD CONSTRAINT `paket_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `paket_category` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_img_foreign` FOREIGN KEY (`img`) REFERENCES `image` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `users_groups_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `users_groups_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
