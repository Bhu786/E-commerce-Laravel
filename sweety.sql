-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2021 at 04:43 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sweety`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_05_02_132603_create_users_table', 1),
(4, '2021_05_03_054154_create_products_table', 2),
(5, '2021_05_05_021257_create_cart_table', 3),
(6, '2021_05_06_080153_create_orders_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`, `description`, `gallery`, `created_at`, `updated_at`) VALUES
(1, 'Meringue Kisses', '450.00', 'Kisses', 'Smooth and crispy freshly baked Meringue Kisses.', 'https://us.123rf.com/450wm/mikeosphoto/mikeosphoto1903/mikeosphoto190300254/124234634-three-meringue-cookies-meringues-kisses-in-pink-color-isolated-on-white-background.jpg?ver=6', NULL, NULL),
(2, 'Hubba Bubba Bubble Gum', '250.00', 'Chewy Sweets', 'Hubba Bubba Bubble Gum 100g', 'https://u5j4h3u7.stackpathcdn.com/pub/media/catalog/product/cache/172d96e30d7cd3d4380b53391edef300/3/0/30146-01_1.jpg', NULL, NULL),
(3, 'Strawberry Jujubes', '350.00', 'Jujubes', 'Sri Lankan Jujubes.These are real wonder perfect candies, soft ,chewy and essenced.(100g)', 'https://www.goodiessweets.co.uk/wp-content/uploads/fizzystrawb.jpg', NULL, NULL),
(4, 'Chocolate Peanuts', '500.00', 'Chocolate Peanuts', 'Snack on a chocolate-covered classic with chocolate peanuts from SWEETY. We blanket our fresh-roasted peanuts in fine milk chocolate.', 'https://nuts.com/images/rackcdn/ed910ae2d60f0d25bcb8-80550f96b5feb12604f4f720bfefb46d.ssl.cf1.rackcdn.com/ceaf1f5c172f7fc9-TOzA3D_d-large.jpg', NULL, NULL),
(5, 'Red Boondi', '100.00', 'Boondi', 'The sweetest boondi is the red one, the tastiest, largest, sweetest honey boondi.(100g)', 'https://www.wishque.com/data/images/products/4292/25099303_393624919156_0.63104200-1535126656.jpg', NULL, NULL),
(6, 'Lollipop Sticks', '150.00', 'Lollipop', 'Colored sweet candy, lollipop sticks  from SWEETY.', 'https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX3776963.jpg', NULL, NULL),
(7, 'Sugar Free Jelly Bears', '300.00', 'Sugar Free Sweets', 'These colourful gummy candies are great for kids of all ages. Tasty fruit flavour cute little chewy jelly bears. But with no sugar (the sweetness comes from Maltitol Syrup).', 'https://cdn.cottagecountrycandies.com/wp-content/uploads/2018/02/Gummy-Bears-1050px.png', NULL, NULL),
(8, 'Marshmallow', '250.00', 'Marshmallow', 'Marshmallow is a sweet, soft treat. Made of gelatin and sugar, with a dusty powdered sugar surface, and they squish like a sponge when you squeeze or bite down on them.', 'https://www.candywarehouse.com/item-images/128477-01_pink-mini-marshmallows-118-ounce-bag.jpg?resizeid=102&resizeh=500&resizew=500', NULL, NULL),
(9, 'Milk Toffee with Cashew Nuts (50Pcs)', '1000.00', 'Milky Sweets', 'Taste homemade Milk Toffee with premium ingredients. It will simply melt in your mouth giving luscious with its unique taste. ', 'https://buyonline.lk/2831-whatnew_default/milk-toffee-with-cashew-nuts-50-pcs.jpg', NULL, NULL),
(10, 'Strawberry Wafer Sticks (60 Sticks)', '300.00', 'Wafer Sticks', 'Strawberry flavoured.Tasty with ice cream and suitable to decorate cake.', 'https://sc01.alicdn.com/kf/UT8HorHXz0aXXagOFbXs/117521539/UT8HorHXz0aXXagOFbXs.jpg', NULL, NULL),
(11, 'Chocolate Wafer Sticks (60 Sticks)', '300.00', 'Wafer Sticks', 'Chocolate flavoured. Tasty with ice cream and suitable to decorate cake.', 'https://t4.ftcdn.net/jpg/04/01/15/61/360_F_401156109_iaUARbtuKXDYjPxwEV5yP1SsDwrlKROs.jpg', NULL, NULL),
(12, 'Chocolate Pebbles', '250.00', 'Chocolate', 'Fantastic looking pebbles made of milk chocolate in a sweet crisp hard sugar shell. The stones come in various shapes, colours and sizes. (100g)', 'https://image.freepik.com/free-photo/colorful-candy-white-background_62856-1222.jpg', NULL, NULL),
(13, 'Bubblegum Lollipops', '50.00', 'Lollipop', 'Tasty Bubblegum Lollipops are bigger than the average lollipop, but are still full of bubblegum flavour. Bright blue in colour and individually wrapped for freshness.', 'https://u5j4h3u7.stackpathcdn.com/pub/media/catalog/product/cache/20a66ad9832fef4ad18737cb360000c7/2/4/2486-01_1.jpg', NULL, NULL),
(14, 'Jelly Fruit', '100.00', 'Jelly', ' Buy Fruti Jelly Fruit Candy. As seen on SWEETY. Fruit-shaped jellies, which come in grape, pineapple, orange, strawberry and green apple flavors.', 'https://i5.walmartimages.com/asr/fb285826-e004-4c5d-a886-452a85c0b0fd_1.a7be37755f5c378993cfc3e631c586b9.jpeg', NULL, NULL),
(15, 'Candy Cane', '40.00', 'Candy', 'Red and White Peppermint Candy Canes. Each candy cane is hand-blown and crafted with caning techniques.', 'https://www.candywarehouse.com/item-images/132392-01_bobs-red-and-white-peppermint-candy-canes-12-piece-box.jpg', NULL, NULL),
(16, 'Candy Coated Popcorn - Green Apple', '100.00', 'Candy Coated Popcorn', 'Great for game night, movie night, or on-the-go snacking, this crowd-pleasing treat offers a fun new twist on a classic snack. ', 'https://www.candywarehouse.com/item-images/150003-01_tastebuds-apple-green-candy-coated-popcorn-1-gallon-bag.jpg', NULL, NULL),
(17, 'Jelly Beans Sunkist Lemon', '200.00', 'Jelly Beans', 'Sunkist Lemon flavored jelly beans. (400 pieces)', 'https://www.toversleutel.nl/1844-home_default/citroen.jpg', NULL, NULL),
(18, 'Mini Licorice', '300.00', 'Licorice', 'strawberry flavored', 'https://www.bomboyscandy.com/wp-content/uploads/2019/09/red_licorice.jpg', NULL, NULL),
(19, 'Starlight Mints', '250.00', 'Mints', 'A food item often consumed as an after-meal refreshment or before business and social engagements to improve breath odor. Mints are commonly believed to soothe the stomach given their association with natural byproducts of the plant genus Mentha.', 'https://www.candywarehouse.com/item-images/126249-01_primrose-peppermint-starlight-mints-candy-5lb-bag.jpg?resizeid=102&resizeh=500&resizew=500', NULL, NULL),
(20, 'Caramel Cubes', '50.00', 'Bite Size Sweety', 'Caramel candy, is a soft, dense, chewy candy made by boiling a mixture of milk or cream, sugar(s), glucose, butter, and vanilla.', 'https://www.candywarehouse.com/item-images/130156-01_kraft-caramel-squares-candy-11-ounce-bag.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'anoja kumudu', 'anoja@gmail.com', '$2y$10$WiCiSa7Z/I9kogLYmgEC9Oxu7z0Uo2tYUi2pxq58R2jH.npPq6w.S', NULL, NULL),
(3, 'abc', 'abc@gmail.com', '$2y$10$Y2bo42b3j1gTM8EUhUmrB.f6EHydZ.sUuGI0kEdg085CgYC12O9bq', '2021-05-06 08:42:00', '2021-05-06 08:42:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
