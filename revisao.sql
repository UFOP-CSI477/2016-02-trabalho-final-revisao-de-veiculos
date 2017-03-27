-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 27-Mar-2017 às 15:47
-- Versão do servidor: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `revisao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_03_13_212654_create_veiculos_table', 2),
(4, '2017_03_13_212736_create_servicos_table', 2),
(5, '2017_03_13_212828_create_vistorias_table', 2),
(6, '2017_03_13_213114_add_emveiculos_table', 3),
(7, '2017_03_13_213328_add_emvistorias_table', 4),
(8, '2017_03_13_213404_add_emservicos_table', 4),
(9, '2017_03_13_213620_add_emusers_table', 5),
(10, '2017_03_18_190443_remover_chave_servico', 6),
(11, '2017_03_18_190933_remover_chave_vistoria', 7),
(12, '2017_03_26_013351_add_servicosID_to_vistorias_table', 8),
(13, '2017_03_26_034229_add_userID_to_vistorias_table', 9),
(14, '2017_03_26_060415_create_noticias_table', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `texto` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `data`, `texto`, `created_at`, `updated_at`) VALUES
(1, 'Noticia 1', '2017-03-01', 'Silvio Santos Ipsum É namoro ou amizadeemm? Um, dois três, quatro, PIM, entendeuam? Ma vai pra lá. Ma vale dérreaisam? Mah você não consegue né Moisés? Você não consegueam. Ma vai pra lá. Mah ooooee vem pra cá. Vem pra cá. Mah você mora com o papai ou com a mamãem? Qual é a musicamm? Eu só acreditoammmm.... Vendoammmm. O prêmio é em barras de ouro, que vale mais que dinheiroam. Um, dois três, quatro, PIM, entendeuam? Valendo um milhão de reaisammm. O arriscam tuduam, valendo um milhão de reaisuam.', '2017-03-02 03:00:00', '2017-03-02 03:00:00'),
(3, 'Noticia 3', '2017-03-10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin gravida ex non lorem dapibus, vitae rutrum metus iaculis. Donec a sagittis massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam aliquet magna eget leo fermentum, vitae cursus tortor interdum. Quisque nisi tortor, condimentum et ornare a, commodo blandit nisl. Fusce quis mauris sed justo hendrerit finibus. Maecenas tempor ornare nibh vitae mattis. Donec pellentesque euismod ligula, ac auctor lectus.', '2017-03-27 06:38:44', '2017-03-27 06:38:44'),
(2, 'Noticia 2', '2017-03-16', 'Mussum Ipsum, cacilds vidis litro abertis. Per aumento de cachacis, eu reclamis. in elementis mé pra quem é amistosis quis leo. Admodum accumsan disputationi eu sit. Vide electram sadipscing et per. Leite de capivaris, leite de mula manquis.', '2017-03-16 03:00:00', '2017-03-16 03:00:00'),
(4, 'Titulo', '2017-03-03', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque id consectetur quam, nec viverra metus. Cras pretium, ligula vitae lacinia mollis, nibh erat laoreet metus, vel lobortis metus diam quis sem. Donec at risus at augue luctus dictum eget eget dui. Maecenas eleifend lacinia velit sed sodales. Maecenas at luctus justo. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed id porttitor justo. Curabitur sed placerat lacus. Proin at ex hendrerit, tempus augue sed, sollicitudin elit. Morbi rutrum velit quis tellus commodo egestas. Proin sed eros ac lectus congue porttitor a in orci. Vivamus ultricies diam et enim vestibulum, sit amet tincidunt dolor dictum. In interdum porta ultrices. Curabitur finibus suscipit mauris, nec elementum diam mattis a.', '2017-03-27 16:47:23', '2017-03-27 16:47:23');

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nome` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` double(10,2) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`id`, `created_at`, `updated_at`, `nome`, `valor`, `user_id`) VALUES
(8, '2017-03-27 16:53:38', '2017-03-27 17:50:08', 'Balanceamento', 70.23, 2),
(7, '2017-03-27 16:53:08', '2017-03-27 16:53:08', 'Troca de óleo', 20.00, 2),
(10, '2017-03-27 17:50:34', '2017-03-27 17:50:34', 'Troca de pneus', 300.79, 2),
(9, '2017-03-27 16:56:04', '2017-03-27 16:56:04', 'Substituir filtro de combustível', 34.00, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `type`) VALUES
(1, 'kelly', 'kelly@email.com', '$2y$10$SVSQuMnrLXWtak8pb5W6deOKGoeZ0kwvnxHoQt0yRsUQT3ANxmIeq', 'NJz6uzIuTeo8kWzqY5VoS9pLB8eJVXrbySPoerGEi18DAHXx2WIYexoqx7lw', '2017-03-18 21:13:23', '2017-03-18 21:13:23', 1),
(2, 'admin', 'admin@email.com', '$2y$10$0cxGVH.kmJ.0mPwesbiMk.Wqs8cYpD1juk.dpSCS/fzP/.TFo116C', '2yTbECB1t7OhfVPNdzZBkhP4oSC7p6OrGnqGjYSbc3kSMxWTkQ0UwxUftaFJ', '2017-03-18 21:32:51', '2017-03-18 21:32:51', 2),
(3, 'Adriana', 'adriana.fernandadeoliveira@hotmail.com', '$2y$10$BPC3AI4FkXjN0RJS/oLvxenWXofYuBCrRVhwVGWkaQGASuI.oLjRq', NULL, '2017-03-25 02:53:27', '2017-03-25 02:53:27', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculos`
--

CREATE TABLE `veiculos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `placa` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modelo` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cor` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `veiculos`
--

INSERT INTO `veiculos` (`id`, `created_at`, `updated_at`, `placa`, `modelo`, `cor`, `user_id`) VALUES
(3, '2017-03-11 03:00:00', '2017-03-27 17:48:14', 'por1567', 'fiesta', 'prata', 1),
(4, '2017-03-26 22:07:34', '2017-03-26 22:07:34', 'puu0948', 'celta', 'branco', 1),
(6, '2017-03-27 17:58:48', '2017-03-27 17:58:48', 'rty1234', 'hb20', 'Preto', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vistorias`
--

CREATE TABLE `vistorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `quilometragem` double(10,2) NOT NULL,
  `veiculo_id` int(10) UNSIGNED NOT NULL,
  `servico_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `vistorias`
--

INSERT INTO `vistorias` (`id`, `created_at`, `updated_at`, `data`, `hora`, `quilometragem`, `veiculo_id`, `servico_id`, `user_id`) VALUES
(14, '2017-03-27 17:45:04', '2017-03-27 17:45:04', '2017-03-16', '12:01:00', 10000.00, 4, 7, 2),
(15, '2017-03-27 17:49:36', '2017-03-27 17:49:36', '2017-03-24', '23:02:00', 5000.00, 4, 9, 1),
(13, '2017-03-27 17:10:47', '2017-03-27 17:49:03', '2017-03-22', '12:01:00', 45305.00, 3, 6, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `servicos_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `veiculos`
--
ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `veiculos_user_id_foreign` (`user_id`);

--
-- Indexes for table `vistorias`
--
ALTER TABLE `vistorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vistorias_veiculo_id_foreign` (`veiculo_id`),
  ADD KEY `vistorias_servico_id_foreign` (`servico_id`),
  ADD KEY `vistorias_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `veiculos`
--
ALTER TABLE `veiculos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `vistorias`
--
ALTER TABLE `vistorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
