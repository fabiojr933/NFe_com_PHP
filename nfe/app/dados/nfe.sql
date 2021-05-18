-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Maio-2021 às 17:55
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `nfe`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cfop`
--

CREATE TABLE `cfop` (
  `id_cfop` int(16) NOT NULL,
  `codigo_cfop` varchar(8) NOT NULL,
  `desc_cfop` text NOT NULL,
  `tipo` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cfop`
--

INSERT INTO `cfop` (`id_cfop`, `codigo_cfop`, `desc_cfop`, `tipo`) VALUES
(1, '1101', 'Compra para industrialização', ''),
(2, '1102', 'Compra para comercialização', ''),
(3, '1111', 'Compra para industrialização de mercadoria recebida anteriormente em consignação industrial', ''),
(4, '1113', 'Compra para comercialização, de mercadoria recebida anteriormente em consignação mercantil', ''),
(5, '1116', 'Compra para industrialização originada de encomenda para recebimento futuro', ''),
(6, '1117', 'Compra para comercialização originada de encomenda para recebimento futuro', ''),
(7, '1118', 'Compra de mercadoria para comercialização pelo adquirente originário, entregue pelo vendedor remetente ao destinatário, em venda à ordem', ''),
(8, '1120', 'Compra para industrialização, em venda à ordem, já recebida do vendedor remetente', ''),
(9, '1121', 'Compra para comercialização, em venda à ordem, já recebida do vendedor remetente', ''),
(10, '1122', 'Compra para industrialização em que a mercadoria foi remetida pelo fornecedor ao industrializador sem transitar pelo estabelecimento adquirente', ''),
(11, '1124', 'Industrialização efetuada por outra empresa', ''),
(12, '1125', 'Industrialização efetuada por outra empresa quando a mercadoria remetida para utilização no processo de industrialização não transitou pelo estabelecimento adquirente da mercadoria', ''),
(13, '1126', 'Compra para utilização na prestação de serviço', ''),
(14, '1151', 'Transferência para industrialização', ''),
(15, '1152', 'Transferência para comercialização', ''),
(16, '1153', 'Transferência de energia elétrica para distribuição', ''),
(17, '1154', 'Transferência para utilização na prestação de serviço', ''),
(18, '1201', 'Devolução de venda de produção do estabelecimento', ''),
(19, '1202', 'Devolução de venda de mercadoria adquirida ou recebida de terceiros', ''),
(20, '1203', 'Devolução de venda de produção do estabelecimento, destinada à Zona Franca de Manaus ou Áreas de Livre Comércio', ''),
(21, '1204', 'Devolução de venda de mercadoria adquirida ou recebida de terceiros, destinada à Zona Franca de Manaus ou Áreas de Livre Comércio', ''),
(22, '1205', 'Anulação de valor relativo à prestação de serviço de comunicação', ''),
(23, '1206', 'Anulação de valor relativo à prestação de serviço de transporte', ''),
(24, '1207', 'Anulação de valor relativo à venda de energia elétrica', ''),
(25, '1208', 'Devolução de produção do estabelecimento, remetida em transferência', ''),
(26, '1209', 'Devolução de mercadoria adquirida ou recebida de terceiros, remetida em transferência', ''),
(27, '1251', 'Compra de energia elétrica para distribuição ou comercialização', ''),
(28, '1252', 'Compra de energia elétrica por estabelecimento industrial', ''),
(29, '1253', 'Compra de energia elétrica por estabelecimento comercial', ''),
(30, '1254', 'Compra de energia elétrica por estabelecimento prestador de serviço de transporte', ''),
(31, '1255', 'Compra de energia elétrica por estabelecimento prestador de serviço de comunicação', ''),
(32, '1256', 'Compra de energia elétrica por estabelecimento de produtor rural', ''),
(33, '1257', 'Compra de energia elétrica para consumo por demanda contratada', ''),
(34, '1301', 'Aquisição de serviço de comunicação para execução de serviço da mesma natureza', ''),
(35, '1302', 'Aquisição de serviço de comunicação por estabelecimento industrial', ''),
(36, '1303', 'Aquisição de serviço de comunicação por estabelecimento comercial', ''),
(37, '1304', 'Aquisição de serviço de comunicação por estabelecimento de prestador de serviço de transporte', ''),
(38, '1305', 'Aquisição de serviço de comunicação por estabelecimento de geradora ou de distribuidora de energia elétrica', ''),
(39, '1306', 'Aquisição de serviço de comunicação por estabelecimento de produtor rural', ''),
(40, '1351', 'Aquisição de serviço de transporte para execução de serviço da mesma natureza', ''),
(41, '1352', 'Aquisição de serviço de transporte por estabelecimento industrial', ''),
(42, '1353', 'Aquisição de serviço de transporte por estabelecimento comercial', ''),
(43, '1354', 'Aquisição de serviço de transporte por estabelecimento de prestador de serviço de comunicação', ''),
(44, '1355', 'Aquisição de serviço de transporte por estabelecimento de geradora ou de distribuidora de energia elétrica', ''),
(45, '1356', 'Aquisição de serviço de transporte por estabelecimento de produtor rural', ''),
(46, '1401', 'Compra para industrialização em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(47, '1403', 'Compra para comercialização em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(48, '1406', 'Compra de bem para o ativo imobilizado cuja mercadoria está sujeita ao regime de substituição tributária', ''),
(49, '1407', 'Compra de mercadoria para uso ou consumo cuja mercadoria está sujeita ao regime de substituição tributária', ''),
(50, '1408', 'Transferência para industrialização em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(51, '1409', 'Transferência para comercialização em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(52, '1410', 'Devolução de venda de produção do estabelecimento em operação com produto sujeito ao regime de substituição tributária', ''),
(53, '1411', 'Devolução de venda de mercadoria adquirida ou recebida de terceiros em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(54, '1414', 'Retorno de produção do estabelecimento, remetida para venda fora do estabelecimento em operação com produto sujeito ao regime de substituição tributária', ''),
(55, '1415', 'Retorno de mercadoria adquirida ou recebida de terceiros, remetida para venda fora do estabelecimento em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(56, '1451', 'Retorno de animal do estabelecimento produtor', ''),
(57, '1452', 'Retorno de insumo não utilizado na produção', ''),
(58, '1501', 'Entrada de mercadoria recebida com fim específico de exportação', ''),
(59, '1503', 'Entrada decorrente de devolução de produto remetido com fim específico de exportação, de produção do estabelecimento', ''),
(60, '1504', 'Entrada decorrente de devolução de mercadoria remetida com fim específico de exportação, adquirida ou recebida de terceiros', ''),
(61, '1551', 'Compra de bem para o ativo imobilizado', ''),
(62, '1552', 'Transferência de bem do ativo imobilizado', ''),
(63, '1553', 'Devolução de venda de bem do ativo imobilizado', ''),
(64, '1554', 'Retorno de bem do ativo imobilizado remetido para uso fora do estabelecimento', ''),
(65, '1555', 'Entrada de bem do ativo imobilizado de terceiro, remetido para uso no estabelecimento', ''),
(66, '1556', 'Compra de material para uso ou consumo', ''),
(67, '1557', 'Transferência de material para uso ou consumo', ''),
(68, '1601', 'Recebimento, por transferência, de crédito de ICMS', ''),
(69, '1602', 'Recebimento, por transferência, de saldo credor de ICMS de outro estabelecimento da mesma empresa, para compensação de saldo devedor de ICMS', ''),
(70, '1603', 'Ressarcimento de ICMS retido por substituição tributária', ''),
(71, '1604', 'Lançamento do crédito relativo à compra de bem para o ativo imobilizado', ''),
(72, '1901', 'Entrada para industrialização por encomenda', ''),
(73, '1902', 'Retorno de mercadoria remetida para industrialização por encomenda', ''),
(74, '1903', 'Entrada de mercadoria remetida para industrialização e não aplicada no referido processo', ''),
(75, '1904', 'Retorno de remessa para venda fora do estabelecimento', ''),
(76, '1905', 'Entrada de mercadoria recebida para depósito em depósito fechado ou armazém geral', ''),
(77, '1906', 'Retorno de mercadoria remetida para depósito fechado ou armazém geral', ''),
(78, '1907', 'Retorno simbólico de mercadoria remetida para depósito fechado ou armazém geral', ''),
(79, '1908', 'Entrada de bem por conta de contrato de comodato', ''),
(80, '1909', 'Retorno de bem remetido por conta de contrato de comodato', ''),
(81, '1910', 'Entrada de bonificação, doação ou brinde', ''),
(82, '1911', 'Entrada de amostra grátis', ''),
(83, '1912', 'Entrada de mercadoria ou bem recebido para demonstração', ''),
(84, '1913', 'Retorno de mercadoria ou bem remetido para demonstração', ''),
(85, '1914', 'Retorno de mercadoria ou bem remetido para exposição ou feira', ''),
(86, '1915', 'Entrada de mercadoria ou bem recebido para conserto ou reparo', ''),
(87, '1916', 'Retorno de mercadoria ou bem remetido para conserto ou reparo', ''),
(88, '1917', 'Entrada de mercadoria recebida em consignação mercantil ou industrial', ''),
(89, '1918', 'Devolução de mercadoria remetida em consignação mercantil ou industrial', ''),
(90, '1919', 'Devolução simbólica de mercadoria vendida ou utilizada em processo industrial, remetida anteriormente em consignação mercantil ou industrial', ''),
(91, '1920', 'Entrada de vasilhame ou sacaria', ''),
(92, '1921', 'Retorno de vasilhame ou sacaria', ''),
(93, '1922', 'Lançamento efetuado a título de simples faturamento decorrente de compra para recebimento futuro', ''),
(94, '1923', 'Entrada de mercadoria recebida do vendedor remetente, em venda à ordem', ''),
(95, '1924', 'Entrada para industrialização por conta e ordem do adquirente da mercadoria, quando esta não transitar pelo estabelecimento do adquirente', ''),
(96, '1925', 'Retorno de mercadoria remetida para industrialização por conta e ordem do adquirente da mercadoria, quando esta não transitar pelo estabelecimento do adquirente', ''),
(97, '1926', 'Lançamento efetuado a título de reclassificação de mercadoria decorrente de formação de kit ou de sua desagregação', ''),
(98, '1949', 'Outra entrada de mercadoria ou prestação de serviço não especificada', ''),
(99, '2101', 'Compra para industrialização', ''),
(100, '2102', 'Compra para comercialização', ''),
(101, '2111', 'Compra para industrialização de mercadoria recebida anteriormente em consignação industrial', ''),
(102, '2113', 'Compra para comercialização, de mercadoria recebida anteriormente em consignação mercantil', ''),
(103, '2116', 'Compra para industrialização originada de encomenda para recebimento futuro', ''),
(104, '2117', 'Compra para comercialização originada de encomenda para recebimento futuro', ''),
(105, '2118', 'Compra de mercadoria para comercialização pelo adquirente originário, entregue pelo vendedor remetente ao destinatário, em venda à ordem', ''),
(106, '2120', 'Compra para industrialização, em venda à ordem, já recebida do vendedor remetente', ''),
(107, '2121', 'Compra para comercialização, em venda à ordem, já recebida do vendedor remetente', ''),
(108, '2122', 'Compra para industrialização em que a mercadoria foi remetida pelo fornecedor ao industrializador sem transitar pelo estabelecimento adquirente', ''),
(109, '2124', 'Industrialização efetuada por outra empresa', ''),
(110, '2125', 'Industrialização efetuada por outra empresa quando a mercadoria remetida para utilização no processo de industrialização não transitou pelo estabelecimento adquirente da mercadoria', ''),
(111, '2126', 'Compra para utilização na prestação de serviço', ''),
(112, '2151', 'Transferência para industrialização', ''),
(113, '2152', 'Transferência para comercialização', ''),
(114, '2153', 'Transferência de energia elétrica para distribuição', ''),
(115, '2154', 'Transferência para utilização na prestação de serviço', ''),
(116, '2201', 'Devolução de venda de produção do estabelecimento', ''),
(117, '2202', 'Devolução de venda de mercadoria adquirida ou recebida de terceiros', ''),
(118, '2203', 'Devolução de venda de produção do estabelecimento, destinada à Zona Franca de Manaus ou Áreas de Livre Comércio', ''),
(119, '2204', 'Devolução de venda de mercadoria adquirida ou recebida de terceiros, destinada à Zona Franca de Manaus ou Áreas de Livre Comércio', ''),
(120, '2205', 'Anulação de valor relativo à prestação de serviço de comunicação', ''),
(121, '2206', 'Anulação de valor relativo à prestação de serviço de transporte', ''),
(122, '2207', 'Anulação de valor relativo à venda de energia elétrica', ''),
(123, '2208', 'Devolução de produção do estabelecimento, remetida em transferência', ''),
(124, '2209', 'Devolução de mercadoria adquirida ou recebida de terceiros, remetida em transferência', ''),
(125, '2251', 'Compra de energia elétrica para distribuição ou comercialização', ''),
(126, '2252', 'Compra de energia elétrica por estabelecimento industrial', ''),
(127, '2253', 'Compra de energia elétrica por estabelecimento comercial', ''),
(128, '2254', 'Compra de energia elétrica por estabelecimento prestador de serviço de transporte', ''),
(129, '2255', 'Compra de energia elétrica por estabelecimento prestador de serviço de comunicação', ''),
(130, '2256', 'Compra de energia elétrica por estabelecimento de produtor rural', ''),
(131, '2257', 'Compra de energia elétrica para consumo por demanda contratada', ''),
(132, '2301', 'Aquisição de serviço de comunicação para execução de serviço da mesma natureza', ''),
(133, '2302', 'Aquisição de serviço de comunicação por estabelecimento industrial', ''),
(134, '2303', 'Aquisição de serviço de comunicação por estabelecimento comercial', ''),
(135, '2304', 'Aquisição de serviço de comunicação por estabelecimento de prestador de serviço de transporte', ''),
(136, '2305', 'Aquisição de serviço de comunicação por estabelecimento de geradora ou de distribuidora de energia elétrica', ''),
(137, '2306', 'Aquisição de serviço de comunicação por estabelecimento de produtor rural', ''),
(138, '2351', 'Aquisição de serviço de transporte para execução de serviço da mesma natureza', ''),
(139, '2352', 'Aquisição de serviço de transporte por estabelecimento industrial', ''),
(140, '2353', 'Aquisição de serviço de transporte por estabelecimento comercial', ''),
(141, '2354', 'Aquisição de serviço de transporte por estabelecimento de prestador de serviço de comunicação', ''),
(142, '2355', 'Aquisição de serviço de transporte por estabelecimento de geradora ou de distribuidora de energia elétrica', ''),
(143, '2356', 'Aquisição de serviço de transporte por estabelecimento de produtor rural', ''),
(144, '2401', 'Compra para industrialização em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(145, '2403', 'Compra para comercialização em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(146, '2406', 'Compra de bem para o ativo imobilizado cuja mercadoria está sujeita ao regime de substituição tributária', ''),
(147, '2407', 'Compra de mercadoria para uso ou consumo cuja mercadoria está sujeita ao regime de substituição tributária', ''),
(148, '2408', 'Transferência para industrialização em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(149, '2409', 'Transferência para comercialização em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(150, '2410', 'Devolução de venda de produção do estabelecimento em operação com produto sujeito ao regime de substituição tributária', ''),
(151, '2411', 'Devolução de venda de mercadoria adquirida ou recebida de terceiros em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(152, '2414', 'Retorno de produção do estabelecimento, remetida para venda fora do estabelecimento em operação com produto sujeito ao regime de substituição tributária', ''),
(153, '2415', 'Retorno de mercadoria adquirida ou recebida de terceiros, remetida para venda fora do estabelecimento em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(154, '2501', 'Entrada de mercadoria recebida com fim específico de exportação', ''),
(155, '2503', 'Entrada decorrente de devolução de produto remetido com fim específico de exportação, de produção do estabelecimento', ''),
(156, '2504', 'Entrada decorrente de devolução de mercadoria remetida com fim específico de exportação, adquirida ou recebida de terceiros', ''),
(157, '2551', 'Compra de bem para o ativo imobilizado', ''),
(158, '2552', 'Transferência de bem do ativo imobilizado', ''),
(159, '2553', 'Devolução de venda de bem do ativo imobilizado', ''),
(160, '2554', 'Retorno de bem do ativo imobilizado remetido para uso fora do estabelecimento', ''),
(161, '2555', 'Entrada de bem do ativo imobilizado de terceiro, remetido para uso no estabelecimento', ''),
(162, '2556', 'Compra de material para uso ou consumo', ''),
(163, '2557', 'Transferência de material para uso ou consumo', ''),
(164, '2603', 'Ressarcimento de ICMS retido por substituição tributária', ''),
(165, '2901', 'Entrada para industrialização por encomenda', ''),
(166, '2902', 'Retorno de mercadoria remetida para industrialização por encomenda', ''),
(167, '2903', 'Entrada de mercadoria remetida para industrialização e não aplicada no referido processo', ''),
(168, '2904', 'Retorno de remessa para venda fora do estabelecimento', ''),
(169, '2905', 'Entrada de mercadoria recebida para depósito em depósito fechado ou armazém geral', ''),
(170, '2906', 'Retorno de mercadoria remetida para depósito fechado ou armazém geral', ''),
(171, '2907', 'Retorno simbólico de mercadoria remetida para depósito fechado ou armazém geral', ''),
(172, '2908', 'Entrada de bem por conta de contrato de comodato', ''),
(173, '2909', 'Retorno de bem remetido por conta de contrato de comodato', ''),
(174, '2910', 'Entrada de bonificação, doação ou brinde', ''),
(175, '2911', 'Entrada de amostra grátis', ''),
(176, '2912', 'Entrada de mercadoria ou bem recebido para demonstração', ''),
(177, '2913', 'Retorno de mercadoria ou bem remetido para demonstração', ''),
(178, '2914', 'Retorno de mercadoria ou bem remetido para exposição ou feira', ''),
(179, '2915', 'Entrada de mercadoria ou bem recebido para conserto ou reparo', ''),
(180, '2916', 'Retorno de mercadoria ou bem remetido para conserto ou reparo', ''),
(181, '2917', 'Entrada de mercadoria recebida em consignação mercantil ou industrial', ''),
(182, '2918', 'Devolução de mercadoria remetida em consignação mercantil ou industrial', ''),
(183, '2919', 'Devolução simbólica de mercadoria vendida ou utilizada em processo industrial, remetida anteriormente em consignação mercantil ou industrial', ''),
(184, '2920', 'Entrada de vasilhame ou sacaria', ''),
(185, '2921', 'Retorno de vasilhame ou sacaria', ''),
(186, '2922', 'Lançamento efetuado a título de simples faturamento decorrente de compra para recebimento futuro', ''),
(187, '2923', 'Entrada de mercadoria recebida do vendedor remetente, em venda à ordem', ''),
(188, '2924', 'Entrada para industrialização por conta e ordem do adquirente da mercadoria, quando esta não transitar pelo estabelecimento do adquirente', ''),
(189, '2925', 'Retorno de mercadoria remetida para industrialização por conta e ordem do adquirente da mercadoria, quando esta não transitar pelo estabelecimento do adquirente', ''),
(190, '2949', 'Outra entrada de mercadoria ou prestação de serviço não especificado', ''),
(191, '3101', 'Compra para industrialização', ''),
(192, '3102', 'Compra para comercialização', ''),
(193, '3126', 'Compra para utilização na prestação de serviço', ''),
(194, '3127', 'Compra para industrialização sob o regime de \"drawback\"', ''),
(195, '3201', 'Devolução de venda de produção do estabelecimento', ''),
(196, '3202', 'Devolução de venda de mercadoria adquirida ou recebida de terceiros', ''),
(197, '3205', 'Anulação de valor relativo à prestação de serviço de comunicação', ''),
(198, '3206', 'Anulação de valor relativo à prestação de serviço de transporte', ''),
(199, '3207', 'Anulação de valor relativo à venda de energia elétrica', ''),
(200, '3211', 'Devolução de venda de produção do estabelecimento sob o regime de \"drawback\"', ''),
(201, '3251', 'Compra de energia elétrica para distribuição ou comercialização', ''),
(202, '3301', 'Aquisição de serviço de comunicação para execução de serviço da mesma natureza', ''),
(203, '3351', 'Aquisição de serviço de transporte para execução de serviço da mesma natureza', ''),
(204, '3352', 'Aquisição de serviço de transporte por estabelecimento industrial', ''),
(205, '3353', 'Aquisição de serviço de transporte por estabelecimento comercial', ''),
(206, '3354', 'Aquisição de serviço de transporte por estabelecimento de prestador de serviço de comunicação', ''),
(207, '3355', 'Aquisição de serviço de transporte por estabelecimento de geradora ou de distribuidora de energia elétrica', ''),
(208, '3356', 'Aquisição de serviço de transporte por estabelecimento de produtor rural', ''),
(209, '3503', 'Devolução de mercadoria exportada que tenha sido recebida com fim específico de exportação', ''),
(210, '3551', 'Compra de bem para o ativo imobilizado', ''),
(211, '3553', 'Devolução de venda de bem do ativo imobilizado', ''),
(212, '3556', 'Compra de material para uso ou consumo', ''),
(213, '3930', 'Lançamento efetuado a título de entrada de bem sob amparo de regime especial aduaneiro de admissão temporária', ''),
(214, '3949', 'Outra entrada de mercadoria ou prestação de serviço não especificado', ''),
(215, '5101', 'Venda de produção do estabelecimento', ''),
(216, '5102', 'Venda de mercadoria adquirida ou recebida de terceiros', ''),
(217, '5103', 'Venda de produção do estabelecimento, efetuada fora do estabelecimento', ''),
(218, '5104', 'Venda de mercadoria adquirida ou recebida de terceiros, efetuada fora do estabelecimento', ''),
(219, '5105', 'Venda de produção do estabelecimento que não deva por ele transitar', ''),
(220, '5106', 'Venda de mercadoria adquirida ou recebida de terceiros, que não deva por ele transitar', ''),
(221, '5109', 'Venda de produção do estabelecimento, destinada à Zona Franca de Manaus ou Áreas de Livre Comércio', ''),
(222, '5110', 'Venda de mercadoria adquirida ou recebida de terceiros, destinada à Zona Franca de Manaus ou Áreas de Livre Comércio', ''),
(223, '5111', 'Venda de produção do estabelecimento remetida anteriormente em consignação industrial', ''),
(224, '5112', 'Venda de mercadoria adquirida ou recebida de terceiros remetida anteriormente em consignação industrial', ''),
(225, '5113', 'Venda de produção do estabelecimento remetida anteriormente em consignação mercantil', ''),
(226, '5114', 'Venda de mercadoria adquirida ou recebida de terceiros remetida anteriormente em consignação mercantil', ''),
(227, '5115', 'Venda de mercadoria adquirida ou recebida de terceiros, recebida anteriormente em consignação mercantil', ''),
(228, '5116', 'Venda de produção do estabelecimento originada de encomenda para entrega futura', ''),
(229, '5117', 'Venda de mercadoria adquirida ou recebida de terceiros, originada de encomenda para entrega futura', ''),
(230, '5118', 'Venda de produção do estabelecimento entregue ao destinatário por conta e ordem do adquirente originário, em venda à ordem', ''),
(231, '5119', 'Venda de mercadoria adquirida ou recebida de terceiros entregue ao destinatário por conta e ordem do adquirente originário, em venda à ordem', ''),
(232, '5120', 'Venda de mercadoria adquirida ou recebida de terceiros entregue ao destinatário pelo vendedor remetente, em venda à ordem', ''),
(233, '5122', 'Venda de produção do estabelecimento remetida para industrialização, por conta e ordem do adquirente, sem transitar pelo estabelecimento do adquirente', ''),
(234, '5123', 'Venda de mercadoria adquirida ou recebida de terceiros remetida para industrialização, por conta e ordem do adquirente, sem transitar pelo estabelecimento do adquirente', ''),
(235, '5124', 'Industrialização efetuada para outra empresa', ''),
(236, '5125', 'Industrialização efetuada para outra empresa quando a mercadoria recebida para utilização no processo de industrialização não transitar pelo estabelecimento adquirente da mercadoria', ''),
(237, '5151', 'Transferência de produção do estabelecimento', ''),
(238, '5152', 'Transferência de mercadoria adquirida ou recebida de terceiros', ''),
(239, '5153', 'Transferência de energia elétrica', ''),
(240, '5155', 'Transferência de produção do estabelecimento, que não deva por ele transitar', ''),
(241, '5156', 'Transferência de mercadoria adquirida ou recebida de terceiros, que não deva por ele transitar', ''),
(242, '5201', 'Devolução de compra para industrialização', ''),
(243, '5202', 'Devolução de compra para comercialização', ''),
(244, '5205', 'Anulação de valor relativo a aquisição de serviço de comunicação', ''),
(245, '5206', 'Anulação de valor relativo a aquisição de serviço de transporte', ''),
(246, '5207', 'Anulação de valor relativo à compra de energia elétrica', ''),
(247, '5208', 'Devolução de mercadoria recebida em transferência para industrialização', ''),
(248, '5209', 'Devolução de mercadoria recebida em transferência para comercialização', ''),
(249, '5210', 'Devolução de compra para utilização na prestação de serviço', ''),
(250, '5251', 'Venda de energia elétrica para distribuição ou comercialização', ''),
(251, '5252', 'Venda de energia elétrica para estabelecimento industrial', ''),
(252, '5253', 'Venda de energia elétrica para estabelecimento comercial', ''),
(253, '5254', 'Venda de energia elétrica para estabelecimento prestador de serviço de transporte', ''),
(254, '5255', 'Venda de energia elétrica para estabelecimento prestador de serviço de comunicação', ''),
(255, '5256', 'Venda de energia elétrica para estabelecimento de produtor rural', ''),
(256, '5257', 'Venda de energia elétrica para consumo por demanda contratada', ''),
(257, '5258', 'Venda de energia elétrica a não contribuinte', ''),
(258, '5301', 'Prestação de serviço de comunicação para execução de serviço da mesma natureza', ''),
(259, '5302', 'Prestação de serviço de comunicação a estabelecimento industrial', ''),
(260, '5303', 'Prestação de serviço de comunicação a estabelecimento comercial', ''),
(261, '5304', 'Prestação de serviço de comunicação a estabelecimento de prestador de serviço de transporte', ''),
(262, '5305', 'Prestação de serviço de comunicação a estabelecimento de geradora ou de distribuidora de energia elétrica', ''),
(263, '5306', 'Prestação de serviço de comunicação a estabelecimento de produtor rural', ''),
(264, '5307', 'Prestação de serviço de comunicação a não contribuinte', ''),
(265, '5351', 'Prestação de serviço de transporte para execução de serviço da mesma natureza', ''),
(266, '5352', 'Prestação de serviço de transporte a estabelecimento industrial', ''),
(267, '5353', 'Prestação de serviço de transporte a estabelecimento comercial', ''),
(268, '5354', 'Prestação de serviço de transporte a estabelecimento de prestador de serviço de comunicação', ''),
(269, '5355', 'Prestação de serviço de transporte a estabelecimento de geradora ou de distribuidora de energia elétrica', ''),
(270, '5356', 'Prestação de serviço de transporte a estabelecimento de produtor rural', ''),
(271, '5357', 'Prestação de serviço de transporte a não contribuinte', ''),
(272, '5401', 'Venda de produção do estabelecimento em operação com produto sujeito ao regime de substituição tributária, na condição de contribuinte substituto', ''),
(273, '5402', 'Venda de produção do estabelecimento de produto sujeito ao regime de substituição tributária, em operação entre contribuintes substitutos do mesmo produto', ''),
(274, '5403', 'Venda de mercadoria adquirida ou recebida de terceiros em operação com mercadoria sujeita ao regime de substituição tributária, na condição de contribuinte substituto', ''),
(275, '5405', 'Venda de mercadoria adquirida ou recebida de terceiros em operação com mercadoria sujeita ao regime de substituição tributária, na condição de contribuinte substituído', ''),
(276, '5408', 'Transferência de produção do estabelecimento em operação com produto sujeito ao regime de substituição tributária', ''),
(277, '5409', 'Transferência de mercadoria adquirida ou recebida de terceiros em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(278, '5410', 'Devolução de compra para industrialização em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(279, '5411', 'Devolução de compra para comercialização em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(280, '5412', 'Devolução de bem do ativo imobilizado, em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(281, '5413', 'Devolução de mercadoria destinada ao uso ou consumo, em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(282, '5414', 'Remessa de produção do estabelecimento para venda fora do estabelecimento em operação com produto sujeito ao regime de substituição tributária', ''),
(283, '5415', 'Remessa de mercadoria adquirida ou recebida de terceiros para venda fora do estabelecimento, em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(284, '5451', 'Remessa de animal e de insumo para estabelecimento produtor', ''),
(285, '5501', 'Remessa de produção do estabelecimento, com fim específico de exportação', ''),
(286, '5502', 'Remessa de mercadoria adquirida ou recebida de terceiros, com fim específico de exportação', ''),
(287, '5503', 'Devolução de mercadoria recebida com fim específico de exportação', ''),
(288, '5551', 'Venda de bem do ativo imobilizado', ''),
(289, '5552', 'Transferência de bem do ativo imobilizado', ''),
(290, '5553', 'Devolução de compra de bem para o ativo imobilizado', ''),
(291, '5554', 'Remessa de bem do ativo imobilizado para uso fora do estabelecimento', ''),
(292, '5555', 'Devolução de bem do ativo imobilizado de terceiro, recebido para uso no estabelecimento', ''),
(293, '5556', 'Devolução de compra de material de uso ou consumo', ''),
(294, '5557', 'Transferência de material de uso ou consumo', ''),
(295, '5601', 'Transferência de crédito de ICMS acumulado', ''),
(296, '5602', 'Transferência de saldo credor de ICMS para outro estabelecimento da mesma empresa, destinado à compensação de saldo devedor de ICMS', ''),
(297, '5603', 'Ressarcimento de ICMS retido por substituição tributária', ''),
(298, '5901', 'Remessa para industrialização por encomenda', ''),
(299, '5902', 'Retorno de mercadoria utilizada na industrialização por encomenda', ''),
(300, '5903', 'Retorno de mercadoria recebida para industrialização e não aplicada no referido processo', ''),
(301, '5904', 'Remessa para venda fora do estabelecimento', ''),
(302, '5905', 'Remessa para depósito fechado ou armazém geral', ''),
(303, '5906', 'Retorno de mercadoria depositada em depósito fechado ou armazém geral', ''),
(304, '5907', 'Retorno simbólico de mercadoria depositada em depósito fechado ou armazém geral', ''),
(305, '5908', 'Remessa de bem por conta de contrato de comodato', ''),
(306, '5909', 'Retorno de bem recebido por conta de contrato de comodato', ''),
(307, '5910', 'Remessa em bonificação, doação ou brinde', ''),
(308, '5911', 'Remessa de amostra grátis', ''),
(309, '5912', 'Remessa de mercadoria ou bem para demonstração', ''),
(310, '5913', 'Retorno de mercadoria ou bem recebido para demonstração', ''),
(311, '5914', 'Remessa de mercadoria ou bem para exposição ou feira', ''),
(312, '5915', 'Remessa de mercadoria ou bem para conserto ou reparo', ''),
(313, '5916', 'Retorno de mercadoria ou bem recebido para conserto ou reparo', ''),
(314, '5917', 'Remessa de mercadoria em consignação mercantil ou industrial', ''),
(315, '5918', 'Devolução de mercadoria recebida em consignação mercantil ou industrial', ''),
(316, '5919', 'Devolução simbólica de mercadoria vendida ou utilizada em processo industrial, recebida anteriormente em consignação mercantil ou industrial', ''),
(317, '5920', 'Remessa de vasilhame ou sacaria', ''),
(318, '5921', 'Devolução de vasilhame ou sacaria', ''),
(319, '5922', 'Lançamento efetuado a título de simples faturamento decorrente de venda para entrega futura', ''),
(320, '5923', 'Remessa de mercadoria por conta e ordem de terceiros, em venda à ordem', ''),
(321, '5924', 'Remessa para industrialização por conta e ordem do adquirente da mercadoria,', ''),
(322, '5925', 'Retorno de mercadoria recebida para industrialização por conta e ordem do adquirente da mercadoria, quando aquela não transitar pelo estabelecimento do adquirente', ''),
(323, '5926', 'Lançamento efetuado a título de reclassificação de mercadoria decorrente de formação de kit ou de sua desagregação', ''),
(324, '5927', 'Lançamento efetuado a título de baixa de estoque decorrente de perda, roubo ou deterioração', ''),
(325, '5928', 'Lançamento efetuado a título de baixa de estoque decorrente do encerramento da atividade da empresa', ''),
(326, '5929', 'Lançamento efetuado em decorrência de emissão de documento fiscal relativo a operação ou prestação também registrada em equipamento Emissor de Cupom Fiscal', ''),
(327, '5931', 'Lançamento efetuado em decorrência da responsabilidade de retenção do imposto por substituição tributária, atribuída ao remetente ou alienante da mercadoria, pelo serviço de transporte realizado por transportador autônomo ou por transportador não inscrito na unidade da Federação onde iniciado o serviço', ''),
(328, '5932', 'Prestação de serviço de transporte iniciada em unidade da Federação diversa daquela onde inscrito o prestador', ''),
(329, '5949', 'Outra saída de mercadoria ou prestação de serviço não especificado', ''),
(330, '6101', 'Venda de produção do estabelecimento', ''),
(331, '6102', 'Venda de mercadoria adquirida ou recebida de terceiros', ''),
(332, '6103', 'Venda de produção do estabelecimento, efetuada fora do estabelecimento', ''),
(333, '6104', 'Venda de mercadoria adquirida ou recebida de terceiros, efetuada fora do estabelecimento', ''),
(334, '6105', 'Venda de produção do estabelecimento que não deva por ele transitar', ''),
(335, '6106', 'Venda de mercadoria adquirida ou recebida de terceiros, que não deva por ele transitar', ''),
(336, '6107', 'Venda de produção do estabelecimento, destinada a não contribuinte', ''),
(337, '6108', 'Venda de mercadoria adquirida ou recebida de terceiros, destinada a não contribuinte', ''),
(338, '6109', 'Venda de produção do estabelecimento, destinada à Zona Franca de Manaus ou Áreas de Livre Comércio', ''),
(339, '6110', 'Venda de mercadoria adquirida ou recebida de terceiros, destinada à Zona Franca de Manaus ou Áreas de Livre Comércio', ''),
(340, '6111', 'Venda de produção do estabelecimento remetida anteriormente em consignação industrial', ''),
(341, '6112', 'Venda de mercadoria adquirida ou recebida de Terceiros remetida anteriormente em consignação industrial', ''),
(342, '6113', 'Venda de produção do estabelecimento remetida anteriormente em consignação mercantil', ''),
(343, '6114', 'Venda de mercadoria adquirida ou recebida de terceiros remetida anteriormente em consignação mercantil', ''),
(344, '6115', 'Venda de mercadoria adquirida ou recebida de terceiros, recebida anteriormente em consignação mercantil', ''),
(345, '6116', 'Venda de produção do estabelecimento originada de encomenda para entrega futura', ''),
(346, '6117', 'Venda de mercadoria adquirida ou recebida de terceiros, originada de encomenda para entrega futura', ''),
(347, '6118', 'Venda de produção do estabelecimento entregue ao destinatário por conta e ordem do adquirente originário, em venda à ordem', ''),
(348, '6119', 'Venda de mercadoria adquirida ou recebida de terceiros entregue ao destinatário por conta e ordem do adquirente originário, em venda à ordem', ''),
(349, '6120', 'Venda de mercadoria adquirida ou recebida de terceiros entregue ao destinatário pelo vendedor remetente, em venda à ordem', ''),
(350, '6122', 'Venda de produção do estabelecimento remetida para industrialização, por conta e ordem do adquirente, sem transitar pelo estabelecimento do adquirente', ''),
(351, '6123', 'Venda de mercadoria adquirida ou recebida de terceiros remetida para industrialização, por conta e ordem do adquirente, sem transitar pelo estabelecimento do adquirente', ''),
(352, '6124', 'Industrialização efetuada para outra empresa', ''),
(353, '6125', 'Industrialização efetuada para outra empresa quando a mercadoria recebida para utilização no processo de industrialização não transitar pelo estabelecimento adquirente da mercadoria', ''),
(354, '6151', 'Transferência de produção do estabelecimento', ''),
(355, '6152', 'Transferência de mercadoria adquirida ou recebida de terceiros', ''),
(356, '6153', 'Transferência de energia elétrica', ''),
(357, '6155', 'Transferência de produção do estabelecimento, que não deva por ele transitar', ''),
(358, '6156', 'Transferência de mercadoria adquirida ou recebida de terceiros, que não deva por ele transitar', ''),
(359, '6201', 'Devolução de compra para industrialização', ''),
(360, '6202', 'Devolução de compra para comercialização', ''),
(361, '6205', 'Anulação de valor relativo a aquisição de serviço de comunicação', ''),
(362, '6206', 'Anulação de valor relativo a aquisição de serviço de transporte', ''),
(363, '6207', 'Anulação de valor relativo à compra de energia elétrica', ''),
(364, '6208', 'Devolução de mercadoria recebida em transferência para industrialização', ''),
(365, '6209', 'Devolução de mercadoria recebida em transferência para comercialização', ''),
(366, '6210', 'Devolução de compra para utilização na prestação de serviço', ''),
(367, '6251', 'Venda de energia elétrica para distribuição ou comercialização', ''),
(368, '6252', 'Venda de energia elétrica para estabelecimento industrial', ''),
(369, '6253', 'Venda de energia elétrica para estabelecimento comercial', ''),
(370, '6254', 'Venda de energia elétrica para estabelecimento prestador de serviço de transporte', ''),
(371, '6255', 'Venda de energia elétrica para estabelecimento prestador de serviço de comunicação', ''),
(372, '6256', 'Venda de energia elétrica para estabelecimento de produtor rural', ''),
(373, '6257', 'Venda de energia elétrica para consumo por demanda contratada', ''),
(374, '6258', 'Venda de energia elétrica a não contribuinte', ''),
(375, '6301', 'Prestação de serviço de comunicação para execução de serviço da mesma natureza', ''),
(376, '6302', 'Prestação de serviço de comunicação a estabelecimento industrial', ''),
(377, '6303', 'Prestação de serviço de comunicação a estabelecimento comercial', ''),
(378, '6304', 'Prestação de serviço de comunicação a estabelecimento de prestador de serviço de transporte', ''),
(379, '6305', 'Prestação de serviço de comunicação a estabelecimento de geradora ou de distribuidora de energia elétrica', ''),
(380, '6306', 'Prestação de serviço de comunicação a estabelecimento de produtor rural', ''),
(381, '6307', 'Prestação de serviço de comunicação a não contribuinte', ''),
(382, '6351', 'Prestação de serviço de transporte para execução de serviço da mesma natureza', ''),
(383, '6352', 'Prestação de serviço de transporte a estabelecimento industrial', ''),
(384, '6353', 'Prestação de serviço de transporte a estabelecimento comercial', ''),
(385, '6354', 'Prestação de serviço de transporte a estabelecimento de prestador de serviço de comunicação', ''),
(386, '6355', 'Prestação de serviço de transporte a estabelecimento de geradora ou de distribuidora de energia elétrica', ''),
(387, '6356', 'Prestação de serviço de transporte a estabelecimento de produtor rural', ''),
(388, '6357', 'Prestação de serviço de transporte a não contribuinte', ''),
(389, '6401', 'Venda de produção do estabelecimento em operação com produto sujeito ao regime de substituição tributária, na condição de contribuinte substituto', ''),
(390, '6402', 'Venda de produção do estabelecimento de produto sujeito ao regime de substituição tributária, em operação entre contribuintes substitutos do mesmo produto', ''),
(391, '6403', 'Venda de mercadoria adquirida ou recebida de terceiros em operação com mercadoria sujeita ao regime de substituição tributária, na condição de contribuinte substituto', ''),
(392, '6404', 'Venda de mercadoria sujeita ao regime de substituição tributária, cujo imposto já tenha sido retido anteriormente', ''),
(393, '6408', 'Transferência de produção do estabelecimento em operação com produto sujeito ao regime de substituição tributária', ''),
(394, '6409', 'Transferência de mercadoria adquirida ou recebida de terceiros em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(395, '6410', 'Devolução de compra para industrialização em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(396, '6411', 'Devolução de compra para comercialização em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(397, '6412', 'Devolução de bem do ativo imobilizado, em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(398, '6413', 'Devolução de mercadoria destinada ao uso ou consumo, em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(399, '6414', 'Remessa de produção do estabelecimento para venda fora do estabelecimento em operação com produto sujeito ao regime de substituição tributária', ''),
(400, '6415', 'Remessa de mercadoria adquirida ou recebida de terceiros para venda fora do estabelecimento, em operação com mercadoria sujeita ao regime de substituição tributária', ''),
(401, '6501', 'Remessa de produção do estabelecimento, com fim específico de exportação', ''),
(402, '6502', 'Remessa de mercadoria adquirida ou recebida de terceiros, com fim específico de exportação', ''),
(403, '6503', 'Devolução de mercadoria recebida com fim específico de exportação', ''),
(404, '6551', 'Venda de bem do ativo imobilizado', ''),
(405, '6552', 'Transferência de bem do ativo imobilizado', ''),
(406, '6553', 'Devolução de compra de bem para o ativo imobilizado', ''),
(407, '6554', 'Remessa de bem do ativo imobilizado para uso fora do estabelecimento', ''),
(408, '6555', 'Devolução de bem do ativo imobilizado de terceiro, recebido para uso no estabelecimento', ''),
(409, '6556', 'Devolução de compra de material de uso ou consumo', ''),
(410, '6557', 'Transferência de material de uso ou consumo', ''),
(411, '6603', 'Ressarcimento de ICMS retido por substituição tributária', ''),
(412, '6901', 'Remessa para industrialização por encomenda', ''),
(413, '6902', 'Retorno de mercadoria utilizada na industrialização por encomenda', ''),
(414, '6903', 'Retorno de mercadoria recebida para industrialização e não aplicada no referido processo', ''),
(415, '6904', 'Remessa para venda fora do estabelecimento', ''),
(416, '6905', 'Remessa para depósito fechado ou armazém geral', ''),
(417, '6906', 'Retorno de mercadoria depositada em depósito fechado ou armazém geral', ''),
(418, '6907', 'Retorno simbólico de mercadoria depositada em depósito fechado ou armazém geral', ''),
(419, '6908', 'Remessa de bem por conta de contrato de comodato', ''),
(420, '6909', 'Retorno de bem recebido por conta de contrato de comodato', ''),
(421, '6910', 'Remessa em bonificação, doação ou brinde', ''),
(422, '6911', 'Remessa de amostra grátis', ''),
(423, '6912', 'Remessa de mercadoria ou bem para demonstração', ''),
(424, '6913', 'Retorno de mercadoria ou bem recebido para demonstração', ''),
(425, '6914', 'Remessa de mercadoria ou bem para exposição ou feira', ''),
(426, '6915', 'Remessa de mercadoria ou bem para conserto ou reparo', ''),
(427, '6916', 'Retorno de mercadoria ou bem recebido para conserto ou reparo', ''),
(428, '6917', 'Remessa de mercadoria em consignação mercantil ou industrial', ''),
(429, '6918', 'Devolução de mercadoria recebida em consignação mercantil ou industrial', ''),
(430, '6919', 'Devolução simbólica de mercadoria vendida ou utilizada em processo industrial, recebida anteriormente em consignação mercantil ou industrial', ''),
(431, '6920', 'Remessa de vasilhame ou sacaria', ''),
(432, '6921', 'Devolução de vasilhame ou sacaria', ''),
(433, '6922', 'Lançamento efetuado a título de simples faturamento decorrente de venda para entrega futura', ''),
(434, '6923', 'Remessa de mercadoria por conta e ordem de terceiros, em venda à ordem', ''),
(435, '6924', 'Remessa para industrialização por conta e ordem do adquirente da mercadoria, quando esta não transitar pelo estabelecimento do adquirente', ''),
(436, '6925', 'Retorno de mercadoria recebida para industrialização por conta e ordem do adquirente da mercadoria, quando aquela não transitar pelo estabelecimento do adquirente', ''),
(437, '6929', 'Lançamento efetuado em decorrência de emissão de documento fiscal relativo a operação ou prestação também registrada em equipamento Emissor de Cupom Fiscal', ''),
(438, '6931', 'Lançamento efetuado em decorrência da responsabilidade de retenção do imposto por substituição tributária, atribuída ao remetente ou alienante da mercadoria, pelo serviço de transporte realizado por transportador autônomo ou por transportador não inscrito na unidade da Federação onde iniciado o serviço', ''),
(439, '6932', 'Prestação de serviço de transporte iniciada em unidade da Federação diversa daquela onde inscrito o prestador', ''),
(440, '6949', 'Outra saída de mercadoria ou prestação de serviço não especificado', ''),
(441, '7101', 'Venda de produção do estabelecimento', ''),
(442, '7102', 'Venda de mercadoria adquirida ou recebida de terceiros', ''),
(443, '7105', 'Venda de produção do estabelecimento, que não deva por ele transitar', ''),
(444, '7106', 'Venda de mercadoria adquirida ou recebida de terceiros, que não deva por ele transitar', ''),
(445, '7127', 'Venda de produção do estabelecimento sob o regime de \"drawback\"', ''),
(446, '7201', 'Devolução de compra para industrialização', ''),
(447, '7202', 'Devolução de compra para comercialização', ''),
(448, '7205', 'Anulação de valor relativo à aquisição de serviço de comunicação', ''),
(449, '7206', 'Anulação de valor relativo a aquisição de serviço de transporte', ''),
(450, '7207', 'Anulação de valor relativo à compra de energia elétrica', ''),
(451, '7210', 'Devolução de compra para utilização na prestação de serviço', ''),
(452, '7211', 'Devolução de compras para industrialização sob o regime de drawback\"', ''),
(453, '7251', 'Venda de energia elétrica para o exterior', ''),
(454, '7301', 'Prestação de serviço de comunicação para execução de serviço da mesma natureza', ''),
(455, '7358', 'Prestação de serviço de transporte', ''),
(456, '7501', 'Exportação de mercadorias recebidas com fim específico de exportação', ''),
(457, '7551', 'Venda de bem do ativo imobilizado', ''),
(458, '7553', 'Devolução de compra de bem para o ativo imobilizado', ''),
(459, '7556', 'Devolução de compra de material de uso ou consumo', ''),
(460, '7930', 'Lançamento efetuado a título de devolução de bem cuja entrada tenha ocorrido sob amparo de regime especial aduaneiro de admissão temporária', ''),
(461, '7949', 'Outra saída de mercadoria ou prestação de serviço não especificado', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `nome_fantasia` varchar(100) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `cnpj` varchar(15) DEFAULT NULL,
  `fone` varchar(10) DEFAULT NULL,
  `celular` varchar(10) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `logradouro` varchar(100) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `cidade` varchar(80) DEFAULT NULL,
  `complemento` varchar(80) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `ie` varchar(20) DEFAULT NULL,
  `im` varchar(20) DEFAULT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `suframa` varchar(20) DEFAULT NULL,
  `cod_estrangeiro` varchar(25) DEFAULT NULL,
  `ie_subt_trib` varchar(20) DEFAULT NULL,
  `indIEDest` int(11) DEFAULT NULL,
  `ibge` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome`, `nome_fantasia`, `cpf`, `cnpj`, `fone`, `celular`, `email`, `cep`, `logradouro`, `numero`, `uf`, `cidade`, `complemento`, `bairro`, `ie`, `im`, `rg`, `suframa`, `cod_estrangeiro`, `ie_subt_trib`, `indIEDest`, `ibge`) VALUES
(13, 'EDUARDO LIMA', 'EDUARDO LIMA', '05789961118', '', '99539898', '99569898', 'nacional@gmail', '78051408', 'Rua 1 A', 'sn', 'MT', 'Cuiaba', '', 'Jardim Eldorado', '', '', '2662094-4', '', '', NULL, 9, '5103403'),
(14, 'Fabio Junior Pereira', 'Fabio Junior Pereira', '04870537109', '', '6699953949', '6699539490', 'fabiojr933@gmail.com', '78520000', 'pascoa 1', 'sn', 'MT', 'Guaranta do Norte', 'sitio', 'sitio', '', '', '12345', '', '', NULL, 9, '5104104');

-- --------------------------------------------------------

--
-- Estrutura da tabela `configuracao`
--

CREATE TABLE `configuracao` (
  `id_configuracao` int(10) UNSIGNED NOT NULL,
  `nfe_serie` int(11) DEFAULT NULL,
  `tipo_nota_padrao` int(11) DEFAULT NULL,
  `nfe_ambiente` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nfe_versao` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empresa_padrao` int(11) DEFAULT NULL,
  `ultimanfe` int(11) DEFAULT NULL,
  `natureza_padrao` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_pagamento` int(11) NOT NULL,
  `indFinal` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_frete` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificado_digital` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `senha_certificado` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `configuracao`
--

INSERT INTO `configuracao` (`id_configuracao`, `nfe_serie`, `tipo_nota_padrao`, `nfe_ambiente`, `nfe_versao`, `empresa_padrao`, `ultimanfe`, `natureza_padrao`, `tipo_pagamento`, `indFinal`, `tipo_frete`, `certificado_digital`, `senha_certificado`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2', '1.0', 15, 265, 'Venda de Mercadoria', 1, '1', '9', 'certificado.pfx', '0590', '2021-03-02 05:06:19', '2021-03-02 05:06:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cst_cofins`
--

CREATE TABLE `cst_cofins` (
  `id_cofins` int(16) NOT NULL,
  `cst_cofins` varchar(16) NOT NULL,
  `desc_cofins` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cst_cofins`
--

INSERT INTO `cst_cofins` (`id_cofins`, `cst_cofins`, `desc_cofins`) VALUES
(1, '01', '01: Operação tributável (BC = Operação alíq. normal (cumul./não cumul.)'),
(2, '02', '02: Operação tributável (BC = valor da operação (alíquota diferenciada)'),
(3, '03', '03: Operação tributável (BC = quant. x alíq. por unidade de produto)'),
(4, '04', '04: Operação tributável (tributação monofásica, alíquota zero)'),
(5, '06', '06: Operação tributável (alíquota zero)'),
(6, '07', '07: Operação isenta da contribuição'),
(7, '08', '08: Operação sem incidência da contribuição'),
(8, '09', '09: Operação com suspensão da contribuição'),
(9, '49', '49: Outras Operações de Saída'),
(10, '50', '50: Direito a Crédito. Vinculada Exclusivamente a Receita Tributada no Mercado Interno'),
(11, '51', '51: Direito a Crédito. Vinculada Exclusivamente a Receita Não Tributada no Mercado Interno'),
(12, '52', '52: Direito a Crédito. Vinculada Exclusivamente a Receita de Exportação'),
(13, '53', '53: Direito a Crédito. Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno'),
(14, '54', '54: Direito a Crédito. Vinculada a Receitas Tributadas no Mercado Interno e de Exportação'),
(15, '55', '55: Direito a Crédito. Vinculada a Receitas Não-Trib. no Mercado Interno e de Exportação'),
(16, '56', '56: Direito a Crédito. Vinculada a Rec. Trib. e Não-Trib. Mercado Interno e Exportação'),
(17, '60', '60: Créd. Presumido. Aquisição Vinc. Exclusivamente a Receita Tributada no Mercado Interno'),
(18, '61', '61: Créd. Presumido. Aquisição Vinc. Exclusivamente a Rec. Não-Trib. no Mercado Interno'),
(19, '62', '62: Créd. Presumido. Aquisição Vinc. Exclusivamente a Receita de Exportação'),
(20, '63', '63: Créd. Presumido. Aquisição Vinc. a Rec. Trib. e Não-Trib. no Mercado Interno'),
(21, '64', '64: Créd. Presumido. Aquisição Vinc. a Rec. Trib. no Mercado Interno e de Exportação'),
(22, '65', '65: Créd. Presumido. Aquisição Vinc. a Rec. Não-Trib. Mercado Interno e Exportação'),
(23, '66', '66: Créd. Presumido. Aquisição Vinc. a Rec. Trib. e Não-Trib. Mercado Interno e Exportação'),
(24, '67', '67: Crédito Presumido - Outras Operações'),
(25, '70', '70: Operação de Aquisição sem Direito a Crédito'),
(26, '71', '71: Operação de Aquisição com Isenção'),
(27, '72', '72: Operação de Aquisição com Suspensão'),
(28, '73', '73: Operação de Aquisição a Alíquota Zero'),
(29, '74', '74: Operação de Aquisição sem Incidência da Contribuição'),
(30, '75', '75: Operação de Aquisição por Substituição Tributária'),
(31, '98', '98: Outras Operações de Entrada'),
(32, '99', '99: Outras operações');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cst_icms`
--

CREATE TABLE `cst_icms` (
  `id_icms` int(16) NOT NULL,
  `cst_icms` varchar(16) NOT NULL,
  `desc_icms` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cst_icms`
--

INSERT INTO `cst_icms` (`id_icms`, `cst_icms`, `desc_icms`) VALUES
(1, '00', '00: Tributada integralmente'),
(2, '10', '10: Tributada com cobr. por subst. trib.'),
(3, '20', '20: Com redução de base de cálculo'),
(4, '30', '30: Isenta ou não trib com cobr por subst trib'),
(5, '40', '40: Isenta'),
(6, '41', '41: Não tributada'),
(7, '50', '50: Suspesão'),
(8, '51', '51: Diferimento'),
(9, '60', '60: ICMS cobrado anteriormente por subst trib'),
(10, '70', '70: Redução de Base Calc e cobr ICMS por subst trib'),
(11, '90', '90: Outros'),
(12, '10Part', 'Partilha 10: Entre UF origem e destino ou definida na legislação com Subst Trib'),
(13, '90Part', 'Partilha 90: Entre UF origem e destino ou definida na legislação - outros'),
(14, '41ST', 'Repasse 41: ICMS ST retido em operações interestaduais com repasses do Subst Trib'),
(15, '101', 'Simples Nacional: 101: Com permissão de crédito'),
(16, '102', 'Simples Nacional: 102: Sem permissão de crédito'),
(17, '103', 'Simples Nacional: 103: Isenção do ICMS para faixa de receita bruta'),
(18, '201', 'Simples Nacional: 201: Com permissão de crédito, com cobr ICMS por Subst Trib'),
(19, '202', 'Simples Nacional: 202: Sem permissão de crédito, com cobr ICMS por Subst Trib'),
(20, '203', 'Simples Nacional: 203: Isenção ICMS p/ faixa de receita bruta e cobr do ICMS por ST'),
(21, '300', 'Simples Nacional: 300: Imune'),
(22, '400', 'Simples Nacional: 400: Não tributada'),
(23, '500', 'Simples Nacional: 500: ICMS cobrado antes por subst trib ou antecipação'),
(24, '900', 'Simples Nacional: 900: Outros');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cst_ipi`
--

CREATE TABLE `cst_ipi` (
  `id_ipi` int(16) NOT NULL,
  `cst_ipi` varchar(16) NOT NULL,
  `desc_ipi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cst_ipi`
--

INSERT INTO `cst_ipi` (`id_ipi`, `cst_ipi`, `desc_ipi`) VALUES
(1, '00', '00: Entrada com recuperação de crédito'),
(2, '01', '01: Entrada tributada com alíquota zero'),
(3, '02', '02: Entrada isenta'),
(4, '03', '03: Entrada não-tributada'),
(5, '04', '04: Entrada imune'),
(6, '05', '05: Entrada com suspensão'),
(7, '49', '49: Outras entradas'),
(8, '50', '50: Saída tributada'),
(9, '51', '51: Saída tributada com alíquota zero'),
(10, '52', '52: Saída isenta'),
(11, '53', '53: Saída não-tributada'),
(12, '54', '54: Saída imune'),
(13, '55', '55: Saída com suspensão'),
(14, '99', '99: Outras saídas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cst_pis`
--

CREATE TABLE `cst_pis` (
  `id_pis` int(16) NOT NULL,
  `cst_pis` varchar(16) NOT NULL,
  `desc_pis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cst_pis`
--

INSERT INTO `cst_pis` (`id_pis`, `cst_pis`, `desc_pis`) VALUES
(1, '01', '01: Operação tributável (BC = Operação alíq. normal (cumul./não cumul.)'),
(2, '02', '02: Operação tributável (BC = valor da operação (alíquota diferenciada)'),
(3, '03', '03: Operação tributável (BC = quant. x alíq. por unidade de produto)'),
(4, '04', '04: Operação tributável (tributação monofásica, alíquota zero)'),
(5, '06', '06: Operação tributável (alíquota zero)'),
(6, '07', '07: Operação isenta da contribuição'),
(7, '08', '08: Operação sem incidência da contribuição'),
(8, '09', '09: Operação com suspensão da contribuição'),
(9, '49', '49: Outras Operações de Saída'),
(10, '50', '50: Direito a Crédito. Vinculada Exclusivamente a Receita Tributada no Mercado Interno'),
(11, '51', '51: Direito a Crédito. Vinculada Exclusivamente a Receita Não Tributada no Mercado Interno'),
(12, '52', '52: Direito a Crédito. Vinculada Exclusivamente a Receita de Exportação'),
(13, '53', '53: Direito a Crédito. Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno'),
(14, '54', '54: Direito a Crédito. Vinculada a Receitas Tributadas no Mercado Interno e de Exportação'),
(15, '55', '55: Direito a Crédito. Vinculada a Receitas Não-Trib. no Mercado Interno e de Exportação'),
(16, '56', '56: Direito a Crédito. Vinculada a Rec. Trib. e Não-Trib. Mercado Interno e Exportação'),
(17, '60', '60: Créd. Presumido. Aquisição Vinc. Exclusivamente a Receita Tributada no Mercado Interno'),
(18, '61', '61: Créd. Presumido. Aquisição Vinc. Exclusivamente a Rec. Não-Trib. no Mercado Interno'),
(19, '62', '62: Créd. Presumido. Aquisição Vinc. Exclusivamente a Receita de Exportação'),
(20, '63', '63: Créd. Presumido. Aquisição Vinc. a Rec. Trib. e Não-Trib. no Mercado Interno'),
(21, '64', '64: Créd. Presumido. Aquisição Vinc. a Rec. Trib. no Mercado Interno e de Exportação'),
(22, '65', '65: Créd. Presumido. Aquisição Vinc. a Rec. Não-Trib. Mercado Interno e Exportação'),
(23, '66', '66: Créd. Presumido. Aquisição Vinc. a Rec. Trib. e Não-Trib. Mercado Interno e Exportação'),
(24, '67', '67: Crédito Presumido - Outras Operações'),
(25, '70', '70: Operação de Aquisição sem Direito a Crédito'),
(26, '71', '71: Operação de Aquisição com Isenção'),
(27, '72', '72: Operação de Aquisição com Suspensão'),
(28, '73', '73: Operação de Aquisição a Alíquota Zero'),
(29, '74', '74: Operação de Aquisição sem Incidência da Contribuição'),
(30, '75', '75: Operação de Aquisição por Substituição Tributária'),
(31, '98', '98: Outras Operações de Entrada'),
(32, '99', '99: Outras operações');

-- --------------------------------------------------------

--
-- Estrutura da tabela `emitente`
--

CREATE TABLE `emitente` (
  `id_emitente` int(11) NOT NULL,
  `razao_social` varchar(100) NOT NULL,
  `nome_fantasia` varchar(100) DEFAULT NULL,
  `cnpj` varchar(20) NOT NULL,
  `ie` varchar(20) DEFAULT NULL,
  `iest` varchar(30) DEFAULT NULL,
  `im` varchar(20) DEFAULT NULL,
  `fone` varchar(15) DEFAULT NULL,
  `celular` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `email_contabilidade` varchar(100) DEFAULT NULL,
  `cep` varchar(15) DEFAULT NULL,
  `logradouro` varchar(100) DEFAULT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cnae` varchar(20) DEFAULT NULL,
  `regime_tributario` int(50) DEFAULT NULL,
  `ibge` varchar(40) DEFAULT NULL,
  `ultima_atualizacao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `emitente`
--

INSERT INTO `emitente` (`id_emitente`, `razao_social`, `nome_fantasia`, `cnpj`, `ie`, `iest`, `im`, `fone`, `celular`, `email`, `email_contabilidade`, `cep`, `logradouro`, `complemento`, `numero`, `uf`, `cidade`, `bairro`, `cnae`, `regime_tributario`, `ibge`, `ultima_atualizacao`) VALUES
(15, 'NACIONAL PNEUS LTDA', 'NACIONAL PNEUS LTDA', '37098783000106', '138136750', NULL, '666', '(66) 3552-1114', '66999653678', 'nacional@gmail', 'nacional@gmail', '78520000', 'AV PIONEIRO JOSE NELSON COUTINHO', NULL, '415', 'MT', 'Guaranta do Norte', 'centro', NULL, 1, '5104104', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(16) NOT NULL,
  `nome_estado` varchar(64) NOT NULL,
  `uf_estado` varchar(2) NOT NULL,
  `codigo_estado` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estado`
--

INSERT INTO `estado` (`id_estado`, `nome_estado`, `uf_estado`, `codigo_estado`) VALUES
(1, 'Acre', 'AC', '12'),
(2, 'Alagoas', 'AL', '27'),
(3, 'Amapá', 'AP', '16'),
(4, 'Amazonas', 'AM', '13'),
(5, 'Bahia', 'BA', '29'),
(6, 'Ceará', 'CE', '23'),
(7, 'Distrito Federal', 'DF', '53'),
(8, 'Espírito Santo', 'ES', '32'),
(9, 'Goiás', 'GO', '52'),
(10, 'Maranhão', 'MA', '21'),
(11, 'Mato Grosso do Sul', 'MS', '50'),
(12, 'Mato Grosso', 'MT', '51'),
(13, 'Minas Gerais', 'MG', '31'),
(14, 'Paraná', 'PR', '41'),
(15, 'Paraíba', 'PB', '25'),
(16, 'Pará', 'PA', '15'),
(17, 'Pernambuco', 'PE', '26'),
(18, 'Piauí', 'PI', '22'),
(19, 'Rio de Janeiro', 'RJ', '33'),
(20, 'Rio Grande do Norte', 'RN', '24'),
(21, 'Rio Grande do Sul', 'RS', '43'),
(22, 'Rondônia', 'RO', '11'),
(23, 'Roraima', 'RR', '14'),
(24, 'Santa Catarina', 'SC', '42'),
(25, 'Sergipe', 'SE', '28'),
(26, 'São Paulo', 'SP', '35'),
(27, 'Tocantins', 'TO', '17'),
(28, 'EXTERIOR', 'EX', '60'),
(29, 'EXTERIOR', 'EX', '60'),
(30, 'EXTERIOR', 'EX', '60'),
(31, 'EXTERIOR', 'EX', '60'),
(32, 'EXTERIOR', 'EX', '60'),
(33, 'EXTERIOR', 'EX', '60'),
(34, 'EXTERIOR', 'EX', '60'),
(35, 'EXTERIOR', 'EX', '60');

-- --------------------------------------------------------

--
-- Estrutura da tabela `icms_desoneracao`
--

CREATE TABLE `icms_desoneracao` (
  `id_icms_desoneracao` int(16) NOT NULL,
  `codigo_icms_desoneracao` varchar(16) NOT NULL,
  `desc_icms_desoneracao` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `icms_desoneracao`
--

INSERT INTO `icms_desoneracao` (`id_icms_desoneracao`, `codigo_icms_desoneracao`, `desc_icms_desoneracao`) VALUES
(1, '1', 'Táxi'),
(2, '2', 'Deficiente Físico'),
(3, '3', 'Produtor Agropecuário'),
(4, '4', 'Frotista / Locadora'),
(5, '5', 'Diplomático / Consular'),
(6, '6', 'Utilitários e Motocicletas da Amazônia Ocidental e Áreas de Livre Comércio (Resolução 714/88 e 790/94 – CONTRAN)'),
(7, '7', 'SUFRAMA'),
(8, '8', 'Venda a Órgãos Públicos'),
(9, '9', 'Outros (NT2011/004)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `icms_modalidade_bc`
--

CREATE TABLE `icms_modalidade_bc` (
  `id_icms_modalidade_bc` int(16) NOT NULL,
  `codigo_icms_modalidade_bc` varchar(16) NOT NULL,
  `desc_icms_modalidade_bc` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `icms_modalidade_bc`
--

INSERT INTO `icms_modalidade_bc` (`id_icms_modalidade_bc`, `codigo_icms_modalidade_bc`, `desc_icms_modalidade_bc`) VALUES
(1, '0', 'Margem valor adicionado'),
(2, '1', 'Pauta (valor)'),
(3, '2', 'Preço tabelado máx. (valor)'),
(4, '3', 'Valor da operação');

-- --------------------------------------------------------

--
-- Estrutura da tabela `icms_modalidade_st`
--

CREATE TABLE `icms_modalidade_st` (
  `id_icms_modalidade_st` int(16) NOT NULL,
  `codigo_icms_modalidade_st` varchar(16) NOT NULL,
  `desc_icms_modalidade_st` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `icms_modalidade_st`
--

INSERT INTO `icms_modalidade_st` (`id_icms_modalidade_st`, `codigo_icms_modalidade_st`, `desc_icms_modalidade_st`) VALUES
(1, '0', 'Valor da operação'),
(2, '1', 'Lista negativa (valor)'),
(3, '2', 'Lista positiva (valor)'),
(4, '3', 'Lista neutra (valor)'),
(5, '4', 'Margem valor adic. (%)'),
(6, '5', 'Pauta (valor)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `icms_origem`
--

CREATE TABLE `icms_origem` (
  `id_icms_origem` int(16) NOT NULL,
  `codigo_icms_origem` varchar(16) NOT NULL,
  `desc_icms_origem` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `icms_origem`
--

INSERT INTO `icms_origem` (`id_icms_origem`, `codigo_icms_origem`, `desc_icms_origem`) VALUES
(1, '0', 'Nacional, exceto as indicadas nos códigos de 3 a 5'),
(2, '1', 'Estrangeira - Importação direta, exceto a indicada no código 6'),
(3, '2', 'Estrangeira - Adquirida no mercado interno, exceto a indicada no código 7'),
(4, '3', 'Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40%'),
(5, '4', 'Nacional, produção em conformidade com processos básicos que tratam as legisl. dos Ajustes'),
(6, '5', 'Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%'),
(7, '6', 'Estrangeira - Importação direta, sem similar nacional, constante em lista da CAMEX'),
(8, '7', 'Estrangeira - Adquirida mercado interno, sem similar nacional, constante em lista da CAMEX');

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_venda`
--

CREATE TABLE `item_venda` (
  `id_item_venda` int(11) NOT NULL,
  `id_venda` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `qtde` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `item_venda`
--

INSERT INTO `item_venda` (`id_item_venda`, `id_venda`, `id_produto`, `qtde`, `valor`, `subtotal`) VALUES
(268, 273, 150, 2, '2.98', '5.96'),
(269, 274, 150, 1, '2.98', '2.98'),
(270, 275, 150, 2, '2.98', '5.96'),
(271, 276, 150, 1, '1.98', '1.98'),
(272, 277, 150, 1, '0.98', '0.98'),
(273, 278, 150, 1, '0.59', '0.59'),
(274, 279, 150, 1, '0.69', '0.69'),
(275, 280, 150, 1, '0.49', '0.49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `nfe`
--

CREATE TABLE `nfe` (
  `id_nfe` int(10) UNSIGNED NOT NULL,
  `id_venda` int(11) DEFAULT NULL,
  `chave` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recibo` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `protocolo` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_status` int(11) NOT NULL DEFAULT 1,
  `cUF` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cNF` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `natOp` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indPag` int(11) DEFAULT NULL,
  `modelo` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serie` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nNF` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cDV` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dhEmi` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dhSaiEnt` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tpNF` int(11) DEFAULT NULL,
  `idDest` int(11) DEFAULT NULL,
  `cMunFG` int(11) DEFAULT NULL,
  `tpImp` int(11) DEFAULT NULL,
  `tpEmis` int(11) DEFAULT NULL,
  `tpAmb` int(11) DEFAULT NULL,
  `finNFe` int(11) DEFAULT NULL,
  `indFinal` int(11) DEFAULT NULL,
  `indPres` int(11) DEFAULT NULL,
  `indIntermed` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `procEmi` int(11) DEFAULT NULL,
  `verProc` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dhCont` date DEFAULT NULL,
  `xJust` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vBC` decimal(10,4) DEFAULT NULL,
  `vICMS` decimal(10,4) DEFAULT NULL,
  `vICMSDeson` decimal(10,2) DEFAULT NULL,
  `vFCP` decimal(10,4) DEFAULT NULL,
  `vBCST` decimal(10,4) DEFAULT NULL,
  `vST` decimal(10,4) DEFAULT NULL,
  `vFCPST` decimal(10,4) DEFAULT NULL,
  `vFCPSTRet` decimal(10,4) DEFAULT NULL,
  `vProd` decimal(10,2) DEFAULT NULL,
  `vFrete` decimal(10,2) DEFAULT NULL,
  `vSeg` decimal(10,2) DEFAULT NULL,
  `vDesc` decimal(10,2) DEFAULT 0.00,
  `vII` decimal(10,4) DEFAULT NULL,
  `vIPI` decimal(10,4) DEFAULT NULL,
  `vIPIDevol` decimal(10,2) DEFAULT NULL,
  `vPIS` decimal(10,4) DEFAULT NULL,
  `vCOFINS` decimal(10,4) DEFAULT NULL,
  `vOutro` decimal(10,2) DEFAULT NULL,
  `vNF` decimal(10,2) DEFAULT NULL,
  `vTotTrib` decimal(10,2) DEFAULT NULL,
  `vOrig` decimal(10,2) DEFAULT NULL,
  `vLiq` decimal(10,2) DEFAULT NULL,
  `autorizado` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_xNome` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_xFant` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_IE` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_IEST` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_IM` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_CNAE` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_CRT` int(11) DEFAULT NULL,
  `em_CNPJ` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_CPF` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_xLgr` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_nro` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_xCpl` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_xBairro` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_cMun` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_xMun` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_UF` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_CEP` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_cPais` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_xPais` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_fone` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_EMAIL` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `em_SUFRAMA` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atualizacao` datetime DEFAULT NULL,
  `ret_xNome` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ret_IE` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ret_CNPJ` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ret_xLgr` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ret_nro` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ret_xCpl` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ret_xBairro` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ret_cMun` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ret_xMun` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ret_UF` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ret_CEP` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ret_cPais` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ret_xPais` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ret_fone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ret_email` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modFrete` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transp_xNome` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transp_IE` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transp_xEnder` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transp_xMun` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transp_xBairro` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transp_UF` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transp_CNPJ` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `veiculo_placa` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `veiculo_UF` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `veiculo_RNTC` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vol_qVol` int(11) DEFAULT NULL,
  `vol_esp` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vol_marca` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vol_nVol` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vol_pesoL` decimal(10,3) DEFAULT NULL,
  `vol_pesoB` decimal(10,3) DEFAULT NULL,
  `tPag` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `infAdFisco` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `infCpl` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `nfe`
--

INSERT INTO `nfe` (`id_nfe`, `id_venda`, `chave`, `recibo`, `protocolo`, `id_status`, `cUF`, `cNF`, `natOp`, `indPag`, `modelo`, `serie`, `nNF`, `cDV`, `dhEmi`, `dhSaiEnt`, `tpNF`, `idDest`, `cMunFG`, `tpImp`, `tpEmis`, `tpAmb`, `finNFe`, `indFinal`, `indPres`, `indIntermed`, `procEmi`, `verProc`, `dhCont`, `xJust`, `vBC`, `vICMS`, `vICMSDeson`, `vFCP`, `vBCST`, `vST`, `vFCPST`, `vFCPSTRet`, `vProd`, `vFrete`, `vSeg`, `vDesc`, `vII`, `vIPI`, `vIPIDevol`, `vPIS`, `vCOFINS`, `vOutro`, `vNF`, `vTotTrib`, `vOrig`, `vLiq`, `autorizado`, `em_xNome`, `em_xFant`, `em_IE`, `em_IEST`, `em_IM`, `em_CNAE`, `em_CRT`, `em_CNPJ`, `em_CPF`, `em_xLgr`, `em_nro`, `em_xCpl`, `em_xBairro`, `em_cMun`, `em_xMun`, `em_UF`, `em_CEP`, `em_cPais`, `em_xPais`, `em_fone`, `em_EMAIL`, `em_SUFRAMA`, `atualizacao`, `ret_xNome`, `ret_IE`, `ret_CNPJ`, `ret_xLgr`, `ret_nro`, `ret_xCpl`, `ret_xBairro`, `ret_cMun`, `ret_xMun`, `ret_UF`, `ret_CEP`, `ret_cPais`, `ret_xPais`, `ret_fone`, `ret_email`, `modFrete`, `transp_xNome`, `transp_IE`, `transp_xEnder`, `transp_xMun`, `transp_xBairro`, `transp_UF`, `transp_CNPJ`, `veiculo_placa`, `veiculo_UF`, `veiculo_RNTC`, `vol_qVol`, `vol_esp`, `vol_marca`, `vol_nVol`, `vol_pesoL`, `vol_pesoB`, `tPag`, `infAdFisco`, `infCpl`) VALUES
(171, 273, '512105370983000106550020000000011710839814', NULL, NULL, 4, '51', '71083981', 'Venda de Mercadoria', 0, '55', '3', '1', NULL, '2021-05-09T14:13:37-03:00', NULL, 1, 1, 5104104, 1, 1, 2, 1, 1, 2, '0', 0, '1.0', NULL, NULL, NULL, NULL, NULL, NULL, '1.0000', NULL, NULL, NULL, '5.99', NULL, '1.00', '0.00', '2.0000', NULL, '60.00', NULL, NULL, NULL, '5.96', NULL, '5.96', '5.96', NULL, 'NACIONAL PNEUS LTDA', 'NACIONAL PNEUS LTDA', '138136750', NULL, '666', NULL, 1, '37098783000106', NULL, 'AV PIONEIRO JOSE NELSON COUTINHO', '415', NULL, 'centro', '5104104', 'Guaranta do Norte', 'MT', '78520000', '1058', 'BRASIL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 274, '51210537098783000106550020000002671460174490', '510000033828420', NULL, 5, '51', '46017449', 'Venda de Mercadoria', 0, '55', '2', '267', NULL, '2021-05-09T13:55:39-03:00', NULL, 1, 1, 5104104, 1, 1, 2, 1, 1, 2, '0', 0, '1.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.98', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, NULL, NULL, '2.98', NULL, '2.98', '2.98', NULL, 'NACIONAL PNEUS LTDA', 'NACIONAL PNEUS LTDA', '138136750', NULL, '666', NULL, 1, '37098783000106', NULL, 'AV PIONEIRO JOSE NELSON COUTINHO', '415', NULL, 'centro', '5104104', 'Guaranta do Norte', 'MT', '78520000', '1058', 'BRASIL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 275, '51210537098783000106550020000002661815514252', '510000033827698', '151210000134643', 5, '51', '81551425', 'Venda de Mercadoria', 0, '55', '2', '266', NULL, '2021-05-09T19:37:06-03:00', NULL, 1, 1, 5104104, 1, 1, 2, 1, 1, 2, '0', 0, '1.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.96', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, NULL, NULL, '5.96', NULL, '5.96', '5.96', NULL, 'NACIONAL PNEUS LTDA', 'NACIONAL PNEUS LTDA', '138136750', NULL, '666', NULL, 1, '37098783000106', NULL, 'AV PIONEIRO JOSE NELSON COUTINHO', '415', NULL, 'centro', '5104104', 'Guaranta do Norte', 'MT', '78520000', '1058', 'BRASIL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 276, '51210537098783000106550020000002661498692270', '510000033828594', '151210000134646', 5, '51', '49869227', 'Venda de Mercadoria', 0, '55', '2', '266', NULL, '2021-05-09T22:17:36-03:00', NULL, 1, 1, 5104104, 1, 1, 2, 1, 1, 2, '0', 0, '1.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.98', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, NULL, NULL, '1.98', NULL, '1.98', '1.98', NULL, 'NACIONAL PNEUS LTDA', 'NACIONAL PNEUS LTDA', '138136750', NULL, '666', NULL, 1, '37098783000106', NULL, 'AV PIONEIRO JOSE NELSON COUTINHO', '415', NULL, 'centro', '5104104', 'Guaranta do Norte', 'MT', '78520000', '1058', 'BRASIL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 277, '51210537098783000106550020000002681104920540', '510000033842510', '151210000135575', 5, '51', '10492054', 'Venda de Mercadoria', 0, '55', '2', '268', NULL, '2021-05-10T21:01:16-03:00', NULL, 1, 1, 5104104, 1, 1, 2, 1, 1, 2, '0', 0, '1.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.98', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, NULL, NULL, '0.98', NULL, '0.98', '0.98', NULL, 'NACIONAL PNEUS LTDA', 'NACIONAL PNEUS LTDA', '138136750', NULL, '666', NULL, 1, '37098783000106', NULL, 'AV PIONEIRO JOSE NELSON COUTINHO', '415', NULL, 'centro', '5104104', 'Guaranta do Norte', 'MT', '78520000', '1058', 'BRASIL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 278, '51210537098783000106550020000002691848031538', '510000033843744', '151210000135605', 5, '51', '84803153', 'Venda de Mercadoria', 0, '55', '2', '269', NULL, '2021-05-10T21:34:43-03:00', NULL, 1, 1, 5104104, 1, 1, 2, 1, 1, 2, '0', 0, '1.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.59', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, NULL, NULL, '0.59', NULL, '0.59', '0.59', NULL, 'NACIONAL PNEUS LTDA', 'NACIONAL PNEUS LTDA', '138136750', NULL, '666', NULL, 1, '37098783000106', NULL, 'AV PIONEIRO JOSE NELSON COUTINHO', '415', NULL, 'centro', '5104104', 'Guaranta do Norte', 'MT', '78520000', '1058', 'BRASIL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 279, '51210537098783000106550020000002711063353978', '510000033842956', '151210000135615', 5, '51', '6335397', 'Venda de Mercadoria', 0, '55', '2', '271', NULL, '2021-05-10T21:42:43-04:00', NULL, 1, 1, 5104104, 1, 1, 2, 1, 1, 2, '0', 0, '1.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.69', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, NULL, NULL, '0.69', NULL, '0.69', '0.69', NULL, 'NACIONAL PNEUS LTDA', 'NACIONAL PNEUS LTDA', '138136750', NULL, '666', NULL, 1, '37098783000106', NULL, 'AV PIONEIRO JOSE NELSON COUTINHO', '415', NULL, 'centro', '5104104', 'Guaranta do Norte', 'MT', '78520000', '1058', 'BRASIL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 280, '51210537098783000106550020000002721778827261', '510000033843077', '151210000135628', 5, '51', '77882726', 'Venda de Mercadoria', 0, '55', '2', '272', NULL, '2021-05-10T21:54:03-04:00', NULL, 1, 1, 5104104, 1, 1, 2, 1, 1, 2, '0', 0, '1.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.49', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, NULL, NULL, '0.49', NULL, '0.49', '0.49', NULL, 'NACIONAL PNEUS LTDA', 'NACIONAL PNEUS LTDA', '138136750', NULL, '666', NULL, 1, '37098783000106', NULL, 'AV PIONEIRO JOSE NELSON COUTINHO', '415', NULL, 'centro', '5104104', 'Guaranta do Norte', 'MT', '78520000', '1058', 'BRASIL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `nfe_destinatario`
--

CREATE TABLE `nfe_destinatario` (
  `id_destinatario` int(11) NOT NULL,
  `id_nfe` int(10) UNSIGNED NOT NULL,
  `dest_xNome` varchar(60) DEFAULT NULL,
  `dest_IE` varchar(14) DEFAULT NULL,
  `dest_indIEDest` varchar(20) DEFAULT NULL,
  `dest_ISUF` int(15) DEFAULT NULL,
  `dest_IM` varchar(15) DEFAULT NULL,
  `dest_email` varchar(60) DEFAULT NULL,
  `dest_CNPJ` varchar(14) DEFAULT NULL,
  `dest_CPF` varchar(15) DEFAULT NULL,
  `dest_idEstrangeiro` varchar(20) DEFAULT NULL,
  `SUFRAMA` varchar(50) NOT NULL,
  `dest_xLgr` varchar(60) DEFAULT NULL,
  `dest_nro` varchar(60) DEFAULT NULL,
  `dest_xCpl` varchar(60) DEFAULT NULL,
  `dest_xBairro` varchar(60) DEFAULT NULL,
  `dest_cMun` int(10) UNSIGNED DEFAULT NULL,
  `dest_xMun` varchar(60) DEFAULT NULL,
  `dest_UF` char(2) DEFAULT NULL,
  `dest_CEP` varchar(8) DEFAULT NULL,
  `dest_cPais` int(11) DEFAULT NULL,
  `dest_xPais` varchar(60) DEFAULT NULL,
  `dest_fone` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `nfe_destinatario`
--

INSERT INTO `nfe_destinatario` (`id_destinatario`, `id_nfe`, `dest_xNome`, `dest_IE`, `dest_indIEDest`, `dest_ISUF`, `dest_IM`, `dest_email`, `dest_CNPJ`, `dest_CPF`, `dest_idEstrangeiro`, `SUFRAMA`, `dest_xLgr`, `dest_nro`, `dest_xCpl`, `dest_xBairro`, `dest_cMun`, `dest_xMun`, `dest_UF`, `dest_CEP`, `dest_cPais`, `dest_xPais`, `dest_fone`) VALUES
(112, 171, 'Fabio Junior Pereira', '', '9', NULL, '', 'fabiojr933@gmail.com', '', '04870537109', '', '', 'pascoa 1', 'sn', 'sitio', 'sitio', 5104104, 'Guaranta do Norte', 'MT', '78520000', 1058, 'BRASIL', '6699953949'),
(113, 172, 'EDUARDO LIMA', '', '9', NULL, '', 'nacional@gmail', '', '05789961118', '', '', 'Rua 1 A', 'sn', '', 'Jardim Eldorado', 5103403, 'Cuiaba', 'MT', '78051408', 1058, 'BRASIL', '99539898'),
(114, 173, 'EDUARDO LIMA', '', '9', NULL, '', 'nacional@gmail', '', '05789961118', '', '', 'Rua 1 A', 'sn', '', 'Jardim Eldorado', 5103403, 'Cuiaba', 'MT', '78051408', 1058, 'BRASIL', '99539898'),
(115, 174, 'EDUARDO LIMA', '', '9', NULL, '', 'nacional@gmail', '', '05789961118', '', '', 'Rua 1 A', 'sn', '', 'Jardim Eldorado', 5103403, 'Cuiaba', 'MT', '78051408', 1058, 'BRASIL', '99539898'),
(116, 175, 'EDUARDO LIMA', '', '9', NULL, '', 'nacional@gmail', '', '05789961118', '', '', 'Rua 1 A', 'sn', '', 'Jardim Eldorado', 5103403, 'Cuiaba', 'MT', '78051408', 1058, 'BRASIL', '99539898'),
(117, 176, 'EDUARDO LIMA', '', '9', NULL, '', 'nacional@gmail', '', '05789961118', '', '', 'Rua 1 A', 'sn', '', 'Jardim Eldorado', 5103403, 'Cuiaba', 'MT', '78051408', 1058, 'BRASIL', '99539898'),
(118, 177, 'EDUARDO LIMA', '', '9', NULL, '', 'nacional@gmail', '', '05789961118', '', '', 'Rua 1 A', 'sn', '', 'Jardim Eldorado', 5103403, 'Cuiaba', 'MT', '78051408', 1058, 'BRASIL', '99539898'),
(119, 178, 'EDUARDO LIMA', '', '9', NULL, '', 'nacional@gmail', '', '05789961118', '', '', 'Rua 1 A', 'sn', '', 'Jardim Eldorado', 5103403, 'Cuiaba', 'MT', '78051408', 1058, 'BRASIL', '99539898');

-- --------------------------------------------------------

--
-- Estrutura da tabela `nfe_item`
--

CREATE TABLE `nfe_item` (
  `id_nfe_item` int(10) UNSIGNED NOT NULL,
  `id_nfe` int(11) NOT NULL,
  `numero_item` int(11) DEFAULT NULL,
  `cProd` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cEAN` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xProd` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NCM` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CEST` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cBenef` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NVE` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EXTIPI` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CFOP` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uCom` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qCom` int(11) DEFAULT NULL,
  `vUnCom` decimal(10,2) DEFAULT NULL,
  `vProd` decimal(10,2) DEFAULT NULL,
  `cEANTrib` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uTrib` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qTrib` decimal(10,2) DEFAULT NULL,
  `vUnTrib` decimal(10,2) DEFAULT NULL,
  `vFrete` decimal(10,2) DEFAULT NULL,
  `vSeg` decimal(10,2) DEFAULT NULL,
  `vDesc` decimal(10,2) DEFAULT NULL,
  `vOutro` decimal(10,2) DEFAULT NULL,
  `indTot` int(11) DEFAULT NULL,
  `xPed` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nItemPed` int(11) DEFAULT NULL,
  `nFCI` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cstIPI` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clEnq` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CNPJProd` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cSelo` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qSelo` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cEnq` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vIPI` decimal(10,2) DEFAULT NULL,
  `vBCIPI` decimal(10,2) DEFAULT NULL,
  `pIPI` decimal(10,2) DEFAULT NULL,
  `qUnidIPI` decimal(10,2) DEFAULT NULL,
  `vUnidIPI` decimal(10,2) DEFAULT NULL,
  `tipo_calc_ipi` int(11) DEFAULT NULL,
  `cstCOFINS` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pCOFINS` decimal(10,2) DEFAULT NULL,
  `qBCProdConfis` decimal(10,2) DEFAULT NULL,
  `tipo_calc_cofins` int(11) DEFAULT NULL,
  `vAliqProd_cofins` decimal(10,2) DEFAULT NULL,
  `vBCCOFINS` decimal(10,2) DEFAULT NULL,
  `vCOFINS` decimal(10,2) DEFAULT NULL,
  `tipo_calc_cofinsst` int(11) DEFAULT NULL,
  `pCOFINSST` decimal(10,2) DEFAULT NULL,
  `vAliqProd_cofinsst` decimal(10,2) DEFAULT NULL,
  `cstPIS` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_calc_pis` int(11) DEFAULT NULL,
  `vBCPIS` decimal(10,2) DEFAULT NULL,
  `pPIS` decimal(10,2) DEFAULT NULL,
  `vPIS` decimal(10,2) DEFAULT NULL,
  `qBCProdPis` decimal(10,2) DEFAULT NULL,
  `vAliqProd_pis` decimal(10,2) DEFAULT NULL,
  `tipo_calc_pisst` int(11) DEFAULT NULL,
  `pPISST` decimal(10,2) DEFAULT NULL,
  `vAliqProd_pisst` decimal(10,2) DEFAULT NULL,
  `orig` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cstICMS` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modBC` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vBCICMS` decimal(10,2) DEFAULT NULL,
  `pICMS` decimal(10,2) DEFAULT NULL,
  `vICMS` decimal(10,2) DEFAULT NULL,
  `pFCP` decimal(10,2) DEFAULT NULL,
  `vFCP` decimal(10,2) DEFAULT NULL,
  `vBCFCP` decimal(10,2) DEFAULT NULL,
  `pMVAST` decimal(10,2) DEFAULT NULL,
  `pRedBCST` decimal(10,2) DEFAULT NULL,
  `vBCST` decimal(10,2) DEFAULT NULL,
  `pICMSST` decimal(10,2) DEFAULT NULL,
  `vICMSST` decimal(10,2) DEFAULT NULL,
  `vBCFCPST` decimal(10,2) DEFAULT NULL,
  `pFCPST` decimal(10,2) DEFAULT NULL,
  `vFCPST` decimal(10,2) DEFAULT NULL,
  `vICMSDeson` decimal(10,2) DEFAULT NULL,
  `motDesICMS` int(11) DEFAULT NULL,
  `pRedBC` decimal(10,2) DEFAULT NULL,
  `vICMSOp` decimal(10,2) DEFAULT NULL,
  `pDif` decimal(10,2) DEFAULT NULL,
  `vICMSDif` decimal(10,2) DEFAULT NULL,
  `vBCSTRet` decimal(10,2) DEFAULT NULL,
  `pST` decimal(10,2) DEFAULT NULL,
  `vICMSSTRet` decimal(10,2) DEFAULT NULL,
  `vBCFCPSTRet` decimal(10,2) DEFAULT NULL,
  `pFCPSTRet` decimal(10,2) DEFAULT NULL,
  `vFCPSTRet` decimal(10,2) DEFAULT NULL,
  `pRedBCEfet` decimal(10,2) DEFAULT NULL,
  `vBCEfet` decimal(10,2) DEFAULT NULL,
  `pICMSEfet` decimal(10,2) DEFAULT NULL,
  `vICMSEfet` decimal(10,2) DEFAULT NULL,
  `vICMSSubstituto` decimal(10,2) DEFAULT NULL,
  `modBCST` decimal(10,2) DEFAULT NULL,
  `pBCOp` decimal(10,2) DEFAULT NULL,
  `UFST` decimal(10,2) DEFAULT NULL,
  `vBCSTDest` decimal(10,2) DEFAULT NULL,
  `vICMSSTDest` decimal(10,2) DEFAULT NULL,
  `CSOSN` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pCredSN` decimal(10,2) DEFAULT NULL,
  `vCredICMSSN` decimal(10,2) DEFAULT NULL,
  `vBCUFDest` decimal(10,2) DEFAULT NULL,
  `vBCFCPUFDest` decimal(10,2) DEFAULT NULL,
  `pFCPUFDest` decimal(10,2) DEFAULT NULL,
  `pICMSUFDest` decimal(10,2) DEFAULT NULL,
  `pICMSInter` decimal(10,2) DEFAULT NULL,
  `pICMSInterPart` decimal(10,2) DEFAULT NULL,
  `vFCPUFDest` decimal(10,2) DEFAULT NULL,
  `vICMSUFDest` decimal(10,2) DEFAULT NULL,
  `vICMSUFRemet` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `nfe_item`
--

INSERT INTO `nfe_item` (`id_nfe_item`, `id_nfe`, `numero_item`, `cProd`, `cEAN`, `xProd`, `NCM`, `CEST`, `cBenef`, `NVE`, `EXTIPI`, `CFOP`, `uCom`, `qCom`, `vUnCom`, `vProd`, `cEANTrib`, `uTrib`, `qTrib`, `vUnTrib`, `vFrete`, `vSeg`, `vDesc`, `vOutro`, `indTot`, `xPed`, `nItemPed`, `nFCI`, `cstIPI`, `clEnq`, `CNPJProd`, `cSelo`, `qSelo`, `cEnq`, `vIPI`, `vBCIPI`, `pIPI`, `qUnidIPI`, `vUnidIPI`, `tipo_calc_ipi`, `cstCOFINS`, `pCOFINS`, `qBCProdConfis`, `tipo_calc_cofins`, `vAliqProd_cofins`, `vBCCOFINS`, `vCOFINS`, `tipo_calc_cofinsst`, `pCOFINSST`, `vAliqProd_cofinsst`, `cstPIS`, `tipo_calc_pis`, `vBCPIS`, `pPIS`, `vPIS`, `qBCProdPis`, `vAliqProd_pis`, `tipo_calc_pisst`, `pPISST`, `vAliqProd_pisst`, `orig`, `cstICMS`, `modBC`, `vBCICMS`, `pICMS`, `vICMS`, `pFCP`, `vFCP`, `vBCFCP`, `pMVAST`, `pRedBCST`, `vBCST`, `pICMSST`, `vICMSST`, `vBCFCPST`, `pFCPST`, `vFCPST`, `vICMSDeson`, `motDesICMS`, `pRedBC`, `vICMSOp`, `pDif`, `vICMSDif`, `vBCSTRet`, `pST`, `vICMSSTRet`, `vBCFCPSTRet`, `pFCPSTRet`, `vFCPSTRet`, `pRedBCEfet`, `vBCEfet`, `pICMSEfet`, `vICMSEfet`, `vICMSSubstituto`, `modBCST`, `pBCOp`, `UFST`, `vBCSTDest`, `vICMSSTDest`, `CSOSN`, `pCredSN`, `vCredICMSSN`, `vBCUFDest`, `vBCFCPUFDest`, `pFCPUFDest`, `pICMSUFDest`, `pICMSInter`, `pICMSInterPart`, `vFCPUFDest`, `vICMSUFDest`, `vICMSUFRemet`, `created_at`, `updated_at`) VALUES
(110, 171, 0, '150', '7891207002019', 'PINO DE CENTRO 12X8', '58081000', NULL, '', NULL, '01', '5102', 'Unidad', 2, '2.98', '5.96', '7891207002019', 'Unidad', '2.00', '2.98', NULL, NULL, NULL, NULL, 1, '171', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 172, 0, '150', '7891207002019', 'PINO DE CENTRO 12X8', '58081000', NULL, '', NULL, '01', '5102', 'Unidad', 1, '2.98', '2.98', '7891207002019', 'Unidad', '1.00', '2.98', NULL, NULL, NULL, NULL, 1, '172', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 173, 0, '150', '7891207002019', 'PINO DE CENTRO 12X8', '58081000', NULL, '', NULL, '01', '5102', 'Unidad', 2, '2.98', '5.96', '7891207002019', 'Unidad', '2.00', '2.98', NULL, NULL, NULL, NULL, 1, '173', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 174, 0, '150', '7891207002019', 'PINO DE CENTRO 12X8', '58081000', NULL, '', NULL, '01', '5102', 'Unidad', 1, '1.98', '1.98', '7891207002019', 'Unidad', '1.00', '1.98', NULL, NULL, NULL, NULL, 1, '174', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 175, 0, '150', '7891207002019', 'PINO DE CENTRO 12X8', '58081000', NULL, '', NULL, '01', '5102', 'Unidad', 1, '0.98', '0.98', '7891207002019', 'Unidad', '1.00', '0.98', NULL, NULL, NULL, NULL, 1, '175', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 176, 0, '150', '7891207002019', 'PINO DE CENTRO 12X8', '58081000', NULL, '', NULL, '01', '5102', 'Unidad', 1, '0.59', '0.59', '7891207002019', 'Unidad', '1.00', '0.59', NULL, NULL, NULL, NULL, 1, '176', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 177, 0, '150', '7891207002019', 'PINO DE CENTRO 12X8', '58081000', NULL, '', NULL, '01', '5102', 'Unidad', 1, '0.69', '0.69', '7891207002019', 'Unidad', '1.00', '0.69', NULL, NULL, NULL, NULL, 1, '177', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 178, 0, '150', '7891207002019', 'PINO DE CENTRO 12X8', '58081000', NULL, '', NULL, '01', '5102', 'Unidad', 1, '0.49', '0.49', '7891207002019', 'Unidad', '1.00', '0.49', NULL, NULL, NULL, NULL, 1, '178', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `nfe_status`
--

CREATE TABLE `nfe_status` (
  `id_status` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `nfe_status`
--

INSERT INTO `nfe_status` (`id_status`, `status`) VALUES
(1, 'Em Digitação'),
(2, 'Validada'),
(3, 'Assinada'),
(4, 'Enviado'),
(5, 'Autorizada'),
(6, 'Cancelada'),
(7, 'Denegada'),
(8, 'Rejeitada');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL,
  `id_tributacao` int(11) NOT NULL DEFAULT 1,
  `id_unidade` int(11) NOT NULL,
  `produto` varchar(100) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `imagem` varchar(80) DEFAULT NULL,
  `ativo` varchar(1) NOT NULL DEFAULT 'S',
  `gtin` varchar(20) DEFAULT NULL,
  `ncm` varchar(20) DEFAULT NULL,
  `cbenef` varchar(20) DEFAULT NULL,
  `CEST` varchar(10) DEFAULT NULL,
  `extipi` varchar(10) DEFAULT NULL,
  `cfop` int(11) DEFAULT NULL,
  `mva` decimal(10,2) DEFAULT NULL,
  `nfci` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `id_tributacao`, `id_unidade`, `produto`, `preco`, `imagem`, `ativo`, `gtin`, `ncm`, `cbenef`, `CEST`, `extipi`, `cfop`, `mva`, `nfci`) VALUES
(9, 3, 1, 'Panela de Pressão', '100.00', 'PANELA_DE_PRESAO.png', 'S', 'SEM GTIN', '85167910', '', NULL, '', 6101, '0.00', ''),
(10, 1, 1, 'Frigideira Reforçada', '497.00', 'FRIGIDEIRA_REFORCADA.jpg', 'S', 'SEM GTIN', '85167910', NULL, NULL, NULL, 6102, NULL, NULL),
(11, 1, 1, 'Frigideira Cabo Tubular', '100.00', 'FRIGIDEIRA_CABO_TUBULAR_2.jpg', 'S', 'SEM GTIN', '85167910', NULL, NULL, NULL, 6102, NULL, NULL),
(12, 1, 1, 'Panela Longa', '100.00', 'PANELA_LONGA.jpg', 'S', 'SEM GTIN', '85167910', NULL, NULL, NULL, 6102, NULL, NULL),
(13, 1, 1, 'Panela Arredondada', '100.00', 'PANELA_RREDONDADA2.jpg', 'S', 'SEM GTIN', '85167910', NULL, NULL, NULL, 6102, NULL, NULL),
(14, 1, 1, 'Panela Laranja', '50.00', 'PANELA_LARANJA.jpg', 'S', 'SEM GTIN', '85167910', NULL, NULL, NULL, 6102, NULL, NULL),
(15, 1, 1, 'Panela Longa 2', '100.00', 'PANELA_LONGA2.jpg', 'S', 'SEM GTIN', '85167910', NULL, NULL, NULL, 6102, NULL, NULL),
(16, 1, 1, 'Panela Achatada', '100.00', 'PANELA_ACHATADA.jpg', 'S', 'SEM GTIN', '85167910', NULL, NULL, NULL, 6102, NULL, NULL),
(17, 1, 1, 'Panela Achatada 2', '100.00', 'PANELA_ACHATADA2.jpg', 'S', 'SEM GTIN', '85167910', NULL, NULL, NULL, 6102, NULL, NULL),
(18, 1, 1, 'Panela Verde', '100.00', 'PANELA_VERDE.jpg', 'S', 'SEM GTIN', '85167910', NULL, NULL, NULL, 6102, NULL, NULL),
(19, 1, 1, 'Panela Verde 2', '100.00', 'PANELA_VERDE2.jpg', 'S', 'SEM GTIN', '85167910', NULL, NULL, NULL, 6102, NULL, NULL),
(20, 1, 1, 'Frigideira sem Tampa Laranja', '100.00', 'FRIGIDEIRA_SEM_TAMPA_LARANJA.jpg', 'S', 'SEM GTIN', '85167910', NULL, NULL, NULL, 6102, NULL, NULL),
(21, 1, 1, 'Frigideira Laranja', '100.00', 'FRIGIDEIRA_LARANJA.jpg', 'S', 'SEM GTIN', '85167910', NULL, NULL, NULL, 6102, NULL, NULL),
(22, 1, 1, 'Cuscuzeira Laranja', '100.00', 'CUSCUZEIRA_LARANJA.jpg', 'S', 'SEM GTIN', '85167910', NULL, NULL, NULL, 6102, NULL, NULL),
(31, 1, 1, 'Cuscuzeira 3', '150.00', 'CUSCUZEIRA3.jpg', 'S', 'SEM GTIN', '85167910', NULL, NULL, NULL, 6102, NULL, NULL),
(32, 1, 1, 'Leiteira Tubular 3', '50.00', 'LEITEIRAS_TUBULAR3.jpg', 'S', 'SEM GTIN', '85167910', NULL, NULL, NULL, 6102, NULL, NULL),
(33, 1, 1, 'Leiteira com Tampa Laranja', '30.00', 'LEITEIRA_COM_TAMPA_LARANJA4.jpg', 'S', 'SEM GTIN', '85167910', NULL, NULL, NULL, 6102, NULL, NULL),
(35, 1, 1, 'Panela com tampa 2', '100.00', 'PANELA_COM_TAMPA_2.jpg', 'S', 'SEM GTIN', '85167910', NULL, NULL, NULL, 6102, NULL, NULL),
(150, 1, 1, 'PINO DE CENTRO 12X8', '2.98', NULL, 'S', '7891207002019', '58081000', '', '0112900', '01', 5102, '0.00', '0.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tributacao`
--

CREATE TABLE `tributacao` (
  `id_tributacao` int(11) NOT NULL,
  `tributacao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tributacao`
--

INSERT INTO `tributacao` (`id_tributacao`, `tributacao`) VALUES
(1, 'Tributação Padrão'),
(2, 'Ex 01 - Simples Nacional'),
(3, 'Ex02 - 6101');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tributacao_cofins`
--

CREATE TABLE `tributacao_cofins` (
  `id_tributacao_cofins` int(11) NOT NULL,
  `id_tributacao` int(11) DEFAULT NULL,
  `cstCOFINS` varchar(25) NOT NULL,
  `tipo_calc_cofins` int(11) DEFAULT NULL,
  `pCOFINS` double(15,2) DEFAULT NULL,
  `vAliqProd_cofins` double(15,2) DEFAULT NULL,
  `tipo_calc_cofinsst` int(11) DEFAULT NULL,
  `pCOFINSST` decimal(10,2) NOT NULL,
  `vAliqProd_cofinsst` double(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tributacao_cofins`
--

INSERT INTO `tributacao_cofins` (`id_tributacao_cofins`, `id_tributacao`, `cstCOFINS`, `tipo_calc_cofins`, `pCOFINS`, `vAliqProd_cofins`, `tipo_calc_cofinsst`, `pCOFINSST`, `vAliqProd_cofinsst`) VALUES
(1, 1, '07', NULL, NULL, NULL, NULL, '0.00', NULL),
(5, 2, '99', 0, 0.00, 0.00, 0, '0.00', 0.00),
(8, 3, '01', 1, 3.00, NULL, 0, '0.00', 0.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tributacao_icms`
--

CREATE TABLE `tributacao_icms` (
  `id_tributacao_icms` int(10) UNSIGNED NOT NULL,
  `id_tributacao` int(11) NOT NULL,
  `cstICMS` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icms_origem` int(11) DEFAULT NULL,
  `icms_modalidadeBC` int(11) DEFAULT NULL,
  `pICMS` decimal(15,2) DEFAULT NULL,
  `icms_modalidadeBC_ST` int(11) DEFAULT NULL,
  `pMargem_Valor_Add_ST` decimal(15,2) DEFAULT NULL,
  `pReducao_Base_Calc_ST` decimal(15,2) DEFAULT NULL,
  `preco_unit_Pauta_ST` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pICMS_ST` decimal(15,2) DEFAULT NULL,
  `pReducao_Base_Calc` decimal(15,2) DEFAULT NULL,
  `motivo_Desoneracao_ICMS` int(11) DEFAULT NULL,
  `pBase_Calc_Op` decimal(15,2) DEFAULT NULL,
  `UF_ST` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pCredSN` decimal(15,2) DEFAULT NULL,
  `pFCP` decimal(15,2) DEFAULT NULL,
  `pFCP_ST` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tributacao_icms`
--

INSERT INTO `tributacao_icms` (`id_tributacao_icms`, `id_tributacao`, `cstICMS`, `icms_origem`, `icms_modalidadeBC`, `pICMS`, `icms_modalidadeBC_ST`, `pMargem_Valor_Add_ST`, `pReducao_Base_Calc_ST`, `preco_unit_Pauta_ST`, `pICMS_ST`, `pReducao_Base_Calc`, `motivo_Desoneracao_ICMS`, `pBase_Calc_Op`, `UF_ST`, `pCredSN`, `pFCP`, `pFCP_ST`, `created_at`, `updated_at`) VALUES
(1, 1, '103', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, '101', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3.95', NULL, NULL, NULL, NULL),
(6, 3, '00', 0, 3, '12.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tributacao_ipi`
--

CREATE TABLE `tributacao_ipi` (
  `id_tributacao_ipi` int(11) NOT NULL,
  `id_tributacao` int(11) NOT NULL,
  `cstIPI` varchar(20) NOT NULL,
  `clEnq` varchar(150) DEFAULT NULL,
  `CNPJProd` varchar(25) DEFAULT NULL,
  `cSelo` varchar(25) DEFAULT NULL,
  `qSelo` varchar(25) DEFAULT NULL,
  `cEnq` varchar(25) DEFAULT NULL,
  `tipo_calc_ipi` int(11) DEFAULT NULL,
  `pIPI` double(15,2) DEFAULT NULL,
  `vUnidIPI` double(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tributacao_ipi`
--

INSERT INTO `tributacao_ipi` (`id_tributacao_ipi`, `id_tributacao`, `cstIPI`, `clEnq`, `CNPJProd`, `cSelo`, `qSelo`, `cEnq`, `tipo_calc_ipi`, `pIPI`, `vUnidIPI`) VALUES
(3, 3, '50', '', '', '', '', '999', 1, 10.00, 0.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tributacao_pis`
--

CREATE TABLE `tributacao_pis` (
  `id_tributacao_pis` int(11) NOT NULL,
  `id_tributacao` int(11) DEFAULT NULL,
  `cstPIS` varchar(25) NOT NULL,
  `tipo_calc_pis` int(11) DEFAULT NULL,
  `pPIS` double(15,2) DEFAULT NULL,
  `vAliqProd_pis` double(15,2) DEFAULT NULL,
  `tipo_calc_pisst` int(11) DEFAULT NULL,
  `pPISST` double(15,2) DEFAULT NULL,
  `vAliqProd_pisst` double(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tributacao_pis`
--

INSERT INTO `tributacao_pis` (`id_tributacao_pis`, `id_tributacao`, `cstPIS`, `tipo_calc_pis`, `pPIS`, `vAliqProd_pis`, `tipo_calc_pisst`, `pPISST`, `vAliqProd_pisst`) VALUES
(1, 1, '07', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, '99', 0, 0.00, 0.00, 0, 0.00, 0.00),
(6, 3, '01', 1, 0.65, NULL, NULL, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade`
--

CREATE TABLE `unidade` (
  `id_unidade` int(11) NOT NULL,
  `unidade` varchar(60) NOT NULL,
  `abrev` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `unidade`
--

INSERT INTO `unidade` (`id_unidade`, `unidade`, `abrev`) VALUES
(1, 'Unidade', 'UNID'),
(3, 'Pacote', 'pct'),
(4, 'Kilograma', 'KG');

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `id_venda` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `data_venda` date NOT NULL,
  `hora_venda` time NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `finalizada` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`id_venda`, `id_cliente`, `data_venda`, `hora_venda`, `total`, `finalizada`) VALUES
(273, 14, '2021-05-09', '09:56:38', '5.96', 'S'),
(274, 13, '2021-05-09', '13:13:17', '2.98', 'S'),
(275, 13, '2021-05-09', '13:36:34', '5.96', 'S'),
(276, 13, '2021-05-09', '19:51:32', '1.98', 'S'),
(277, 13, '2021-05-10', '20:22:01', '0.98', 'S'),
(278, 13, '2021-05-10', '21:34:26', '0.59', 'S'),
(279, 13, '2021-05-10', '21:42:26', '0.69', 'S'),
(280, 13, '2021-05-10', '21:53:32', '0.49', 'S');

-- --------------------------------------------------------

--
-- Estrutura da tabela `xml`
--

CREATE TABLE `xml` (
  `id_nfe` int(11) NOT NULL,
  `xml` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `xml`
--

INSERT INTO `xml` (`id_nfe`, `xml`) VALUES
(170, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<NFe xmlns=\"http://www.portalfiscal.inf.br/nfe\"><infNFe Id=\"NFe51210537098783000106550020000002661019808132\" versao=\"4.00\"><ide><cUF>51</cUF><cNF>01980813</cNF><natOp>Venda de Mercadoria</natOp><mod>55</mod><serie>2</serie><nNF>266</nNF><dhEmi>2021-05-09T09:52:15-04:00</dhEmi><tpNF>1</tpNF><idDest>1</idDest><cMunFG>5104104</cMunFG><tpImp>1</tpImp><tpEmis>1</tpEmis><cDV>2</cDV><tpAmb>2</tpAmb><finNFe>1</finNFe><indFinal>0</indFinal><indPres>2</indPres><indIntermed>0</indIntermed><procEmi>0</procEmi><verProc>1.0</verProc></ide><emit><CNPJ>37098783000106</CNPJ><xNome>NACIONAL PNEUS LTDA</xNome><xFant>NACIONAL PNEUS LTDA</xFant><enderEmit><xLgr>AV PIONEIRO JOSE NELSON COUTINHO</xLgr><nro>415</nro><xBairro>centro</xBairro><cMun>5104104</cMun><xMun>Guarantã do Norte</xMun><UF>MT</UF><CEP>78520000</CEP><cPais>1058</cPais><xPais>BRASIL</xPais></enderEmit><IE>138136750</IE><IM>666</IM><CRT>1</CRT></emit><dest><CPF>04870537109</CPF><xNome>NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL</xNome><enderDest><xLgr>pascoa 1</xLgr><nro>sn</nro><xCpl>sitio</xCpl><xBairro>sitio</xBairro><cMun>5104104</cMun><xMun>Guarantã do Norte</xMun><UF>MT</UF><CEP>78520000</CEP><cPais>1058</cPais><xPais>BRASIL</xPais><fone>6699953949</fone></enderDest><indIEDest>9</indIEDest><email>fabiojr933@gmail.com</email></dest><det nItem=\"1\"><prod><cProd>150</cProd><cEAN>7891207002019</cEAN><xProd>PINO DE CENTRO 12X8</xProd><NCM>87089906</NCM><EXTIPI>01</EXTIPI><CFOP>5102</CFOP><uCom>Unidad</uCom><qCom>3.0000</qCom><vUnCom>2.9800000000</vUnCom><vProd>8.94</vProd><cEANTrib>7891207002019</cEANTrib><uTrib>Unidad</uTrib><qTrib>3.0000</qTrib><vUnTrib>2.9800000000</vUnTrib><indTot>1</indTot><xPed>170</xPed><nItemPed>0</nItemPed><nFCI>1</nFCI></prod><imposto><ICMS><ICMSSN102><orig>0</orig><CSOSN>102</CSOSN></ICMSSN102></ICMS><PIS><PISNT><CST>07</CST></PISNT></PIS><COFINS><COFINSNT><CST>07</CST></COFINSNT></COFINS></imposto></det><total><ICMSTot><vBC>0.00</vBC><vICMS>0.00</vICMS><vICMSDeson>0.00</vICMSDeson><vFCP>0.00</vFCP><vBCST>0.00</vBCST><vST>0.00</vST><vFCPST>0.00</vFCPST><vFCPSTRet>0.00</vFCPSTRet><vProd>8.94</vProd><vFrete>0.00</vFrete><vSeg>0.00</vSeg><vDesc>0.00</vDesc><vII>0.00</vII><vIPI>0.00</vIPI><vIPIDevol>0.00</vIPIDevol><vPIS>0.00</vPIS><vCOFINS>0.00</vCOFINS><vOutro>0.00</vOutro><vNF>8.94</vNF></ICMSTot></total><transp><modFrete>0</modFrete></transp><cobr><fat><nFat>170</nFat><vOrig>8.94</vOrig><vDesc>0.00</vDesc><vLiq>8.94</vLiq></fat></cobr><pag><detPag><indPag>0</indPag><tPag>01</tPag><vPag>8.94</vPag></detPag></pag></infNFe></NFe>\n'),
(171, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<NFe xmlns=\"http://www.portalfiscal.inf.br/nfe\"><infNFe Id=\"NFe51210537098783000106550020000000011710839814\" versao=\"4.00\"><ide><cUF>51</cUF><cNF>71083981</cNF><natOp>Venda de Mercadoria</natOp><mod>55</mod><serie>2</serie><nNF>1</nNF><dhEmi>2021-05-09T14:13:37-03:00</dhEmi><tpNF>1</tpNF><idDest>1</idDest><cMunFG>5104104</cMunFG><tpImp>1</tpImp><tpEmis>1</tpEmis><cDV>4</cDV><tpAmb>2</tpAmb><finNFe>1</finNFe><indFinal>1</indFinal><indPres>2</indPres><indIntermed>0</indIntermed><procEmi>0</procEmi><verProc>1.0</verProc></ide><emit><CNPJ>37098783000106</CNPJ><xNome>NACIONAL PNEUS LTDA</xNome><xFant>NACIONAL PNEUS LTDA</xFant><enderEmit><xLgr>AV PIONEIRO JOSE NELSON COUTINHO</xLgr><nro>415</nro><xBairro>centro</xBairro><cMun>5104104</cMun><xMun>Guarantã do Norte</xMun><UF>MT</UF><CEP>78520000</CEP><cPais>1058</cPais><xPais>BRASIL</xPais></enderEmit><IE>138136750</IE><IM>666</IM><CRT>1</CRT></emit><dest><CPF>04870537109</CPF><xNome>NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL</xNome><enderDest><xLgr>pascoa 1</xLgr><nro>sn</nro><xCpl>sitio</xCpl><xBairro>sitio</xBairro><cMun>5104104</cMun><xMun>Guaranta do Norte</xMun><UF>MT</UF><CEP>78520000</CEP><cPais>1058</cPais><xPais>BRASIL</xPais><fone>6699953949</fone></enderDest><indIEDest>9</indIEDest><email>fabiojr933@gmail.com</email></dest><det nItem=\"1\"><prod><cProd>150</cProd><cEAN>7891207002019</cEAN><xProd>PINO DE CENTRO 12X8</xProd><NCM>58081000</NCM><EXTIPI>01</EXTIPI><CFOP>5102</CFOP><uCom>Unidad</uCom><qCom>2.0000</qCom><vUnCom>2.9800000000</vUnCom><vProd>5.96</vProd><cEANTrib>7891207002019</cEANTrib><uTrib>Unidad</uTrib><qTrib>2.0000</qTrib><vUnTrib>2.9800000000</vUnTrib><indTot>1</indTot><xPed>171</xPed><nItemPed>0</nItemPed></prod><imposto><ICMS><ICMSSN102><orig>0</orig><CSOSN>102</CSOSN></ICMSSN102></ICMS><PIS><PISNT><CST>07</CST></PISNT></PIS><COFINS><COFINSNT><CST>07</CST></COFINSNT></COFINS></imposto></det><total><ICMSTot><vBC>0.00</vBC><vICMS>0.00</vICMS><vICMSDeson>0.00</vICMSDeson><vFCP>0.00</vFCP><vBCST>0.00</vBCST><vST>0.00</vST><vFCPST>0.00</vFCPST><vFCPSTRet>0.00</vFCPSTRet><vProd>5.96</vProd><vFrete>0.00</vFrete><vSeg>0.00</vSeg><vDesc>0.00</vDesc><vII>0.00</vII><vIPI>0.00</vIPI><vIPIDevol>0.00</vIPIDevol><vPIS>0.00</vPIS><vCOFINS>0.00</vCOFINS><vOutro>0.00</vOutro><vNF>5.96</vNF></ICMSTot></total><transp><modFrete>0</modFrete></transp><cobr><fat><nFat>171</nFat><vOrig>5.96</vOrig><vDesc>0.00</vDesc><vLiq>5.96</vLiq></fat></cobr><pag><detPag><indPag>0</indPag><tPag>01</tPag><vPag>5.96</vPag></detPag></pag></infNFe></NFe>\n'),
(172, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<NFe xmlns=\"http://www.portalfiscal.inf.br/nfe\"><infNFe Id=\"NFe51210537098783000106550020000002671460174490\" versao=\"4.00\"><ide><cUF>51</cUF><cNF>46017449</cNF><natOp>Venda de Mercadoria</natOp><mod>55</mod><serie>2</serie><nNF>267</nNF><dhEmi>2021-05-09T13:55:39-03:00</dhEmi><tpNF>1</tpNF><idDest>1</idDest><cMunFG>5104104</cMunFG><tpImp>1</tpImp><tpEmis>1</tpEmis><cDV>0</cDV><tpAmb>2</tpAmb><finNFe>1</finNFe><indFinal>1</indFinal><indPres>2</indPres><indIntermed>0</indIntermed><procEmi>0</procEmi><verProc>1.0</verProc></ide><emit><CNPJ>37098783000106</CNPJ><xNome>NACIONAL PNEUS LTDA</xNome><xFant>NACIONAL PNEUS LTDA</xFant><enderEmit><xLgr>AV PIONEIRO JOSE NELSON COUTINHO</xLgr><nro>415</nro><xBairro>centro</xBairro><cMun>5104104</cMun><xMun>Guaranta do Norte</xMun><UF>MT</UF><CEP>78520000</CEP><cPais>1058</cPais><xPais>BRASIL</xPais></enderEmit><IE>138136750</IE><IM>666</IM><CRT>1</CRT></emit><dest><CPF>05789961118</CPF><xNome>NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL</xNome><enderDest><xLgr>Rua 1 A</xLgr><nro>sn</nro><xBairro>Jardim Eldorado</xBairro><cMun>5103403</cMun><xMun>Cuiaba</xMun><UF>MT</UF><CEP>78051408</CEP><cPais>1058</cPais><xPais>BRASIL</xPais><fone>99539898</fone></enderDest><indIEDest>9</indIEDest><email>nacional@gmail</email></dest><det nItem=\"1\"><prod><cProd>150</cProd><cEAN>7891207002019</cEAN><xProd>PINO DE CENTRO 12X8</xProd><NCM>58081000</NCM><EXTIPI>01</EXTIPI><CFOP>5102</CFOP><uCom>Unidad</uCom><qCom>1.0000</qCom><vUnCom>2.9800000000</vUnCom><vProd>2.98</vProd><cEANTrib>7891207002019</cEANTrib><uTrib>Unidad</uTrib><qTrib>1.0000</qTrib><vUnTrib>2.9800000000</vUnTrib><indTot>1</indTot><xPed>172</xPed><nItemPed>0</nItemPed></prod><imposto><ICMS><ICMSSN102><orig>0</orig><CSOSN>102</CSOSN></ICMSSN102></ICMS><PIS><PISNT><CST>07</CST></PISNT></PIS><COFINS><COFINSNT><CST>07</CST></COFINSNT></COFINS></imposto></det><total><ICMSTot><vBC>0.00</vBC><vICMS>0.00</vICMS><vICMSDeson>0.00</vICMSDeson><vFCP>0.00</vFCP><vBCST>0.00</vBCST><vST>0.00</vST><vFCPST>0.00</vFCPST><vFCPSTRet>0.00</vFCPSTRet><vProd>2.98</vProd><vFrete>0.00</vFrete><vSeg>0.00</vSeg><vDesc>0.00</vDesc><vII>0.00</vII><vIPI>0.00</vIPI><vIPIDevol>0.00</vIPIDevol><vPIS>0.00</vPIS><vCOFINS>0.00</vCOFINS><vOutro>0.00</vOutro><vNF>2.98</vNF></ICMSTot></total><transp><modFrete>0</modFrete></transp><cobr><fat><nFat>172</nFat><vOrig>2.98</vOrig><vDesc>0.00</vDesc><vLiq>2.98</vLiq></fat></cobr><pag><detPag><indPag>0</indPag><tPag>01</tPag><vPag>2.98</vPag></detPag></pag></infNFe></NFe>\n'),
(173, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<NFe xmlns=\"http://www.portalfiscal.inf.br/nfe\"><infNFe Id=\"NFe51210537098783000106550020000002661815514252\" versao=\"4.00\"><ide><cUF>51</cUF><cNF>81551425</cNF><natOp>Venda de Mercadoria</natOp><mod>55</mod><serie>2</serie><nNF>266</nNF><dhEmi>2021-05-09T19:37:06-03:00</dhEmi><tpNF>1</tpNF><idDest>1</idDest><cMunFG>5104104</cMunFG><tpImp>1</tpImp><tpEmis>1</tpEmis><cDV>2</cDV><tpAmb>2</tpAmb><finNFe>1</finNFe><indFinal>1</indFinal><indPres>2</indPres><indIntermed>0</indIntermed><procEmi>0</procEmi><verProc>1.0</verProc></ide><emit><CNPJ>37098783000106</CNPJ><xNome>NACIONAL PNEUS LTDA</xNome><xFant>NACIONAL PNEUS LTDA</xFant><enderEmit><xLgr>AV PIONEIRO JOSE NELSON COUTINHO</xLgr><nro>415</nro><xBairro>centro</xBairro><cMun>5104104</cMun><xMun>Guaranta do Norte</xMun><UF>MT</UF><CEP>78520000</CEP><cPais>1058</cPais><xPais>BRASIL</xPais></enderEmit><IE>138136750</IE><IM>666</IM><CRT>1</CRT></emit><dest><CPF>05789961118</CPF><xNome>NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL</xNome><enderDest><xLgr>Rua 1 A</xLgr><nro>sn</nro><xBairro>Jardim Eldorado</xBairro><cMun>5103403</cMun><xMun>Cuiaba</xMun><UF>MT</UF><CEP>78051408</CEP><cPais>1058</cPais><xPais>BRASIL</xPais><fone>99539898</fone></enderDest><indIEDest>9</indIEDest><email>nacional@gmail</email></dest><det nItem=\"1\"><prod><cProd>150</cProd><cEAN>7891207002019</cEAN><xProd>PINO DE CENTRO 12X8</xProd><NCM>58081000</NCM><EXTIPI>01</EXTIPI><CFOP>5102</CFOP><uCom>Unidad</uCom><qCom>2.0000</qCom><vUnCom>2.9800000000</vUnCom><vProd>5.96</vProd><cEANTrib>7891207002019</cEANTrib><uTrib>Unidad</uTrib><qTrib>2.0000</qTrib><vUnTrib>2.9800000000</vUnTrib><indTot>1</indTot><xPed>173</xPed><nItemPed>0</nItemPed></prod><imposto><ICMS><ICMSSN102><orig>0</orig><CSOSN>102</CSOSN></ICMSSN102></ICMS><PIS><PISNT><CST>07</CST></PISNT></PIS><COFINS><COFINSNT><CST>07</CST></COFINSNT></COFINS></imposto></det><total><ICMSTot><vBC>0.00</vBC><vICMS>0.00</vICMS><vICMSDeson>0.00</vICMSDeson><vFCP>0.00</vFCP><vBCST>0.00</vBCST><vST>0.00</vST><vFCPST>0.00</vFCPST><vFCPSTRet>0.00</vFCPSTRet><vProd>5.96</vProd><vFrete>0.00</vFrete><vSeg>0.00</vSeg><vDesc>0.00</vDesc><vII>0.00</vII><vIPI>0.00</vIPI><vIPIDevol>0.00</vIPIDevol><vPIS>0.00</vPIS><vCOFINS>0.00</vCOFINS><vOutro>0.00</vOutro><vNF>5.96</vNF></ICMSTot></total><transp><modFrete>0</modFrete></transp><cobr><fat><nFat>173</nFat><vOrig>5.96</vOrig><vDesc>0.00</vDesc><vLiq>5.96</vLiq></fat></cobr><pag><detPag><indPag>0</indPag><tPag>01</tPag><vPag>5.96</vPag></detPag></pag></infNFe></NFe>\n'),
(174, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<NFe xmlns=\"http://www.portalfiscal.inf.br/nfe\"><infNFe Id=\"NFe51210537098783000106550020000002661498692270\" versao=\"4.00\"><ide><cUF>51</cUF><cNF>49869227</cNF><natOp>Venda de Mercadoria</natOp><mod>55</mod><serie>2</serie><nNF>266</nNF><dhEmi>2021-05-09T22:17:36-03:00</dhEmi><tpNF>1</tpNF><idDest>1</idDest><cMunFG>5104104</cMunFG><tpImp>1</tpImp><tpEmis>1</tpEmis><cDV>0</cDV><tpAmb>2</tpAmb><finNFe>1</finNFe><indFinal>1</indFinal><indPres>2</indPres><indIntermed>0</indIntermed><procEmi>0</procEmi><verProc>1.0</verProc></ide><emit><CNPJ>37098783000106</CNPJ><xNome>NACIONAL PNEUS LTDA</xNome><xFant>NACIONAL PNEUS LTDA</xFant><enderEmit><xLgr>AV PIONEIRO JOSE NELSON COUTINHO</xLgr><nro>415</nro><xBairro>centro</xBairro><cMun>5104104</cMun><xMun>Guaranta do Norte</xMun><UF>MT</UF><CEP>78520000</CEP><cPais>1058</cPais><xPais>BRASIL</xPais></enderEmit><IE>138136750</IE><IM>666</IM><CRT>1</CRT></emit><dest><CPF>05789961118</CPF><xNome>NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL</xNome><enderDest><xLgr>Rua 1 A</xLgr><nro>sn</nro><xBairro>Jardim Eldorado</xBairro><cMun>5103403</cMun><xMun>Cuiaba</xMun><UF>MT</UF><CEP>78051408</CEP><cPais>1058</cPais><xPais>BRASIL</xPais><fone>99539898</fone></enderDest><indIEDest>9</indIEDest><email>nacional@gmail</email></dest><det nItem=\"1\"><prod><cProd>150</cProd><cEAN>7891207002019</cEAN><xProd>PINO DE CENTRO 12X8</xProd><NCM>58081000</NCM><EXTIPI>01</EXTIPI><CFOP>5102</CFOP><uCom>Unidad</uCom><qCom>1.0000</qCom><vUnCom>1.9800000000</vUnCom><vProd>1.98</vProd><cEANTrib>7891207002019</cEANTrib><uTrib>Unidad</uTrib><qTrib>1.0000</qTrib><vUnTrib>1.9800000000</vUnTrib><indTot>1</indTot><xPed>174</xPed><nItemPed>0</nItemPed></prod><imposto><ICMS><ICMSSN102><orig>0</orig><CSOSN>102</CSOSN></ICMSSN102></ICMS><PIS><PISNT><CST>07</CST></PISNT></PIS><COFINS><COFINSNT><CST>07</CST></COFINSNT></COFINS></imposto></det><total><ICMSTot><vBC>0.00</vBC><vICMS>0.00</vICMS><vICMSDeson>0.00</vICMSDeson><vFCP>0.00</vFCP><vBCST>0.00</vBCST><vST>0.00</vST><vFCPST>0.00</vFCPST><vFCPSTRet>0.00</vFCPSTRet><vProd>1.98</vProd><vFrete>0.00</vFrete><vSeg>0.00</vSeg><vDesc>0.00</vDesc><vII>0.00</vII><vIPI>0.00</vIPI><vIPIDevol>0.00</vIPIDevol><vPIS>0.00</vPIS><vCOFINS>0.00</vCOFINS><vOutro>0.00</vOutro><vNF>1.98</vNF></ICMSTot></total><transp><modFrete>0</modFrete></transp><cobr><fat><nFat>174</nFat><vOrig>1.98</vOrig><vDesc>0.00</vDesc><vLiq>1.98</vLiq></fat></cobr><pag><detPag><indPag>0</indPag><tPag>01</tPag><vPag>1.98</vPag></detPag></pag></infNFe></NFe>\n'),
(175, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<NFe xmlns=\"http://www.portalfiscal.inf.br/nfe\"><infNFe Id=\"NFe51210537098783000106550020000002681104920540\" versao=\"4.00\"><ide><cUF>51</cUF><cNF>10492054</cNF><natOp>Venda de Mercadoria</natOp><mod>55</mod><serie>2</serie><nNF>268</nNF><dhEmi>2021-05-10T21:01:16-03:00</dhEmi><tpNF>1</tpNF><idDest>1</idDest><cMunFG>5104104</cMunFG><tpImp>1</tpImp><tpEmis>1</tpEmis><cDV>0</cDV><tpAmb>2</tpAmb><finNFe>1</finNFe><indFinal>1</indFinal><indPres>2</indPres><indIntermed>0</indIntermed><procEmi>0</procEmi><verProc>1.0</verProc></ide><emit><CNPJ>37098783000106</CNPJ><xNome>NACIONAL PNEUS LTDA</xNome><xFant>NACIONAL PNEUS LTDA</xFant><enderEmit><xLgr>AV PIONEIRO JOSE NELSON COUTINHO</xLgr><nro>415</nro><xBairro>centro</xBairro><cMun>5104104</cMun><xMun>Guaranta do Norte</xMun><UF>MT</UF><CEP>78520000</CEP><cPais>1058</cPais><xPais>BRASIL</xPais></enderEmit><IE>138136750</IE><IM>666</IM><CRT>1</CRT></emit><dest><CPF>05789961118</CPF><xNome>NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL</xNome><enderDest><xLgr>Rua 1 A</xLgr><nro>sn</nro><xBairro>Jardim Eldorado</xBairro><cMun>5103403</cMun><xMun>Cuiaba</xMun><UF>MT</UF><CEP>78051408</CEP><cPais>1058</cPais><xPais>BRASIL</xPais><fone>99539898</fone></enderDest><indIEDest>9</indIEDest><email>nacional@gmail</email></dest><det nItem=\"1\"><prod><cProd>150</cProd><cEAN>7891207002019</cEAN><xProd>PINO DE CENTRO 12X8</xProd><NCM>58081000</NCM><EXTIPI>01</EXTIPI><CFOP>5102</CFOP><uCom>Unidad</uCom><qCom>1.0000</qCom><vUnCom>0.9800000000</vUnCom><vProd>0.98</vProd><cEANTrib>7891207002019</cEANTrib><uTrib>Unidad</uTrib><qTrib>1.0000</qTrib><vUnTrib>0.9800000000</vUnTrib><indTot>1</indTot><xPed>175</xPed><nItemPed>0</nItemPed></prod><imposto><ICMS><ICMSSN102><orig>0</orig><CSOSN>102</CSOSN></ICMSSN102></ICMS><PIS><PISNT><CST>07</CST></PISNT></PIS><COFINS><COFINSNT><CST>07</CST></COFINSNT></COFINS></imposto></det><total><ICMSTot><vBC>0.00</vBC><vICMS>0.00</vICMS><vICMSDeson>0.00</vICMSDeson><vFCP>0.00</vFCP><vBCST>0.00</vBCST><vST>0.00</vST><vFCPST>0.00</vFCPST><vFCPSTRet>0.00</vFCPSTRet><vProd>0.98</vProd><vFrete>0.00</vFrete><vSeg>0.00</vSeg><vDesc>0.00</vDesc><vII>0.00</vII><vIPI>0.00</vIPI><vIPIDevol>0.00</vIPIDevol><vPIS>0.00</vPIS><vCOFINS>0.00</vCOFINS><vOutro>0.00</vOutro><vNF>0.98</vNF></ICMSTot></total><transp><modFrete>0</modFrete></transp><cobr><fat><nFat>175</nFat><vOrig>0.98</vOrig><vDesc>0.00</vDesc><vLiq>0.98</vLiq></fat></cobr><pag><detPag><indPag>0</indPag><tPag>01</tPag><vPag>0.98</vPag></detPag></pag></infNFe></NFe>\n'),
(176, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<NFe xmlns=\"http://www.portalfiscal.inf.br/nfe\"><infNFe Id=\"NFe51210537098783000106550020000002691848031538\" versao=\"4.00\"><ide><cUF>51</cUF><cNF>84803153</cNF><natOp>Venda de Mercadoria</natOp><mod>55</mod><serie>2</serie><nNF>269</nNF><dhEmi>2021-05-10T21:34:43-03:00</dhEmi><tpNF>1</tpNF><idDest>1</idDest><cMunFG>5104104</cMunFG><tpImp>1</tpImp><tpEmis>1</tpEmis><cDV>8</cDV><tpAmb>2</tpAmb><finNFe>1</finNFe><indFinal>1</indFinal><indPres>2</indPres><indIntermed>0</indIntermed><procEmi>0</procEmi><verProc>1.0</verProc></ide><emit><CNPJ>37098783000106</CNPJ><xNome>NACIONAL PNEUS LTDA</xNome><xFant>NACIONAL PNEUS LTDA</xFant><enderEmit><xLgr>AV PIONEIRO JOSE NELSON COUTINHO</xLgr><nro>415</nro><xBairro>centro</xBairro><cMun>5104104</cMun><xMun>Guaranta do Norte</xMun><UF>MT</UF><CEP>78520000</CEP><cPais>1058</cPais><xPais>BRASIL</xPais></enderEmit><IE>138136750</IE><IM>666</IM><CRT>1</CRT></emit><dest><CPF>05789961118</CPF><xNome>NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL</xNome><enderDest><xLgr>Rua 1 A</xLgr><nro>sn</nro><xBairro>Jardim Eldorado</xBairro><cMun>5103403</cMun><xMun>Cuiaba</xMun><UF>MT</UF><CEP>78051408</CEP><cPais>1058</cPais><xPais>BRASIL</xPais><fone>99539898</fone></enderDest><indIEDest>9</indIEDest><email>nacional@gmail</email></dest><det nItem=\"1\"><prod><cProd>150</cProd><cEAN>7891207002019</cEAN><xProd>PINO DE CENTRO 12X8</xProd><NCM>58081000</NCM><EXTIPI>01</EXTIPI><CFOP>5102</CFOP><uCom>Unidad</uCom><qCom>1.0000</qCom><vUnCom>0.5900000000</vUnCom><vProd>0.59</vProd><cEANTrib>7891207002019</cEANTrib><uTrib>Unidad</uTrib><qTrib>1.0000</qTrib><vUnTrib>0.5900000000</vUnTrib><indTot>1</indTot><xPed>176</xPed><nItemPed>0</nItemPed></prod><imposto><ICMS><ICMSSN102><orig>0</orig><CSOSN>102</CSOSN></ICMSSN102></ICMS><PIS><PISNT><CST>07</CST></PISNT></PIS><COFINS><COFINSNT><CST>07</CST></COFINSNT></COFINS></imposto></det><total><ICMSTot><vBC>0.00</vBC><vICMS>0.00</vICMS><vICMSDeson>0.00</vICMSDeson><vFCP>0.00</vFCP><vBCST>0.00</vBCST><vST>0.00</vST><vFCPST>0.00</vFCPST><vFCPSTRet>0.00</vFCPSTRet><vProd>0.59</vProd><vFrete>0.00</vFrete><vSeg>0.00</vSeg><vDesc>0.00</vDesc><vII>0.00</vII><vIPI>0.00</vIPI><vIPIDevol>0.00</vIPIDevol><vPIS>0.00</vPIS><vCOFINS>0.00</vCOFINS><vOutro>0.00</vOutro><vNF>0.59</vNF></ICMSTot></total><transp><modFrete>0</modFrete></transp><cobr><fat><nFat>176</nFat><vOrig>0.59</vOrig><vDesc>0.00</vDesc><vLiq>0.59</vLiq></fat></cobr><pag><detPag><indPag>0</indPag><tPag>01</tPag><vPag>0.59</vPag></detPag></pag></infNFe></NFe>\n'),
(177, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<NFe xmlns=\"http://www.portalfiscal.inf.br/nfe\"><infNFe Id=\"NFe51210537098783000106550020000002711063353978\" versao=\"4.00\"><ide><cUF>51</cUF><cNF>06335397</cNF><natOp>Venda de Mercadoria</natOp><mod>55</mod><serie>2</serie><nNF>271</nNF><dhEmi>2021-05-10T21:42:43-03:00</dhEmi><tpNF>1</tpNF><idDest>1</idDest><cMunFG>5104104</cMunFG><tpImp>1</tpImp><tpEmis>1</tpEmis><cDV>8</cDV><tpAmb>2</tpAmb><finNFe>1</finNFe><indFinal>1</indFinal><indPres>2</indPres><indIntermed>0</indIntermed><procEmi>0</procEmi><verProc>1.0</verProc></ide><emit><CNPJ>37098783000106</CNPJ><xNome>NACIONAL PNEUS LTDA</xNome><xFant>NACIONAL PNEUS LTDA</xFant><enderEmit><xLgr>AV PIONEIRO JOSE NELSON COUTINHO</xLgr><nro>415</nro><xBairro>centro</xBairro><cMun>5104104</cMun><xMun>Guaranta do Norte</xMun><UF>MT</UF><CEP>78520000</CEP><cPais>1058</cPais><xPais>BRASIL</xPais></enderEmit><IE>138136750</IE><IM>666</IM><CRT>1</CRT></emit><dest><CPF>05789961118</CPF><xNome>NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL</xNome><enderDest><xLgr>Rua 1 A</xLgr><nro>sn</nro><xBairro>Jardim Eldorado</xBairro><cMun>5103403</cMun><xMun>Cuiaba</xMun><UF>MT</UF><CEP>78051408</CEP><cPais>1058</cPais><xPais>BRASIL</xPais><fone>99539898</fone></enderDest><indIEDest>9</indIEDest><email>nacional@gmail</email></dest><det nItem=\"1\"><prod><cProd>150</cProd><cEAN>7891207002019</cEAN><xProd>PINO DE CENTRO 12X8</xProd><NCM>58081000</NCM><EXTIPI>01</EXTIPI><CFOP>5102</CFOP><uCom>Unidad</uCom><qCom>1.0000</qCom><vUnCom>0.6900000000</vUnCom><vProd>0.69</vProd><cEANTrib>7891207002019</cEANTrib><uTrib>Unidad</uTrib><qTrib>1.0000</qTrib><vUnTrib>0.6900000000</vUnTrib><indTot>1</indTot><xPed>177</xPed><nItemPed>0</nItemPed></prod><imposto><ICMS><ICMSSN102><orig>0</orig><CSOSN>102</CSOSN></ICMSSN102></ICMS><PIS><PISNT><CST>07</CST></PISNT></PIS><COFINS><COFINSNT><CST>07</CST></COFINSNT></COFINS></imposto></det><total><ICMSTot><vBC>0.00</vBC><vICMS>0.00</vICMS><vICMSDeson>0.00</vICMSDeson><vFCP>0.00</vFCP><vBCST>0.00</vBCST><vST>0.00</vST><vFCPST>0.00</vFCPST><vFCPSTRet>0.00</vFCPSTRet><vProd>0.69</vProd><vFrete>0.00</vFrete><vSeg>0.00</vSeg><vDesc>0.00</vDesc><vII>0.00</vII><vIPI>0.00</vIPI><vIPIDevol>0.00</vIPIDevol><vPIS>0.00</vPIS><vCOFINS>0.00</vCOFINS><vOutro>0.00</vOutro><vNF>0.69</vNF></ICMSTot></total><transp><modFrete>0</modFrete></transp><cobr><fat><nFat>177</nFat><vOrig>0.69</vOrig><vDesc>0.00</vDesc><vLiq>0.69</vLiq></fat></cobr><pag><detPag><indPag>0</indPag><tPag>01</tPag><vPag>0.69</vPag></detPag></pag></infNFe></NFe>\n'),
(178, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<NFe xmlns=\"http://www.portalfiscal.inf.br/nfe\"><infNFe Id=\"NFe51210537098783000106550020000002721778827261\" versao=\"4.00\"><ide><cUF>51</cUF><cNF>77882726</cNF><natOp>Venda de Mercadoria</natOp><mod>55</mod><serie>2</serie><nNF>272</nNF><dhEmi>2021-05-10T21:54:03-03:00</dhEmi><tpNF>1</tpNF><idDest>1</idDest><cMunFG>5104104</cMunFG><tpImp>1</tpImp><tpEmis>1</tpEmis><cDV>1</cDV><tpAmb>2</tpAmb><finNFe>1</finNFe><indFinal>1</indFinal><indPres>2</indPres><indIntermed>0</indIntermed><procEmi>0</procEmi><verProc>1.0</verProc></ide><emit><CNPJ>37098783000106</CNPJ><xNome>NACIONAL PNEUS LTDA</xNome><xFant>NACIONAL PNEUS LTDA</xFant><enderEmit><xLgr>AV PIONEIRO JOSE NELSON COUTINHO</xLgr><nro>415</nro><xBairro>centro</xBairro><cMun>5104104</cMun><xMun>Guaranta do Norte</xMun><UF>MT</UF><CEP>78520000</CEP><cPais>1058</cPais><xPais>BRASIL</xPais></enderEmit><IE>138136750</IE><IM>666</IM><CRT>1</CRT></emit><dest><CPF>05789961118</CPF><xNome>NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL</xNome><enderDest><xLgr>Rua 1 A</xLgr><nro>sn</nro><xBairro>Jardim Eldorado</xBairro><cMun>5103403</cMun><xMun>Cuiaba</xMun><UF>MT</UF><CEP>78051408</CEP><cPais>1058</cPais><xPais>BRASIL</xPais><fone>99539898</fone></enderDest><indIEDest>9</indIEDest><email>nacional@gmail</email></dest><det nItem=\"1\"><prod><cProd>150</cProd><cEAN>7891207002019</cEAN><xProd>PINO DE CENTRO 12X8</xProd><NCM>58081000</NCM><EXTIPI>01</EXTIPI><CFOP>5102</CFOP><uCom>Unidad</uCom><qCom>1.0000</qCom><vUnCom>0.4900000000</vUnCom><vProd>0.49</vProd><cEANTrib>7891207002019</cEANTrib><uTrib>Unidad</uTrib><qTrib>1.0000</qTrib><vUnTrib>0.4900000000</vUnTrib><indTot>1</indTot><xPed>178</xPed><nItemPed>0</nItemPed></prod><imposto><ICMS><ICMSSN102><orig>0</orig><CSOSN>102</CSOSN></ICMSSN102></ICMS><PIS><PISNT><CST>07</CST></PISNT></PIS><COFINS><COFINSNT><CST>07</CST></COFINSNT></COFINS></imposto></det><total><ICMSTot><vBC>0.00</vBC><vICMS>0.00</vICMS><vICMSDeson>0.00</vICMSDeson><vFCP>0.00</vFCP><vBCST>0.00</vBCST><vST>0.00</vST><vFCPST>0.00</vFCPST><vFCPSTRet>0.00</vFCPSTRet><vProd>0.49</vProd><vFrete>0.00</vFrete><vSeg>0.00</vSeg><vDesc>0.00</vDesc><vII>0.00</vII><vIPI>0.00</vIPI><vIPIDevol>0.00</vIPIDevol><vPIS>0.00</vPIS><vCOFINS>0.00</vCOFINS><vOutro>0.00</vOutro><vNF>0.49</vNF></ICMSTot></total><transp><modFrete>0</modFrete></transp><cobr><fat><nFat>178</nFat><vOrig>0.49</vOrig><vDesc>0.00</vDesc><vLiq>0.49</vLiq></fat></cobr><pag><detPag><indPag>0</indPag><tPag>01</tPag><vPag>0.49</vPag></detPag></pag></infNFe></NFe>\n');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cfop`
--
ALTER TABLE `cfop`
  ADD PRIMARY KEY (`id_cfop`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `configuracao`
--
ALTER TABLE `configuracao`
  ADD PRIMARY KEY (`id_configuracao`);

--
-- Índices para tabela `cst_cofins`
--
ALTER TABLE `cst_cofins`
  ADD PRIMARY KEY (`id_cofins`);

--
-- Índices para tabela `cst_icms`
--
ALTER TABLE `cst_icms`
  ADD PRIMARY KEY (`id_icms`);

--
-- Índices para tabela `cst_ipi`
--
ALTER TABLE `cst_ipi`
  ADD PRIMARY KEY (`id_ipi`);

--
-- Índices para tabela `cst_pis`
--
ALTER TABLE `cst_pis`
  ADD PRIMARY KEY (`id_pis`);

--
-- Índices para tabela `emitente`
--
ALTER TABLE `emitente`
  ADD PRIMARY KEY (`id_emitente`);

--
-- Índices para tabela `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Índices para tabela `icms_desoneracao`
--
ALTER TABLE `icms_desoneracao`
  ADD PRIMARY KEY (`id_icms_desoneracao`);

--
-- Índices para tabela `icms_modalidade_bc`
--
ALTER TABLE `icms_modalidade_bc`
  ADD PRIMARY KEY (`id_icms_modalidade_bc`);

--
-- Índices para tabela `icms_modalidade_st`
--
ALTER TABLE `icms_modalidade_st`
  ADD PRIMARY KEY (`id_icms_modalidade_st`);

--
-- Índices para tabela `icms_origem`
--
ALTER TABLE `icms_origem`
  ADD PRIMARY KEY (`id_icms_origem`);

--
-- Índices para tabela `item_venda`
--
ALTER TABLE `item_venda`
  ADD PRIMARY KEY (`id_item_venda`),
  ADD KEY `item_id_produto_foreign` (`id_produto`),
  ADD KEY `item_id_venda_foreign` (`id_venda`);

--
-- Índices para tabela `nfe`
--
ALTER TABLE `nfe`
  ADD PRIMARY KEY (`id_nfe`);

--
-- Índices para tabela `nfe_destinatario`
--
ALTER TABLE `nfe_destinatario`
  ADD PRIMARY KEY (`id_destinatario`);

--
-- Índices para tabela `nfe_item`
--
ALTER TABLE `nfe_item`
  ADD PRIMARY KEY (`id_nfe_item`);

--
-- Índices para tabela `nfe_status`
--
ALTER TABLE `nfe_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `produto_id_unidade_foreign` (`id_unidade`);

--
-- Índices para tabela `tributacao`
--
ALTER TABLE `tributacao`
  ADD PRIMARY KEY (`id_tributacao`);

--
-- Índices para tabela `tributacao_cofins`
--
ALTER TABLE `tributacao_cofins`
  ADD PRIMARY KEY (`id_tributacao_cofins`);

--
-- Índices para tabela `tributacao_icms`
--
ALTER TABLE `tributacao_icms`
  ADD PRIMARY KEY (`id_tributacao_icms`),
  ADD UNIQUE KEY `tributacao_icms_id_tributacao_unique` (`id_tributacao`);

--
-- Índices para tabela `tributacao_ipi`
--
ALTER TABLE `tributacao_ipi`
  ADD PRIMARY KEY (`id_tributacao_ipi`);

--
-- Índices para tabela `tributacao_pis`
--
ALTER TABLE `tributacao_pis`
  ADD PRIMARY KEY (`id_tributacao_pis`);

--
-- Índices para tabela `unidade`
--
ALTER TABLE `unidade`
  ADD PRIMARY KEY (`id_unidade`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`id_venda`),
  ADD KEY `venda_id_cliente_foreign` (`id_cliente`);

--
-- Índices para tabela `xml`
--
ALTER TABLE `xml`
  ADD PRIMARY KEY (`id_nfe`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cfop`
--
ALTER TABLE `cfop`
  MODIFY `id_cfop` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=462;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `configuracao`
--
ALTER TABLE `configuracao`
  MODIFY `id_configuracao` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `cst_cofins`
--
ALTER TABLE `cst_cofins`
  MODIFY `id_cofins` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `cst_icms`
--
ALTER TABLE `cst_icms`
  MODIFY `id_icms` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `cst_ipi`
--
ALTER TABLE `cst_ipi`
  MODIFY `id_ipi` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `cst_pis`
--
ALTER TABLE `cst_pis`
  MODIFY `id_pis` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `emitente`
--
ALTER TABLE `emitente`
  MODIFY `id_emitente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `estado`
--
ALTER TABLE `estado`
  MODIFY `id_estado` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `icms_desoneracao`
--
ALTER TABLE `icms_desoneracao`
  MODIFY `id_icms_desoneracao` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `icms_modalidade_bc`
--
ALTER TABLE `icms_modalidade_bc`
  MODIFY `id_icms_modalidade_bc` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `icms_modalidade_st`
--
ALTER TABLE `icms_modalidade_st`
  MODIFY `id_icms_modalidade_st` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `icms_origem`
--
ALTER TABLE `icms_origem`
  MODIFY `id_icms_origem` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `item_venda`
--
ALTER TABLE `item_venda`
  MODIFY `id_item_venda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT de tabela `nfe`
--
ALTER TABLE `nfe`
  MODIFY `id_nfe` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT de tabela `nfe_destinatario`
--
ALTER TABLE `nfe_destinatario`
  MODIFY `id_destinatario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT de tabela `nfe_item`
--
ALTER TABLE `nfe_item`
  MODIFY `id_nfe_item` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT de tabela `nfe_status`
--
ALTER TABLE `nfe_status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de tabela `tributacao`
--
ALTER TABLE `tributacao`
  MODIFY `id_tributacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tributacao_cofins`
--
ALTER TABLE `tributacao_cofins`
  MODIFY `id_tributacao_cofins` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tributacao_icms`
--
ALTER TABLE `tributacao_icms`
  MODIFY `id_tributacao_icms` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tributacao_ipi`
--
ALTER TABLE `tributacao_ipi`
  MODIFY `id_tributacao_ipi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tributacao_pis`
--
ALTER TABLE `tributacao_pis`
  MODIFY `id_tributacao_pis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `unidade`
--
ALTER TABLE `unidade`
  MODIFY `id_unidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `id_venda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `item_venda`
--
ALTER TABLE `item_venda`
  ADD CONSTRAINT `item_id_produto_foreign` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`),
  ADD CONSTRAINT `item_id_venda_foreign` FOREIGN KEY (`id_venda`) REFERENCES `venda` (`id_venda`);

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_id_unidade_foreign` FOREIGN KEY (`id_unidade`) REFERENCES `unidade` (`id_unidade`);

--
-- Limitadores para a tabela `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `venda_id_cliente_foreign` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
