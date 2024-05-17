-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.32-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para ecom_store
CREATE DATABASE IF NOT EXISTS `ecom_store` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `ecom_store`;

-- Copiando estrutura para tabela ecom_store.about_us
CREATE TABLE IF NOT EXISTS `about_us` (
  `about_id` int(10) NOT NULL AUTO_INCREMENT,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela ecom_store.about_us: ~0 rows (aproximadamente)
INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
	(1, 'Sobre Nós - MyShop', 'Bem-vindo à MyShop, um e-commerce dedicado a conectar consumidores a uma vasta gama de produtos, ao mesmo tempo em que apoiamos e promovemos pequenos empreendedores. Inspirados pelo sucesso de plataformas como a Shopee, nossa missão é criar um mercado digital vibrante e inclusivo, onde todos, desde pequenos fabricantes locais até artesãos independentes, possam alcançar seu público-alvo de forma eficaz e eficiente.\r\n', 'Na MyShop, acreditamos no poder da diversidade e da inovação. Nossa plataforma oferece uma experiência de compra fácil e segura, com uma variedade de categorias que atendem a todas as necessidades e preferências. Desde moda, eletrônicos, produtos de beleza e cuidados pessoais, até itens para casa e decoração, nosso objetivo é ser a primeira escolha dos consumidores que buscam qualidade e conveniência.\r\n<p>\r\nEstamos comprometidos com o sucesso de nossos vendedores. Para isso, disponibilizamos ferramentas e recursos que ajudam os empreendedores a crescerem seus negócios online. Oferecemos suporte especializado, dicas de marketing e acesso a uma base de clientes diversificada e engajada. Entendemos os desafios enfrentados pelos pequenos negócios e trabalhamos incessantemente para criar oportunidades que permitam sua prosperidade em um mercado competitivo.\r\n<p>\r\nA sustentabilidade e a responsabilidade social também são pilares fundamentais da MyShop. Valorizamos práticas éticas e sustentáveis, incentivando nossos parceiros a adotarem métodos de produção e venda que respeitem o meio ambiente e a comunidade.\r\n<p>\r\nNosso compromisso com a excelência se reflete em nosso atendimento ao cliente, que está sempre pronto para ajudar com qualquer dúvida ou necessidade. A satisfação dos nossos clientes é a nossa maior prioridade, e nos esforçamos para oferecer um serviço que supere as expectativas.\r\n<p>\r\nConvidamos você a explorar a MyShop, descobrir produtos únicos e apoiar os talentos locais. Juntos, podemos criar uma comunidade vibrante onde todos têm a oportunidade de prosperar.\r\n<p>\r\nMyShop – Conectando Pessoas, Fortalecendo Negócios.\r\n');

-- Copiando estrutura para tabela ecom_store.admins
CREATE TABLE IF NOT EXISTS `admins` (
  `admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela ecom_store.admins: ~0 rows (aproximadamente)
INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
	(2, 'Administrator', 'admin@mail.com', 'Password@123', 'user-profile-min.png', '0000000000000', 'BRAZIL', 'ADM', ' ADM MYSHOP - NÃO COMPARTILHAR');

-- Copiando estrutura para tabela ecom_store.bundle_product_relation
CREATE TABLE IF NOT EXISTS `bundle_product_relation` (
  `rel_id` int(10) NOT NULL AUTO_INCREMENT,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL,
  PRIMARY KEY (`rel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela ecom_store.bundle_product_relation: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela ecom_store.cart
CREATE TABLE IF NOT EXISTS `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela ecom_store.cart: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela ecom_store.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela ecom_store.categories: ~4 rows (aproximadamente)
INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
	(2, 'Feminino', 'no', 'feminelg.png'),
	(3, 'Kids', 'no', 'kidslg.jpg'),
	(4, 'Outros', 'yes', 'othericon.png'),
	(5, 'Masculino', 'yes', 'malelg.png');

-- Copiando estrutura para tabela ecom_store.contact_us
CREATE TABLE IF NOT EXISTS `contact_us` (
  `contact_id` int(10) NOT NULL AUTO_INCREMENT,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela ecom_store.contact_us: ~0 rows (aproximadamente)
INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
	(1, 'myshop@mail.com', 'Fale conosco', 'Se você tiver alguma dúvida, não hesite em nos contatar, nosso centro de atendimento ao cliente está trabalhando para você 24 horas por dia, 7 dias por semana.');

-- Copiando estrutura para tabela ecom_store.coupons
CREATE TABLE IF NOT EXISTS `coupons` (
  `coupon_id` int(10) NOT NULL AUTO_INCREMENT,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela ecom_store.coupons: ~2 rows (aproximadamente)
INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
	(5, 17, 'Desconto em moletom', '10', 'JOSUECOMFRIO', 10, 1),
	(6, 22, 'Desconto em caixa', '35', 'OSCARBALADEIRO', 10, 1);

-- Copiando estrutura para tabela ecom_store.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela ecom_store.customers: ~2 rows (aproximadamente)
INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
	(6, 'Sample Customer', 'customer@mail.com', 'Password123', 'Sample Country', 'Sample City', '7800000000', 'Sample Address', 'user-icn-min.png', '::1', '174829126'),
	(7, 'Henrique', 'henrilopes2006@gmail.com', '12345', 'Brasil', 'Campinas', '1999999999', 'Rua Senai', 'm_kit-atleta-completo-m-xima-performance.jpg', '::1', '177868044');

-- Copiando estrutura para tabela ecom_store.customer_orders
CREATE TABLE IF NOT EXISTS `customer_orders` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` text NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela ecom_store.customer_orders: ~9 rows (aproximadamente)
INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
	(17, 2, 100, 1715523401, 2, 'Large', '2017-02-20 05:21:42', 'pending'),
	(23, 3, 20, 1762810884, 1, 'Medium', '2021-09-14 05:35:57', 'Complete'),
	(24, 4, 100, 1972602052, 1, 'Large', '2021-09-14 13:37:52', 'Complete'),
	(25, 4, 90, 2008540778, 1, 'Medium', '2021-09-14 13:43:15', 'pending'),
	(27, 5, 120, 2138906686, 1, 'Small', '2021-09-15 00:18:41', 'Complete'),
	(28, 5, 180, 361540113, 2, 'Medium', '2021-09-15 00:25:42', 'Complete'),
	(29, 3, 100, 858195683, 1, 'Large', '2021-09-15 00:14:01', 'Complete'),
	(31, 6, 245, 901707655, 1, 'Medium', '2021-09-15 00:52:18', 'Complete'),
	(32, 6, 75, 2125554712, 1, 'Large', '2021-09-15 00:52:58', 'pending'),
	(33, 7, 119, 401969035, 1, 'G', '2024-05-17 14:10:52', 'pending');

-- Copiando estrutura para tabela ecom_store.enquiry_types
CREATE TABLE IF NOT EXISTS `enquiry_types` (
  `enquiry_id` int(10) NOT NULL AUTO_INCREMENT,
  `enquiry_title` varchar(255) NOT NULL,
  PRIMARY KEY (`enquiry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela ecom_store.enquiry_types: ~3 rows (aproximadamente)
INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
	(1, 'Suporte no pedido ou na estrega'),
	(2, 'Problemas Tecnicos'),
	(3, 'Outros');

-- Copiando estrutura para tabela ecom_store.manufacturers
CREATE TABLE IF NOT EXISTS `manufacturers` (
  `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela ecom_store.manufacturers: ~7 rows (aproximadamente)
INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
	(3, 'Nike', 'no', 'niketransl.png'),
	(9, 'Claudia Mourão', 'no', 'bfa9ed7d5c817c06f7ec873d8a01a096-sapato-salto-agulha-salto-agulha-plana.webp'),
	(10, 'Milori Baby', 'no', 'download.png'),
	(11, 'Logitech', 'no', 'download (1).png'),
	(12, 'Global Alumínio', 'no', 'D_NQ_NP_664797-MLA73581378019_122023-F.jpg'),
	(13, 'XTrad', 'no', 'xtrad_comercio_de_importao_e_exportao_logo.jpeg'),
	(14, 'Alpha.Co', 'no', 'download (2).png');

-- Copiando estrutura para tabela ecom_store.payments
CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int(10) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela ecom_store.payments: ~15 rows (aproximadamente)
INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
	(2, 1607603019, 447, 'UBL/Omni', 5678, 33, '11/1/2016'),
	(3, 314788500, 345, 'UBL/Omni', 443, 865, '11/1/2016'),
	(4, 6906, 400, 'Western Union', 101025780, 696950, 'January 1'),
	(5, 10023, 20, 'Bank Code', 1000010101, 6969, '09/14/2021'),
	(6, 69088, 100, 'Bank Code', 1010101022, 88669, '09/14/2021'),
	(7, 1835758347, 480, 'Western Union', 1785002101, 66990, '09-04-2021'),
	(8, 1835758347, 480, 'Bank Code', 1012125550, 66500, '09-14-2021'),
	(9, 1144520, 480, 'Bank Code', 1025000020, 66990, '09-14-2021'),
	(10, 2145000000, 480, 'Bank Code', 2147483647, 66580, '09-14-2021'),
	(20, 858195683, 100, 'Bank Code', 1400256000, 47850, '09-13-2021'),
	(21, 2138906686, 120, 'Bank Code', 1455000020, 202020, '09-13-2021'),
	(22, 2138906686, 120, 'Bank Code', 1450000020, 202020, '09-15-2021'),
	(23, 361540113, 180, 'Western Union', 1470000020, 12001, '09-15-2021'),
	(24, 361540113, 180, 'UBL/Omni', 1258886650, 200, '09-15-2021'),
	(25, 901707655, 245, 'Western Union', 1200002588, 88850, '09-15-2021');

-- Copiando estrutura para tabela ecom_store.pending_orders
CREATE TABLE IF NOT EXISTS `pending_orders` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela ecom_store.pending_orders: ~0 rows (aproximadamente)
INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
	(33, 7, 401969035, '23', 1, 'G', 'pending');

-- Copiando estrutura para tabela ecom_store.products
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(10) NOT NULL AUTO_INCREMENT,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela ecom_store.products: ~7 rows (aproximadamente)
INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
	(16, 8, 2, 9, '2024-05-17 11:38:34', 'SANDALHAS RASTEIRINHAS - FEMININA', 'sandalha-rasteirinha', 'rasteira_bege_ci4088_5-1vod2c2p76.webp', 'rasteira_bege_ci4088_4-gu7ctvhg6k.webp', 'rasteira_bege_ci4088_6-z9xri4uy0f.webp', 52, 79, '<br>Elegante, essa sandália rasteira sai do comum com suas tiras finas, adicionando um toque de sofisticação ao visual. Com salto no tom, é a escolha perfeita para um estilo fashion e confortável nos dias ensolarados.\r\n\r\n\r\n<br>GUIA DE TAMANHOS (Ei! Não sabe seu tamanho? Vamos descobrir!)\r\n<br>34 - 23,0 cm\r\n<br>35 - 24,5 cm\r\n<br>36 - 25,5 cm\r\n<br>37 - 26,0 cm\r\n<br>38 - 27,0 cm\r\n<br>39 - 27,5 cm\r\n', '\r\n\r\n', '\r\n\r\n', 'sapatilha', 'OFERTA', 'product'),
	(17, 6, 5, 3, '2024-05-17 11:45:10', 'MOLETOM GOLA REDONDA - INGLATERRA', 'moletom-nike-inglaterra', 'br-11134207-7r98p-lll9dqpy2feica.jpeg', 'br-11134207-7r98o-lll9dqpy10u2b5.jpeg', 'br-11134207-7r98p-lll9dqpy2feica.jpeg', 80, 120, '<br>FIQUE ELEGANTE E MODERNO COM ESSA BLUSA MOLETOM DE GOLA REDONDA, TENHA A CERTEZA DA SATISFAÇÃO COM O QUE TEM DE MELHOR EM MOLETONS NO BRASIL. ALÉM DE SER LINDO E VESTIR MUITO BEM!\r\n\r\n\r\n<br>EVITE OS ABORRECIMENTOS DE UMA DEVOLUÇÃO. CONFIRA OS TAMANHOS DE ACORDO COM PESO E ALTURA:\r\n<br>P – PESO: 45 á 65 Kg ALTURA: 1,50 á 1,65 cm\r\n<br>M - PESO: 65 á 75 Kg ALTURA: 1,65 á 1,75 cm\r\n<br>G – PESO : 75 á 80 Kg ALTURA 1,75 á 1,80 cm\r\n<br>GG – PESO: 80 á 95 kg ALTURA 1,80 á 1,90 cm\r\n\r\n\r\n<br>NOSSOS PRODUTOS SÃO UNISSEX\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'moletom', 'SPORTS', 'product'),
	(18, 10, 3, 10, '2024-05-17 11:55:10', 'BOLSA MATERNIDADE PARA RECÉM NASCIDO - KIT 04 PEÇAS IMPERMEÁVEL E TÉRMICO', 'bolsa-maternidade', 'a47164a67f5190d6668b01153c511b25.jpeg', 'ab3eedf0abae28990e81672dcdd4d2cc.jpeg', 'OIP.jpeg', 110, 110, '\r\n<p>KIT BOLSAS DE MATERNIDADE XADREZ COM MARROM 04 PEÇAS | MILORI BABY\r\n\r\n<p>Tenha certeza que está adquirindo um produto de alta qualidade. Todos os nossos produtos são produzidos no Brasil e estamos a mais de 10 anos no seguimento de confecção de bolsas de maternidade.\r\n\r\n<p>Nosso kit é composto por uma mala de maternidade, uma Bolsa de Passeio, um trocador de fraldas, um porta mamadeiras térmico e uma alça transversal removível.\r\n<p>#MEDIDAS#\r\n<br>01 Mala Maternidade - Comprimento: 40cm | Altura: 31cm | Largura: 19cm\r\n<br>01 Bolsa Passeio - Comprimento: 30cm | Altura: 21cm | Largura: 14cm\r\n<br>01 Trocador Portátil - Comprimento: 65cm | Largura: 39cm\r\n<br>01 Alça Transversal removível - Comprimento: 100cm\r\n<br>01 Porta Mamadeira Térmico (suporta 2 mamadeiras)\r\n<br>01 Pingente\r\n', '\r\n\r\n<p>#MATERIAL#\r\n\r\n<p>O Material utilizado na parte externa é um tecido conhecido de “Royalite” que é um tipo de tecido ecológico sintético muito resistente, que não descasca e de fácil limpeza, e o melhor, de alta qualidade e durabilidade. Na parte interna utilizamos um forro branco com base em PVC (polipropileno), que tem a função TÉRMICA e IMPERMEÁVEL, deixando o produto totalmente completo e preparado para o uso no dia a dia.\r\n\r\n<p>Todos os nossos produtos são Produzidos no Brasil e passam por um rígido controle de qualidade, desde o material utilizado, ao acabamento e até no reforço das alças e da costura de uma forma geral.\r\n\r\n', '\r\n\r\n\r\n\r\n', 'bolsa', 'Baby´s', 'product'),
	(20, 11, 4, 11, '2024-05-17 13:07:45', 'MOUSE GAMER SEM FIO LOGITECH G502 - LIGHTSPEED TECHNOLOGY', 'mouse-gamer-g502', 'mouse-gamer-logitech-g502-hero-com-rgb-lightsync-ajustes-de-peso-11-botoes-programaveis-sensor-hero-25k-910-005550_1630676372_gg.jpg', 'mouse-gamer-logitech-g502-hero-com-rgb-lightsync-ajustes-de-peso-11-botoes-programaveis-sensor-hero-25k-910-005550_1630676375_gg.jpg', 'mouse-gamer-logitech-g502-hero-com-rgb-lightsync-ajustes-de-peso-11-botoes-programaveis-sensor-hero-25k-910-005550_1630676367_gg.jpg', 299, 299, '<p>Seu mouse gamer favorito de alto desempenho oferece uma funcionalidade mais precisa do que nunca. Agora, personalize a iluminação RGB para combinar com seu estilo e ambiente ou sincronize com outros produtos Logitech G. O G502 apresenta nosso sensor HERO 25K de última geração para máxima precisão e exatidão de rastreamento. Não importa o seu estilo de jogo, é fácil ajustar o G502 HERO para atender às suas necessidades, com perfis personalizados para seus jogos, sensibilidade ajustável de 400 a 25.600 DPI e um sistema de peso ajustável que permite ajuste e balanceamento de até cinco 3,6g pesos para o equilíbrio e a sensação corretos.\r\n\r\n<p>Principais Recursos:\r\n<br>- Sensor Hero 25K com rastreamento máximo de 25.600 DPI\r\n<br>- 11 botões programáveis\r\n<br>- Pesos ajustáveis\r\n<br>- Tecnologia LIGHTSYNC RGB\r\n<br>- Tensionamento de botão com interruptor mecânico\r\n\r\n\r\n\r\n', '\r\nCaracterísticas\r\n<br>- Marca: Logitech\r\n<br>- Modelo: G502 HERO\r\n<p>\r\nEspecificações\r\n<br>- Roda de rolagem hiper veloz de modo duplo\r\n<br>- Memória interna\r\n<br>- Iluminação RGB com aproximadamente 16,8 milhões de cores*\r\n<p>\r\nRecursos\r\n<br>- Sensor HERO com rastreamento de precisão de até 16.000 DPI\r\n<br>- 11 botões programáveis e rolagem hiper-rápida\r\n<br>- Cinco pesos de 3,6 g para ajustar o peso e o equilíbrio\r\n<br>- Tecnologia LIGHTSYNC para uma iluminação RGB totalmente personalizável\r\n<br>- Clique suave e preciso com feedback rápido de cliques\r\n<p>\r\nRastreamento\r\n<br>- Sensor: HEROTM\r\n<br>- Resolução: 100–16.000 DPI\r\n<br>- Aceleração máx.: >40 G**\r\n<br>- Velocidade máx.: >400 IPS**\r\n<br>- Suavização/aceleração/filtragem nulas\r\n<p>\r\nSensibilidade\r\n<br>- Taxa de transmissão USB: 1.000 Hz (1 ms)\r\n<br>- Microprocessador: 32 bits ARMs\r\n<p>\r\nDurabilidade\r\n<br>- Base de PTFE: alcance de 250 km**\r\n<p>\r\nRequisitos do Sistema\r\n<br>- Porta USB\r\n<br>- Windows 7 ou posterior,mac OS 10.11 ou posterior, ou Chrome OSTM\r\n<br>- (Opcional) Acesso à Internet para download de software\r\n<p>\r\nConteúdo da Embalagem\r\n<br>- 01 Mouse para jogos\r\n<br>- 01 Pesos ajustáveis com estojo\r\n<br>- 01 Documentação do usuário\r\n<p>\r\n<p>* Requer o Logitech Gaming Software, disponível em logitechG.com/downloads\r\n<br>** Avaliado no mousepad para jogos Logitech G240.\r\n<p>\r\nGarantia:\r\n<br>24 meses de garantia\r\n<p>\r\nPeso:\r\n<br>210 gramas (bruto com embalagem)\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n', 'mouse', 'Gamer', 'product'),
	(21, 11, 4, 12, '2024-05-17 13:12:03', 'JOGO DE PANELAS ELEGANCE ANTIADERENTE TEFLON - 9 PEÇAS E TAMPA DE VIDRO', 'jogo-panelas-9pcs', '170610671761905a24f595bf5355354d83f32e6837_thumbnail_720x.webp', 'br-11134207-7r98o-lu2fsej5i0rp03.jpeg', 'br-11134207-7r98o-lqzdqhmxkilg8d_tn.jpeg', 154, 164, '\r\nPrecisando renovar suas panelas? Conheça o incrível Jogo de Panelas Premium Antiaderente em Alumínio, com 9 peças, leiteira e tampa de vidro. Este jogo de panelas é projetado com 7 camadas de antiaderente, proporcionando durabilidade e facilidade na hora de cozinhar e limpar. Seu design exclusivo possui um interior desenhado que adiciona elegância e praticidade ao preparo das suas refeições.\r\n<br>\r\nAdquira agora mesmo o Jogo de Panelas Premium Antiaderente Alumínio 9 Peças Tampa Vidro e eleve sua experiência na cozinha!\r\n', '\r\nFICHA TÉCNICA\r\n<br>Conteúdo do Jogo:\r\n<p>\r\n<br>1 Caçarola de 18 cm com Tampa de Vidro\r\n<br>2 Panelas - 1 de 18 cm e 1 de 16 cm - com Tampa de Vidro\r\n<br>1 Frigideira de 18 cm (com tampa MULTIUSO! a tampa que serve na caçarola/panela 18 serve na frigideira)\r\n<br>1 Fervedor de 14 cm\r\n<br>1 Frigideira para Ovos de 12cm\r\n<p>\r\n<br>Material: Alumínio com Revestimento Antiaderente Premium de 7 camadas\r\n<br>Tampas: Vidro Temperado\r\n', '\r\n\r\n', 'panela', 'Casa', 'product'),
	(22, 11, 4, 13, '2024-05-17 13:15:27', 'CAIXA DE SOM BLUETOOTH GRANDE COM MICROFONE E RGB - PORTÁTIL', 'caixa-bluetooth-rgb', 'br-11134207-7r98o-lnd0xu0efkr00d.jpeg', 'br-11134207-7r98o-lnd0x7ov4uz364.jpeg', 'br-11134207-7r98o-lnd0x7ov4uz084.jpeg', 149, 149, '\r\n<p>Principais Características:\r\n                                    \r\n                                    <br>Conexões Versáteis: Esta caixa de som é equipada com uma variedade de opções de conexão, incluindo Bluetooth, para emparelhamento fácil com dispositivos móveis, Rádio FM para sintonizar suas estações de rádio favoritas, entrada Aux para conectar dispositivos com fio, porta USB e slot para Cartão de Memória TF para reprodução de áudio a partir de dispositivos de armazenamento externos. Além disso, a função TWS (True Wireless Stereo) permite conectar duas caixas de som simultaneamente para uma experiência sonora mais imersiva.\r\n                                    <p></p>\r\n                                    <br>Microfone Integrado: A presença de um microfone embutido com um cabo de 1,8 metros permite a utilização da caixa de som para chamadas em viva-voz ou para funções de karaokê, tornando-a versátil para diversas atividades.\r\n                                    <p></p>\r\n                                    <br>Bateria de Longa Duração: Com uma potente bateria de 1.800 mAh, você pode desfrutar de horas de reprodução contínua. A recarga da bateria é rápida, levando apenas cerca de uma hora para uma carga completa, mantendo a música tocando por mais tempo.\r\n                                    <p></p>\r\n                                    <br>Design Espaçoso: Esta caixa de som possui um design grande e imponente, com 40 cm de altura e 17,5 cm de largura. Isso garante um som poderoso e cheio, com graves profundos e agudos cristalinos.\r\n                                    <p></p>\r\n                                    <br>Controle Remoto Incluso: O controle remoto incluído proporciona conveniência adicional, permitindo que você ajuste o volume, selecione faixas e ative outras funções sem precisar interagir diretamente com a caixa de som.\r\n                                    <p></p>\r\n                                    <br>Portabilidade: Acompanhando a caixa de som, uma alça extensível de tecido permite que você a transporte com facilidade, tornando-a ideal para uso em casa, ao ar livre ou em qualquer lugar que desejar.\r\n                                    <p></p>\r\n                                    <br>Recarregável: A caixa de som é alimentada por uma bateria recarregável, e o cabo USB tipo DC 5V fornecido torna o processo de recarga simples e acessível.\r\n                                    <p></p>\r\n                                    <br>A Caixa de Som Multimídia Bluetooth Grande com Microfone e Controle Remoto é a escolha perfeita para quem busca qualidade de som, versatilidade de conexão e conveniência em um único dispositivo. Não importa se você está planejando uma festa, uma reunião de família ou apenas deseja apreciar a sua música favorita em alto e bom som, esta caixa de som vai atender a todas as suas necessidades.\r\n                            \r\n\r\n\r\n', '\r\n\r\n<br>- Conexões: Bluetooth, Rádio FM, Aux, USB, Cartão SD e Entrada P10\r\n                                    <br>- Driver: 4"x 2\r\n                                    <br>- Potência: 8W RMS x 2 = 16W RMS\r\n                                    <br>- Frequência de resposta: 45 ~ 18.000Hz\r\n                                    <br>- RSR: 50dB\r\n                                    <br>- Bateria: 1.800mAh\r\n                                    <br>- Alimentação: DC 5V\r\n                                    <br>- Tempo de recarga: Até 3 horas\r\n\r\n', '\r\n\r\n\r\n\r\n', 'caixa de som', 'FESTAA', 'product'),
	(23, 5, 5, 14, '2024-05-17 13:18:02', 'KIT ATLETA COMPLETO: MÁXIMA PERFORMANCE', 'kit-atleta', 'tshirt-dry-perfomance-black-alpha-co.webp', 'b_as-mais-vendidas.webp', 'm_kit-atleta-completo-m-xima-performance.jpg', 119, 119, '\r\n<p><br>Apresentamos o Kit Atleta Completo, ideal para os dias de treino. Composto por cinco camisetas de alta qualidade, cada uma projetada para atender às necessidades específicas de cada dia da semana, esse kit oferece conforto, estilo e desempenho excepcionais.\r\n\r\n                                    <br>Feitas com tecido Dry Fit de ponta, as camisetas mantêm você seco e confortável, mesmo durante os treinos mais intensos, graças às suas propriedades de absorção de umidade e secagem rápida. Com um design elegante e cortes que favorecem o seu movimento, elas se ajustam perfeitamente ao corpo, proporcionando liberdade de movimento. Costuras reforçadas garantem durabilidade, enquanto uma variedade de tamanhos e cores vibrantes permitem que você escolha sua combinação favorita.\r\n                                    \r\n                                    <br>Com esse kit, você se destaca na academia ou ao ar livre, desfrutando do máximo conforto e estilo. Adquira o Kit de camisetas mescla bermudas e esteja preparado para enfrentar cada treino com confiança e determinação.\r\n                                </p>\r\n', '\r\n\r\n<br>ESSE KIT POSSUI 05 CAMISETAS:\r\n\r\n                                    <br>1 - Tshirt Dry Perfomance Black Alpha Co\r\n                                    <br>2 - Camiseta Dry Mescla Vinho\r\n                                    <br>3 - Camiseta Dry Fit New Fluid Preto\r\n                                    <br>4 - Camiseta Dry Fit Infinity Preto\r\n                                    <br>5 - Camiseta Dry Fit Fluid Move Chumbo</p>', '\r\n\r\n', 'kit atleta', 'GYM', 'product');

-- Copiando estrutura para tabela ecom_store.product_categories
CREATE TABLE IF NOT EXISTS `product_categories` (
  `p_cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL,
  PRIMARY KEY (`p_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela ecom_store.product_categories: ~5 rows (aproximadamente)
INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
	(5, 'Camisetas', 'no', 'tshirticn.png'),
	(6, 'Moletons e casacos', 'no', 'sweatericn.png'),
	(8, 'Sapatos', 'yes', 'sneakericn.png'),
	(10, 'Bolsas', 'yes', '5123055.png'),
	(11, 'Outros', 'no', '859.png');

-- Copiando estrutura para tabela ecom_store.store
CREATE TABLE IF NOT EXISTS `store` (
  `store_id` int(10) NOT NULL AUTO_INCREMENT,
  `store_title` varchar(255) NOT NULL,
  `store_image` varchar(255) NOT NULL,
  `store_desc` text NOT NULL,
  `store_button` varchar(255) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela ecom_store.store: ~1 rows (aproximadamente)

-- Copiando estrutura para tabela ecom_store.terms
CREATE TABLE IF NOT EXISTS `terms` (
  `term_id` int(10) NOT NULL AUTO_INCREMENT,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL,
  PRIMARY KEY (`term_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela ecom_store.terms: ~2 rows (aproximadamente)
INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
	(1, 'Regras e Regulamentos', 'regras', '<p>Para se cadastrar no MyShop, é necessário fornecer informações verdadeiras e atualizadas. Menores de 18 anos devem ter autorização dos responsáveis para realizar o cadastro. Os pedidos só são confirmados após a aprovação do pagamento, e nos reservamos o direito de cancelar qualquer pedido em caso de suspeita de fraude ou inconsistência nos dados fornecidos.\r\n<br>\r\nAceitamos diversos métodos de pagamento, incluindo cartões de crédito, débito e boletos bancários, todos processados em ambientes seguros. Oferecemos várias opções de entrega com prazos que variam conforme a localidade. É responsabilidade do cliente fornecer um endereço de entrega válido e estar disponível para receber o pedido.\r\n<br>\r\nO cliente tem até 7 dias após o recebimento do produto para solicitar troca ou devolução, desde que o produto esteja em perfeito estado e na embalagem original. Respeitamos a garantia legal de 90 dias para defeitos de fabricação, e garantias adicionais podem ser oferecidas conforme o fabricante.\r\n<br>\r\nNão nos responsabilizamos por danos causados por uso inadequado dos produtos ou por atrasos decorrentes de fatores externos como greves ou desastres naturais. MyShop pode alterar os termos e condições a qualquer momento, com aviso prévio aos clientes.. </p>'),
	(3, 'Politica de promoçoes e cupoms', 'link3', '<p>Promoções e cupons são válidos por tempo limitado e sujeitos à disponibilidade de estoque. MyShop se reserva o direito de encerrar promoções a qualquer momento sem aviso prévio. Cada cupom possui regras específicas de utilização, que devem ser observadas pelo cliente. Não é permitido o uso de mais de um cupom por compra, salvo exceções expressamente mencionadas.\r\n\r\n<p>Os descontos são aplicados no momento da finalização da compra, após a inserção do código do cupom, e cupons não são aplicáveis a produtos em promoção, exceto quando especificado. Cupons e promoções não são cumulativos com outras ofertas e não podem ser trocados por dinheiro ou créditos na loja.\r\n\r\nOs cupons possuem data de validade e não serão aceitos após o vencimento. Cupons não utilizados dentro do prazo não serão revalidados. Monitoramos o uso de cupons e promoções e nos reservamos o direito de cancelar pedidos em caso de suspeita de uso fraudulento. Clientes que tentarem burlar as regras podem ter suas contas suspensas. MyShop pode alterar as regras das promoções e cupons a qualquer momento, informando os clientes através do site.\r\n\r\n<p>Essas políticas visam garantir transparência e um bom relacionamento entre MyShop e seus clientes. Para dúvidas ou mais informações, entre em contato com nosso suporte.');

-- Copiando estrutura para tabela ecom_store.wishlist
CREATE TABLE IF NOT EXISTS `wishlist` (
  `wishlist_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  PRIMARY KEY (`wishlist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela ecom_store.wishlist: ~4 rows (aproximadamente)
INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
	(2, 2, 8),
	(3, 5, 13),
	(4, 3, 13),
	(5, 6, 15),
	(6, 7, 22);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
