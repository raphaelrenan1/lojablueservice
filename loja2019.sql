-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 10.129.76.12
-- Tempo de geração: 21/10/2019 às 23:04
-- Versão do servidor: 5.6.26-log
-- Versão do PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `loja2019`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `qc_categorias`
--

CREATE TABLE IF NOT EXISTS `qc_categorias` (
`cate_id` int(11) NOT NULL,
  `cate_nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cate_slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Fazendo dump de dados para tabela `qc_categorias`
--

INSERT INTO `qc_categorias` (`cate_id`, `cate_nome`, `cate_slug`) VALUES
(1, 'Ternos', 'categoria-ternos'),
(2, 'Camisas', 'categoria-camisa'),
(3, 'Calças', 'categoria-calcas'),
(4, 'Tênis', 'categoria-tenis'),
(5, 'Sapatos', 'categoria-sapatos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `qc_clientes`
--

CREATE TABLE IF NOT EXISTS `qc_clientes` (
`cli_id` int(11) NOT NULL,
  `cli_nome` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `cli_sobrenome` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `cli_endereco` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cli_numero` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cli_bairro` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `cli_cidade` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `cli_uf` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `cli_cep` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cli_cpf` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `cli_rg` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cli_ddd` int(2) NOT NULL,
  `cli_fone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cli_celular` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cli_email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `cli_pass` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `cli_data_nasc` date NOT NULL,
  `cli_data_cad` date NOT NULL,
  `cli_hora_cad` time NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Fazendo dump de dados para tabela `qc_clientes`
--

INSERT INTO `qc_clientes` (`cli_id`, `cli_nome`, `cli_sobrenome`, `cli_endereco`, `cli_numero`, `cli_bairro`, `cli_cidade`, `cli_uf`, `cli_cep`, `cli_cpf`, `cli_rg`, `cli_ddd`, `cli_fone`, `cli_celular`, `cli_email`, `cli_pass`, `cli_data_nasc`, `cli_data_cad`, `cli_hora_cad`) VALUES
(1, 'Raphael Renan', 'Santos Castro', 'Rua Diana', '990, Apto-21', 'Perdizes', 'São Paulo', 'SP', '05019000', '31485353831', '322533910', 11, '956804182', '956804182', 'raphaelrenan1@hotmail.com', 'b64a0a4ed2eee11e4c0bf9d3f7f1cf1d', '1984-02-21', '2019-10-21', '18:55:01'),
(2, 'Blue Service', 'Softwares', 'Alameda Ministro Rocha Azevedo', '1077', 'Cerqueira César', 'São Paulo', 'SP', '01410003', '00808641808', '123456', 11, '30832081', '30832081', 'obreiroraphaelrenan@hotmail.com', 'b64a0a4ed2eee11e4c0bf9d3f7f1cf1d', '1998-01-01', '2019-10-21', '19:57:48');

-- --------------------------------------------------------

--
-- Estrutura para tabela `qc_imagens`
--

CREATE TABLE IF NOT EXISTS `qc_imagens` (
`img_id` int(11) NOT NULL,
  `img_nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img_pro_id` int(11) NOT NULL,
  `img_pasta` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Fazendo dump de dados para tabela `qc_imagens`
--

INSERT INTO `qc_imagens` (`img_id`, `img_nome`, `img_pro_id`, `img_pasta`) VALUES
(1, 'tenis-couro-01.jpg', 7, ''),
(2, 'tenis-couro-02.jpg', 7, ''),
(3, 'tenis-couro-03.jpg', 7, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `qc_pedidos`
--

CREATE TABLE IF NOT EXISTS `qc_pedidos` (
`ped_id` int(11) NOT NULL,
  `ped_data` date NOT NULL,
  `ped_hora` time NOT NULL,
  `ped_cliente` int(11) NOT NULL,
  `ped_cod` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ped_ref` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ped_pag_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ped_pag_forma` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ped_pag_tipo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ped_pag_codigo` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ped_frete_valor` double(9,2) DEFAULT '0.00',
  `ped_frete_tipo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Fazendo dump de dados para tabela `qc_pedidos`
--

INSERT INTO `qc_pedidos` (`ped_id`, `ped_data`, `ped_hora`, `ped_cliente`, `ped_cod`, `ped_ref`, `ped_pag_status`, `ped_pag_forma`, `ped_pag_tipo`, `ped_pag_codigo`, `ped_frete_valor`, `ped_frete_tipo`) VALUES
(1, '2019-10-21', '19:42:30', 1, '1910211910061', '1910211910061', 'NAO', NULL, NULL, NULL, 114.40, NULL),
(2, '2019-10-21', '19:53:31', 1, '1910211910071', '1910211910071', 'NAO', NULL, NULL, NULL, 114.40, NULL),
(3, '2019-10-21', '20:00:57', 2, '1910212010332', '1910212010332', 'NAO', NULL, NULL, NULL, 114.40, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `qc_pedidos_itens`
--

CREATE TABLE IF NOT EXISTS `qc_pedidos_itens` (
`item_id` int(11) NOT NULL,
  `item_produto` int(11) NOT NULL,
  `item_valor` double(9,2) NOT NULL,
  `item_qtd` int(6) NOT NULL,
  `item_ped_cod` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Fazendo dump de dados para tabela `qc_pedidos_itens`
--

INSERT INTO `qc_pedidos_itens` (`item_id`, `item_produto`, `item_valor`, `item_qtd`, `item_ped_cod`) VALUES
(1, 16, 600.00, 1, '1910211910061'),
(2, 5, 1250.00, 1, '1910211910061'),
(3, 4, 300.00, 1, '1910211910061'),
(4, 1, 80.00, 1, '1910211910071'),
(5, 5, 1250.00, 1, '1910212010332'),
(6, 9, 250.00, 1, '1910212010332'),
(7, 1, 80.00, 1, '1910212010332'),
(8, 15, 500.00, 1, '1910212010332'),
(9, 7, 750.00, 1, '1910212010332');

-- --------------------------------------------------------

--
-- Estrutura para tabela `qc_produtos`
--

CREATE TABLE IF NOT EXISTS `qc_produtos` (
`pro_id` int(11) NOT NULL,
  `pro_categoria` int(11) NOT NULL,
  `pro_nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_peso` double(9,3) NOT NULL,
  `pro_valor` double(9,2) NOT NULL,
  `pro_largura` int(11) NOT NULL,
  `pro_altura` int(11) NOT NULL,
  `pro_comprimento` int(11) NOT NULL,
  `pro_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_estoque` int(11) NOT NULL,
  `pro_modelo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_ref` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pro_fabricante` int(11) NOT NULL,
  `pro_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `pro_frete_free` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Não'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Fazendo dump de dados para tabela `qc_produtos`
--

INSERT INTO `qc_produtos` (`pro_id`, `pro_categoria`, `pro_nome`, `pro_desc`, `pro_peso`, `pro_valor`, `pro_largura`, `pro_altura`, `pro_comprimento`, `pro_img`, `pro_slug`, `pro_estoque`, `pro_modelo`, `pro_ref`, `pro_fabricante`, `pro_ativo`, `pro_frete_free`) VALUES
(1, 2, 'Camisa Social', 'Descrição da Camisa Polo Fila Open Preta e Cinza A Fila é uma marca italiana que está presente nos principais esportes e eventos esportivos do mundo, especializada na produção de artigos esportivos e patrocinadora de diversos atletas. A Camisa Polo Fila Open Preta e Cinza conta com tecnologia Flow, que faz com que a transpiração seja absorvida e rapidamente transportada para o tecido que facilitará a evaporação mantendo o corpo na temperatura ideal proporcionando maior conforto e melhor desempenho. Especificações da Camisa Polo Fila Open Preta e Cinza Conheça as suas características: - Perfil: Tênis; - Tecnologia: Flow elimina com rapidez o suor, facilitando sua evaporação. Ela mantém o corpo na temperatura ideal para a prática esportiva e proporciona maior conforto e rápida secagem; - Material: 100% poliester; - Detalhamento: Camisa gola polo, peitilho com fechamento em botão, logotipo F-Box no canto esquerdo do peito, pequena escrita Flow no cantoinferior direito na parte traseira; - Garantia do Fabricante: Contra defeito de fabricação; - Origem: Nacional. Dimensões do Produto DIMENSÕES: Camisetas E Polos: Tamanho Pp (Xs) Tamanho P (S) Largura: N/D Altura: N/D Largura: 50 cm Altura: 64 cm Tamanho M (M) Tamanho G (L) Largura: 53 cm Altura: 70 cm Largura: 56 cm Altura: 72 cm Tamanhos Gg (Xl) Largura: 59 cm Altura: 75 cm *Observações: As medidas são aproximadas e podem variar para mais ou para menos de uma peça para outra.\r\nTodas as informações divulgadas são de responsabilidade do fabricante/fornecedor.\r\nImagens Meramente Ilustrativas.', 0.050, 80.00, 80, 80, 80, '03.jpg', 'camisa-social', 1, 'modelo01', '02651551', 1, '1', 'gratuito'),
(2, 2, 'Camisa Polo', 'Descrição da Camisa Polo Fila Open Preta e Cinza A Fila é uma marca italiana que está presente nos principais esportes e eventos esportivos do mundo, especializada na produção de artigos esportivos e patrocinadora de diversos atletas. A Camisa Polo Fila Open Preta e Cinza conta com tecnologia Flow, que faz com que a transpiração seja absorvida e rapidamente transportada para o tecido que facilitará a evaporação mantendo o corpo na temperatura ideal proporcionando maior conforto e melhor desempenho. Especificações da Camisa Polo Fila Open Preta e Cinza Conheça as suas características: - Perfil: Tênis; - Tecnologia: Flow elimina com rapidez o suor, facilitando sua evaporação. Ela mantém o corpo na temperatura ideal para a prática esportiva e proporciona maior conforto e rápida secagem; - Material: 100% poliester; - Detalhamento: Camisa gola polo, peitilho com fechamento em botão, logotipo F-Box no canto esquerdo do peito, pequena escrita Flow no cantoinferior direito na parte traseira; - Garantia do Fabricante: Contra defeito de fabricação; - Origem: Nacional. Dimensões do Produto DIMENSÕES: Camisetas E Polos: Tamanho Pp (Xs) Tamanho P (S) Largura: N/D Altura: N/D Largura: 50 cm Altura: 64 cm Tamanho M (M) Tamanho G (L) Largura: 53 cm Altura: 70 cm Largura: 56 cm Altura: 72 cm Tamanhos Gg (Xl) Largura: 59 cm Altura: 75 cm *Observações: As medidas são aproximadas e podem variar para mais ou para menos de uma peça para outra.\r\nTodas as informações divulgadas são de responsabilidade do fabricante/fornecedor.\r\nImagens Meramente Ilustrativas.', 0.060, 60.00, 50, 50, 50, 'camisa.jpg', 'camisa-polo', 10, 'modelo 054515', '15154', 1, '1', 'Não'),
(3, 3, 'Calça Jeans', 'Calça 100% Algodão jeans básica com abertura em botão e zíper. Possui bolsos na frentee bolsos na parte de trás. Detalhe costura em cor contrastante.\r\nCalça 100% Algodão jeans básica com abertura em botão e zíper. Possui bolsos na frentee bolsos na parte de trás. Detalhe costura em cor contrastante.', 0.100, 250.00, 50, 50, 50, 'calca.jpg', 'calca-jeans', 15, '0654655', '2998415', 1, '1', 'Não'),
(4, 3, 'Calça de Moleton', 'Calça 100% Algodão jeans básica com abertura em botão e zíper. Possui bolsos na frentee bolsos na parte de trás. Detalhe costura em cor contrastante.\r\nCalça 100% Algodão jeans básica com abertura em botão e zíper. Possui bolsos na frentee bolsos na parte de trás. Detalhe costura em cor contrastante.', 0.100, 300.00, 50, 50, 50, 'calca02.jpg', 'calca-de-moleton', 50, '15445', '554888', 1, '1', 'Não'),
(5, 4, 'Tênis Corvette Slim Freeway', 'Com leve amortecimento, o Tênis Corvette Slim Freeway conta com conforto e design esportivo para você acelerar em direção à autenticidade. Ideal para acompanhar os apaixonados por carros.', 0.100, 1250.00, 50, 50, 50, 'tenis-corvete.jpg', 'tenis-corvete', 10, '265566', '5565699', 1, '1', 'Não'),
(6, 4, 'Tênis Asics GEL Excite', 'O Tênis Asics GEL Excite 4 é desenvolvido com tecnologias que melhoram o desempenho nas corridas e caminhadas. Sistema de gel com absorção de impacto e EVA que retorna ao estado original com rapidez. ', 0.100, 300.00, 50, 50, 50, 'tenis-asics.jpg', 'tenis-asics-gel', 1, '111555', '1589555', 1, '1', 'Não'),
(7, 4, 'Tênis Couro Nike Shox Avenue', 'Apresentando amortecimento de 4 colunas no calcanhar, o Tênis Couro Nike Shox Avenue LTR auxilia na distribuição do peso. Conta com design esportivo, tração e sistema de amarração que envolve os pés. ', 0.100, 750.00, 50, 50, 50, 'tenis-couro.jpg', 'tenis-couro', 10, '05515151', '11558566', 1, '1', 'Não'),
(8, 4, 'Tênis Nike Shox Avenue', 'Aproveite a casualidade do dia a dia com muito estilo e pronto para aceitar qualquer convite. Com o Tênis Nike Shox Avenue você completa o visual com originalidade e desfruta de máximo conforto. ', 0.100, 600.00, 50, 50, 50, 'tenis-nike-shox.jpg', 'tenis-nike-shox', 50, '05899644', '05485515', 1, '1', 'Não'),
(9, 5, 'Sapatênis Burn York', 'Aposte em combinações masculinas para o “casual day” com o Sapatênis Burn York. Conferindo versatilidade ao visual, o modelo inspirado no esporte tem perfuros laterais e detalhe em ilhós colorido.', 0.100, 250.00, 50, 50, 50, 'sapatenis-burn.jpg', 'sapatenis-burn', 20, '84484884', '84845226', 1, '1', 'Não'),
(10, 5, 'Sapatênis Calvin Klein Boat Lth', 'O Sapatênis Calvin Klein Boat Lth é confeccionado em couro, que oferece ótima durabilidade. Leva um estilo casual e sofisticado às combinações, tem interior macio e fechamento por cadarço. ', 0.100, 300.00, 50, 50, 50, 'sapatenis-calvin-klein.jpg', 'sapatenis-calvin-klein', 10, '19855648', '4648848', 1, '1', 'Não'),
(15, 2, 'Camisa Polo Aleatory', '<p>&nbsp;<strong>Especifica&ccedil;&atilde;o:</strong> malha piquet branca;gola e punho em poli&eacute;ster branco; com serigrafia do bras&atilde;o da repblica em policromia do lado<br />esquerdo do peito medindo 10x12 cm e impresso nas costas com o nome &ldquo;JUSTI&Ccedil;A ELEITORAL&rdquo;medindo 25 cm</p>', 0.400, 500.00, 10, 10, 10, '170906182225camiseta.jpg.jpg', 'camisa-polo-aleatory', 10, '45458858', '555545', 0, 'S', 'Não'),
(16, 4, 'Tênis Mizuno Wave', '<p>O T&ecirc;nis Mizuno Wave Elevation 2 proporciona muito mais conforto durante as suas corridas. Com nova entressola absorve os impactos e garante uma melhor estabilidade durante as pisadas.</p>', 0.200, 600.00, 10, 10, 10, 'becc656f4f046fc4f18e3f8324059cad.jpg', 'tenis-mizuno-wave', 10, '45484448', '488964', 0, 'S', 'Não');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `qc_categorias`
--
ALTER TABLE `qc_categorias`
 ADD PRIMARY KEY (`cate_id`);

--
-- Índices de tabela `qc_clientes`
--
ALTER TABLE `qc_clientes`
 ADD PRIMARY KEY (`cli_id`);

--
-- Índices de tabela `qc_imagens`
--
ALTER TABLE `qc_imagens`
 ADD PRIMARY KEY (`img_id`);

--
-- Índices de tabela `qc_pedidos`
--
ALTER TABLE `qc_pedidos`
 ADD PRIMARY KEY (`ped_id`);

--
-- Índices de tabela `qc_pedidos_itens`
--
ALTER TABLE `qc_pedidos_itens`
 ADD PRIMARY KEY (`item_id`);

--
-- Índices de tabela `qc_produtos`
--
ALTER TABLE `qc_produtos`
 ADD PRIMARY KEY (`pro_id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `qc_categorias`
--
ALTER TABLE `qc_categorias`
MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `qc_clientes`
--
ALTER TABLE `qc_clientes`
MODIFY `cli_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `qc_imagens`
--
ALTER TABLE `qc_imagens`
MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `qc_pedidos`
--
ALTER TABLE `qc_pedidos`
MODIFY `ped_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `qc_pedidos_itens`
--
ALTER TABLE `qc_pedidos_itens`
MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de tabela `qc_produtos`
--
ALTER TABLE `qc_produtos`
MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
