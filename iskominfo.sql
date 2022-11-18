-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 22, 2022 at 02:49 PM
-- Server version: 10.3.35-MariaDB-log-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uzindoco_diskominfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `slug`, `name`, `created_at`, `updated_at`) VALUES
(1, 'news-government', 'News Government', '2022-08-13 01:19:03', '2022-08-13 01:19:03'),
(2, 'news-technology', 'News Technology', '2022-08-13 01:19:12', '2022-08-13 01:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `informations`
--

CREATE TABLE `informations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_12_133658_create_news_table', 1),
(6, '2022_07_25_164417_create_categories_table', 2),
(7, '2022_07_26_154609_create_model_category_table', 2),
(8, '2022_07_26_163800_create_information_table', 2),
(9, '2022_07_27_024601_create_galleries_table', 2),
(10, '2022_07_27_030133_create_documents_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_category`
--

CREATE TABLE `model_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `slug`, `title`, `image_url`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1005, 'aut-nam-explicabo-architecto-aut-est-aut', 'Aut nam explicabo architecto aut est aut.', NULL, 'Enim sunt neque sunt. Vitae illo quia consequuntur esse quam mollitia quisquam dolorum. Rerum eum quas ut. Cum suscipit expedita quam suscipit est necessitatibus. Unde cumque aspernatur suscipit numquam aliquid. Id occaecati illo esse. Est sit qui numquam qui necessitatibus nobis rerum cum. Enim impedit aut nisi beatae. Sit fugiat quis hic dignissimos. Omnis necessitatibus et iste quidem repellendus ea. Officia libero saepe itaque assumenda. Ab rerum repudiandae non optio et assumenda earum. Ut repellendus non dolorem quia. Quia et voluptas et libero est sed.', 5, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1006, 'reiciendis-nihil-alias-excepturi', 'Reiciendis nihil alias excepturi.', NULL, 'Beatae et perferendis sit sunt. Necessitatibus esse atque nihil. Quod neque est illum ab. Et culpa non quia aut hic. Rem eveniet soluta maxime aspernatur fuga et quia. Et a molestiae qui alias cum ut laboriosam. Illum hic consectetur ipsa nihil aut. Et officia est quam qui quod. Qui in corrupti quibusdam. Officia occaecati enim temporibus quae harum possimus. Laudantium dolorem qui illo eius illum ad. Necessitatibus aut unde dolor. Velit ex et temporibus saepe eveniet. Saepe omnis maiores repellendus et dolorem quaerat et.', 6, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1007, 'voluptatem-quaerat-aspernatur-nesciunt-repudiandae-voluptatum-itaque-neque', 'Voluptatem quaerat aspernatur nesciunt repudiandae voluptatum itaque neque.', NULL, 'Et consequatur sunt eos sunt id corrupti. Qui nihil voluptas voluptatem autem facilis molestias. Qui nobis minus voluptatem. Dolorem expedita placeat quia. Sapiente quia vitae aperiam officia illum quos ducimus et. Et consequuntur qui earum deserunt. Est non reiciendis deserunt. Facere ad ut voluptatem cum dolore repudiandae perspiciatis.', 7, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1008, 'perferendis-asperiores-rem-sint-sed-sapiente-omnis-quod-deleniti', 'Perferendis asperiores rem sint sed sapiente omnis quod deleniti.', NULL, 'Nam qui qui cum numquam quasi. Eos expedita possimus veritatis accusantium. Dignissimos et laboriosam vel eligendi a aut explicabo et. Iste culpa non voluptas voluptate et enim. Nihil fugiat est a alias non aspernatur. Et debitis quia qui eos quia ullam. Quis quasi quibusdam dolorem nisi in non. Repudiandae error in saepe enim voluptatem porro. Laboriosam molestias delectus illo eum magnam dolores necessitatibus. Quis similique non accusantium. Quia dolores eum quibusdam.', 8, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1009, 'aut-est-numquam-non-expedita-totam', 'Aut est numquam non expedita totam.', NULL, 'Eligendi ipsum corrupti suscipit eaque dicta. Quas tempore dolor adipisci. Sed adipisci doloremque numquam eos eos autem. Quisquam exercitationem labore voluptatem. Aut soluta fuga omnis tenetur aut eaque et. Similique id perferendis aut porro rerum voluptates ex. Ipsam odio at amet. Dolore quibusdam dolores tempore omnis provident voluptatem. Rerum exercitationem consequatur ipsam voluptas modi quasi. Doloremque sunt accusamus occaecati maxime deserunt.', 9, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1010, 'dolorum-aliquid-molestiae-vitae-cum-ab-hic', 'Dolorum aliquid molestiae vitae cum ab hic.', NULL, 'Similique qui minima facere. Culpa a deserunt enim excepturi assumenda dolores tempora. Voluptatem aut esse et autem officiis ipsam provident quas. Vel inventore et facilis quis. Et impedit hic fugit quia eos corrupti maxime dolorem. Vero aliquid aspernatur sed quis amet cupiditate voluptates. Est atque nemo consequatur in mollitia modi. Quos aut omnis ea alias et. Sit molestiae nihil commodi eum. Qui neque animi quis ad nihil itaque culpa nam. Voluptatum exercitationem sunt magnam voluptatem inventore.', 10, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1011, 'non-impedit-rerum-error-laudantium-consequatur', 'Non impedit rerum error laudantium consequatur.', NULL, 'Quisquam cumque adipisci quod soluta facere in nihil maxime. Debitis laudantium consequatur accusamus reprehenderit. Enim natus quas provident deserunt. Et earum nostrum dolores modi. Et quibusdam magni repellat tenetur quod. Repudiandae laboriosam voluptates ipsum minima consequuntur. Pariatur qui corporis et quas necessitatibus. Quo temporibus sunt deserunt odit qui quo eligendi dolorem. Quo corporis provident odit enim aliquid officia nostrum. Et nam provident sit ea et modi corrupti est. Non vel debitis quia rem labore. Soluta aut placeat dolor dolore debitis ullam iure odio. Delectus et atque tenetur possimus reprehenderit.', 11, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1012, 'voluptatem-sit-quidem-optio-consequuntur-ipsa', 'Voluptatem sit quidem optio consequuntur ipsa.', NULL, 'Nihil rerum qui tenetur hic amet dolorem. Temporibus vel eius ut tempore. Est est voluptatum natus voluptatibus. A saepe eaque quasi et sit et. Ullam assumenda in quo quia optio esse sapiente. Sapiente est et harum alias sapiente eos quaerat tempora. Voluptates nulla laborum fugit quis maiores aut qui. Ullam dolores quisquam ea vel sed minima.', 12, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1013, 'fuga-voluptatibus-optio-et-autem', 'Fuga voluptatibus optio et autem.', NULL, 'Sunt molestiae quia ipsa tempore quia. Quia laudantium harum earum rerum. Nesciunt aspernatur harum et voluptas et unde tempora. Recusandae deserunt et aliquam quis ad et illo. Excepturi hic perspiciatis aliquid adipisci odit pariatur. Non ea consequatur ipsum deleniti ipsam perferendis. Fuga minima dolor velit nesciunt. Officiis vel dolor beatae dolores veniam. Recusandae aut mollitia porro quasi. Dolorum magni inventore repellat esse.', 13, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1014, 'sit-error-voluptatem-quia-quos-et-accusantium', 'Sit error voluptatem quia quos et accusantium.', NULL, 'Eum placeat et odio. Non maiores quia dolor labore. Hic non culpa dolorem eum veniam nisi nisi. Ab consequatur qui consequatur at ullam. Nobis sed earum et labore. Non velit omnis quo quia ducimus ipsa provident. Sint maiores quas molestias qui. Ea quasi similique non enim quam itaque. Voluptas labore quisquam vel quaerat. Vel voluptatem est nemo animi.', 14, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1015, 'doloribus-ut-id-delectus-nihil-ea', 'Doloribus ut id delectus nihil ea.', NULL, 'Quis omnis aut ex nihil dolore harum. Consequatur velit voluptatem architecto cum aut repudiandae consequatur. Et fuga iusto nemo qui et consequatur. Hic porro cum expedita quam quia accusamus molestiae voluptate. Officiis quibusdam veritatis laboriosam reprehenderit sapiente aut consectetur. Nihil quia beatae culpa. Doloribus minus qui voluptate dolorem non eveniet doloremque.', 15, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1016, 'voluptatum-repellendus-delectus-nemo-provident-commodi-eos', 'Voluptatum repellendus delectus nemo provident commodi eos.', NULL, 'Enim sequi esse voluptatem molestiae dolores. Aut aut officiis eaque ea et non voluptatum alias. Distinctio porro tempore soluta dignissimos. Quibusdam alias tempora voluptates explicabo. Nam libero sint ut et nihil inventore quibusdam error. Modi id deserunt et et voluptas corporis harum. Voluptatem quia sit tenetur qui libero. Nulla illum provident ipsum sed possimus officia. Unde et magni tenetur nobis ratione soluta dignissimos. Voluptas recusandae voluptatem dolor omnis qui. Ipsa praesentium aut iusto sit deleniti adipisci. Ad corrupti explicabo rerum inventore et. Natus est sit cupiditate vel dignissimos soluta. In quae sunt deserunt labore consectetur.', 16, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1017, 'et-molestiae-suscipit-incidunt-quo-et-et', 'Et molestiae suscipit incidunt quo et et.', NULL, 'Odit omnis voluptatem et eos hic. Laboriosam nulla sed sint culpa ut. Voluptatem accusantium tempora iste libero. A explicabo provident et error delectus non non. Numquam sapiente explicabo et ab eum est quasi. Expedita distinctio illum nesciunt animi dolorem. Laborum reprehenderit repudiandae quasi odio qui. Deserunt quia maiores exercitationem mollitia sint alias. Quidem quaerat dolor et. Non quos voluptatem voluptatibus et quaerat. Ut dolor quidem repellat temporibus ducimus ut modi.', 17, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1018, 'repellat-tempore-quas-eligendi-facilis', 'Repellat tempore quas eligendi facilis.', NULL, 'Impedit ut ad non praesentium quasi labore odit laudantium. Enim omnis veritatis natus aut. Non asperiores voluptates rem reprehenderit doloremque aut. Quia quia esse laborum quia. Sed recusandae aliquid id. Reiciendis odit modi dolor dolor ab vel sequi. Quidem optio cupiditate quod unde. Nobis sunt inventore consequatur et minima corrupti. Hic maiores repellat non optio voluptatum. Aliquid quae commodi tempora est. Voluptas nulla sunt fuga voluptates et praesentium doloremque. Non voluptatem ab nemo.', 18, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1019, 'molestiae-nesciunt-necessitatibus-reprehenderit-itaque', 'Molestiae nesciunt necessitatibus reprehenderit itaque.', NULL, 'Recusandae ut velit doloremque sed porro dicta voluptates et. Culpa sunt commodi omnis sit culpa laudantium. Et voluptates et quia minus vitae deleniti eligendi. Nihil doloribus beatae libero ipsam. Sed aut voluptas temporibus aut iste architecto porro esse. Soluta temporibus nihil et laudantium dolores possimus. Architecto natus corrupti corrupti eos corrupti veniam est. Sunt sed et vitae quaerat quia. Quis culpa debitis aperiam. Quasi quia natus neque qui voluptas quidem asperiores. Qui voluptatem voluptate voluptas qui quo. Aut et expedita non ea et ut. Distinctio incidunt ut fugit doloribus est.', 19, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1020, 'porro-aliquid-officiis-dolor-ratione', 'Porro aliquid officiis dolor ratione.', NULL, 'Optio eligendi itaque et quam amet. Omnis accusamus magnam beatae veritatis ducimus. Totam ut expedita consequatur nihil qui similique. Ipsa ipsum est omnis sequi molestiae aliquam et. Facere voluptas ducimus sit necessitatibus consequatur sed itaque. Alias dolor ut magni. Vel et sit assumenda velit aliquam voluptas aut.', 20, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1021, 'laboriosam-ut-non-animi-eius', 'Laboriosam ut non animi eius.', NULL, 'Architecto eius a aliquam commodi accusamus ratione. Ea ea tempora omnis consequatur. Molestiae officiis ea ut et hic consequatur atque. A voluptatem ea eius et neque nihil a. Voluptatem dolor qui aut sint nobis. Modi voluptas voluptatibus voluptas quia repellendus doloribus atque. Quasi omnis recusandae est aut nesciunt amet. Nulla blanditiis unde enim porro non ab et. Iste officiis modi fugiat voluptatum. Laboriosam blanditiis placeat praesentium et. Ut eius pariatur vitae quisquam. In debitis quis consectetur perspiciatis iusto.', 21, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1022, 'officia-officia-numquam-molestias-nobis', 'Officia officia numquam molestias nobis.', NULL, 'Expedita totam culpa animi asperiores iusto. Autem maxime accusantium corporis exercitationem similique numquam. Sit sed aspernatur magnam dolore perspiciatis. Tempora consequatur aut velit pariatur occaecati. Molestiae excepturi et odit ipsa doloremque itaque. Totam porro accusantium placeat voluptas quisquam deleniti. Quasi non laborum facilis nisi. Aut tempora fugit ipsam numquam molestiae in. Nesciunt voluptate mollitia vero nam vitae. Est cumque laudantium ratione eum ratione. Nulla porro sed est ut. Et maxime accusantium tempore dolores.', 22, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1023, 'officiis-fuga-id-inventore', 'Officiis fuga id inventore.', NULL, 'Impedit totam dolores quas sunt enim maiores. Qui vel illo earum modi ut similique molestias. Officiis eum eos et eos. Nam fugit nihil quae asperiores. Odit et voluptas quos autem et magnam. Provident est id vitae asperiores maiores vel saepe. Pariatur necessitatibus veniam facilis. Aliquid voluptas molestiae libero et. Rem illo minus voluptatem rerum.', 23, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1024, 'voluptas-sint-nostrum-aliquam-repellendus-voluptatem-at-dicta-voluptate', 'Voluptas sint nostrum aliquam repellendus voluptatem at dicta voluptate.', NULL, 'Corrupti eum quia dolorem. In id commodi cumque eos. Neque iste minus reprehenderit et et consequatur ut. Officia et vitae dicta qui ex. Qui consectetur natus nisi illo velit neque. Qui laborum possimus voluptatem et. Quia animi velit eum incidunt id. Aut quasi est quo a deleniti aut natus.', 24, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1025, 'et-quo-architecto-amet-maxime-dolore-quo-voluptatibus', 'Et quo architecto amet maxime dolore quo voluptatibus.', NULL, 'Doloribus tempore aut ipsa architecto illum. Esse nisi a aliquam debitis dolore maxime non nostrum. Itaque alias quisquam aut. Corporis autem id voluptates voluptas laborum. A atque temporibus vel id nihil. Eos quo omnis ipsum. Amet magni aspernatur corrupti pariatur. Molestiae et nulla ut. Eius laboriosam maiores laborum sequi. Cum exercitationem cupiditate aperiam unde qui aliquid.', 25, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1026, 'saepe-sed-nesciunt-temporibus-expedita-asperiores-est-ullam', 'Saepe sed nesciunt temporibus expedita asperiores est ullam.', NULL, 'Laudantium est minus sed ad. Ut dolores aut nihil adipisci. Blanditiis qui exercitationem natus saepe eaque unde. Sed et voluptas delectus suscipit et quos labore. Voluptatem consequatur et quae et beatae consequatur ad. Minima rerum eos sed totam. Incidunt non nulla est qui tempore facere illo. Rerum aut ipsam aut iusto quae vero. Facilis blanditiis eos iusto aut voluptatum alias impedit. A et tenetur culpa laborum. Omnis enim aut praesentium sit suscipit. Rerum non aspernatur rerum at vel.', 26, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1027, 'facere-totam-est-quas-culpa-consequatur-explicabo-iste', 'Facere totam est quas culpa consequatur explicabo iste.', NULL, 'Quia vero est praesentium. Ex in iusto necessitatibus molestiae consequatur autem voluptas. Aut rerum est quasi debitis dolores autem dolores. Deserunt ab quas qui perspiciatis ad. Adipisci in occaecati accusamus veniam alias. Dolore voluptas molestiae sequi ea voluptate cum. At ullam quia aut magnam excepturi. Est quas ut ipsum voluptatem maiores est omnis. Vitae quam quis et saepe mollitia nesciunt. Fugit et et qui ut dolore rem et. Velit sit culpa sit aspernatur incidunt omnis sint.', 27, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1028, 'vel-molestiae-atque-consequatur', 'Vel molestiae atque consequatur.', NULL, 'Voluptas minima facilis velit repellat. Ut minus eos repellendus omnis molestiae voluptates. Libero ut facere laborum omnis. Id ut distinctio voluptatem itaque. Vel neque velit placeat natus. Qui repellat inventore sequi ipsum qui. Qui sunt velit ut vero harum ad est. Rerum necessitatibus ut est quia qui. Temporibus nihil ut praesentium corporis et enim. Quae quis laborum labore reprehenderit libero optio.', 28, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1029, 'ut-et-dicta-et-labore-numquam-earum', 'Ut et dicta et labore numquam earum.', NULL, 'Et fugit fugiat qui architecto quo. Repudiandae quibusdam dicta dolor voluptatem. Natus et tenetur fugiat velit voluptatibus. Sit sit iusto est occaecati suscipit rerum ut. Aut fuga asperiores veritatis omnis ratione magni amet. Tempore consectetur corrupti eaque laboriosam. Quia ut distinctio beatae ut explicabo atque. Eos officiis omnis incidunt blanditiis accusamus exercitationem. Cupiditate enim id corrupti architecto error eius. Eius iusto quas qui dicta eos. Laudantium ad facere dolore aperiam saepe quia quod. Minus inventore est debitis dolor consequatur dolor.', 29, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1030, 'non-dignissimos-qui-et-dolores-esse-enim', 'Non dignissimos qui et dolores esse enim.', NULL, 'Dolores explicabo eaque alias cum nisi totam sint. Possimus dolores omnis placeat temporibus. Voluptas recusandae explicabo sunt. Non eum quia tempora et illo ut voluptatibus. Vero pariatur fugiat nam quo facilis numquam aut repellendus. Est voluptates quo aperiam qui vel quia aut et. Voluptas sit eveniet veritatis eveniet debitis vel itaque. Tempora deleniti eum veniam sequi quo at. Magni quis repellendus modi illo ullam distinctio. Tempora porro earum expedita et sunt deserunt nihil. Quos minus quod et exercitationem incidunt rerum nisi. Et dolore adipisci ea. Maiores incidunt molestiae excepturi dolores sit.', 30, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1031, 'qui-tempora-similique-in', 'Qui tempora similique in.', NULL, 'Autem totam dolorem eos optio quaerat. Dicta nobis non ducimus enim architecto rerum voluptatibus. Et nisi aut quaerat occaecati. Consequatur modi ut voluptas. Nostrum rerum animi perspiciatis necessitatibus. Ab dolor vel culpa accusamus quisquam nemo. Aliquam voluptate beatae tenetur occaecati quis aliquam sint atque. Natus vel sed est. Qui impedit officiis nemo cupiditate tenetur modi dolor. Ut excepturi velit quo dicta molestiae impedit cumque sit. Animi cum nam sed et fugit quis autem. Est fuga doloremque libero iste dolorem. Quos mollitia est quia. Possimus error rem repellendus quia ut deleniti.', 31, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1032, 'quis-assumenda-sed-quae-velit-eum-itaque-ut', 'Quis assumenda sed quae velit eum itaque ut.', NULL, 'Sunt sed odit dolor. At mollitia eum odit quis sit. Qui nihil eaque reiciendis tempore optio iste. Voluptas nulla occaecati odio. Illo totam ea molestias beatae ex est. Exercitationem voluptatem aliquid repellat excepturi. A ducimus iusto et consequuntur. Atque fugit autem illum ut et. Unde amet facilis inventore nesciunt molestiae. Optio porro quia dolore. Possimus voluptatem dolorum odio corrupti ut iste quo. Eveniet non saepe sint optio aut quaerat molestiae ex. Et corrupti est voluptas ea culpa qui est.', 32, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1033, 'vitae-itaque-mollitia-sit-adipisci-soluta-qui', 'Vitae itaque mollitia sit adipisci soluta qui.', NULL, 'Quia magni harum quasi doloremque iure at facere. Ducimus esse dolorem rem. Reiciendis eos ipsa autem dicta asperiores et amet ratione. Et doloribus voluptatibus deleniti aut. Distinctio libero exercitationem quos perferendis ad unde. Ratione quam enim dolor nemo et voluptate. Esse in rerum et aperiam totam nostrum. Velit itaque aperiam aperiam distinctio a nobis consequuntur. Quod magnam ut nobis aliquam rem ut. Nihil velit quisquam commodi mollitia ea. Autem labore velit facilis qui nihil possimus voluptas sunt. Non voluptas sed consequuntur rerum delectus et.', 33, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1034, 'assumenda-quia-consequatur-est-praesentium-exercitationem-quo-porro', 'Assumenda quia consequatur est praesentium exercitationem quo porro.', NULL, 'Dolores dolorem non quis iste enim debitis sunt. Molestiae repellat voluptate animi natus. Eaque sequi autem quisquam qui. Quidem qui eum nobis repellendus. Eos placeat omnis aut reiciendis eum. Ex aut reiciendis in in aut eveniet voluptas itaque. Animi incidunt molestiae consequatur quibusdam incidunt culpa velit. Ipsum quisquam odio at quia. Est quis doloribus sequi ea fuga velit. Ut laborum quas et eum veniam. Aut quia placeat quia est alias omnis non.', 34, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1035, 'nisi-beatae-qui-pariatur-eaque-voluptas-sed', 'Nisi beatae qui pariatur eaque voluptas sed.', NULL, 'Quaerat aliquam expedita odit ea necessitatibus perspiciatis. Debitis dolor quos quisquam vel dolorem et. Similique sequi nulla voluptas reprehenderit recusandae sapiente est. Velit occaecati atque neque sint eos omnis iste eum. Et aspernatur odit officiis minus vero at. Ea amet consequuntur quia rem ea minus quos. Vel voluptatem quia et id dolorum aut. Commodi non accusantium ullam unde. Laborum officia sit qui. Cumque natus doloremque suscipit tenetur esse labore omnis quo. Dignissimos facilis est quibusdam occaecati. Temporibus tempora architecto temporibus minima dolorem quibusdam distinctio. Atque assumenda quasi quaerat eius et quia tempora accusamus.', 35, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1036, 'deleniti-in-id-molestias-libero-molestias-inventore', 'Deleniti in id molestias libero molestias inventore.', NULL, 'Necessitatibus rem numquam numquam voluptatem aut dolorem. Qui qui tempore numquam aut enim. Alias vel pariatur in sapiente. Voluptatem error sit ipsum labore facilis deserunt dolore. Aut voluptate esse ut voluptas. Voluptatem animi voluptatem possimus quas. Aperiam repellat vero perferendis similique. Veniam consequatur vel et quae. Ullam totam saepe illum eum vel fugit illum beatae. Sapiente aut voluptatum ipsa itaque. Earum eveniet perferendis inventore qui aspernatur facilis. Perferendis qui nihil facilis perferendis et ea. Occaecati id sit nisi molestias et neque. Dolor et quo expedita odit labore blanditiis autem.', 36, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1037, 'et-illum-aut-natus-officiis', 'Et illum aut natus officiis.', NULL, 'Nobis ut quaerat sed dolor tempora. Cupiditate dolorum voluptas sequi voluptas magni. Quo pariatur a accusantium quia molestiae dolores tenetur. Voluptas sint excepturi error perspiciatis rerum quo et. Quam laboriosam sit itaque omnis laboriosam enim. Quod laudantium et voluptatem voluptas et laboriosam. Minima repellendus qui qui atque esse facere quisquam. Minima vel consectetur tenetur fugit eaque velit. Perferendis soluta veniam dolore incidunt atque quia. Temporibus harum voluptatum dignissimos porro.', 37, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1038, 'voluptatem-ducimus-ut-quia-et-ad-temporibus-neque-tempora', 'Voluptatem ducimus ut quia et ad temporibus neque tempora.', NULL, 'Dolorem voluptas ut dolorem qui illo. Nam totam voluptatem vitae et tempora nam voluptatem. Nulla explicabo ducimus dolor ut. Quidem nobis voluptas occaecati voluptas itaque. Nisi magni qui culpa. Sunt similique magnam sint molestiae hic sed quasi. Quos laboriosam adipisci sit. Sit dolor omnis error nemo vel quod. Deleniti animi deleniti id ut illo. Distinctio dolores impedit voluptas officiis in nihil. Quidem libero doloribus ipsa voluptas hic mollitia expedita. Fuga sed est quibusdam est quia eos.', 38, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1039, 'reprehenderit-quis-natus-hic', 'Reprehenderit quis natus hic.', NULL, 'Error quibusdam reprehenderit commodi eius corporis quas. Et mollitia velit aut quos. Adipisci reprehenderit est repudiandae est id consectetur. Porro nemo iure aperiam doloremque. Accusamus officiis tenetur possimus quas nemo et itaque aperiam. Veniam repellat quaerat nihil qui earum doloribus minus incidunt. Animi et rerum nihil nemo id voluptatem. Id nihil est et aut voluptatem reprehenderit aliquid voluptas. Id quibusdam aut temporibus. Id accusantium repudiandae nulla commodi vel praesentium. Non rerum eveniet dolor. Id hic aliquid delectus inventore sed. Voluptatem esse impedit dicta dolores maxime qui repellat. Vel tempora expedita eos quis est.', 39, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1040, 'magnam-dolorem-dolor-ipsa-dolor', 'Magnam dolorem dolor ipsa dolor.', NULL, 'Perferendis eius recusandae ipsum architecto fugiat. Quidem dignissimos vitae quisquam autem molestiae corrupti repellendus. Consequatur ut inventore odio. Eius consectetur voluptatibus iusto suscipit at. Ut excepturi nobis delectus et maxime est in. Itaque impedit suscipit iste vel. Quas saepe rerum omnis et. Molestias ut quis corporis est animi. Iusto doloremque id culpa corporis. Et sunt iure sequi harum ad recusandae tempore sapiente.', 40, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1041, 'nihil-ex-qui-ut-blanditiis-aut-quis-aperiam-maiores', 'Nihil ex qui ut blanditiis aut quis aperiam maiores.', NULL, 'Et quia consequatur ducimus. Dolorem sint pariatur mollitia hic sunt. Consequatur id facilis repellendus enim in ducimus. Nam culpa qui ut. Et aspernatur non explicabo illo ut. Dolore iste optio vel aut molestiae ut est. Molestiae voluptate illo inventore non illo et. Et ut aut vel reprehenderit. Expedita pariatur enim perspiciatis magni nihil tenetur aperiam qui. Cumque aut sit et perferendis nihil. Iste est ut exercitationem sequi dolorem. Et perspiciatis illum necessitatibus tempore distinctio est. Id nihil error quis harum est dolor id tempore. Hic et suscipit perferendis tenetur.', 41, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1042, 'hic-fugit-quisquam-autem-iusto-ea-deserunt-minus', 'Hic fugit quisquam autem iusto ea deserunt minus.', NULL, 'Ut alias autem molestias hic fugiat. Doloribus et iure velit sit eius. Necessitatibus quibusdam est laborum enim rerum incidunt. Magni molestias ut sint aspernatur sint facere tempore. Eligendi porro ducimus quidem sapiente sit. Ratione ducimus ut laudantium esse ut. Eum et est accusamus voluptatem omnis consequuntur ut et.', 42, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1043, 'dolorem-modi-voluptates-ea-est', 'Dolorem modi voluptates ea est.', NULL, 'Ad debitis iure nam. Ut aut illo asperiores. Provident quidem labore eos officiis aut minima. Doloribus sequi dignissimos dolore ex explicabo qui in fuga. Laborum labore qui id sit amet suscipit. Corporis voluptas consequatur omnis inventore accusantium necessitatibus. Eum est veniam necessitatibus enim ut ab pariatur. Voluptatum illo consequatur ab. Iste vel commodi quisquam labore qui molestias nihil vel.', 43, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1044, 'cumque-recusandae-laborum-beatae-fugit-magnam-id', 'Cumque recusandae laborum beatae fugit magnam id.', NULL, 'Deserunt minus excepturi occaecati ullam doloremque. Beatae occaecati harum sint sunt voluptatem dolores. Reiciendis totam accusantium occaecati debitis distinctio dignissimos voluptatem. Quis beatae repellendus laboriosam illum velit facere. Quos sit architecto sunt culpa alias expedita. Ab consectetur voluptate est deserunt vel est voluptatem aspernatur. Quo officiis debitis ea non qui eius. Fugiat voluptatem iusto modi sunt. Quis nobis sit praesentium aut possimus sit quibusdam.', 44, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1045, 'natus-cum-eveniet-adipisci-et-rerum-reiciendis-et', 'Natus cum eveniet adipisci et rerum reiciendis et.', NULL, 'Possimus non labore amet enim rerum quia occaecati. Quasi debitis rerum vel nam. Cum ipsam placeat tempore unde eum. Molestiae sed ut consequatur illo et. Quos dignissimos veniam qui dolore tenetur et. Cumque minima repellendus recusandae quaerat. Minus fuga velit quidem excepturi nisi dignissimos earum.', 45, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1046, 'ea-quisquam-facere-occaecati-dignissimos-dolores-voluptates', 'Ea quisquam facere occaecati dignissimos dolores voluptates.', NULL, 'Consectetur quis ut unde rerum delectus. Molestiae perferendis deleniti consequatur officia repudiandae cumque pariatur et. Voluptas asperiores deleniti impedit neque beatae harum. Numquam reprehenderit asperiores tenetur ut quia fugit aut. Autem quia sed porro non tenetur laboriosam. Perferendis voluptatem quae iusto animi cupiditate aut quidem. Et sunt dolor fugiat nemo quidem. Cum tempora enim quas et expedita molestiae vel. Dolores ex atque quibusdam quae sunt. Sed ducimus molestiae reprehenderit aut quaerat culpa dignissimos delectus. Magni occaecati esse iusto aut distinctio optio ut. Qui temporibus impedit ducimus ipsum similique. Sed perferendis non adipisci est animi.', 46, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1047, 'ut-in-ad-provident-quisquam', 'Ut in ad provident quisquam.', NULL, 'Ut accusamus tempora labore eum. Tempora dolor praesentium suscipit veniam nesciunt sint tempore cumque. Autem voluptatibus non repudiandae. Omnis harum sint dolorem sint. Et facilis non alias et. Est officiis maiores et autem molestiae vitae consequatur. Aliquid velit accusamus aperiam beatae et consequatur explicabo. Magnam ea quis ullam ea. Consequatur non non quia nisi vitae ducimus corrupti.', 47, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1048, 'qui-suscipit-id-id-ut-est', 'Qui suscipit id id ut est.', NULL, 'Illo ducimus itaque deleniti atque modi accusamus. Hic sed quibusdam blanditiis consequatur provident itaque. At magni voluptas ab ut exercitationem qui. Quo quis laudantium ipsum. Veritatis voluptatibus nulla voluptas doloremque laboriosam necessitatibus. Eum necessitatibus aliquid qui laborum optio nihil similique libero. Odit dolore cumque enim porro. Facilis corporis fugit dolorem maxime minus nostrum eaque.', 48, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1049, 'laboriosam-perspiciatis-totam-error-debitis-sapiente-id', 'Laboriosam perspiciatis totam error debitis sapiente id.', NULL, 'Et et veritatis sint. Iusto omnis omnis voluptas ex eligendi. Earum consectetur voluptas aut fugit delectus quae quasi porro. Ducimus ut ipsa nostrum similique. Esse repudiandae qui nemo suscipit. Deserunt sit velit illo. Odio suscipit rerum nostrum. Molestiae ut dicta adipisci sequi saepe eaque non.', 49, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1050, 'ut-nisi-ut-asperiores-autem-quisquam-expedita', 'Ut nisi ut asperiores autem quisquam expedita.', NULL, 'Ut deleniti ut in sint tenetur. Aut officiis accusamus eum. Tenetur eligendi alias aut laudantium. Mollitia quia autem quis voluptatum. Culpa dolorem et facere eos et esse sed quia. Est voluptate voluptas quasi deleniti labore. Natus voluptatibus ut eaque et sunt. Voluptas nihil dolores nobis illum.', 50, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1051, 'reprehenderit-corporis-perspiciatis-inventore-corrupti-quibusdam-vel-et', 'Reprehenderit corporis perspiciatis inventore corrupti quibusdam vel et.', NULL, 'Soluta dignissimos a unde autem. Nihil natus est et quisquam nisi quasi qui. Iure facere illum eos voluptatem et. Voluptate praesentium aspernatur atque a suscipit omnis quisquam. Ipsa modi consequatur optio aut modi laudantium. Nesciunt in suscipit vero et culpa ut mollitia. Aliquam ipsam voluptas pariatur tenetur quia tempora tempora eaque. Quo repellendus fuga ex voluptatem. Vitae ipsam qui est. Dolorum illum voluptas eaque qui fugiat. Non atque quasi nostrum sed velit laborum. Fugit molestiae dolorem ipsam nulla. Quia sit quod maiores at fugiat et molestiae aut.', 51, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1052, 'voluptatibus-in-expedita-officia-id-minima-alias', 'Voluptatibus in expedita officia id minima alias.', NULL, 'Amet distinctio sed sit libero. Temporibus occaecati ullam aut et nulla molestias ea ipsum. Nisi consequatur aperiam voluptatem eum. Dolores quae et architecto sit ut. Saepe enim maxime accusamus cupiditate autem. Deleniti facilis alias possimus omnis. Rerum autem est iure delectus voluptas. Quas sunt et possimus soluta.', 52, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1053, 'culpa-omnis-quo-optio-omnis-expedita-sed-non-autem', 'Culpa omnis quo optio omnis expedita sed non autem.', NULL, 'Iusto nostrum rerum mollitia delectus consequatur quas iusto. Est veritatis minus debitis voluptatem cum est cupiditate. Autem aut dolores ducimus necessitatibus in. Dolor non fugit iste officiis. Consequuntur nulla tenetur mollitia sit esse rem facilis. Voluptatem corrupti velit consequatur vitae nemo minima. Est nemo omnis rerum nisi sed. Quaerat omnis facilis ut et enim magnam. Corporis molestias autem sed quibusdam ad quae aspernatur. Reiciendis exercitationem voluptatem sunt sed voluptatum odit nam iste. Illum et ab est unde. Quia sed voluptas eveniet. Eligendi et adipisci voluptatem ea nulla maiores. Minus ex aut perferendis temporibus et corporis beatae.', 53, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1054, 'dolorum-dolorem-unde-vel-dolor-eum', 'Dolorum dolorem unde vel dolor eum.', NULL, 'Est animi rerum porro aliquid. Error voluptatem rerum optio ducimus molestias. Molestiae qui laudantium cupiditate tempore soluta ut similique. Sed dolorem deserunt sed. Sint totam beatae et sapiente. Officiis culpa veritatis sit et rerum. Corrupti itaque dolores autem laboriosam. Magni quia temporibus qui non accusamus. Voluptatum assumenda a quas. Asperiores accusantium autem commodi. Repudiandae fugiat veniam est possimus mollitia eveniet neque.', 54, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1055, 'impedit-optio-et-minima-velit-esse-non-et', 'Impedit optio et minima velit esse non et.', NULL, 'Recusandae totam ut error natus natus. Temporibus debitis a nisi vel sed illum. Fuga placeat doloremque saepe recusandae voluptate neque asperiores. Molestiae aut necessitatibus nemo voluptatem modi error. Eos eos consequuntur impedit enim minus quaerat sint quod. Mollitia et maiores quis deleniti sapiente dolorem illum. Alias autem nihil quo esse est non laboriosam. Iure illum laboriosam quaerat deleniti sed accusantium sunt.', 55, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1056, 'sunt-error-laudantium-voluptatem-pariatur-assumenda-odit-nisi', 'Sunt error laudantium voluptatem pariatur assumenda odit nisi.', NULL, 'Aperiam et odio odit rerum dolore inventore ipsum doloribus. Est est impedit repellendus velit accusantium eos autem et. Omnis pariatur vitae ut quis et delectus maxime. Debitis eaque necessitatibus qui iste nam. Est atque laudantium voluptatibus mollitia molestiae eaque. Qui aspernatur omnis corporis amet ipsum. Harum aliquid velit adipisci non et dolorem odit nostrum. Asperiores vel ea ut perferendis nobis laborum. Quia tempora eius repudiandae sunt in. Totam placeat quidem excepturi. Autem in laborum adipisci dolorum. Sit qui dolor rerum autem hic. Ratione molestiae aut minima explicabo saepe voluptate. Incidunt voluptate quos quibusdam similique beatae.', 56, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1057, 'voluptas-ut-voluptatem-quas-officiis-quia-molestiae', 'Voluptas ut voluptatem quas officiis quia molestiae.', NULL, 'A est omnis harum et distinctio repellendus sed. Hic beatae explicabo culpa mollitia in. Et facere sunt aspernatur consequuntur reiciendis. Molestiae vitae dolor dolor hic velit aut quisquam. Rerum omnis ipsum eum quia dolorem. Libero assumenda nihil dolores voluptatem aut doloremque. Voluptate quibusdam similique numquam repellat rerum aut. Rerum ut amet velit est. Soluta nulla dolor quae eaque. Consequuntur debitis quae pariatur culpa. Est eum corporis vel doloremque. Dolore minus omnis et veritatis sapiente doloremque. Veniam praesentium recusandae atque quia possimus. Alias possimus et et non.', 57, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1058, 'aut-atque-aliquam-voluptatibus-modi-veniam-ducimus-debitis', 'Aut atque aliquam voluptatibus modi veniam ducimus debitis.', NULL, 'Minima numquam aut aut eveniet repellat aut. Possimus ut aut harum non illo eum odio. Harum officia officia aperiam. Qui pariatur enim autem aliquam laboriosam non molestias corrupti. Laboriosam beatae ex magni totam voluptatum voluptatem. Incidunt quaerat amet quo unde. Iure est vel quaerat dolores voluptatem. Accusamus nihil mollitia at fugit quia fuga unde. Qui voluptatem laborum atque maxime libero perspiciatis aut. Aut et ex voluptatem nulla nihil. Et id maxime et voluptatem. Voluptates nostrum omnis alias aut eaque. Iusto ut est cum ad.', 58, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1059, 'sed-voluptatem-nam-consectetur-et-voluptatem-asperiores', 'Sed voluptatem nam consectetur et voluptatem asperiores.', NULL, 'Quae quo ex in delectus deserunt voluptatem quam labore. Maiores fugiat eligendi sunt et nobis. Consequuntur ex maxime sed sit quae. Praesentium nesciunt enim esse ipsum aut beatae. Sequi cupiditate autem vero voluptatem explicabo explicabo provident. Rerum delectus molestias ab consectetur deserunt. Quos itaque dolores eum quo exercitationem tempora. Non distinctio vel non autem similique. Laudantium qui ea ducimus quis. Quo sint rerum natus est. Sunt optio aut dolorum ex culpa quos. Provident earum sunt magni magnam aut. Impedit sint consequatur reprehenderit. Ut suscipit quod blanditiis incidunt deleniti.', 59, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1060, 'eos-deleniti-dolorem-ad-earum-neque-doloribus', 'Eos deleniti dolorem ad earum neque doloribus.', NULL, 'Voluptates consectetur nobis expedita. Et omnis sed sunt voluptatem aliquam. Natus debitis voluptate voluptas amet accusantium ipsa voluptas. Magnam sed explicabo hic non voluptas ipsa. Quo delectus optio et sit. Enim quo illum neque et. Sequi eaque aliquam ipsam sit vitae eius provident eligendi. Et aliquam repellendus quas omnis nihil rerum. Dolore beatae amet quam qui ea dolorem exercitationem.', 60, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1061, 'modi-possimus-sed-pariatur-aliquid', 'Modi possimus sed pariatur aliquid.', NULL, 'Aut quia enim consequatur accusantium sunt. Qui repellendus et assumenda beatae tempore dolorem quae sed. Qui ex quidem accusantium aspernatur. Quo sed dolorum facere. Dolores laborum ratione ea quis. Consequatur qui facere quo. Ullam modi et dolor velit error qui. Ullam doloribus distinctio sint est quia quaerat molestiae. Dolores qui voluptas aspernatur explicabo doloremque odio. Quisquam velit aut debitis.', 61, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1062, 'fugit-ducimus-perspiciatis-molestiae-ipsa-optio-magnam-et', 'Fugit ducimus perspiciatis molestiae ipsa optio magnam et.', NULL, 'Debitis qui eligendi et quia aut dolorum officiis. Molestiae earum distinctio dolorum dolorum. Voluptas et pariatur earum officia repellat consequuntur est. Excepturi qui magnam exercitationem. Accusantium aut ullam minima veniam recusandae aut. Aut alias et labore quasi ad necessitatibus tempore. Enim eum dolorem quisquam eum molestiae. Exercitationem ullam iure nihil ducimus veniam totam facilis vitae. Sed quae eveniet cupiditate voluptatibus dicta. Nemo expedita fugit aut. Labore maiores porro aliquam autem est illum accusamus. Nihil repellat esse ut impedit. Vero veniam maxime voluptas eveniet ex. Vel sed non non dicta eius.', 62, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1063, 'sapiente-dolores-explicabo-animi', 'Sapiente dolores explicabo animi.', NULL, 'Magni ut consequatur est laborum deleniti. Dicta eius ea debitis eum aut quod incidunt in. Neque quia nesciunt iure esse ab ipsam. Ipsa amet sapiente corrupti sint. Nesciunt iusto est illum ut minima voluptatem. Sint impedit molestias et quibusdam illo enim. Culpa suscipit consequatur et esse. Atque eveniet nostrum minima sit. Rem sunt aut commodi aut dicta. Nam qui ea dolorum sed magni ut praesentium aliquid. Fuga vitae adipisci adipisci voluptas dolorem a perspiciatis.', 63, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1064, 'in-aut-a-alias-itaque-rerum', 'In aut a alias itaque rerum.', NULL, 'Dolor earum culpa impedit ab fugit pariatur accusamus. Cum repellendus aut dolores dolorem nihil voluptatum dolor unde. Voluptatem accusamus quod nostrum velit doloribus est reiciendis. Et rerum est consequuntur aut at. Velit sint ab nostrum id. Quae et dolores officiis aut alias est. Qui aliquam aut dolore velit ullam non. Repellat odio sit tempora maiores facilis et voluptatem ea. Amet accusantium vel est nisi tempore sint ratione quod. Culpa qui iure illo.', 64, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1065, 'voluptate-eum-rerum-maiores-error-nisi', 'Voluptate eum rerum maiores error nisi.', NULL, 'Qui qui praesentium nesciunt et nobis atque non. Temporibus sit et debitis nihil velit aperiam. At saepe est natus non laborum consectetur. Reprehenderit velit dolorem voluptas est. Assumenda ut consectetur sequi aut qui voluptatum. Omnis non consequuntur sed quas a. Laboriosam et voluptatem rerum repellendus et. Ut vitae temporibus modi impedit inventore. A ratione nihil doloremque voluptas ipsum. Nostrum ratione esse atque. Ut ipsa velit amet et dolorum sed nulla minima. Repellat eum quo repellat dolor voluptas rerum.', 65, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1066, 'unde-rem-quia-perferendis-numquam', 'Unde rem quia perferendis numquam.', NULL, 'Nobis eum sequi porro dolorum natus aut vel mollitia. Voluptate aspernatur quod consequatur in quo perferendis sint. Nobis vel fugit totam voluptatum similique culpa aut ipsam. Sunt illum molestiae eius magnam blanditiis. Nihil ut quam aspernatur qui pariatur impedit cumque est. Quidem corporis nulla unde ratione voluptatem vero. At esse doloribus eos asperiores corporis ipsa. Harum error dicta quam. In sint sit quaerat. Voluptates ipsa et rerum soluta. Sed sed necessitatibus voluptatem modi. Omnis nemo rerum qui qui iste enim. Ipsum ipsum corporis eos. Impedit praesentium id quasi sit eligendi.', 66, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1067, 'quasi-tempora-aspernatur-sint', 'Quasi tempora aspernatur sint.', NULL, 'Corrupti exercitationem a quis. Aut dignissimos quis excepturi magnam quo magni sed. Dolor vel autem est voluptatum voluptatem aut ut. Quis exercitationem dolor ullam quidem. Fugiat et eos rem ea. Iure quis minima at quibusdam quas. Autem ut repellat expedita ipsum sit aperiam. Pariatur voluptas sed saepe molestiae. Earum accusantium velit eos molestiae. Molestiae at corrupti nemo aut consequatur eaque. Illum ab est et possimus.', 67, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1068, 'ea-ut-neque-odio-qui', 'Ea ut neque odio qui.', NULL, 'Placeat corrupti eum vitae ex eius eum similique est. Velit ea totam exercitationem itaque est. Animi molestiae inventore et libero. Quas asperiores sunt velit odio. Voluptatum enim sed quasi saepe in harum quaerat. Ut sunt totam deleniti ratione labore cupiditate. Sit deleniti id saepe. Assumenda alias est eum quas. Labore at aliquam quidem molestias sed expedita non. Cupiditate beatae et deleniti omnis doloremque corrupti sunt. Sunt officiis fuga est et. Nostrum magni aspernatur commodi eaque esse omnis omnis est. Autem in provident incidunt minima inventore.', 68, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1069, 'sapiente-qui-et-aut-consequuntur-aliquid-et', 'Sapiente qui et aut consequuntur aliquid et.', NULL, 'Porro aut cum aut ut debitis voluptate fugit. Et omnis ipsum magnam eligendi quibusdam ducimus. Neque cupiditate dolor dolore labore perferendis deleniti qui. Sed est dolore numquam quo animi. Doloribus aut ipsa qui dolorum. Praesentium dignissimos facilis ut recusandae quas veritatis. Voluptatem et id ad consequatur vel. Ut reiciendis quo consequuntur accusamus quam eum. Et autem fugit velit. Perspiciatis quaerat officiis unde ut veniam ad. Voluptas quisquam et nostrum est.', 69, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1070, 'corporis-qui-a-incidunt-quos-consequatur-repudiandae', 'Corporis qui a incidunt quos consequatur repudiandae.', NULL, 'Debitis voluptates omnis sunt unde. Nihil repudiandae rerum officia est quia. Quam earum dolor commodi voluptas consequuntur qui voluptate et. Nulla nisi voluptates quo reiciendis ipsum. Facere dolor laudantium maiores excepturi voluptatem dolor ipsum. Non quis dignissimos earum neque. Amet velit dicta neque cum dolore. Ducimus sunt ut qui doloremque maxime quos voluptate. Magnam fugit quia aut cum nihil et a. Quia maiores ut dolorum facere magni officia. Nihil repudiandae dignissimos voluptatem reiciendis.', 70, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1071, 'labore-minus-suscipit-voluptatem', 'Labore minus suscipit voluptatem.', NULL, 'Expedita ullam deserunt quae consequuntur. Et vel autem qui velit dolor molestiae omnis id. Perspiciatis omnis vel dolor. Fugiat eum culpa eum officiis reprehenderit aliquid. Recusandae aspernatur molestiae repudiandae. Provident et temporibus necessitatibus sequi eligendi sunt. Ab consequatur blanditiis ipsa doloremque sed. Iste in laboriosam illum veniam aut ut voluptates. Dolor veniam facere ex laudantium. Eaque provident exercitationem porro odio consequuntur.', 71, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1072, 'est-neque-accusamus-omnis-aliquam-fugit-minus-et', 'Est neque accusamus omnis aliquam fugit minus et.', NULL, 'Rerum eum laudantium dolores et qui sed. Molestiae cupiditate sunt enim et in nostrum. Exercitationem non aspernatur ut sequi ea illo. Omnis porro quidem et numquam. Dolorum quia similique quod labore sed. Et qui sapiente aperiam a ut alias in. Id pariatur est esse eos.', 72, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1073, 'quisquam-optio-consequatur-sunt-nihil-consectetur-est-iure-quasi', 'Quisquam optio consequatur sunt nihil consectetur est iure quasi.', NULL, 'Nobis consequatur quisquam repellendus quia. Laudantium occaecati ut vel voluptate fugit id. Saepe eaque expedita et rem qui facilis. At et minima nisi repellat autem corrupti ut. Voluptas commodi nemo sunt doloribus quam. Numquam natus tempore facilis magni accusamus quisquam cum. Voluptas quo consequuntur omnis laudantium. Et atque quasi ea dolorem. Expedita aut aut alias dicta. Aut sed quis distinctio veritatis. Sunt cum aut quae quia sunt.', 73, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1074, 'et-maiores-sit-excepturi-sit-aperiam', 'Et maiores sit excepturi sit aperiam.', NULL, 'Sapiente expedita aperiam eos maiores nam. Voluptates omnis et qui et quod. Rem nisi maxime eum ipsum minima illo tempora. Similique amet exercitationem voluptate rerum. Aut ab aliquid nisi quas impedit occaecati eos. Ut qui est et et illo. Aliquid omnis omnis est et eum pariatur rem. Rerum sint possimus quia veniam quia. Ex consequuntur dolorem non doloremque quam odio fugit aut. Repudiandae voluptas voluptas enim tenetur rem. Similique unde dolorum enim quae dignissimos rerum aut. Consectetur aut dolor eligendi consequatur odit. Ullam quis error inventore numquam. Aut aut beatae non et ut.', 74, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1075, 'rerum-animi-libero-facere-laboriosam-asperiores-officia-dolores', 'Rerum animi libero facere laboriosam asperiores officia dolores.', NULL, 'Quam delectus sed alias esse voluptas qui velit ut. Expedita soluta qui quis. Tenetur est vel consequatur mollitia qui. Repellendus explicabo consequuntur ut saepe sed. Aliquam impedit quidem qui et magnam. Veniam enim cupiditate quidem in fugit minus. Quis delectus nam voluptates impedit perferendis ullam vel. Voluptas voluptatem voluptas quia architecto voluptatum.', 75, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1076, 'adipisci-totam-atque-in-voluptatibus-voluptatibus', 'Adipisci totam atque in voluptatibus voluptatibus.', NULL, 'Cumque eum perferendis ipsam sed et autem. Quam omnis assumenda quasi eius quia eos sapiente. Sint a eligendi dolore totam totam veniam. Veniam earum sit rerum debitis et dolorum. Qui atque explicabo minima animi dolorum vitae laboriosam eum. Magnam qui et sit fugit optio ut. Itaque incidunt et ut odio aut. Dignissimos quisquam voluptatem et est deleniti provident nihil. Adipisci quae est tempora cupiditate illum quae fugit. Eius explicabo non harum eligendi debitis repudiandae. Accusamus nihil qui necessitatibus recusandae. Facilis aliquam quibusdam neque accusamus ducimus magnam quia. Vitae beatae odit vitae soluta accusamus delectus inventore temporibus.', 76, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1077, 'sint-labore-fuga-eum-quia-quo-non', 'Sint labore fuga eum quia quo non.', NULL, 'Aut et voluptates impedit maiores. Placeat quia illum qui impedit rem quis. Quas qui ad quo omnis at dolorum. Ut et libero ut et. Odio aut est ut eos excepturi. Qui quia cumque illum vel quaerat distinctio ea nisi. Asperiores molestiae sit quia nisi odit dolorem expedita qui. Nesciunt dicta enim fugiat et provident porro provident. Ullam dolores velit inventore corrupti sed. Dicta et commodi dolore eum accusantium architecto. Aut non ea nostrum. Odit ipsam dolor nisi illum.', 77, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1078, 'repudiandae-quia-atque-amet-quis-dolores-fuga-reiciendis', 'Repudiandae quia atque amet quis dolores fuga reiciendis.', NULL, 'Animi ut repudiandae sed consequatur temporibus temporibus voluptatum. Aut nulla aliquid culpa similique nihil quia tenetur. Qui quia unde sequi distinctio enim at reiciendis. Rem vel aut qui eveniet facere ad ab. Sed aliquam rem ducimus recusandae asperiores debitis quo. Officia quia aspernatur expedita doloremque voluptatibus. Consequatur similique est placeat qui esse. Quam ea adipisci perferendis facilis nesciunt quo. Qui mollitia aliquid rerum dolor et consequuntur cumque sint. Laboriosam rerum quae voluptatem qui. Fuga officiis aliquam praesentium assumenda accusantium. Fugiat vero aut assumenda laborum officia commodi. Tempore aut dicta incidunt commodi consequatur. Dolorem aperiam ipsa exercitationem.', 78, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1079, 'eos-necessitatibus-qui-voluptatem-voluptatem-animi-iste-deleniti-illo', 'Eos necessitatibus qui voluptatem voluptatem animi iste deleniti illo.', NULL, 'Quisquam et itaque quis suscipit. Asperiores eaque voluptates eum itaque assumenda. Assumenda at necessitatibus est. Dolor tenetur dignissimos et voluptas consequatur id. Suscipit ut officia nemo animi tempore fugiat eligendi delectus. Nostrum nulla distinctio cum non in ratione est ut. Rem ab eligendi sed pariatur esse. Accusamus accusamus consequatur aspernatur numquam illum aliquid quibusdam. Et ex molestiae aperiam laborum. Deserunt atque aperiam placeat nam aliquam est et. Omnis perspiciatis nihil quos.', 79, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1080, 'natus-facilis-quod-aliquam-soluta-nobis-perferendis', 'Natus facilis quod aliquam soluta nobis perferendis.', NULL, 'Fugiat quam pariatur quia. Iure sit voluptatum quis ut tenetur quas occaecati pariatur. Doloremque nesciunt explicabo rem non voluptate. Inventore a nihil modi necessitatibus rerum. Eos aut veniam doloribus autem. Commodi eos adipisci sit. Sequi consectetur dolor nihil. At aliquam necessitatibus reiciendis maiores recusandae. Est debitis ut eos et ut. Occaecati repellat sint et perferendis unde ullam maxime.', 80, '2022-07-12 00:20:58', '2022-07-12 00:20:58');
INSERT INTO `news` (`id`, `slug`, `title`, `image_url`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1081, 'et-hic-et-vitae-numquam-omnis', 'Et hic et vitae numquam omnis.', NULL, 'In voluptatum atque consectetur fuga quam. Nesciunt eos placeat velit veniam placeat consequatur voluptas iusto. Inventore ullam ea impedit iusto nihil laboriosam distinctio. At aspernatur eligendi eum. Non delectus dignissimos voluptas ut quidem laudantium aut. Sed rerum dignissimos vel dolores atque aut voluptatem. Et in est aliquid dolore voluptatem. Nemo molestiae vero cum. Beatae officiis voluptates provident eveniet et eum. Velit voluptatem molestias maiores voluptatem. Aspernatur aspernatur modi dolores debitis molestiae autem aut. Alias magni eaque aut natus aliquam minima molestiae. Ullam cupiditate sint mollitia sint et quas quo. Ducimus voluptatibus eum ullam amet odio illum exercitationem est.', 81, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1082, 'dignissimos-quia-ab-cupiditate-debitis-earum-excepturi-adipisci', 'Dignissimos quia ab cupiditate debitis earum excepturi adipisci.', NULL, 'Qui voluptatum neque maiores et placeat. Id excepturi tempore quidem dolores ipsum omnis. Qui perferendis deleniti et omnis veritatis necessitatibus est. Assumenda eaque aut officiis culpa asperiores sint repudiandae. Enim reiciendis amet tempora eos. Officiis est minus quia qui dicta corporis quam. Debitis odio magnam odit. Et ullam dolore dolorem enim excepturi. Numquam excepturi unde sed doloribus qui cumque quidem et. Nihil quia facilis sed iure.', 82, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1083, 'omnis-dolorem-modi-alias-fugit', 'Omnis dolorem modi alias fugit.', NULL, 'Nam dolor atque ut ullam magni. Dolor ratione quos officiis facere quia. Aspernatur temporibus reprehenderit omnis consequuntur et. Enim itaque suscipit exercitationem et iste velit et. Rerum accusantium est et quo pariatur. Enim nihil neque tempore veniam voluptatem beatae. Pariatur vitae autem dolor est impedit doloremque. Ab rerum quas a voluptatibus sunt molestiae perferendis. Qui at expedita odio qui est. Vitae velit enim consequatur voluptatibus. Esse voluptatibus accusamus quia. Quaerat et accusantium enim et sit. Nihil ut consequatur quidem quia alias cupiditate. Et unde alias eligendi aliquam mollitia nihil.', 83, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1084, 'dignissimos-ut-aliquam-aut-illum-qui-qui-assumenda', 'Dignissimos ut aliquam aut illum qui qui assumenda.', NULL, 'Ut quo iste ea. Nisi recusandae ipsam dolores voluptatem quisquam et corrupti. Voluptas libero aperiam voluptatibus dolore asperiores atque. Et harum doloribus possimus natus. Reprehenderit dolorem magni aut recusandae velit. Ex fugit tenetur enim odit. Unde officiis ut nihil consectetur. Neque assumenda nostrum aut laudantium quia. Molestias odit labore omnis ea. Natus doloremque quasi ad aut debitis quod. Tenetur enim in esse ut.', 84, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1085, 'ut-aut-et-magnam-ipsam-eum-nihil', 'Ut aut et magnam ipsam eum nihil.', NULL, 'Numquam eum sint aspernatur consequatur quam. Laborum porro et ipsum suscipit dolor perferendis. Temporibus voluptatem illo consequatur. Esse voluptatem earum est minima dolor dolorum. Cumque distinctio aspernatur expedita tempore quam voluptatem provident. Quis sint quasi quia cupiditate facilis vitae. Ratione nobis harum et architecto. Quo dolorum illum vero ipsa voluptas cumque qui. Qui natus consectetur et mollitia ut nesciunt. Illo omnis rerum dicta natus aut iure. Omnis non rem eum ex dolorum. Fugiat voluptatum dignissimos ducimus recusandae molestiae vel rerum. Id ut perspiciatis eius iure occaecati quas beatae. Qui nobis temporibus consequatur quod sequi.', 85, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1086, 'sed-alias-molestiae-debitis-quia-ipsa-eligendi', 'Sed alias molestiae debitis quia ipsa eligendi.', NULL, 'Veritatis at voluptates porro labore qui fugit rerum. Perspiciatis consequatur omnis ratione est dolor debitis. Porro delectus quia aut deserunt dolores maxime. Beatae et sequi et et. Et cupiditate aut qui et rem veniam voluptatem. Odio quas quam eum in. Ea est laudantium aspernatur vero. Provident fugiat quia saepe esse quae nemo sit officiis. Quisquam esse commodi atque laudantium.', 86, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1087, 'id-repudiandae-vel-in-ea-et-et-doloribus', 'Id repudiandae vel in ea et et doloribus.', NULL, 'Laudantium a itaque doloremque sunt. Dolorem laboriosam omnis et in in quia est. Qui distinctio id sapiente temporibus et at. Atque voluptate quibusdam dolor. Dignissimos odit nam sit totam quisquam enim qui. Reprehenderit minus sapiente laudantium ipsum illum. Qui saepe possimus maiores suscipit. Nisi et enim ab pariatur. Est a aut eos et. Et et alias odit excepturi sit at ut. Aut voluptatem non ducimus aliquam. Qui laborum sint numquam at. Explicabo illo deleniti officia. Sit doloremque ut tenetur sit illum.', 87, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1088, 'vitae-in-quis-vel-qui-eaque', 'Vitae in quis vel qui eaque.', NULL, 'Itaque quidem qui fugit dolorum. Aliquam nesciunt velit voluptates similique incidunt. Minus qui sint quia et sint quibusdam aliquid. Ex repellendus eveniet numquam eligendi ut. Vel et quis veritatis culpa. Similique id facere ea eius corrupti sit omnis. Qui architecto sequi eius eveniet qui at. Sit sed ab fugiat ut est tempore ut. Quis reiciendis quae et nulla dignissimos voluptate et. Ratione in est optio facilis qui ut natus suscipit. Voluptas illo animi sequi reprehenderit accusamus sunt est.', 88, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1089, 'ipsa-eos-libero-aperiam-deserunt-error-eum-natus', 'Ipsa eos libero aperiam deserunt error eum natus.', NULL, 'Id similique tempora officiis sunt voluptate iste natus. Aliquam facilis ut est ab esse et. Quo repudiandae asperiores molestiae architecto. Exercitationem veniam amet laudantium commodi deleniti facere. Numquam molestiae iure quo ea velit iusto. Incidunt magnam fugit facere blanditiis voluptas quasi at. Est doloremque qui consectetur itaque. Omnis unde et ex illum perferendis. Accusantium quia ut doloribus minus eum consequatur earum dolor. Dolore voluptatem quia non repellendus qui. Et tempore qui unde non. Est laudantium est quasi porro blanditiis. Dolor quas placeat corrupti libero. Minima aperiam excepturi nihil rerum nihil dolores sint.', 89, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1090, 'et-est-eius-et', 'Et est eius et.', NULL, 'Maiores qui impedit eum vitae eligendi. Dolorem ex omnis et natus aut odit nam. Saepe in rerum est iste quia. Cumque accusamus accusamus porro a. Adipisci vitae nobis velit ipsam enim non. Quasi omnis consequatur quod. Cupiditate nostrum vero distinctio voluptas et assumenda incidunt corporis. Et minus dolorum ad dolorem. Aut omnis temporibus quis nulla. Temporibus sed officiis reprehenderit et et natus eaque. Consequatur autem necessitatibus aut voluptatem et et quo. Omnis sit eos animi similique.', 90, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1091, 'quam-harum-molestias-rem-atque', 'Quam harum molestias rem atque.', NULL, 'Asperiores sit dolor ad aut ea libero. Ducimus accusantium ex cupiditate sit maxime dolores aut. Aut animi et eos adipisci ea esse. Rem dolorum inventore odit eligendi aut rerum. Qui quidem maxime deleniti est sint at tempore temporibus. Voluptate earum corrupti asperiores molestias reiciendis. Cupiditate porro architecto natus ullam enim.', 91, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1092, 'et-molestiae-nam-tenetur-corrupti-rem', 'Et molestiae nam tenetur corrupti rem.', NULL, 'Quis ad autem et debitis voluptas. Ullam quaerat ex fugiat velit ea qui dolores. Facere quam adipisci maiores earum. Molestias consequatur ad velit quia nihil eligendi et. Placeat est aut exercitationem qui facilis at reiciendis quam. Sunt temporibus quos consequatur vero repellendus velit assumenda. Id eveniet et tempora delectus. Ad ab quasi illum veniam quia quisquam. Aliquam dolorem ex quasi et eos.', 92, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1093, 'corporis-consequatur-distinctio-quasi-consectetur-vitae-perspiciatis', 'Corporis consequatur distinctio quasi consectetur vitae perspiciatis.', NULL, 'Quasi at adipisci eius. Voluptates enim consequatur voluptatibus harum. Dolor omnis distinctio unde dicta. Accusantium aut consequuntur ipsa ipsam voluptate veritatis necessitatibus recusandae. Qui ipsam quisquam minima qui laborum libero nihil. Praesentium tenetur aut accusamus error itaque error. Excepturi impedit consectetur aliquam et. Voluptas qui eos quia vel ut. Facere qui explicabo omnis eos id earum aut. Quo cumque tempora id voluptates. Assumenda sit non autem totam aperiam eveniet cum minima.', 93, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1094, 'fuga-aut-vitae-quia', 'Fuga aut vitae quia.', NULL, 'Sed sed minima dolores sint. Dolores eveniet ea maxime. Qui sint id aut iste sed. Sint repellendus esse facilis ut accusamus et. Delectus qui non est in aut reiciendis. Repudiandae accusantium modi et quibusdam. Minus consequatur praesentium enim dolores libero repudiandae mollitia.', 94, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1095, 'neque-perferendis-reprehenderit-id-rerum-non-necessitatibus-accusamus-et', 'Neque perferendis reprehenderit id rerum non necessitatibus accusamus et.', NULL, 'Molestias alias voluptatem aut. Aut qui quo voluptates quae aut fugit at maxime. Fugiat nisi sit illum fuga ea. Itaque facere et dolorem dignissimos ex vel perferendis. Veniam cumque rerum est consequatur perspiciatis autem quia. Deserunt quis error temporibus dolor quas illum earum. Doloribus hic nihil quis sit. Vel non corporis ea eius. Assumenda eos ratione unde magni cupiditate nihil consequatur. Non aperiam et labore fugiat commodi dolores.', 95, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1096, 'consequuntur-sapiente-dolores-consequatur-magnam-commodi-architecto-similique', 'Consequuntur sapiente dolores consequatur magnam commodi architecto similique.', NULL, 'Odio et commodi ducimus dolor dolores dolores. Dolore possimus aspernatur repudiandae illum corrupti maxime. Quaerat aperiam mollitia facere autem veritatis consectetur consequatur. Reiciendis libero et quibusdam quia animi. Deserunt blanditiis vel ut et nulla quis. Inventore doloremque deleniti dolorem voluptas dolorum hic expedita. Temporibus facilis id quidem vel occaecati eaque nisi nostrum. Quidem consequatur ipsum voluptates eos rerum aut. Iure sequi sunt dolorum repellat enim. Cum reiciendis non exercitationem similique.', 96, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1097, 'doloribus-natus-iure-consectetur-commodi-alias-nostrum', 'Doloribus natus iure consectetur commodi alias nostrum.', NULL, 'Id harum maxime eos dignissimos. Soluta hic nemo vero et sunt. Voluptatum dignissimos quidem qui velit vitae voluptatem voluptas et. Velit provident doloremque autem labore in. Asperiores aut eius non eos fugiat. Vel voluptatem sed voluptatem nobis quis ad. Quod ab dolores est tempore. Non laborum ab blanditiis qui. Architecto et tenetur ex vel dolorem voluptates. Aut consectetur rerum ipsum nulla soluta aut. Quo eum totam aut facilis esse animi.', 97, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1098, 'unde-impedit-et-ex-minus-fugit-est-beatae', 'Unde impedit et ex minus fugit est beatae.', NULL, 'Facilis tempora et perspiciatis dignissimos repellendus suscipit sed. Minus eum rerum modi autem voluptatum possimus esse. Aut laboriosam vel iste ipsa in. Ut soluta praesentium hic voluptatem ratione in. Voluptas impedit expedita omnis architecto. Voluptas est cumque necessitatibus et. Reiciendis facere occaecati aut iure et. Magnam nihil recusandae odit aut est et. Voluptas enim consequatur itaque omnis laborum sed ratione. Qui eveniet non beatae quis illum asperiores rerum. Ut totam deleniti ut id blanditiis. Quas blanditiis consequuntur non rem ratione adipisci quia. Quo enim qui quia nam earum ut et. Sapiente voluptatum aut quae aliquid tempore qui eligendi numquam.', 98, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1099, 'quam-nulla-id-quaerat-nihil', 'Quam nulla id quaerat nihil.', NULL, 'Culpa aut odio aut iure asperiores fugiat. Molestiae voluptas eum reiciendis unde. Aliquam officiis explicabo adipisci aut ex aut. Doloremque illo dolor fugiat. Voluptatibus voluptatem rem dolorem eius in et cum. Nam optio quod est nemo. Minus autem quo id. Molestias sint sequi qui quidem rerum. Expedita quo et magni quo et voluptatibus non. Odio voluptas harum et et corporis dolore aspernatur.', 99, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1100, 'explicabo-temporibus-voluptates-nostrum-illum-quod-odit', 'Explicabo temporibus voluptates nostrum illum quod odit.', NULL, 'Amet est nam consequuntur aut corrupti autem omnis aut. Autem optio qui neque et ullam et. Cumque iure et incidunt id. Non porro voluptatibus fuga quisquam quis. Quam voluptas voluptas reprehenderit id pariatur ducimus quia. Laudantium nihil eveniet at odio saepe et quisquam rerum. Dignissimos ab consectetur voluptatem vero suscipit. Sit est qui culpa. Laudantium earum dolores et aut maxime vel assumenda. Eum quod sunt qui voluptatem fugit voluptas. Quis qui quis dignissimos odit numquam in quas.', 100, '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(1101, 'test-judul', 'Test Judul', 'C:\\Users\\Dagang-Group\\AppData\\Local\\Temp\\php6182.tmp', 'Test Isi', NULL, '2022-07-12 00:21:02', '2022-07-12 00:21:02'),
(1102, 'test-judul-123', 'Test Judul 123', NULL, 'Test Isi', NULL, '2022-07-12 00:22:24', '2022-07-12 00:22:24'),
(1104, 'test-judul-12344', 'Test Judul 12344', 'news/da2AYNExHblFAl0Asd1LFFoFs81z9Ajgw3pNg58R.jpg', 'Test Isi gegegege', NULL, '2022-07-12 00:23:42', '2022-07-12 00:27:48'),
(1105, '123123123', '123123123', NULL, 'jaksdjkasldasd', NULL, '2022-07-12 00:28:04', '2022-07-12 00:28:04'),
(1106, 'test-saja', 'Test Saja', 'http://uzindoco_diskominfo.test/storage/news/l9S611e7BYwe1Z9NBxhDuIHwpVXKXdEqwBwfYqpB.jpg', 'Akwaokwaoaw Akwaokwaoaw Akwaokwaoaw Akwaokwaoaw Akwaokwaoaw Akwaokwaoaw Akwaokwaoaw Akwaokwaoaw Akwaokwaoaw Akwaokwaoaw Akwaokwaoaw ', NULL, '2022-07-12 02:21:41', '2022-07-12 02:21:41'),
(1107, 'ggg', 'ggg', NULL, 'ggg1233', NULL, '2022-07-13 01:49:31', '2022-07-13 01:49:31'),
(1108, 'doloribus-ut-id-delectus-nihil-ea2', 'Doloribus ut id delectus nihil ea2', NULL, 'Doloribus ut id delectus nihil ea.', NULL, '2022-07-13 02:14:14', '2022-07-13 02:14:23'),
(1109, '123', '123', NULL, '123', NULL, '2022-07-18 00:06:35', '2022-07-18 00:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ms. Janice Shields', 'alexandrea61@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BGMOA3r9Vo', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(2, 'Christa Glover', 'irath@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4LaCC4qC0N', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(3, 'Layne Fisher V', 'nfeest@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Wzg2pT6WQA', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(4, 'Vinnie Rodriguez MD', 'adriel16@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jM4kUFshoU', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(5, 'Webster Abernathy', 'una.tromp@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JXJEJrX84K', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(6, 'Stacey Beier', 'emills@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CfALEuQ2mk', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(7, 'Mr. Alford Carroll Sr.', 'nlind@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UKW4F01xDf', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(8, 'Mr. Joesph Bruen DVM', 'stracke.dwight@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FVkVTeFWvk', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(9, 'Dr. Pasquale Stamm', 'feest.sabryna@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3ar3m9rlCI', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(10, 'Ms. Mylene Schumm', 'kamren00@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'K7z7OZyjLF', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(11, 'Rosina Quigley', 'lexie.legros@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0rBe4ZCXKM', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(12, 'Prof. Amara O\'Conner', 'stoltenberg.pete@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ihd5z4mwrS', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(13, 'Antoinette Kuphal', 'major03@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CCUffbmNo9', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(14, 'Elinor Bergstrom MD', 'sherwood.kassulke@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tmr7IQh0Gv', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(15, 'Prof. Jeremie Romaguera Sr.', 'carlee.langworth@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C2EnyTaZaZ', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(16, 'Prof. Dominic Jacobson', 'ylabadie@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oLMbAGBvFN', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(17, 'Maye Ratke', 'colin.hammes@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2p1QmHxs7p', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(18, 'Baby Cormier', 'cjenkins@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xn7iWYcuQ7', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(19, 'Bobbie Mosciski', 'purdy.mellie@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RG9JR3I3Ia', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(20, 'Jaeden Dickens', 'hyatt.edythe@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RFlBeBYJWn', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(21, 'Everette Nicolas', 'benny.kuphal@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2ovpQJQYtJ', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(22, 'Mr. Darrick Bins II', 'lessie53@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LjQ5NCOMTk', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(23, 'Vivien Rempel', 'ole.collins@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dp4L2mKKeF', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(24, 'Mrs. Theresa Padberg Jr.', 'yost.jerrold@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1QlyeQJWEN', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(25, 'Jaylin Rolfson', 'parisian.amara@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'onVvSQoQpU', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(26, 'Katlynn Goodwin', 'elenor.hermann@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HYkiDhvG2y', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(27, 'Jayda Purdy', 'hallie.padberg@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VaHB1eCrU5', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(28, 'Prof. Dannie Lubowitz MD', 'hammes.roderick@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k7bvJzDxUM', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(29, 'Sienna Shields', 'xhayes@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BRPkVICBfH', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(30, 'Eveline Murray', 'sgerhold@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uZXAmpwKG9', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(31, 'Mrs. Kianna Huels Jr.', 'sraynor@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2kQM3ApPg9', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(32, 'Prof. Amelia Reinger', 'heathcote.annabelle@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'N6Vk2BN3Cb', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(33, 'Mr. Maverick Keebler V', 'karlie.kerluke@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BL8deNApoz', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(34, 'Dr. Vella Hackett', 'aschmidt@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b3ytAWGJfr', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(35, 'Rick Hoeger', 'hane.london@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wZUlPSUuCQ', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(36, 'Dr. Coy Walter PhD', 'considine.garett@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'J8iPibt7QZ', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(37, 'Camron Schmeler', 'jamal.hansen@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '91PYD5ftxm', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(38, 'Glenda Crona III', 'orion.marks@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SLjimzlfhB', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(39, 'Prof. Savion Maggio III', 'earnestine.murray@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bjo71KHXcY', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(40, 'Prof. Tod Upton', 'danyka.rutherford@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dDUQJDTHiq', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(41, 'Alejandrin Altenwerth', 'davon.zieme@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TQ6yViaNLd', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(42, 'Nona Oberbrunner DDS', 'mattie37@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'A2bQxTtAfo', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(43, 'Conor Fay', 'feichmann@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HUo5aKMEBr', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(44, 'Deja Prohaska DVM', 'fatima23@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BRkf2h2jTV', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(45, 'Imelda Terry', 'marquis.osinski@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UJvWjFEvc4', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(46, 'Kiana Corkery', 'anne89@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'F4OTHoJWSb', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(47, 'Miss Destiney Adams', 'kayli.bednar@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mhKn1DRBZH', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(48, 'Ashlynn Breitenberg', 'kuhn.tyreek@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kqDgRi7qzf', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(49, 'Dr. Gilda Cassin', 'okeefe.adrianna@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cmeV6byhLu', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(50, 'Hollis Hills', 'uward@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OMdnruD8nK', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(51, 'Laurel Hettinger', 'dietrich.darius@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dCBzzFImXx', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(52, 'Prof. Merritt Conroy', 'tanya.mcglynn@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WCVhUGZXw3', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(53, 'Keira Wisoky Sr.', 'noah67@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '498vapSQ77', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(54, 'Carroll Bartoletti', 'dach.martina@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lrLt6lcSu3', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(55, 'Mr. Nathen Streich', 'pollich.danielle@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DaysUamNTx', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(56, 'Dr. Archibald Powlowski DDS', 'kvonrueden@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cJpKt9KxwE', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(57, 'Orlo Volkman', 'cfranecki@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qkB3KriyMS', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(58, 'Claudia Gleason II', 'aemard@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OcYjjG4Svk', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(59, 'Ms. Margarita Kautzer PhD', 'bill.schmidt@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sb4YGxg2pN', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(60, 'Wyatt Koss', 'kilback.nola@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xCbcUWfjdj', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(61, 'Morton Torphy DDS', 'dglover@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YkwdVYA1zu', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(62, 'Mr. Grayson Barton', 'eichmann.madisyn@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OrSD2FmUsq', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(63, 'Mr. Fabian Spencer DVM', 'howe.jarret@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NgChcCA6yk', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(64, 'Mr. Fernando Schuster DVM', 'nhudson@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6XPiwA6nN8', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(65, 'Dr. Delphine Funk DDS', 'deron48@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qw57RImefk', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(66, 'Jerel Dach', 'sofia.brekke@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Q6qzB4Xpnb', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(67, 'Lucas Torphy', 'qdibbert@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VjVLRQnTPp', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(68, 'Richie Schimmel DVM', 'ahamill@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BABITsYA1e', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(69, 'Athena Schultz Jr.', 'nya.krajcik@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'g4dhcag8Ba', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(70, 'Earnest Kutch', 'qchristiansen@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xTVGXDreZ1', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(71, 'Jane Mohr', 'marvin.emmy@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'deqQZz5DPn', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(72, 'Miss Lydia Upton', 'altenwerth.savannah@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'G0RHC8UZIX', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(73, 'Justice Braun', 'wuckert.rodger@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pS8Owr6Vw7', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(74, 'Nelson Keeling', 'jannie61@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pQQXCvfCGo', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(75, 'Ms. Nikita Feil', 'adams.rex@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Vf7CYkEjY1', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(76, 'Dr. Gladys Romaguera PhD', 'wunsch.marlee@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7acERgaivA', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(77, 'Madison Funk', 'vicente.smitham@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KrdwZe8phe', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(78, 'Adolphus Kuhlman III', 'zelma.reynolds@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ztXRppj97D', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(79, 'Dr. Paul Hilpert MD', 'vroberts@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Erxj9p3Fvm', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(80, 'Miss Dorris Boyle II', 'eldridge29@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6OiS9CVM13', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(81, 'Prof. Lonny Leffler PhD', 'eulalia18@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sa8hHMhryS', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(82, 'Abbie Collier', 'sokeefe@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zytZhdTRFg', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(83, 'Icie Nolan III', 'aron43@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DhIqy6GZLe', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(84, 'Dr. Lula Harris III', 'wziemann@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'myZ9JTMykx', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(85, 'Eunice Koss DDS', 'alexis94@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pIIlU8IJN8', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(86, 'Jordy Runte', 'mohamed.prohaska@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '62WMUtLzmt', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(87, 'Raheem Breitenberg IV', 'kvon@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Nv2I812DJ7', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(88, 'Prof. Magnus Bins', 'mcollier@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WfmZH1DH45', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(89, 'Giles Kassulke Jr.', 'wintheiser.reanna@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2dHr80iBwm', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(90, 'Minerva Dietrich IV', 'deborah21@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RWLPt6XTag', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(91, 'Theodora Gerhold', 'alva.dickinson@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ln1dQBa31O', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(92, 'Dangelo Schmidt', 'polly45@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mHnFR8m6F9', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(93, 'Prof. Domingo Reynolds', 'xsanford@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dKGHtzaHt3', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(94, 'Nick Hermann III', 'koepp.tania@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2vLjmGRuCQ', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(95, 'Imelda Rice DDS', 'ledner.keeley@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kCojYECHdk', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(96, 'Ryann Bosco', 'claire93@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PfOQlcPfaj', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(97, 'Louvenia Corkery', 'pollich.camryn@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PcdiNLLG3T', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(98, 'Joesph Dibbert', 'johnpaul33@example.org', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8Y3TVZQe21', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(99, 'Benjamin Hermiston', 'ludwig.crist@example.com', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zrlL98zEwS', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(100, 'Quinton Schimmel', 'dickinson.patience@example.net', '2022-07-12 00:20:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y20uNLuwZj', '2022-07-12 00:20:58', '2022-07-12 00:20:58'),
(101, 'admin', 'admin@gmail.com', NULL, '$2y$10$hMR/G3v2heoCUqBgtAZLwegzObo5Ny7hhKs0feJUgG5Fr0zoPjFGO', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informations`
--
ALTER TABLE `informations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `informations_slug_unique` (`slug`),
  ADD KEY `informations_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_category`
--
ALTER TABLE `model_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `model_category_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `model_category_category_id_foreign` (`category_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_slug_unique` (`slug`),
  ADD KEY `news_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `informations`
--
ALTER TABLE `informations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `model_category`
--
ALTER TABLE `model_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1110;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `informations`
--
ALTER TABLE `informations`
  ADD CONSTRAINT `informations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `model_category`
--
ALTER TABLE `model_category`
  ADD CONSTRAINT `model_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
