-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-08-2022 a las 03:19:59
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `denconsum`
--
CREATE DATABASE IF NOT EXISTS `denconsum` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `denconsum`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idCategoria` int(11) NOT NULL,
  `grupo` varchar(40) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idCategoria`, `grupo`) VALUES
(1, 'Cuadro Basico'),
(2, 'Anestesicos'),
(3, 'Material de curacion FCB ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigos`
--

CREATE TABLE `codigos` (
  `idCodigo` int(11) NOT NULL,
  `idInsumo` int(11) NOT NULL,
  `codigoBarras` varchar(256) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `codigos`
--

INSERT INTO `codigos` (`idCodigo`, `idInsumo`, `codigoBarras`) VALUES
(1, 1, '867564325'),
(2, 2, '1234568768'),
(3, 3, '5476878976754'),
(4, 4, '765463256789'),
(5, 5, '5678967567534565'),
(6, 6, '756435768998'),
(7, 7, '86548790765'),
(8, 7, '789788980'),
(9, 8, '8768756563568'),
(10, 8, '8979654354211'),
(11, 9, '098443243687'),
(12, 10, '111111123456'),
(13, 13, '0987846563'),
(14, 13, '9076564535'),
(15, 23, '8885665300'),
(16, 24, '098789675654'),
(17, 35, '6757565434324'),
(18, 38, '5634128756'),
(19, 42, '098875534254');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consumos`
--

CREATE TABLE `consumos` (
  `idConsumo` int(11) NOT NULL,
  `operativo` int(11) NOT NULL,
  `insumo` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `consumos`
--

INSERT INTO `consumos` (`idConsumo`, `operativo`, `insumo`, `fecha`) VALUES
(1, 1, 1, '2022-05-02'),
(2, 1, 1, '2022-05-06'),
(3, 1, 10, '2022-05-11'),
(4, 1, 1, '2022-05-12'),
(5, 2, 6, '2022-05-09'),
(6, 2, 3, '2022-05-13'),
(7, 2, 7, '2022-05-17'),
(8, 2, 9, '2022-05-18'),
(9, 3, 12, '2022-07-18'),
(10, 3, 11, '2022-07-22'),
(11, 3, 7, '2022-05-23'),
(12, 3, 7, '2022-05-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dotaciones`
--

CREATE TABLE `dotaciones` (
  `idDotacion` int(11) NOT NULL,
  `dotaciones` varchar(20) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `dotaciones`
--

INSERT INTO `dotaciones` (`idDotacion`, `dotaciones`) VALUES
(1, 'normal'),
(2, 'extraordinaria'),
(3, 'salida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fondofijo`
--

CREATE TABLE `fondofijo` (
  `idFondoFijo` int(11) NOT NULL,
  `idInsumo` int(11) NOT NULL,
  `cantidadFondo` smallint(6) NOT NULL,
  `mes` enum('Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre') COLLATE utf8_spanish2_ci NOT NULL,
  `año` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `fondofijo`
--

INSERT INTO `fondofijo` (`idFondoFijo`, `idInsumo`, `cantidadFondo`, `mes`, `año`) VALUES
(1, 5, 1, 'Enero', 2022),
(2, 6, 1, 'Enero', 2022),
(3, 7, 3, 'Enero', 2022),
(4, 8, 1, 'Enero', 2022),
(5, 11, 4, 'Enero', 2022),
(6, 12, 1, 'Enero', 2022),
(7, 13, 1, 'Enero', 2022),
(8, 14, 1, 'Enero', 2022),
(9, 15, 6, 'Enero', 2022),
(10, 16, 1, 'Enero', 2022),
(11, 17, 1, 'Enero', 2022),
(12, 18, 2, 'Enero', 2022),
(13, 20, 400, 'Enero', 2022),
(14, 21, 1, 'Enero', 2022),
(15, 22, 1, 'Enero', 2022),
(16, 26, 1, 'Enero', 2022),
(17, 28, 1, 'Enero', 2022),
(18, 29, 1, 'Enero', 2022),
(19, 30, 800, 'Enero', 2022),
(20, 31, 10, 'Enero', 2022),
(21, 32, 1, 'Enero', 2022),
(22, 183, 500, 'Enero', 2022),
(23, 137, 1, 'Enero', 2022),
(24, 138, 1, 'Enero', 2022),
(25, 139, 2, 'Enero', 2022),
(26, 140, 10, 'Enero', 2022),
(31, 141, 400, 'Enero', 2022),
(32, 142, 1, 'Enero', 2022),
(33, 38, 3, 'Enero', 2022),
(34, 39, 350, 'Enero', 2022),
(35, 40, 10, 'Enero', 2022),
(36, 43, 150, 'Enero', 2022),
(37, 46, 3, 'Enero', 2022),
(38, 47, 1, 'Enero', 2022),
(39, 182, 2, 'Enero', 2022),
(40, 48, 5, 'Enero', 2022),
(41, 49, 1, 'Enero', 2022),
(42, 50, 350, 'Enero', 2022),
(43, 55, 1, 'Enero', 2022),
(44, 56, 2, 'Enero', 2022),
(45, 57, 1, 'Enero', 2022),
(46, 59, 1, 'Enero', 2022),
(47, 60, 1, 'Enero', 2022),
(48, 61, 1, 'Enero', 2022),
(49, 62, 2, 'Enero', 2022),
(50, 64, 2, 'Enero', 2022),
(51, 65, 1, 'Enero', 2022),
(52, 69, 1, 'Enero', 2022),
(53, 70, 3, 'Enero', 2022),
(54, 72, 1, 'Enero', 2022),
(55, 73, 1, 'Enero', 2022),
(56, 75, 1, 'Enero', 2022),
(57, 76, 1, 'Enero', 2022),
(58, 77, 300, 'Enero', 2022),
(59, 79, 2, 'Enero', 2022),
(60, 83, 5, 'Enero', 2022),
(61, 84, 1, 'Enero', 2022),
(62, 138, 3, 'Febrero', 2022),
(63, 139, 2, 'Febrero', 2022),
(64, 140, 5, 'Febrero', 2022),
(65, 47, 1, 'Febrero', 2022),
(66, 65, 6, 'Febrero', 2022),
(67, 83, 5, 'Febrero', 2022),
(68, 84, 1, 'Febrero', 2022),
(69, 138, 3, 'Abril', 2022),
(70, 139, 2, 'Abril', 2022),
(71, 140, 5, 'Abril', 2022),
(72, 65, 6, 'Abril', 2022),
(73, 65, 6, 'Mayo', 2022),
(74, 65, 6, 'Junio', 2022);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos`
--

CREATE TABLE `insumos` (
  `idInsumo` int(11) NOT NULL,
  `claveRecurso` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcionInsumo` text COLLATE utf8_spanish2_ci NOT NULL,
  `presentacion` int(11) NOT NULL,
  `piezas` smallint(6) NOT NULL,
  `descripcionPresentacion` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `insumos`
--

INSERT INTO `insumos` (`idInsumo`, `claveRecurso`, `descripcionInsumo`, `presentacion`, `piezas`, `descripcionPresentacion`, `categoria`) VALUES
(1, '060.348.0021', 'Ensanchadores de canales no. 45 al 80 \r\n', 1, 1, NULL, 1),
(2, '060.004.0109', 'Abatelenguas de madera, desechables. Largo: 142.0 mm, ancho: 18.0 mm\r\n', 2, 500, 'piezas', 1),
(3, '060.016.0204', 'Aceite lubricante para turbina y balero\r\n', 3, 1, '120 ml', 1),
(4, '060.016.0261', 'Aceites. Hidrosoluble  para  lubricar  y  prevenir  el  deterioro  del instrumental quirúrgico. Incluye: envase con atomizador para aplicación. Envase con 240 ml a 4 lts.\r\n', 2, 1, ' 240 ml a ', 1),
(5, '060.031.0056', 'Adhesivo dental para resinas directas autopolimerizable o fotopolimerizable.\r\n', 3, 1, '6 grs', 1),
(6, '060.034.0103', 'Agua oxigenada en concentración del 2.5 a 3.5%.\r\n', 2, 1, '480ml', 1),
(7, '060.040.8041', 'Aguja dental. Tipo carpule. Desechable. Longitud 20-25 mm, calibre 30 g, tamaño corta\r\n', 2, 100, 'piezas', 1),
(8, '060.040.8058', 'Aguja dental tipo carpulle desechable cali. 27g. Long. 25 a 42 mm. Larga\r\n', 2, 100, 'piezas', 1),
(9, '060.046.0216', 'Alambre para ortodoncia trenzado 0.015 mm, tubo  con 10 alambres\r\n', 4, 1, NULL, 1),
(10, '060.058.0153', 'Algodón en láminas. Enrollado o plisado.\r\n', 2, 1, '300g', 1),
(11, '060.064.0114', 'Amalgama dental polvo de aleación y mercurio.  Las instituciones podrán elegir la concentración de los componentes.\r\n', 2, 50, 'cap-400mg', 1),
(12, '060.066.0039', 'Alcohol desnaturalizado.  \r\n', 2, 1, 'litro', 1),
(13, '060.066.0500', 'Fluoruro de sodio para prevencion de caries.acidulado al 2%. En gel de sabor.\r\n', 2, 1, '480 ml', 1),
(14, '060.066.0666', 'Iodopovidona solucion, cada 100 ml contienen iodopovidona 11 g, equivalente a 1.1. g de yodo\r\n', 2, 1, '3.5 litros', 1),
(15, '060.066.0872', 'Detergente enzimatico, con actividad proteolitica. Concentrado, para utilizarse en instrumental y equipo medico. Liquido: frasco con 1 a 5 litros, dosificador integrado o con capacidad para integrar el dosificador. Envase con 6 frascos o 12 frascos de 1 litro, o envase con 4 frascos de 5 litros o polvo: sobre en polvo con 20 a 25 g. Envase desde 10 a 100 sobres. La dilucion y el empleo del producto concentrado sera de acuerdo a las instrucciones del fabricante.\r\n', 2, 12, 'sobres', 1),
(16, '060.066.0880', 'Solución concentrada esterilizante en frío del 8 al 12.5% de glutaraldehido, para preparar una dilución de uso final del 2 al 3.5%. Para utilizarse en instrumental termosensible limpio y sin material orgánico.Frasco con un litro y dosificador integrado.\r\n', 2, 6, 'frascos', 1),
(17, '060.066.0898', 'Líquido antiséptico, para lavado pre y postquirúrgico de manos y piel, formulado a base de yodo polivinil pirrolidona equivalente a 1.0% mínimo de yodo disponible, 10% mínimo de detergentes no iónicos y estabilizadores. De amplio espectro antimicrobian\r\n', 2, 1, '4 litros', 1),
(18, '060.066.1078', 'Barniz de fluoruro de sodio al 5% en una concentración de 22600 ppm, autopolimerizable en un vehículo de resina modificado.\r\n', 5, 100, 'unid-200ap', 1),
(19, '060.088.0025', 'Apósito transparente microporoso, autoadherible, esteril desechable\r\n', 2, 50, 'piezas', 1),
(20, '060.100.0011', 'Baberos p/paciente\r\n', 1, 1, NULL, 1),
(21, '060.111.0208', 'Barniz de copal para revestimiento de cavidades, frasco con 15ml y frasco con disolvente de 15ml juego\r\n', 3, 1, NULL, 1),
(22, '060.125.2653', 'Bolsa de papel grado médico. Para esterilizar con gas o vapor. Con tratamiento antibacteriano; con reactivo químico impreso y sistema de apertura. Medidas: 7.5 x 23.0 x 4.0 cm.\r\n', 2, 1000, 'piezas', 1),
(23, '060.155.0304', 'Campos quirúrgicos deshecahbles de 60x35 cm\r\n', 2, 10, 'piezas', 1),
(24, '060.182.0160', 'Cemento .ionomero de vidrio 1. Para cementaciones definitivas.polvo 35g. Solicato de aluminio 95%-97%.acido poliacrilico 3% -5%, liquido 25g. 20ml. Acido poliacrilico 75% acido polibasico 10-15 % \r\n', 6, 1, NULL, 1),
(25, '060.182.0236', 'Cemento dental para uso quirurgico en polvo oxido de zinc\r\n', 7, 1, NULL, 1),
(26, '060.182.1150', 'Protector pulpar  para sellar cavidades dentales. De hidróxido de calcio, compuesto autopolimerizable, dos pastas semilíquidas, base 13 g y catalizador 11 g con bloque de papel para mezclar\r\n', 7, 1, 'juegoApDes', 1),
(27, '060.182.1283', 'Cemento dental para sellar conductos radiculares. Polvo de óxido de zinc y sulfato de calcio (resina) líquido: 7 ml (eugenol)\r\n', 6, 1, NULL, 1),
(28, '060.182.1366', 'Cemento dental. Para uso quirúrgico. De óxido de zinc con endurecedor (polvo) 65 g y eugenol (líquido)  30 ml con gotero de plástico pasta rosa \r\n', 8, 1, NULL, 1),
(29, '060.182.1440', 'Cemento.ionomero de vidrio rastaurativo tipo ii. Para tratamiento restaurativo atraumtatico(tra)restauraciones intermedias.para bases. Para odontologia minimamente invasiva. Tono a3. Polvo granulado radiopaco. 12.5. Vidrio de fluorurosilicato de calcio iantano,. Aluminio recubierto 90%, acido poliacrilico, 10% acido benzoico 0.1.% pigmentos 0.1% líquidos de 8.5.ml (100gr). Agua 55%-65% copolímero de ácido acrílico y ácido maléico, 25-35% acido tartarico 9.1% acido benzoico 0.1% loseta de papel encerado, cucharilla dispensadora, guía de aplicación e instructivo\r\n', 7, 1, 'juego', 1),
(30, '060.189.0015', 'Cepillo dental, para adulto, con mango de plástico y cerdas rectas de nylon 6.12, 100% virgen o poliéste p.b.t. 100% virgen, de puntas redondeadas en 4 hileras, cabeza corta, consistencia mediana\r\n', 1, 1, NULL, 1),
(31, '060.189.0023', 'Cepillo para pulido de amalgamas y profilaxis. De cerdas blancas en forma de copa. Para pieza de mano\r\n', 1, 1, NULL, 1),
(32, '060.189.0056', 'Cepillo para lavado de instrumental con cerdas de fibra vegetal, lechugilla\r\n', 1, 1, NULL, 1),
(33, '060.243.0613', 'Corona canino temporal superior. Medidas no. 4\r\n', 2, 5, 'piezas', 1),
(34, '060.243.0662', 'Corona canino temporal superior. Medidas no. 5\r\n', 2, 5, 'piezas', 1),
(35, '060.272.0021', 'Cucharillas para aplicación tópica de flúor en gel, de vinil atóxico, desechables. Estuche que consta de: 1 par para niños de 4 a 7 años \r\n', 9, 1, NULL, 1),
(36, '060.276.0050', 'Cuñas  de madera, para espacios interdentarios\r\n', 2, 100, 'piezas', 1),
(37, '060.348.0013', 'Ensanchadores de canales no. 10 al 40 \r\n', 1, 1, NULL, 1),
(38, '060.436.0057', 'Gasa seca cortada, de algodón, largo 7.5 cm, ancho 5 cm\r\n', 2, 200, 'piezas', 1),
(39, '060.439.0054', 'Gorro redondo con elastico ajustable al contorno de la cara, de tela no tejida de polipropileno, desechable. Impermeable a la penetracion de liquidos y fluidos; antiestatica y resistente a la tension. Tamaño chico.\r\n', 2, 1, 'pieza', 1),
(40, '060.456.0383', 'Guantes para exploración, ambidiestro, estériles, de látex, desechables, tamaños: chico\r\n', 2, 100, 'piezas', 1),
(41, '060.456.0391', 'Guantes para exploración, ambidiestro, estériles, de látex, desechables, tamaños: mediano\r\n', 2, 100, 'piezas', 1),
(42, '060.456.0409', 'Guantes para exploración, ambidiestro, estériles, de látex, desechables, tamaños: grande\r\n', 2, 100, 'piezas', 1),
(43, '060.456.0623', 'Guantes. de nitrilo o polibutadine-acrylonitrilo libre de látex ambidiestro desechable estéril. Tamaño: Chico.\r\n', 9, 1, NULL, 1),
(44, '060.456.0631', 'Guantes. de nitrilo o polibutadine-acrylonitrilo libre de látex ambidiestro desechable estéril. Tamaño: Mediano.\r\n', 9, 1, NULL, 1),
(45, '060.456.0649', 'Guantes. de nitrilo o polibutadine-acrylonitrilo libre de látex ambidiestro desechable estéril. Tamaño: Grande.\r\n', 9, 1, NULL, 1),
(46, '060.470.0153', 'Hemostáticos absorbibles de colágeno medidas. 2.5 x 5 cm\r\n', 2, 12, 'piezas', 1),
(47, '060.483.0117', 'Hojas para bisturí de acero inoxidable empaque individual, estériles y desechables, números: 12\r\n', 2, 100, 'piezas', 1),
(48, '060.550.2608', 'Jeringa de plástico grado médico, de 5 ml de capacidad, escala graduada en ml, con divisiones de 1.0 ml y subdivisiones de 0.2 y aguja de 20 g y 38 mm de longitud, estéril y desechable\r\n', 1, 1, NULL, 1),
(49, '060.593.0106', 'Loseta de vidrio para batir cemento. Tamaño: 8 x 12 x 0.5 cm\r\n', 1, 1, NULL, 1),
(50, '060.621.0524', 'Cubrebocas para uso en área hospitalaria desechables   de dos capas de tela no tejida, resistente a fluidos, antiestático, hipoalergénico, con bandas o ajuste elástico a la cabeza. Desechable.\r\n', 1, 1, NULL, 1),
(51, '060.622.0010', 'Alginato  para impresión (bolsa con  450 g)\r\n', 10, 1, NULL, 1),
(52, '060.622.0028', 'Yeso piedra para ortodoncia (bolsa con 1 kilo)\r\n', 10, 1, NULL, 1),
(53, '060.622.0044', 'Resina acrilica, autopolimerizable, rosa, polvo.\r\n', 3, 1, NULL, 1),
(54, '060.622.0051', 'Resina acrílica, autopolimerizable, líquida\r\n', 2, 1, 'litro', 1),
(55, '060.622.0143', 'Formocresol para momificación y desvitalización de la pulpa dentaria. De buckley\r\n', 2, 1, '30 ml', 1),
(56, '060.683.0057', 'Paños para exprimir amalgama. De algodón. Forma circular\r\n', 2, 100, 'piezas', 1),
(57, '060.749.0703', 'Pasta para profilaxis dental. Abrasiva. Con abrasivos blandos\r\n', 2, 1, '200 g', 1),
(58, '060.753.0011', 'Puntas de gutapercha para obturación de conductos radiculares. Números: 45 a 80 (de 5 en 5)\r\n', 2, 200, 'piezas', 1),
(59, '060.791.0114-1', 'Resina fotopolimerizable o fotocurable que se activa con la luz visible, para restauración dental, partículas de nanorelleno /1 a 100 nm) o nanohíbrida o microhíbrida, con carga de relleno en un rango del 55% a 86% en peso, para restauración de dientes anteriores y posteriores, las instituciones podrán elegir las variantes de color y composición.\r\n', 11, 1, '4grcolora1', 1),
(60, '060.791.0114-2', 'Resina fotopolimerizable o fotocurable que se activa con la luz visible, para restauración dental, partículas de nanorelleno/1 a 100 nm) o nanohíbrida o microhíbrida, con carga de relleno en un rango del 55% a 86% en peso, para restauración de dientes anteriores y posteriores, las instituciones podrán elegir las variantes de color y composición.\r\n', 11, 1, '4grColora2', 1),
(61, '060.791.0114-3', 'Resina fotopolimerizable o fotocurable que se activa con la luz visible, para restauración dental, partículas de nanorelleno/1 a 100 nm) o nanohíbrida o microhíbrida, con carga de relleno en un rango del 55% a 86% en peso, para restauración de dientes anteriores y posteriores, las instituciones podrán elegir las variantes de color y composición.\r\n', 11, 1, '4grColora3', 1),
(62, '060.797.0019', 'Algodón para uso dental. Medida: 3.8 x 0.8 cm \r\n', 2, 500, 'rollos', 1),
(63, '060.811.0052', 'Hilo dental con cera\r\n', 2, 1, 'rollo-50m', 1),
(64, '060.811.0060', 'Hilo seda dental, sin cera\r\n', 2, 1, 'rollo-50m', 1),
(65, '060.841.0619', 'Sutura seda negra trenzada con aguja, longitud de la hebra 75 cm, calibre de la sutura 3-0, características de la aguja 1/2 círculo ahusada (25-26 mm)\r\n', 5, 12, 'piezas', 1),
(66, '060.842.0246', 'Sutura monofilamento sintética absorvible de copolimero de glicólida 0000\r\n', 2, 12, 'piezas', 1),
(67, '060.889.0158', 'Tiras  de celuloide para conformar restauraciones de resina. Ancho 8 a10 mm, calibre fino\r\n', 2, 50, 'piezas', 1),
(68, '060.889.0208', 'Tiras de lija para pulir restauraciones de resina. Grueso y mediano, tiras dobles\r\n', 2, 150, 'piezas', 1),
(69, '060.904.0100', 'Algodón torundas\r\n', 2, 1, '500g', 1),
(70, '060.910.0011', 'Eyectores para saliva, de plástico, desechable\r\n', 2, 100, 'piezas', 1),
(71, '060.908.0114', 'Tubo para canalización. De látex natural, radiopaco.\r\n', 1, 1, NULL, 1),
(72, '070.426.0363', 'Solución para fijado para sistema manual (la marca de este producto debe ser la misma de la clave 070.817.0550).\r\n', 2, 1, '828 ml', 1),
(73, '070.707.0496', 'Pelicula radiográfica dental adulto, medidas: en un rango de 3 a 3.5 cm por 4 a 4.5 cm caja con 150 películas\r\n', 5, 150, 'peliculas', 1),
(74, '070.707.0504', 'Pelicula radiográfica dental oclusal sensible al azul de 5.7 x 7.6 cms.    \r\n', 5, 25, 'peliculas', 1),
(75, '070.707.0587', 'Pelicula radiográfica dental infantil sencilla sensible al azul de 2.2 x 3.5 cms.\r\n', 5, 100, 'peliculas', 1),
(76, '070.817.0550', 'Solución para revelado para sistema manual de revelador concentrado (la marca de este producto debe ser la misma de la clave 070.426.0363).\r\n', 2, 1, '828 ml', 1),
(77, '060.621.0656', 'Cubrebocas quirúrgico. Cubreboca quirúrgico elaborado con dos capas externas de tela no tejida un filtro intermedio de    polipropileno; plano o plisado; con ajuste nasal moldeable. Resistente a fluidos antiestático hipoalergénico. Con bandas o ajuste elástico entorchado a la cabeza o retroauricular. Desechable. Pieza.\r\n', 1, 1, NULL, 1),
(78, '060.711.0145', 'Testigo indicador integrador para la esterilización por vapor clase v capaz de verificar temperatura y tiempo de esterilización y saturación de vapor durante el proceso de esterilización consta de tira de papel secante sustrato quimico semsible a vapor y recubierto \r\n', 1, 1, NULL, 1),
(79, '060.621.0664', 'Google\r\n', 1, 1, NULL, 1),
(80, '060.621.0665', 'Protector Respiratorio (N95)\r\n', 1, 1, NULL, 1),
(81, '', 'Filtros KN95\r\n', 16, 1, 'Mascarilla', 1),
(82, 'F1012', 'CLORIHIDRATO MEPIVACAINA 3%  \r\n', 5, 50, 'CART', 2),
(83, '010.000.0267.00', 'Lidocaína, epinefrina Solución inyectable al 2% Lidocaína 36 mg. Epinefrina 0.018 mg.\r\n', 12, 50, 'den.1.8 ml', 2),
(84, '010.000.0260.12', 'Lidocaina en gel: Clorhidrato de lídocaina 20 mg\r\n', 2, 1, '30 ml', 2),
(85, '15395', 'Mepivacaina simple: Solucion inyectable 3% \r\n', 12, 50, 'den.1.8 ml', 2),
(86, 'FC0600130', 'SELLADOR DE FOSETAS Y FISURAS FOTOPOLIMERIZABLE DE BAJA VISCOCIDAD, CON APLICADORES O EQUIVALENTES\r\n', 7, 1, NULL, 3),
(87, '060.431.0524', 'FRESA DE CARBURO FORMA REDONDA SSW GW-6R\r\n', 1, 1, NULL, 3),
(88, '060.431.0525', 'FRESA BOLA DIAMANTE 10\r\n', 1, 1, NULL, 3),
(89, 'CLAVE 2', 'FRESA BOLA DIAMANTE 14\r\n', 1, 1, NULL, 3),
(90, 'CLAVE 2', 'FRESA CARBURO #329\r\n', 1, 1, NULL, 3),
(91, 'CLAVE 2', 'FRESA CONO INVERTIDO DIAMANTE #805-12\r\n', 1, 1, NULL, 3),
(92, 'CLAVE 2', 'FRESA CONO INVERTIDO DIAMANTE #805-14\r\n', 1, 1, NULL, 3),
(93, 'CLAVE 2', 'FRESA DE  DIAMANTE DE RUEDA DE CARRO \r\n', 1, 1, NULL, 3),
(94, 'CLAVE 2', 'FRESA DE CARBURO  FISURA 169-L\r\n', 1, 1, NULL, 3),
(95, 'CLAVE 2', 'FRESA DE CARBURO DE BOLA #2\r\n', 1, 1, NULL, 3),
(96, 'CLAVE 2', 'FRESA DE CARBURO DE BOLA #4\r\n', 1, 1, NULL, 3),
(97, 'CLAVE 2', 'FRESA DE CARBURO DE BOLA #8\r\n', 1, 1, NULL, 3),
(98, 'CLAVE 2', 'FRESA DE CARBURO DE BOLA DE  1/2\r\n', 1, 1, NULL, 3),
(99, 'CLAVE 2', 'FRESA DE CARBURO DE BOLA DE 1/4\r\n', 1, 1, NULL, 3),
(100, 'CLAVE 2', 'FRESA DE CARBURO FORMA DE BOLA  NO. 1\r\n', 1, 1, NULL, 3),
(101, 'CLAVE 2', 'FRESA DE CARBURO FORMA DE BOLA  NO. 3\r\n', 1, 1, NULL, 3),
(102, 'CLAVE 2', 'FRESA DE CARBURO FORMA DE BOLA  NO. 5\r\n', 1, 1, NULL, 3),
(103, 'CLAVE 2', 'FRESA DE CARBURO FORMA DE PERA SSW FG 331\r\n', 1, 1, NULL, 3),
(104, 'CLAVE 2', 'FRESA DE CARBURO FORMA DE PERA SSW FG 332\r\n', 1, 1, NULL, 3),
(105, 'CLAVE 2', 'FRESA DE DIAMANTE NO. 2  FORMA DE BOLA\r\n', 1, 1, NULL, 3),
(106, 'CLAVE 2', 'FRESA DE DIAMANTE NO. 34  FORMA DE CONO INV.\r\n', 1, 1, NULL, 3),
(107, 'CLAVE 2', 'FRESA DE DIAMANTE NO. 35  FORMA DE CONO INV.\r\n', 1, 1, NULL, 3),
(108, 'CLAVE 2', 'FRESA DE DIAMANTE NO. 4 FORMA DE BOLA\r\n', 1, 1, NULL, 3),
(109, 'CLAVE 2', 'FRESA DE DIAMANTE NO. 6 FORMA DE BOLA\r\n', 1, 1, NULL, 3),
(110, 'CLAVE 2', 'FRESA DE PERA CARBURO SSW FG-4P \r\n', 1, 1, NULL, 3),
(111, 'CLAVE 2', 'FRESA MULTIHOJAS PARA RESINA DE  12 HOJAS FORMA DE AGUJA 7901/1521-5\r\n', 1, 1, NULL, 3),
(112, 'CLAVE 2', 'FRESA PROFILAXIS ALTA VELOCIDAD\r\n', 1, 1, NULL, 3),
(113, 'CLAVE 2', 'FRESA DE DIAMANTE  PUNTA DE LAPIZ\r\n', 1, 1, NULL, 3),
(114, 'CLAVE 2', 'FRESA QUIRURGICA ZECRYA\r\n', 1, 1, NULL, 3),
(115, 'F0600120', 'ÁCIDO FOSFÓRICO DENTRO DE UN RANGO DE 32 A 37.5%. PRODUCTO TIPO GEL, CON PUNTAS DISPENSADORAS O SIMILAR. \r\n', 11, 1, '3ml', 3),
(116, 'CLAVE 4', 'MICROBRUSH FINO \r\n', 15, 100, 'PZAS', 3),
(117, '060.100.011SS', 'CAMPOS DESECHABLES\r\n', 1, 1, NULL, 3),
(118, 'CLAVE 6', 'LIMA PARA ENDODONCIA 15-40 21MM \r\n', 5, 6, 'PZAS', 3),
(119, 'CLAVE 6', 'LIMA PARA ENDODONCIA TIPO K 45-80 25MM \r\n', 5, 6, 'PZAS', 3),
(120, 'CLAVE 6', 'LIMA PARA ENDODONCIA TIPO K 8\r\n', 5, 6, 'PZAS', 3),
(121, 'CLAVE 7', 'PUNTAS DE GUTAPERCHA, ACCESO FINO FINO\r\n', 5, 120, 'PZAS', 3),
(122, 'CLAVE 7', 'PUNTAS DE GUTAPERCHA, ACCESO EXTRA FINO\r\n', 5, 120, 'PZAS', 3),
(123, 'CLAVE 7', 'PUNTAS DE GUTAPERCHA, ACCESO FINO MEDIO\r\n', 5, 120, 'PZAS', 3),
(124, 'CLAVE 7', 'PUNTAS DE GUTAPERCHA, ACCESO FINO\r\n', 5, 120, 'PZAS', 3),
(125, 'CLAVE 8', 'PUNTAS DE PAPEL ABSORBENTES P/ENDODONCIA 15-45\r\n', 5, 120, 'PZAS', 3),
(126, 'CLAVE 8', 'PUNTAS DE PAPEL ABSORBENTES P/ENDODONCIA 45-80\r\n', 5, 120, 'PZAS', 3),
(129, 'CLAVE 9', 'HEMOSTATICOS ABSORBIBLES DE COLAGENO MEDIDAS 1X1X1\r\n', 2, 12, 'PZAS', 3),
(130, 'CLAVE 10', 'DIQUE DE HULE\r\n', 5, 50, 'PZAS', 3),
(131, 'CLAVE11', 'FRESA  CARBURO FG6SL\r\n', 1, 1, NULL, 3),
(132, '060.066.0906', 'GEL ANTISEPTICO TOPICO A BASE DE ALCHOL ETILICO\r\n', 3, 1, '50ML', 3),
(133, '060.189.0056', 'Cepillo para lavado de instrumental con cerdas de fibra vegetal, lechuguilla\r\n', 1, 1, NULL, 1),
(134, '060.189,0106', 'Cepillo dental infantil, con mango de plástico y cerdas rectas de nylon 6.12, 100% virgen o poliéster p.b.t. 100% virgen, de puntas redondeadas en 3 hileras, cabeza corta, consistencia mediana\r\n', 1, 1, NULL, 1),
(135, '060.189.0304', 'Cepillo para uso quirúrgico, de plástico, de forma rectangular, con dos agarraderas laterales simétricas y cerdas de nylon\r\n', 1, 1, NULL, 1),
(136, '060.196.0065', 'Cera rosa del no. 7, para uso dental.\r\n', 2, 10, 'tabletas', 1),
(137, '060.203.0058', 'Cinta para portamatriz. De amalgama, metálica de 5 mm de longitud\r\n', 2, 12, 'piezas', 1),
(138, '060.203.0066', 'Cinta para portamatriz. De amalgama, metálica de 7 mm de longitud\r\n', 2, 12, 'piezas', 1),
(139, '060.203.0207', 'Cintas para esterilización en vapor a presión. Tamaño: 18 mm x 50 m\r\n', 13, 1, NULL, 1),
(140, '060.219.0068', 'Colorantes reveladores de placas dentobacterianas. Tabletas sin sabor\r\n', 2, 100, 'piezas', 1),
(141, '060.231.0641', 'Bata quirúrgica con puños ajustables y refuerzo en mangas y pecho. Tela no tejida de polipropileno, impermeable a la penetración de líquidos y fluidos; antiestática y resistente a la tensión. Estéril y desechable.  Tamaño grande\r\n', 1, 1, '', 1),
(142, '060.235.0019', 'Copas de hule suave blanco cono\r\n', 2, 12, 'pzas', 1),
(143, '060.243.0027', 'Corona de acero inoxidable preconformada, para reconstrucción de . Primer molar temporal, superior derecho, medidas no. 5\r\n', 2, 5, 'piezas', 1),
(144, '060.243.0035', 'Corona primer molar temporal. Superior derecho. Medidas no. 6\r\n', 7, 5, 'piezas', 1),
(145, '060.243.0043', 'Corona segundo molar temporal, superior derecho, medidas no. 4\r\n', 2, 5, 'piezas', 1),
(146, '060.243.0050', 'Corona segundo molar temporal, superior derecho, medidas no. 5\r\n', 2, 5, 'piezas', 1),
(147, '060.243.0076', 'Corona de acero inoxidable preconformada, . Primer molar temporal, superior izquierda, medidas no. 4\r\n', 2, 5, 'piezas', 1),
(148, '060.243.0084', 'Corona de acero inoxidable preconformadas,  primer molar temporal, superior izquierda, medidas no. 5\r\n', 2, 5, 'piezas', 1),
(149, '060.243.0092', 'Corona primer molar temporal. Superior izquierdo. Medidas no. 6\r\n', 7, 5, 'piezas', 1),
(150, '060.243.0100', 'Corona segundo molar temporal, superior izquierdo, medidas no. 4\r\n', 2, 5, 'piezas', 1),
(151, '060.243.0118', 'Corona segundo molar temporal, superior izquierdo, medidas no. 5\r\n', 2, 5, 'piezas', 1),
(152, '060.243.0126', 'Corona segundo molar temporal. Superior derecho. Medidas no. 6\r\n', 7, 5, 'piezas', 1),
(153, '060.243.0134', 'Corona primer molar temporal. Inferior derecho. Medidas no. 4\r\n', 2, 5, 'piezas', 1),
(154, '060.243.0142', 'Corona primer molar temporal. Inferior derecho. Medidas no. 5\r\n', 2, 5, 'piezas', 1),
(155, '060.243.0159', 'Corona primer molar temporal. Inferior derecho. Medidas no. 6\r\n', 7, 5, 'piezas', 1),
(156, '060.243.0167', 'Corona segundo molar temporal. Inferior derecho. Medidas no. 4\r\n', 2, 5, 'piezas', 1),
(157, '060.243.0175', 'Corona segundo molar temporal. Inferior derecho. Medidas no. 5\r\n', 2, 5, 'piezas', 1),
(158, '060.243.0183', 'Corona segundo molar temporal. Inferior derecho. Medidas no. 6\r\n', 7, 5, 'piezas', 1),
(159, '060.243.0191', 'Corona primer molar temporal, inferior izquierdo. Medidas no. 4\r\n', 2, 5, 'piezas', 1),
(160, '060.243.0209', 'Corona primer molar temporal, inferior izquierdo. Medidas no. 5\r\n', 2, 5, 'piezas', 1),
(161, '060.243.0217', 'Corona primer molar temporal. Inferior izquierdo. Medidas no. 6\r\n', 7, 5, 'piezas', 1),
(162, '060.243.0225', 'Corona segundo molar temporal. Inferior izquierdo. Medidas no. 4\r\n', 2, 5, 'piezas', 1),
(163, '060.243.0233', 'Corona segundo molar temporal. Inferior izquierdo. Medidas no. 5\r\n', 2, 5, 'piezas', 1),
(164, '060.243.0241', 'Corona segundo molar temporal. Inferior izquierdo. Medidas no. 6\r\n', 7, 5, 'piezas', 1),
(165, '060.243.0373', 'Corona incisivo central superior derecho. Medidas no. 1\r\n', 7, 5, 'piezas', 1),
(166, '060.243.0381', 'Corona incisivo central superior derecho. Medidas no. 2\r\n', 7, 5, 'piezas', 1),
(167, '060.243.0399', 'Corona incisivo central. Superior derecho temporal. Medidas no. 3\r\n', 2, 3, 'piezas', 1),
(168, '060.243.0407', 'Corona incisivo central superior izquierdo. Medidas no. 1\r\n', 7, 5, 'piezas', 1),
(169, '060.243.0415', 'Corona incisivo central superior izquierdo. Medidas no. 2\r\n', 7, 5, 'piezas', 1),
(170, '060.243.0423', 'Corona incisivo central. Superior izquierdo temporal. Medidas no. 3\r\n', 2, 5, 'piezas', 1),
(171, '060.243.0431', 'Corona incisivo lateral superior derecho. Medidas no. 1\r\n', 7, 5, 'piezas', 1),
(172, '060.243.0449', 'Corona incisivo lateral superior derecho. Medidas no. 2\r\n', 7, 5, 'piezas', 1),
(173, '060.243.0456', 'Corona incisivo lateral. Superior derecho temporal. Medidas no. 3\r\n', 2, 5, 'piezas', 1),
(174, '060.243.0464', 'Corona incisivo lateral. Superior derecho temporal. Medidas no. 4\r\n', 2, 5, 'piezas', 1),
(175, '060.243.0498', 'Corona incisivo lateral superior izquierdo. Medidas no. 1\r\n', 7, 5, 'piezas', 1),
(176, '060.243.0506', 'Corona incisivo lateral superior izquierdo. Medidas no. 2\r\n', 7, 5, 'piezas', 1),
(177, '060.243.0514', 'Corona incisivo lateral. Superior izquierdo temporal. Medidas no. 3\r\n', 2, 3, 'piezas', 1),
(178, '060.243.0522', 'Corona incisivo lateral. Superior izquierdo temporal. Medidas no. 4\r\n', 2, 3, 'piezas', 1),
(179, '060.243.0571', 'Corona canino temporal superior. Medidas no. 3\r\n', 2, 5, 'piezas', 1),
(180, '060.272.0039', 'Cucharillas para aplicación tópica de flúor en gel, de vinil atóxico, desechables. Estuche que consta de: 1 par para adolescentes\r\n', 9, 1, NULL, 1),
(181, '060.483.0141', 'Hojas para bisturi de acero inoxidable empaque individual, estériles y desechables, números: 15\r\n', 2, 100, 'piezas-den', 1),
(182, '060.491.0018', 'Papel  indicador de contacto oclusal. En tiras, con pegamento en ambas caras\r\n', 14, 15, 'hojas', 1),
(183, '060.189.0106', 'Cepillo dental infantil, con mango de plástico y cerdas rectas de nylon 6.12, 100% virgen o poliéster p.b.t. 100% virgen, de puntas redondeadas en 3 hileras, cabeza corta, consistencia mediana\r\n', 1, 1, NULL, 1),
(184, '060.189.0106', 'Cepillo dental infantil, con mango de plástico y cerdas rectas de nylon 6.12, 100% virgen o poliéster p.b.t. 100% virgen, de puntas redondeadas en 3 hileras, cabeza corta, consistencia mediana\r\n', 1, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `listausuarios`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `listausuarios` (
`idUsuario` int(11)
,`usuario` varchar(20)
,`nombre` varchar(77)
,`rol` varchar(15)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lotes`
--

CREATE TABLE `lotes` (
  `idLote` int(11) NOT NULL,
  `numeroLote` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `caducidad` date DEFAULT NULL,
  `idDotacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `lotes`
--

INSERT INTO `lotes` (`idLote`, `numeroLote`, `caducidad`, `idDotacion`) VALUES
(1, '123', '2023-07-13', 2),
(2, '43332', '2022-07-29', 2),
(3, '65758', NULL, 2),
(4, '999888', NULL, 2),
(5, '76754', NULL, 2),
(6, '098765', '2022-09-15', 1),
(7, '9067532', '2023-08-03', 1),
(8, '875634', '2021-06-04', 2),
(9, '666777', '2022-09-14', 2),
(10, '875643', NULL, 2),
(11, '754457', '2022-11-11', 2),
(12, '112233', '2022-10-28', 2),
(13, '454545', '2022-09-30', 2),
(14, '987650', '2022-07-31', 1),
(15, '44444', '2022-11-11', 1),
(16, '9988445', NULL, 1),
(17, '8877665', '2022-12-23', 1),
(18, '555555', '2022-11-20', 1),
(19, '7651111', '2022-12-30', 1),
(20, '785634', '2024-02-05', 1),
(21, '1234560', NULL, 1),
(22, '8888888', '2023-01-01', 3),
(23, '213564', '2022-05-13', 3),
(24, '98563', NULL, 3),
(25, '764221', NULL, 3),
(26, '98787643', NULL, 1),
(27, '475678868', NULL, 1),
(28, '0986754', NULL, 1),
(29, '4321657', NULL, 1),
(30, '896743', NULL, 1),
(31, '7554356', NULL, 1),
(32, '88888', NULL, 1),
(33, '6565656', NULL, 1),
(34, '545454', NULL, 2),
(35, '2354567', NULL, 2),
(36, '0000008', NULL, 2),
(37, '99870', NULL, 2),
(38, '7654768', NULL, 2),
(39, '8975576', NULL, 2),
(40, '111111111', NULL, 3),
(41, '2222222', NULL, 3),
(42, '3333333', NULL, 3),
(43, '4444444', NULL, 3),
(44, '555555', NULL, 3),
(45, '6666666', NULL, 3),
(46, '777777', NULL, 3),
(47, '89888', NULL, 3),
(49, '809563', '2022-10-20', 1),
(50, '8675454', '2022-12-29', 1),
(51, '0909090', '2023-01-04', 1),
(52, '1313134', '2022-12-23', 1),
(54, '7675445', '2022-11-24', 1),
(55, '5655444', '2022-09-28', 1),
(57, '7786767', '2023-01-31', 1),
(58, '87756658', '2023-03-29', 1),
(59, '75893', '2023-03-02', 1),
(60, '7845757', '2022-12-28', 1),
(61, '586748', '2023-02-28', 1),
(62, '578465', '2023-01-31', 1),
(63, '5464636', '2023-04-11', 2),
(64, '98796565', '2023-02-13', 2),
(65, '4646677', '2023-06-05', 2),
(66, '954654767', '2023-03-22', 2),
(69, '985545444', '2023-01-26', 2),
(70, '55556666', '2022-11-24', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presentaciones`
--

CREATE TABLE `presentaciones` (
  `idPresentacion` int(11) NOT NULL,
  `presentacion` varchar(15) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `presentaciones`
--

INSERT INTO `presentaciones` (`idPresentacion`, `presentacion`) VALUES
(1, 'pieza'),
(2, 'envase'),
(3, 'frasco'),
(4, 'tubo'),
(5, 'caja'),
(6, 'juego'),
(7, 'estuche'),
(8, 'equipo'),
(9, 'par'),
(10, 'bolsa'),
(11, 'jeringa'),
(12, 'cartucho'),
(13, 'rollo'),
(14, 'block'),
(15, 'paquete'),
(16, 'mascarilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `idRol` int(11) NOT NULL,
  `rol` varchar(15) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`idRol`, `rol`) VALUES
(1, 'Administrador'),
(2, 'Operativo'),
(3, 'Visitante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `idStock` int(11) NOT NULL,
  `clave` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`idStock`, `clave`, `cantidad`) VALUES
(1, 5, 16),
(2, 6, 15),
(3, 6, 15),
(4, 7, 16),
(5, 7, 16),
(6, 7, 21),
(7, 8, 21),
(8, 11, 6),
(9, 11, 6),
(10, 11, 6),
(11, 11, 6),
(12, 11, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `usuario` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidoPaterno` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidoMaterno` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `passw` varchar(16) COLLATE utf8_spanish2_ci NOT NULL,
  `rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `usuario`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `passw`, `rol`) VALUES
(0, 'brina', 'Sabrina', 'Carpenter', 'God', '12345', 1),
(1, 'taniaAdmin', 'Tania GM', 'Garcia', 'Montiel', '12345', 1),
(2, 'doc_Peter', 'Peter la anguila', 'Nava', 'Nava', '12345', 1),
(3, 'juanAlc4', 'Juanito', 'Alcachofas', 'Sanchez', '12345', 2),
(4, 'marth412', 'Martina', 'Medina', 'Medino', '12345', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariosbajas`
--

CREATE TABLE `usuariosbajas` (
  `idUsuario` int(11) NOT NULL,
  `usuario` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `apellidoPaterno` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `apellidoMaterno` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(16) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuariosbajas`
--

INSERT INTO `usuariosbajas` (`idUsuario`, `usuario`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `password`, `rol`) VALUES
(0, 'brina', 'Sabrina', 'Carpenter', 'God', '12345', 1),
(1, 'taniaAdmin', 'Tania GM', 'Garcia', 'Montiel', '12345', 1),
(2, 'doc_Peter', 'Peter la anguila', 'Nava', 'Nava', '12345', 1),
(3, 'juanAlc4', 'Juanito', 'Alcachofas', 'Sanchez', '12345', 2),
(4, 'marth412', 'Martina', 'Medina', 'Medino', '12345', 3);

-- --------------------------------------------------------

--
-- Estructura para la vista `listausuarios`
--
DROP TABLE IF EXISTS `listausuarios`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `listausuarios`  AS SELECT `usuarios`.`idUsuario` AS `idUsuario`, `usuarios`.`usuario` AS `usuario`, concat(`usuarios`.`nombre`,' ',`usuarios`.`apellidoPaterno`,' ',`usuarios`.`apellidoMaterno`) AS `nombre`, `roles`.`rol` AS `rol` FROM (`usuarios` join `roles` on(`usuarios`.`rol` = `roles`.`idRol`))  ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `codigos`
--
ALTER TABLE `codigos`
  ADD PRIMARY KEY (`idCodigo`),
  ADD KEY `id_insumo` (`idInsumo`);

--
-- Indices de la tabla `consumos`
--
ALTER TABLE `consumos`
  ADD PRIMARY KEY (`idConsumo`),
  ADD KEY `operativo` (`operativo`),
  ADD KEY `insumo` (`insumo`);

--
-- Indices de la tabla `dotaciones`
--
ALTER TABLE `dotaciones`
  ADD PRIMARY KEY (`idDotacion`);

--
-- Indices de la tabla `fondofijo`
--
ALTER TABLE `fondofijo`
  ADD PRIMARY KEY (`idFondoFijo`),
  ADD KEY `id_insumo` (`idInsumo`);

--
-- Indices de la tabla `insumos`
--
ALTER TABLE `insumos`
  ADD PRIMARY KEY (`idInsumo`),
  ADD KEY `presentacion` (`presentacion`),
  ADD KEY `categoria` (`categoria`);

--
-- Indices de la tabla `lotes`
--
ALTER TABLE `lotes`
  ADD PRIMARY KEY (`idLote`),
  ADD KEY `id_dotacion` (`idDotacion`);

--
-- Indices de la tabla `presentaciones`
--
ALTER TABLE `presentaciones`
  ADD PRIMARY KEY (`idPresentacion`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idRol`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`idStock`),
  ADD KEY `clave` (`clave`),
  ADD KEY `lote` (`cantidad`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `rol` (`rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `codigos`
--
ALTER TABLE `codigos`
  MODIFY `idCodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `consumos`
--
ALTER TABLE `consumos`
  MODIFY `idConsumo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `dotaciones`
--
ALTER TABLE `dotaciones`
  MODIFY `idDotacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `fondofijo`
--
ALTER TABLE `fondofijo`
  MODIFY `idFondoFijo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `insumos`
--
ALTER TABLE `insumos`
  MODIFY `idInsumo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT de la tabla `lotes`
--
ALTER TABLE `lotes`
  MODIFY `idLote` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `presentaciones`
--
ALTER TABLE `presentaciones`
  MODIFY `idPresentacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `codigos`
--
ALTER TABLE `codigos`
  ADD CONSTRAINT `codigos_ibfk_1` FOREIGN KEY (`idInsumo`) REFERENCES `insumos` (`idInsumo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `consumos`
--
ALTER TABLE `consumos`
  ADD CONSTRAINT `consumos_ibfk_2` FOREIGN KEY (`insumo`) REFERENCES `stock` (`idStock`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `fondofijo`
--
ALTER TABLE `fondofijo`
  ADD CONSTRAINT `fondofijo_ibfk_1` FOREIGN KEY (`idInsumo`) REFERENCES `insumos` (`idInsumo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `insumos`
--
ALTER TABLE `insumos`
  ADD CONSTRAINT `insumos_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`idCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `insumos_ibfk_2` FOREIGN KEY (`presentacion`) REFERENCES `presentaciones` (`idPresentacion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lotes`
--
ALTER TABLE `lotes`
  ADD CONSTRAINT `lotes_ibfk_1` FOREIGN KEY (`idDotacion`) REFERENCES `dotaciones` (`idDotacion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`cantidad`) REFERENCES `lotes` (`idLote`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`clave`) REFERENCES `insumos` (`idInsumo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`rol`) REFERENCES `roles` (`idRol`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"denconsum\",\"table\":\"insumos\"},{\"db\":\"denconsum\",\"table\":\"usuarios\"},{\"db\":\"denconsum\",\"table\":\"roles\"},{\"db\":\"denconsum\",\"table\":\"listausuarios\"},{\"db\":\"radiodisney\",\"table\":\"tracklist\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-08-13 01:00:02', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `radiodisney`
--
CREATE DATABASE IF NOT EXISTS `radiodisney` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `radiodisney`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bigtimerush`
--

CREATE TABLE `bigtimerush` (
  `kendall` int(11) NOT NULL,
  `james` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `logan` date DEFAULT NULL,
  `carlos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `bigtimerush`
--

INSERT INTO `bigtimerush` (`kendall`, `james`, `logan`, `carlos`) VALUES
(1, '123', '2023-07-13', 2),
(2, '43332', '2022-07-29', 2),
(3, '65758', NULL, 2),
(4, '999888', NULL, 2),
(5, '76754', NULL, 2),
(6, '098765', '2022-09-15', 1),
(7, '9067532', '2023-08-03', 1),
(8, '875634', '2021-06-04', 2),
(9, '666777', '2022-09-14', 2),
(10, '875643', NULL, 2),
(11, '754457', '2022-11-11', 2),
(12, '112233', '2022-10-28', 2),
(13, '454545', '2022-09-30', 2),
(14, '987650', '2022-07-31', 1),
(15, '44444', '2022-11-11', 1),
(16, '9988445', NULL, 1),
(17, '8877665', '2022-12-23', 1),
(18, '555555', '2022-11-20', 1),
(19, '7651111', '2022-12-30', 1),
(20, '785634', '2024-02-05', 1),
(21, '1234560', NULL, 1),
(22, '8888888', '2023-01-01', 3),
(23, '213564', '2022-05-13', 3),
(24, '98563', NULL, 3),
(25, '764221', NULL, 3),
(26, '98787643', NULL, 1),
(27, '475678868', NULL, 1),
(28, '0986754', NULL, 1),
(29, '4321657', NULL, 1),
(30, '896743', NULL, 1),
(31, '7554356', NULL, 1),
(32, '88888', NULL, 1),
(33, '6565656', NULL, 1),
(34, '545454', NULL, 2),
(35, '2354567', NULL, 2),
(36, '0000008', NULL, 2),
(37, '99870', NULL, 2),
(38, '7654768', NULL, 2),
(39, '8975576', NULL, 2),
(40, '111111111', NULL, 3),
(41, '2222222', NULL, 3),
(42, '3333333', NULL, 3),
(43, '4444444', NULL, 3),
(44, '555555', NULL, 3),
(45, '6666666', NULL, 3),
(46, '777777', NULL, 3),
(47, '89888', NULL, 3),
(49, '809563', '2022-10-20', 1),
(50, '8675454', '2022-12-29', 1),
(51, '0909090', '2023-01-04', 1),
(52, '1313134', '2022-12-23', 1),
(54, '7675445', '2022-11-24', 1),
(55, '5655444', '2022-09-28', 1),
(57, '7786767', '2023-01-31', 1),
(58, '87756658', '2023-03-29', 1),
(59, '75893', '2023-03-02', 1),
(60, '7845757', '2022-12-28', 1),
(61, '586748', '2023-02-28', 1),
(62, '578465', '2023-01-31', 1),
(63, '5464636', '2023-04-11', 2),
(64, '98796565', '2023-02-13', 2),
(65, '4646677', '2023-06-05', 2),
(66, '954654767', '2023-03-22', 2),
(69, '985545444', '2023-01-26', 2),
(70, '55556666', '2022-11-24', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camilacabello`
--

CREATE TABLE `camilacabello` (
  `ohnana` int(11) NOT NULL,
  `havana` varchar(15) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `camilacabello`
--

INSERT INTO `camilacabello` (`ohnana`, `havana`) VALUES
(1, 'pieza'),
(2, 'envase'),
(3, 'frasco'),
(4, 'tubo'),
(5, 'caja'),
(6, 'juego'),
(7, 'estuche'),
(8, 'equipo'),
(9, 'par'),
(10, 'bolsa'),
(11, 'jeringa'),
(12, 'cartucho'),
(13, 'rollo'),
(14, 'block'),
(15, 'paquete'),
(16, 'mascarilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `glee`
--

CREATE TABLE `glee` (
  `sue` int(11) NOT NULL,
  `rachel` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `cory` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `santana` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `britanny` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `journey` varchar(16) COLLATE utf8_spanish2_ci NOT NULL,
  `becky` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juanga`
--

CREATE TABLE `juanga` (
  `asifue` int(11) NOT NULL,
  `querida` int(11) NOT NULL,
  `notengodinero` smallint(6) NOT NULL,
  `peroquenecesidad` enum('Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre') COLLATE utf8_spanish2_ci NOT NULL,
  `amoreterno` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `juanga`
--

INSERT INTO `juanga` (`asifue`, `querida`, `notengodinero`, `peroquenecesidad`, `amoreterno`) VALUES
(1, 5, 1, 'Enero', 2022),
(2, 6, 1, 'Enero', 2022),
(3, 7, 3, 'Enero', 2022),
(4, 8, 1, 'Enero', 2022),
(5, 11, 4, 'Enero', 2022),
(6, 12, 1, 'Enero', 2022),
(7, 13, 1, 'Enero', 2022),
(8, 14, 1, 'Enero', 2022),
(9, 15, 6, 'Enero', 2022),
(10, 16, 1, 'Enero', 2022),
(11, 17, 1, 'Enero', 2022),
(12, 18, 2, 'Enero', 2022),
(13, 20, 400, 'Enero', 2022),
(14, 21, 1, 'Enero', 2022),
(15, 22, 1, 'Enero', 2022),
(16, 26, 1, 'Enero', 2022),
(17, 28, 1, 'Enero', 2022),
(18, 29, 1, 'Enero', 2022),
(19, 30, 800, 'Enero', 2022),
(20, 31, 10, 'Enero', 2022),
(21, 32, 1, 'Enero', 2022),
(22, 183, 500, 'Enero', 2022),
(23, 137, 1, 'Enero', 2022),
(24, 138, 1, 'Enero', 2022),
(25, 139, 2, 'Enero', 2022),
(26, 140, 10, 'Enero', 2022),
(31, 141, 400, 'Enero', 2022),
(32, 142, 1, 'Enero', 2022),
(33, 38, 3, 'Enero', 2022),
(34, 39, 350, 'Enero', 2022),
(35, 40, 10, 'Enero', 2022),
(36, 43, 150, 'Enero', 2022),
(37, 46, 3, 'Enero', 2022),
(38, 47, 1, 'Enero', 2022),
(39, 182, 2, 'Enero', 2022),
(40, 48, 5, 'Enero', 2022),
(41, 49, 1, 'Enero', 2022),
(42, 50, 350, 'Enero', 2022),
(43, 55, 1, 'Enero', 2022),
(44, 56, 2, 'Enero', 2022),
(45, 57, 1, 'Enero', 2022),
(46, 59, 1, 'Enero', 2022),
(47, 60, 1, 'Enero', 2022),
(48, 61, 1, 'Enero', 2022),
(49, 62, 2, 'Enero', 2022),
(50, 64, 2, 'Enero', 2022),
(51, 65, 1, 'Enero', 2022),
(52, 69, 1, 'Enero', 2022),
(53, 70, 3, 'Enero', 2022),
(54, 72, 1, 'Enero', 2022),
(55, 73, 1, 'Enero', 2022),
(56, 75, 1, 'Enero', 2022),
(57, 76, 1, 'Enero', 2022),
(58, 77, 300, 'Enero', 2022),
(59, 79, 2, 'Enero', 2022),
(60, 83, 5, 'Enero', 2022),
(61, 84, 1, 'Enero', 2022),
(62, 138, 3, 'Febrero', 2022),
(63, 139, 2, 'Febrero', 2022),
(64, 140, 5, 'Febrero', 2022),
(65, 47, 1, 'Febrero', 2022),
(66, 65, 6, 'Febrero', 2022),
(67, 83, 5, 'Febrero', 2022),
(68, 84, 1, 'Febrero', 2022),
(69, 138, 3, 'Abril', 2022),
(70, 139, 2, 'Abril', 2022),
(71, 140, 5, 'Abril', 2022),
(72, 65, 6, 'Abril', 2022),
(73, 65, 6, 'Mayo', 2022),
(74, 65, 6, 'Junio', 2022);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maroonv`
--

CREATE TABLE `maroonv` (
  `maps` int(11) NOT NULL,
  `sugar` int(11) NOT NULL,
  `animals` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `maroonv`
--

INSERT INTO `maroonv` (`maps`, `sugar`, `animals`) VALUES
(1, 5, 16),
(2, 6, 15),
(3, 6, 15),
(4, 7, 16),
(5, 7, 16),
(6, 7, 21),
(7, 8, 21),
(8, 11, 6),
(9, 11, 6),
(10, 11, 6),
(11, 11, 6),
(12, 11, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `morat`
--

CREATE TABLE `morat` (
  `villabb` int(11) NOT NULL,
  `isaza` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `simon` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `martin` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `nath` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  `balasperdidas` varchar(16) COLLATE utf8_spanish2_ci NOT NULL,
  `cuandonadieve` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `morat`
--

INSERT INTO `morat` (`villabb`, `isaza`, `simon`, `martin`, `nath`, `balasperdidas`, `cuandonadieve`) VALUES
(0, 'brina', 'Sabrina', 'Carpenter', 'God', '12345', 1),
(1, 'taniaAdmin', 'Tania GM', 'Garcia', 'Montiel', '12345', 1),
(2, 'doc_Peter', 'Peter la anguila', 'Nava', 'Nava', '12345', 1),
(3, 'juanAlc4', 'Juanito', 'Alcachofas', 'Sanchez', '12345', 2),
(4, 'marth412', 'Martina', 'Medina', 'Medino', '12345', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oliviarodrigo`
--

CREATE TABLE `oliviarodrigo` (
  `brutal` int(11) NOT NULL,
  `dejavu` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `happier` text COLLATE utf8_spanish2_ci NOT NULL,
  `good4u` int(11) NOT NULL,
  `complicated` smallint(6) NOT NULL,
  `traitor` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `favoritecrime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `oliviarodrigo`
--

INSERT INTO `oliviarodrigo` (`brutal`, `dejavu`, `happier`, `good4u`, `complicated`, `traitor`, `favoritecrime`) VALUES
(1, '060.348.0021', 'Ensanchadores de canales no. 45 al 80 \r\n', 1, 1, NULL, 1),
(2, '060.004.0109', 'Abatelenguas de madera, desechables. Largo: 142.0 mm, ancho: 18.0 mm\r\n', 2, 500, 'piezas', 1),
(3, '060.016.0204', 'Aceite lubricante para turbina y balero\r\n', 3, 1, '120 ml', 1),
(4, '060.016.0261', 'Aceites. Hidrosoluble  para  lubricar  y  prevenir  el  deterioro  del instrumental quirúrgico. Incluye: envase con atomizador para aplicación. Envase con 240 ml a 4 lts.\r\n', 2, 1, ' 240 ml a ', 1),
(5, '060.031.0056', 'Adhesivo dental para resinas directas autopolimerizable o fotopolimerizable.\r\n', 3, 1, '6 grs', 1),
(6, '060.034.0103', 'Agua oxigenada en concentración del 2.5 a 3.5%.\r\n', 2, 1, '480ml', 1),
(7, '060.040.8041', 'Aguja dental. Tipo carpule. Desechable. Longitud 20-25 mm, calibre 30 g, tamaño corta\r\n', 2, 100, 'piezas', 1),
(8, '060.040.8058', 'Aguja dental tipo carpulle desechable cali. 27g. Long. 25 a 42 mm. Larga\r\n', 2, 100, 'piezas', 1),
(9, '060.046.0216', 'Alambre para ortodoncia trenzado 0.015 mm, tubo  con 10 alambres\r\n', 4, 1, NULL, 1),
(10, '060.058.0153', 'Algodón en láminas. Enrollado o plisado.\r\n', 2, 1, '300g', 1),
(11, '060.064.0114', 'Amalgama dental polvo de aleación y mercurio.  Las instituciones podrán elegir la concentración de los componentes.\r\n', 2, 50, 'cap-400mg', 1),
(12, '060.066.0039', 'Alcohol desnaturalizado.  \r\n', 2, 1, 'litro', 1),
(13, '060.066.0500', 'Fluoruro de sodio para prevencion de caries.acidulado al 2%. En gel de sabor.\r\n', 2, 1, '480 ml', 1),
(14, '060.066.0666', 'Iodopovidona solucion, cada 100 ml contienen iodopovidona 11 g, equivalente a 1.1. g de yodo\r\n', 2, 1, '3.5 litros', 1),
(15, '060.066.0872', 'Detergente enzimatico, con actividad proteolitica. Concentrado, para utilizarse en instrumental y equipo medico. Liquido: frasco con 1 a 5 litros, dosificador integrado o con capacidad para integrar el dosificador. Envase con 6 frascos o 12 frascos de 1 litro, o envase con 4 frascos de 5 litros o polvo: sobre en polvo con 20 a 25 g. Envase desde 10 a 100 sobres. La dilucion y el empleo del producto concentrado sera de acuerdo a las instrucciones del fabricante.\r\n', 2, 12, 'sobres', 1),
(16, '060.066.0880', 'Solución concentrada esterilizante en frío del 8 al 12.5% de glutaraldehido, para preparar una dilución de uso final del 2 al 3.5%. Para utilizarse en instrumental termosensible limpio y sin material orgánico.Frasco con un litro y dosificador integrado.\r\n', 2, 6, 'frascos', 1),
(17, '060.066.0898', 'Líquido antiséptico, para lavado pre y postquirúrgico de manos y piel, formulado a base de yodo polivinil pirrolidona equivalente a 1.0% mínimo de yodo disponible, 10% mínimo de detergentes no iónicos y estabilizadores. De amplio espectro antimicrobian\r\n', 2, 1, '4 litros', 1),
(18, '060.066.1078', 'Barniz de fluoruro de sodio al 5% en una concentración de 22600 ppm, autopolimerizable en un vehículo de resina modificado.\r\n', 5, 100, 'unid-200ap', 1),
(19, '060.088.0025', 'Apósito transparente microporoso, autoadherible, esteril desechable\r\n', 2, 50, 'piezas', 1),
(20, '060.100.0011', 'Baberos p/paciente\r\n', 1, 1, NULL, 1),
(21, '060.111.0208', 'Barniz de copal para revestimiento de cavidades, frasco con 15ml y frasco con disolvente de 15ml juego\r\n', 3, 1, NULL, 1),
(22, '060.125.2653', 'Bolsa de papel grado médico. Para esterilizar con gas o vapor. Con tratamiento antibacteriano; con reactivo químico impreso y sistema de apertura. Medidas: 7.5 x 23.0 x 4.0 cm.\r\n', 2, 1000, 'piezas', 1),
(23, '060.155.0304', 'Campos quirúrgicos deshecahbles de 60x35 cm\r\n', 2, 10, 'piezas', 1),
(24, '060.182.0160', 'Cemento .ionomero de vidrio 1. Para cementaciones definitivas.polvo 35g. Solicato de aluminio 95%-97%.acido poliacrilico 3% -5%, liquido 25g. 20ml. Acido poliacrilico 75% acido polibasico 10-15 % \r\n', 6, 1, NULL, 1),
(25, '060.182.0236', 'Cemento dental para uso quirurgico en polvo oxido de zinc\r\n', 7, 1, NULL, 1),
(26, '060.182.1150', 'Protector pulpar  para sellar cavidades dentales. De hidróxido de calcio, compuesto autopolimerizable, dos pastas semilíquidas, base 13 g y catalizador 11 g con bloque de papel para mezclar\r\n', 7, 1, 'juegoApDes', 1),
(27, '060.182.1283', 'Cemento dental para sellar conductos radiculares. Polvo de óxido de zinc y sulfato de calcio (resina) líquido: 7 ml (eugenol)\r\n', 6, 1, NULL, 1),
(28, '060.182.1366', 'Cemento dental. Para uso quirúrgico. De óxido de zinc con endurecedor (polvo) 65 g y eugenol (líquido)  30 ml con gotero de plástico pasta rosa \r\n', 8, 1, NULL, 1),
(29, '060.182.1440', 'Cemento.ionomero de vidrio rastaurativo tipo ii. Para tratamiento restaurativo atraumtatico(tra)restauraciones intermedias.para bases. Para odontologia minimamente invasiva. Tono a3. Polvo granulado radiopaco. 12.5. Vidrio de fluorurosilicato de calcio iantano,. Aluminio recubierto 90%, acido poliacrilico, 10% acido benzoico 0.1.% pigmentos 0.1% líquidos de 8.5.ml (100gr). Agua 55%-65% copolímero de ácido acrílico y ácido maléico, 25-35% acido tartarico 9.1% acido benzoico 0.1% loseta de papel encerado, cucharilla dispensadora, guía de aplicación e instructivo\r\n', 7, 1, 'juego', 1),
(30, '060.189.0015', 'Cepillo dental, para adulto, con mango de plástico y cerdas rectas de nylon 6.12, 100% virgen o poliéste p.b.t. 100% virgen, de puntas redondeadas en 4 hileras, cabeza corta, consistencia mediana\r\n', 1, 1, NULL, 1),
(31, '060.189.0023', 'Cepillo para pulido de amalgamas y profilaxis. De cerdas blancas en forma de copa. Para pieza de mano\r\n', 1, 1, NULL, 1),
(32, '060.189.0056', 'Cepillo para lavado de instrumental con cerdas de fibra vegetal, lechugilla\r\n', 1, 1, NULL, 1),
(33, '060.243.0613', 'Corona canino temporal superior. Medidas no. 4\r\n', 2, 5, 'piezas', 1),
(34, '060.243.0662', 'Corona canino temporal superior. Medidas no. 5\r\n', 2, 5, 'piezas', 1),
(35, '060.272.0021', 'Cucharillas para aplicación tópica de flúor en gel, de vinil atóxico, desechables. Estuche que consta de: 1 par para niños de 4 a 7 años \r\n', 9, 1, NULL, 1),
(36, '060.276.0050', 'Cuñas  de madera, para espacios interdentarios\r\n', 2, 100, 'piezas', 1),
(37, '060.348.0013', 'Ensanchadores de canales no. 10 al 40 \r\n', 1, 1, NULL, 1),
(38, '060.436.0057', 'Gasa seca cortada, de algodón, largo 7.5 cm, ancho 5 cm\r\n', 2, 200, 'piezas', 1),
(39, '060.439.0054', 'Gorro redondo con elastico ajustable al contorno de la cara, de tela no tejida de polipropileno, desechable. Impermeable a la penetracion de liquidos y fluidos; antiestatica y resistente a la tension. Tamaño chico.\r\n', 2, 1, 'pieza', 1),
(40, '060.456.0383', 'Guantes para exploración, ambidiestro, estériles, de látex, desechables, tamaños: chico\r\n', 2, 100, 'piezas', 1),
(41, '060.456.0391', 'Guantes para exploración, ambidiestro, estériles, de látex, desechables, tamaños: mediano\r\n', 2, 100, 'piezas', 1),
(42, '060.456.0409', 'Guantes para exploración, ambidiestro, estériles, de látex, desechables, tamaños: grande\r\n', 2, 100, 'piezas', 1),
(43, '060.456.0623', 'Guantes. de nitrilo o polibutadine-acrylonitrilo libre de látex ambidiestro desechable estéril. Tamaño: Chico.\r\n', 9, 1, NULL, 1),
(44, '060.456.0631', 'Guantes. de nitrilo o polibutadine-acrylonitrilo libre de látex ambidiestro desechable estéril. Tamaño: Mediano.\r\n', 9, 1, NULL, 1),
(45, '060.456.0649', 'Guantes. de nitrilo o polibutadine-acrylonitrilo libre de látex ambidiestro desechable estéril. Tamaño: Grande.\r\n', 9, 1, NULL, 1),
(46, '060.470.0153', 'Hemostáticos absorbibles de colágeno medidas. 2.5 x 5 cm\r\n', 2, 12, 'piezas', 1),
(47, '060.483.0117', 'Hojas para bisturí de acero inoxidable empaque individual, estériles y desechables, números: 12\r\n', 2, 100, 'piezas', 1),
(48, '060.550.2608', 'Jeringa de plástico grado médico, de 5 ml de capacidad, escala graduada en ml, con divisiones de 1.0 ml y subdivisiones de 0.2 y aguja de 20 g y 38 mm de longitud, estéril y desechable\r\n', 1, 1, NULL, 1),
(49, '060.593.0106', 'Loseta de vidrio para batir cemento. Tamaño: 8 x 12 x 0.5 cm\r\n', 1, 1, NULL, 1),
(50, '060.621.0524', 'Cubrebocas para uso en área hospitalaria desechables   de dos capas de tela no tejida, resistente a fluidos, antiestático, hipoalergénico, con bandas o ajuste elástico a la cabeza. Desechable.\r\n', 1, 1, NULL, 1),
(51, '060.622.0010', 'Alginato  para impresión (bolsa con  450 g)\r\n', 10, 1, NULL, 1),
(52, '060.622.0028', 'Yeso piedra para ortodoncia (bolsa con 1 kilo)\r\n', 10, 1, NULL, 1),
(53, '060.622.0044', 'Resina acrilica, autopolimerizable, rosa, polvo.\r\n', 3, 1, NULL, 1),
(54, '060.622.0051', 'Resina acrílica, autopolimerizable, líquida\r\n', 2, 1, 'litro', 1),
(55, '060.622.0143', 'Formocresol para momificación y desvitalización de la pulpa dentaria. De buckley\r\n', 2, 1, '30 ml', 1),
(56, '060.683.0057', 'Paños para exprimir amalgama. De algodón. Forma circular\r\n', 2, 100, 'piezas', 1),
(57, '060.749.0703', 'Pasta para profilaxis dental. Abrasiva. Con abrasivos blandos\r\n', 2, 1, '200 g', 1),
(58, '060.753.0011', 'Puntas de gutapercha para obturación de conductos radiculares. Números: 45 a 80 (de 5 en 5)\r\n', 2, 200, 'piezas', 1),
(59, '060.791.0114-1', 'Resina fotopolimerizable o fotocurable que se activa con la luz visible, para restauración dental, partículas de nanorelleno /1 a 100 nm) o nanohíbrida o microhíbrida, con carga de relleno en un rango del 55% a 86% en peso, para restauración de dientes anteriores y posteriores, las instituciones podrán elegir las variantes de color y composición.\r\n', 11, 1, '4grcolora1', 1),
(60, '060.791.0114-2', 'Resina fotopolimerizable o fotocurable que se activa con la luz visible, para restauración dental, partículas de nanorelleno/1 a 100 nm) o nanohíbrida o microhíbrida, con carga de relleno en un rango del 55% a 86% en peso, para restauración de dientes anteriores y posteriores, las instituciones podrán elegir las variantes de color y composición.\r\n', 11, 1, '4grColora2', 1),
(61, '060.791.0114-3', 'Resina fotopolimerizable o fotocurable que se activa con la luz visible, para restauración dental, partículas de nanorelleno/1 a 100 nm) o nanohíbrida o microhíbrida, con carga de relleno en un rango del 55% a 86% en peso, para restauración de dientes anteriores y posteriores, las instituciones podrán elegir las variantes de color y composición.\r\n', 11, 1, '4grColora3', 1),
(62, '060.797.0019', 'Algodón para uso dental. Medida: 3.8 x 0.8 cm \r\n', 2, 500, 'rollos', 1),
(63, '060.811.0052', 'Hilo dental con cera\r\n', 2, 1, 'rollo-50m', 1),
(64, '060.811.0060', 'Hilo seda dental, sin cera\r\n', 2, 1, 'rollo-50m', 1),
(65, '060.841.0619', 'Sutura seda negra trenzada con aguja, longitud de la hebra 75 cm, calibre de la sutura 3-0, características de la aguja 1/2 círculo ahusada (25-26 mm)\r\n', 5, 12, 'piezas', 1),
(66, '060.842.0246', 'Sutura monofilamento sintética absorvible de copolimero de glicólida 0000\r\n', 2, 12, 'piezas', 1),
(67, '060.889.0158', 'Tiras  de celuloide para conformar restauraciones de resina. Ancho 8 a10 mm, calibre fino\r\n', 2, 50, 'piezas', 1),
(68, '060.889.0208', 'Tiras de lija para pulir restauraciones de resina. Grueso y mediano, tiras dobles\r\n', 2, 150, 'piezas', 1),
(69, '060.904.0100', 'Algodón torundas\r\n', 2, 1, '500g', 1),
(70, '060.910.0011', 'Eyectores para saliva, de plástico, desechable\r\n', 2, 100, 'piezas', 1),
(71, '060.908.0114', 'Tubo para canalización. De látex natural, radiopaco.\r\n', 1, 1, NULL, 1),
(72, '070.426.0363', 'Solución para fijado para sistema manual (la marca de este producto debe ser la misma de la clave 070.817.0550).\r\n', 2, 1, '828 ml', 1),
(73, '070.707.0496', 'Pelicula radiográfica dental adulto, medidas: en un rango de 3 a 3.5 cm por 4 a 4.5 cm caja con 150 películas\r\n', 5, 150, 'peliculas', 1),
(74, '070.707.0504', 'Pelicula radiográfica dental oclusal sensible al azul de 5.7 x 7.6 cms.    \r\n', 5, 25, 'peliculas', 1),
(75, '070.707.0587', 'Pelicula radiográfica dental infantil sencilla sensible al azul de 2.2 x 3.5 cms.\r\n', 5, 100, 'peliculas', 1),
(76, '070.817.0550', 'Solución para revelado para sistema manual de revelador concentrado (la marca de este producto debe ser la misma de la clave 070.426.0363).\r\n', 2, 1, '828 ml', 1),
(77, '060.621.0656', 'Cubrebocas quirúrgico. Cubreboca quirúrgico elaborado con dos capas externas de tela no tejida un filtro intermedio de    polipropileno; plano o plisado; con ajuste nasal moldeable. Resistente a fluidos antiestático hipoalergénico. Con bandas o ajuste elástico entorchado a la cabeza o retroauricular. Desechable. Pieza.\r\n', 1, 1, NULL, 1),
(78, '060.711.0145', 'Testigo indicador integrador para la esterilización por vapor clase v capaz de verificar temperatura y tiempo de esterilización y saturación de vapor durante el proceso de esterilización consta de tira de papel secante sustrato quimico semsible a vapor y recubierto \r\n', 1, 1, NULL, 1),
(79, '060.621.0664', 'Google\r\n', 1, 1, NULL, 1),
(80, '060.621.0665', 'Protector Respiratorio (N95)\r\n', 1, 1, NULL, 1),
(81, '', 'Filtros KN95\r\n', 16, 1, 'Mascarilla', 1),
(82, 'F1012', 'CLORIHIDRATO MEPIVACAINA 3%  \r\n', 5, 50, 'CART', 2),
(83, '010.000.0267.00', 'Lidocaína, epinefrina Solución inyectable al 2% Lidocaína 36 mg. Epinefrina 0.018 mg.\r\n', 12, 50, 'den.1.8 ml', 2),
(84, '010.000.0260.12', 'Lidocaina en gel: Clorhidrato de lídocaina 20 mg\r\n', 2, 1, '30 ml', 2),
(85, '15395', 'Mepivacaina simple: Solucion inyectable 3% \r\n', 12, 50, 'den.1.8 ml', 2),
(86, 'FC0600130', 'SELLADOR DE FOSETAS Y FISURAS FOTOPOLIMERIZABLE DE BAJA VISCOCIDAD, CON APLICADORES O EQUIVALENTES\r\n', 7, 1, NULL, 3),
(87, '060.431.0524', 'FRESA DE CARBURO FORMA REDONDA SSW GW-6R\r\n', 1, 1, NULL, 3),
(88, '060.431.0525', 'FRESA BOLA DIAMANTE 10\r\n', 1, 1, NULL, 3),
(89, 'CLAVE 2', 'FRESA BOLA DIAMANTE 14\r\n', 1, 1, NULL, 3),
(90, 'CLAVE 2', 'FRESA CARBURO #329\r\n', 1, 1, NULL, 3),
(91, 'CLAVE 2', 'FRESA CONO INVERTIDO DIAMANTE #805-12\r\n', 1, 1, NULL, 3),
(92, 'CLAVE 2', 'FRESA CONO INVERTIDO DIAMANTE #805-14\r\n', 1, 1, NULL, 3),
(93, 'CLAVE 2', 'FRESA DE  DIAMANTE DE RUEDA DE CARRO \r\n', 1, 1, NULL, 3),
(94, 'CLAVE 2', 'FRESA DE CARBURO  FISURA 169-L\r\n', 1, 1, NULL, 3),
(95, 'CLAVE 2', 'FRESA DE CARBURO DE BOLA #2\r\n', 1, 1, NULL, 3),
(96, 'CLAVE 2', 'FRESA DE CARBURO DE BOLA #4\r\n', 1, 1, NULL, 3),
(97, 'CLAVE 2', 'FRESA DE CARBURO DE BOLA #8\r\n', 1, 1, NULL, 3),
(98, 'CLAVE 2', 'FRESA DE CARBURO DE BOLA DE  1/2\r\n', 1, 1, NULL, 3),
(99, 'CLAVE 2', 'FRESA DE CARBURO DE BOLA DE 1/4\r\n', 1, 1, NULL, 3),
(100, 'CLAVE 2', 'FRESA DE CARBURO FORMA DE BOLA  NO. 1\r\n', 1, 1, NULL, 3),
(101, 'CLAVE 2', 'FRESA DE CARBURO FORMA DE BOLA  NO. 3\r\n', 1, 1, NULL, 3),
(102, 'CLAVE 2', 'FRESA DE CARBURO FORMA DE BOLA  NO. 5\r\n', 1, 1, NULL, 3),
(103, 'CLAVE 2', 'FRESA DE CARBURO FORMA DE PERA SSW FG 331\r\n', 1, 1, NULL, 3),
(104, 'CLAVE 2', 'FRESA DE CARBURO FORMA DE PERA SSW FG 332\r\n', 1, 1, NULL, 3),
(105, 'CLAVE 2', 'FRESA DE DIAMANTE NO. 2  FORMA DE BOLA\r\n', 1, 1, NULL, 3),
(106, 'CLAVE 2', 'FRESA DE DIAMANTE NO. 34  FORMA DE CONO INV.\r\n', 1, 1, NULL, 3),
(107, 'CLAVE 2', 'FRESA DE DIAMANTE NO. 35  FORMA DE CONO INV.\r\n', 1, 1, NULL, 3),
(108, 'CLAVE 2', 'FRESA DE DIAMANTE NO. 4 FORMA DE BOLA\r\n', 1, 1, NULL, 3),
(109, 'CLAVE 2', 'FRESA DE DIAMANTE NO. 6 FORMA DE BOLA\r\n', 1, 1, NULL, 3),
(110, 'CLAVE 2', 'FRESA DE PERA CARBURO SSW FG-4P \r\n', 1, 1, NULL, 3),
(111, 'CLAVE 2', 'FRESA MULTIHOJAS PARA RESINA DE  12 HOJAS FORMA DE AGUJA 7901/1521-5\r\n', 1, 1, NULL, 3),
(112, 'CLAVE 2', 'FRESA PROFILAXIS ALTA VELOCIDAD\r\n', 1, 1, NULL, 3),
(113, 'CLAVE 2', 'FRESA DE DIAMANTE  PUNTA DE LAPIZ\r\n', 1, 1, NULL, 3),
(114, 'CLAVE 2', 'FRESA QUIRURGICA ZECRYA\r\n', 1, 1, NULL, 3),
(115, 'F0600120', 'ÁCIDO FOSFÓRICO DENTRO DE UN RANGO DE 32 A 37.5%. PRODUCTO TIPO GEL, CON PUNTAS DISPENSADORAS O SIMILAR. \r\n', 11, 1, '3ml', 3),
(116, 'CLAVE 4', 'MICROBRUSH FINO \r\n', 15, 100, 'PZAS', 3),
(117, '060.100.011SS', 'CAMPOS DESECHABLES\r\n', 1, 1, NULL, 3),
(118, 'CLAVE 6', 'LIMA PARA ENDODONCIA 15-40 21MM \r\n', 5, 6, 'PZAS', 3),
(119, 'CLAVE 6', 'LIMA PARA ENDODONCIA TIPO K 45-80 25MM \r\n', 5, 6, 'PZAS', 3),
(120, 'CLAVE 6', 'LIMA PARA ENDODONCIA TIPO K 8\r\n', 5, 6, 'PZAS', 3),
(121, 'CLAVE 7', 'PUNTAS DE GUTAPERCHA, ACCESO FINO FINO\r\n', 5, 120, 'PZAS', 3),
(122, 'CLAVE 7', 'PUNTAS DE GUTAPERCHA, ACCESO EXTRA FINO\r\n', 5, 120, 'PZAS', 3),
(123, 'CLAVE 7', 'PUNTAS DE GUTAPERCHA, ACCESO FINO MEDIO\r\n', 5, 120, 'PZAS', 3),
(124, 'CLAVE 7', 'PUNTAS DE GUTAPERCHA, ACCESO FINO\r\n', 5, 120, 'PZAS', 3),
(125, 'CLAVE 8', 'PUNTAS DE PAPEL ABSORBENTES P/ENDODONCIA 15-45\r\n', 5, 120, 'PZAS', 3),
(126, 'CLAVE 8', 'PUNTAS DE PAPEL ABSORBENTES P/ENDODONCIA 45-80\r\n', 5, 120, 'PZAS', 3),
(129, 'CLAVE 9', 'HEMOSTATICOS ABSORBIBLES DE COLAGENO MEDIDAS 1X1X1\r\n', 2, 12, 'PZAS', 3),
(130, 'CLAVE 10', 'DIQUE DE HULE\r\n', 5, 50, 'PZAS', 3),
(131, 'CLAVE11', 'FRESA  CARBURO FG6SL\r\n', 1, 1, NULL, 3),
(132, '060.066.0906', 'GEL ANTISEPTICO TOPICO A BASE DE ALCHOL ETILICO\r\n', 3, 1, '50ML', 3),
(133, '060.189.0056', 'Cepillo para lavado de instrumental con cerdas de fibra vegetal, lechuguilla\r\n', 1, 1, NULL, 1),
(134, '060.189,0106', 'Cepillo dental infantil, con mango de plástico y cerdas rectas de nylon 6.12, 100% virgen o poliéster p.b.t. 100% virgen, de puntas redondeadas en 3 hileras, cabeza corta, consistencia mediana\r\n', 1, 1, NULL, 1),
(135, '060.189.0304', 'Cepillo para uso quirúrgico, de plástico, de forma rectangular, con dos agarraderas laterales simétricas y cerdas de nylon\r\n', 1, 1, NULL, 1),
(136, '060.196.0065', 'Cera rosa del no. 7, para uso dental.\r\n', 2, 10, 'tabletas', 1),
(137, '060.203.0058', 'Cinta para portamatriz. De amalgama, metálica de 5 mm de longitud\r\n', 2, 12, 'piezas', 1),
(138, '060.203.0066', 'Cinta para portamatriz. De amalgama, metálica de 7 mm de longitud\r\n', 2, 12, 'piezas', 1),
(139, '060.203.0207', 'Cintas para esterilización en vapor a presión. Tamaño: 18 mm x 50 m\r\n', 13, 1, NULL, 1),
(140, '060.219.0068', 'Colorantes reveladores de placas dentobacterianas. Tabletas sin sabor\r\n', 2, 100, 'piezas', 1),
(141, '060.231.0641', 'Bata quirúrgica con puños ajustables y refuerzo en mangas y pecho. Tela no tejida de polipropileno, impermeable a la penetración de líquidos y fluidos; antiestática y resistente a la tensión. Estéril y desechable.  Tamaño grande\r\n', 1, 1, '', 1),
(142, '060.235.0019', 'Copas de hule suave blanco cono\r\n', 2, 12, 'pzas', 1),
(143, '060.243.0027', 'Corona de acero inoxidable preconformada, para reconstrucción de . Primer molar temporal, superior derecho, medidas no. 5\r\n', 2, 5, 'piezas', 1),
(144, '060.243.0035', 'Corona primer molar temporal. Superior derecho. Medidas no. 6\r\n', 7, 5, 'piezas', 1),
(145, '060.243.0043', 'Corona segundo molar temporal, superior derecho, medidas no. 4\r\n', 2, 5, 'piezas', 1),
(146, '060.243.0050', 'Corona segundo molar temporal, superior derecho, medidas no. 5\r\n', 2, 5, 'piezas', 1),
(147, '060.243.0076', 'Corona de acero inoxidable preconformada, . Primer molar temporal, superior izquierda, medidas no. 4\r\n', 2, 5, 'piezas', 1),
(148, '060.243.0084', 'Corona de acero inoxidable preconformadas,  primer molar temporal, superior izquierda, medidas no. 5\r\n', 2, 5, 'piezas', 1),
(149, '060.243.0092', 'Corona primer molar temporal. Superior izquierdo. Medidas no. 6\r\n', 7, 5, 'piezas', 1),
(150, '060.243.0100', 'Corona segundo molar temporal, superior izquierdo, medidas no. 4\r\n', 2, 5, 'piezas', 1),
(151, '060.243.0118', 'Corona segundo molar temporal, superior izquierdo, medidas no. 5\r\n', 2, 5, 'piezas', 1),
(152, '060.243.0126', 'Corona segundo molar temporal. Superior derecho. Medidas no. 6\r\n', 7, 5, 'piezas', 1),
(153, '060.243.0134', 'Corona primer molar temporal. Inferior derecho. Medidas no. 4\r\n', 2, 5, 'piezas', 1),
(154, '060.243.0142', 'Corona primer molar temporal. Inferior derecho. Medidas no. 5\r\n', 2, 5, 'piezas', 1),
(155, '060.243.0159', 'Corona primer molar temporal. Inferior derecho. Medidas no. 6\r\n', 7, 5, 'piezas', 1),
(156, '060.243.0167', 'Corona segundo molar temporal. Inferior derecho. Medidas no. 4\r\n', 2, 5, 'piezas', 1),
(157, '060.243.0175', 'Corona segundo molar temporal. Inferior derecho. Medidas no. 5\r\n', 2, 5, 'piezas', 1),
(158, '060.243.0183', 'Corona segundo molar temporal. Inferior derecho. Medidas no. 6\r\n', 7, 5, 'piezas', 1),
(159, '060.243.0191', 'Corona primer molar temporal, inferior izquierdo. Medidas no. 4\r\n', 2, 5, 'piezas', 1),
(160, '060.243.0209', 'Corona primer molar temporal, inferior izquierdo. Medidas no. 5\r\n', 2, 5, 'piezas', 1),
(161, '060.243.0217', 'Corona primer molar temporal. Inferior izquierdo. Medidas no. 6\r\n', 7, 5, 'piezas', 1),
(162, '060.243.0225', 'Corona segundo molar temporal. Inferior izquierdo. Medidas no. 4\r\n', 2, 5, 'piezas', 1),
(163, '060.243.0233', 'Corona segundo molar temporal. Inferior izquierdo. Medidas no. 5\r\n', 2, 5, 'piezas', 1),
(164, '060.243.0241', 'Corona segundo molar temporal. Inferior izquierdo. Medidas no. 6\r\n', 7, 5, 'piezas', 1),
(165, '060.243.0373', 'Corona incisivo central superior derecho. Medidas no. 1\r\n', 7, 5, 'piezas', 1),
(166, '060.243.0381', 'Corona incisivo central superior derecho. Medidas no. 2\r\n', 7, 5, 'piezas', 1),
(167, '060.243.0399', 'Corona incisivo central. Superior derecho temporal. Medidas no. 3\r\n', 2, 3, 'piezas', 1),
(168, '060.243.0407', 'Corona incisivo central superior izquierdo. Medidas no. 1\r\n', 7, 5, 'piezas', 1),
(169, '060.243.0415', 'Corona incisivo central superior izquierdo. Medidas no. 2\r\n', 7, 5, 'piezas', 1),
(170, '060.243.0423', 'Corona incisivo central. Superior izquierdo temporal. Medidas no. 3\r\n', 2, 5, 'piezas', 1),
(171, '060.243.0431', 'Corona incisivo lateral superior derecho. Medidas no. 1\r\n', 7, 5, 'piezas', 1),
(172, '060.243.0449', 'Corona incisivo lateral superior derecho. Medidas no. 2\r\n', 7, 5, 'piezas', 1),
(173, '060.243.0456', 'Corona incisivo lateral. Superior derecho temporal. Medidas no. 3\r\n', 2, 5, 'piezas', 1),
(174, '060.243.0464', 'Corona incisivo lateral. Superior derecho temporal. Medidas no. 4\r\n', 2, 5, 'piezas', 1),
(175, '060.243.0498', 'Corona incisivo lateral superior izquierdo. Medidas no. 1\r\n', 7, 5, 'piezas', 1),
(176, '060.243.0506', 'Corona incisivo lateral superior izquierdo. Medidas no. 2\r\n', 7, 5, 'piezas', 1),
(177, '060.243.0514', 'Corona incisivo lateral. Superior izquierdo temporal. Medidas no. 3\r\n', 2, 3, 'piezas', 1),
(178, '060.243.0522', 'Corona incisivo lateral. Superior izquierdo temporal. Medidas no. 4\r\n', 2, 3, 'piezas', 1),
(179, '060.243.0571', 'Corona canino temporal superior. Medidas no. 3\r\n', 2, 5, 'piezas', 1),
(180, '060.272.0039', 'Cucharillas para aplicación tópica de flúor en gel, de vinil atóxico, desechables. Estuche que consta de: 1 par para adolescentes\r\n', 9, 1, NULL, 1),
(181, '060.483.0141', 'Hojas para bisturi de acero inoxidable empaque individual, estériles y desechables, números: 15\r\n', 2, 100, 'piezas-den', 1),
(182, '060.491.0018', 'Papel  indicador de contacto oclusal. En tiras, con pegamento en ambas caras\r\n', 14, 15, 'hojas', 1),
(183, '060.189.0106', 'Cepillo dental infantil, con mango de plástico y cerdas rectas de nylon 6.12, 100% virgen o poliéster p.b.t. 100% virgen, de puntas redondeadas en 3 hileras, cabeza corta, consistencia mediana\r\n', 1, 1, NULL, 1),
(184, '060.189.0106', 'Cepillo dental infantil, con mango de plástico y cerdas rectas de nylon 6.12, 100% virgen o poliéster p.b.t. 100% virgen, de puntas redondeadas en 3 hileras, cabeza corta, consistencia mediana\r\n', 1, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sabrinacarp`
--

CREATE TABLE `sabrinacarp` (
  `why` int(11) NOT NULL,
  `paris` int(11) NOT NULL,
  `decode` varchar(256) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `sabrinacarp`
--

INSERT INTO `sabrinacarp` (`why`, `paris`, `decode`) VALUES
(1, 1, '867564325'),
(2, 2, '1234568768'),
(3, 3, '5476878976754'),
(4, 4, '765463256789'),
(5, 5, '5678967567534565'),
(6, 6, '756435768998'),
(7, 7, '86548790765'),
(8, 7, '789788980'),
(9, 8, '8768756563568'),
(10, 8, '8979654354211'),
(11, 9, '098443243687'),
(12, 10, '111111123456'),
(13, 13, '0987846563'),
(14, 13, '9076564535'),
(15, 23, '8885665300'),
(16, 24, '098789675654'),
(17, 35, '6757565434324'),
(18, 38, '5634128756'),
(19, 42, '098875534254');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `selena`
--

CREATE TABLE `selena` (
  `siunavez` int(11) NOT NULL,
  `comolaflor` int(11) NOT NULL,
  `amorprohibido` int(11) NOT NULL,
  `lacarcacha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `selena`
--

INSERT INTO `selena` (`siunavez`, `comolaflor`, `amorprohibido`, `lacarcacha`) VALUES
(1, 1, 1, '2022-05-02'),
(2, 1, 1, '2022-05-06'),
(3, 1, 10, '2022-05-11'),
(4, 1, 1, '2022-05-12'),
(5, 2, 6, '2022-05-09'),
(6, 2, 3, '2022-05-13'),
(7, 2, 7, '2022-05-17'),
(8, 2, 9, '2022-05-18'),
(9, 3, 12, '2022-07-18'),
(10, 3, 11, '2022-07-22'),
(11, 3, 7, '2022-05-23'),
(12, 3, 7, '2022-05-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shawnmendes`
--

CREATE TABLE `shawnmendes` (
  `imagination` int(11) NOT NULL,
  `mercy` varchar(20) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `shawnmendes`
--

INSERT INTO `shawnmendes` (`imagination`, `mercy`) VALUES
(1, 'normal'),
(2, 'extraordinaria'),
(3, 'salida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `straykids`
--

CREATE TABLE `straykids` (
  `maniac` int(11) NOT NULL,
  `easy` varchar(15) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `straykids`
--

INSERT INTO `straykids` (`maniac`, `easy`) VALUES
(1, 'administrador'),
(2, 'operativo'),
(3, 'visitante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taylorswift`
--

CREATE TABLE `taylorswift` (
  `red` int(11) NOT NULL,
  `lover` varchar(40) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `taylorswift`
--

INSERT INTO `taylorswift` (`red`, `lover`) VALUES
(1, 'Cuadro Basico'),
(2, 'Anestesicos'),
(3, 'Material de curacion FCB ');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `tracklist`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `tracklist` (
`villabb` int(11)
,`isaza` varchar(20)
,`simon` varchar(77)
,`easy` varchar(15)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `tracklist`
--
DROP TABLE IF EXISTS `tracklist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tracklist`  AS SELECT `morat`.`villabb` AS `villabb`, `morat`.`isaza` AS `isaza`, concat(`morat`.`simon`,' ',`morat`.`martin`,' ',`morat`.`nath`) AS `simon`, `straykids`.`easy` AS `easy` FROM (`morat` join `straykids` on(`morat`.`cuandonadieve` = `straykids`.`maniac`))  ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bigtimerush`
--
ALTER TABLE `bigtimerush`
  ADD PRIMARY KEY (`kendall`),
  ADD KEY `id_dotacion` (`carlos`);

--
-- Indices de la tabla `camilacabello`
--
ALTER TABLE `camilacabello`
  ADD PRIMARY KEY (`ohnana`);

--
-- Indices de la tabla `glee`
--
ALTER TABLE `glee`
  ADD PRIMARY KEY (`sue`),
  ADD KEY `rol` (`becky`);

--
-- Indices de la tabla `juanga`
--
ALTER TABLE `juanga`
  ADD PRIMARY KEY (`asifue`),
  ADD KEY `id_insumo` (`querida`);

--
-- Indices de la tabla `maroonv`
--
ALTER TABLE `maroonv`
  ADD PRIMARY KEY (`maps`),
  ADD KEY `clave` (`sugar`),
  ADD KEY `lote` (`animals`);

--
-- Indices de la tabla `morat`
--
ALTER TABLE `morat`
  ADD PRIMARY KEY (`villabb`),
  ADD KEY `rol` (`cuandonadieve`);

--
-- Indices de la tabla `oliviarodrigo`
--
ALTER TABLE `oliviarodrigo`
  ADD PRIMARY KEY (`brutal`),
  ADD KEY `presentacion` (`good4u`),
  ADD KEY `categoria` (`favoritecrime`);

--
-- Indices de la tabla `sabrinacarp`
--
ALTER TABLE `sabrinacarp`
  ADD PRIMARY KEY (`why`),
  ADD KEY `id_insumo` (`paris`);

--
-- Indices de la tabla `selena`
--
ALTER TABLE `selena`
  ADD PRIMARY KEY (`siunavez`),
  ADD KEY `operativo` (`comolaflor`),
  ADD KEY `insumo` (`amorprohibido`);

--
-- Indices de la tabla `shawnmendes`
--
ALTER TABLE `shawnmendes`
  ADD PRIMARY KEY (`imagination`);

--
-- Indices de la tabla `straykids`
--
ALTER TABLE `straykids`
  ADD PRIMARY KEY (`maniac`);

--
-- Indices de la tabla `taylorswift`
--
ALTER TABLE `taylorswift`
  ADD PRIMARY KEY (`red`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bigtimerush`
--
ALTER TABLE `bigtimerush`
  MODIFY `kendall` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `camilacabello`
--
ALTER TABLE `camilacabello`
  MODIFY `ohnana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `juanga`
--
ALTER TABLE `juanga`
  MODIFY `asifue` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `oliviarodrigo`
--
ALTER TABLE `oliviarodrigo`
  MODIFY `brutal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT de la tabla `sabrinacarp`
--
ALTER TABLE `sabrinacarp`
  MODIFY `why` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `selena`
--
ALTER TABLE `selena`
  MODIFY `siunavez` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `shawnmendes`
--
ALTER TABLE `shawnmendes`
  MODIFY `imagination` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `taylorswift`
--
ALTER TABLE `taylorswift`
  MODIFY `red` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bigtimerush`
--
ALTER TABLE `bigtimerush`
  ADD CONSTRAINT `bigtimerush_ibfk_1` FOREIGN KEY (`carlos`) REFERENCES `shawnmendes` (`imagination`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `juanga`
--
ALTER TABLE `juanga`
  ADD CONSTRAINT `juanga_ibfk_1` FOREIGN KEY (`querida`) REFERENCES `oliviarodrigo` (`brutal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `maroonv`
--
ALTER TABLE `maroonv`
  ADD CONSTRAINT `maroonv_ibfk_1` FOREIGN KEY (`animals`) REFERENCES `bigtimerush` (`kendall`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `maroonv_ibfk_2` FOREIGN KEY (`sugar`) REFERENCES `oliviarodrigo` (`brutal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `morat`
--
ALTER TABLE `morat`
  ADD CONSTRAINT `morat_ibfk_1` FOREIGN KEY (`cuandonadieve`) REFERENCES `straykids` (`maniac`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `oliviarodrigo`
--
ALTER TABLE `oliviarodrigo`
  ADD CONSTRAINT `oliviarodrigo_ibfk_1` FOREIGN KEY (`favoritecrime`) REFERENCES `taylorswift` (`red`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `oliviarodrigo_ibfk_2` FOREIGN KEY (`good4u`) REFERENCES `camilacabello` (`ohnana`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sabrinacarp`
--
ALTER TABLE `sabrinacarp`
  ADD CONSTRAINT `sabrinacarp_ibfk_1` FOREIGN KEY (`paris`) REFERENCES `oliviarodrigo` (`brutal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `selena`
--
ALTER TABLE `selena`
  ADD CONSTRAINT `selena_ibfk_1` FOREIGN KEY (`comolaflor`) REFERENCES `morat` (`villabb`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `selena_ibfk_2` FOREIGN KEY (`amorprohibido`) REFERENCES `maroonv` (`maps`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
