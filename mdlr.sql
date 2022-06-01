-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 01-06-2022 a las 14:11:16
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mdlr`
--
CREATE DATABASE IF NOT EXISTS `mdlr` DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci;
USE `mdlr`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE IF NOT EXISTS `comentarios` (
  `id_usuario` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `id_comentario` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(140) COLLATE latin1_spanish_ci DEFAULT NULL,
  `id_producto` varchar(15) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_comentario`),
  KEY `comentarios_ibfk_2` (`id_comentario`),
  KEY `comentarios_ibfk_3` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `marca` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `nombre` varchar(90) COLLATE latin1_spanish_ci NOT NULL,
  `precio` float NOT NULL DEFAULT '0',
  `id` varchar(15) COLLATE latin1_spanish_ci NOT NULL,
  `parte` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `sexo` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `descripcion` varchar(5000) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'camiseta tech marker para hombre', 240, 'p001', 'camisetas', 'hombre', 'Camiseta Off-White de manga corta y cuello redondo. Detalle de logo en el pecho y dibujo en la espalda. Corte ajustado, manga corta y cuello redondo. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camiseta Bolt Arrow para hombre', 240, 'p002', 'camisetas', 'hombre', 'Camiseta Off-White de manga corta y cuello redondo. Detalle de logo en el pecho y gráfico de flechas de perno en la espalda. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camiseta Tech Marker con doble manga para hombre', 265, 'p003', 'camisetas', 'hombre', 'Camiseta de Off-White con estampado en contraste en la parte delantera y trasera. Corte relajado, manga larga doble y cuello redondo. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camiseta logo rotulador para hombre', 250, 'p004', 'camisetas', 'hombre', 'Camiseta de Off-White con logo estampado en la parte delantera y logo de flechas marcadoras en la espalda. Corte ajustado, manga corta y cuello redondo. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camiseta 90s Hand para hombre', 240, 'p005', 'camisetas', 'hombre', 'Camiseta de Off-White con logo estampado en la parte delantera y trasera. Corte oversize, manga corta y cuello redondo. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camiseta logo rotulador para hombre gris', 250, 'p006', 'camisetas', 'hombre', 'Camiseta Off-White de manga corta y cuello redondo. Detalle de logo en el pecho y dibujo en la espalda. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camiseta para hombre Apple Snake manga', 290, 'p007', 'camisetas', 'hombre', 'Camiseta de Off-White con motivo de manzana impreso en la parte delantera y trasera con un gráfico de serpiente de dibujos animados. corte holgado, manga larga y cuello falso. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camiseta Blue Marker para hombre', 250, 'p008', 'camisetas', 'hombre', 'Camiseta de Off-White. Estampado gráfico de logo frontal y flechas traseras. Corte ajustado, manga corta y cuello redondo. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camiseta Caravaggio Boy para hombre', 250, 'p009', 'camisetas', 'hombre', 'Camiseta de Off-White con logo frontal y flechas estampadas en la espalda. Presenta el motivo “Niño con una canasta de frutas” del cuadro de Caravaggio. Corte regular, manga corta y cuello redondo. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camiseta Spray Cans para hombre', 250, 'p010', 'camisetas', 'hombre', 'Camiseta de Off-White. Estampado de logo frontal y flechas traseras. Corte ajustado, manga corta y cuello redondo. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camiseta Red Marker para hombre', 250, 'p011', 'camisetas', 'hombre', 'Camiseta de Off-White. Estampado gráfico de logo frontal y flechas traseras. Corte ajustado, manga corta y cuello redondo. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camiseta Caravaggio Boy para hombre', 250, 'p012', 'camisetas', 'hombre', 'Camiseta de Off-White con logo frontal y flechas estampadas en la espalda. Presenta el motivo “Niño con una canasta de frutas” del cuadro de Caravaggio. Corte oversize, manga corta y cuello redondo. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camiseta logo Psych Type para hombre', 240, 'p013', 'camisetas', 'hombre', 'Camiseta de Off-White con logo estampado en la parte delantera y trasera. Corte oversize, manga corta y cuello redondo. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camiseta para hombre Apple Snake', 260, 'p014', 'camisetas', 'hombre', 'Camiseta de Off-White con motivo de manzana impreso en la parte delantera y trasera con un gráfico de serpiente de dibujos animados. corte holgado, manga larga y cuello falso. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camiseta de rejilla para hombre', 285, 'p015', 'camisetas', 'hombre', 'Short sleeve tee by Off-White in white mesh featuring logo print on chest and back, cuffs and round neck in contrast blue. Fits true to size, choose your usual size. Standard sizing. Material: 100% polyester.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camiseta para hombre vintage Paint', 340, 'p016', 'camisetas', 'hombre', 'Camiseta Off-White con logo y motivo de salpicaduras de pintura impresos en la parte delantera y trasera. Corte ajustado, manga corta y cuello redondo. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camiseta para hombre Pascal Slim', 250, 'p017', 'camisetas', 'hombre', 'Camiseta color hueso. Con cuello redondo, manga corta, logo y estampado gráfico en la parte delantera y trasera. Dobladillo recto. Ajustado. Fabricado en Portugal. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camiseta para hombre Running Wolves', 240, 'p018', 'camisetas', 'hombre', 'Camiseta de Off-White con lobos corriendo y motivo de logo impreso en la parte delantera y trasera. Corte regular, manga corta y cuello redondo. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camiseta para hombre Offf Graff', 240, 'p019', 'camisetas', 'hombre', 'Camiseta de Off-White con motivo de logo impreso en la parte delantera y logo estilo graffiti en la espalda. Corte ajustado, manga corta y cuello redondo. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camiseta para hombre Apple black', 340, 'p020', 'camisetas', 'hombre', 'Camiseta de Off-White con motivo de manzana impreso en la parte delantera y trasera con el logo de flechas. Corte ajustado, manga corta y cuello redondo. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camiseta para hombre World Caterpilla', 220, 'p021', 'camisetas', 'hombre', 'Camiseta de Off-White con motivo de logo de oruga impreso en la parte delantera y logo de flechas en la espalda. Corte ajustado, manga corta y cuello redondo. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camiseta White Marker para hombre blanco', 220, 'p022', 'camisetas', 'hombre', 'Camiseta de Off-White con logo estampado en la parte delantera y logo de flechas marcadoras en la espalda. Corte ajustado, manga corta y cuello redondo. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camiseta Spray Arrows para hombre', 250, 'p023', 'camisetas', 'hombre', 'Camiseta Off-White con logo frontal y estampado de flechas en aerosol en la espalda. Corte ceñido, manga corta y cuello redondo. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camiseta Spray Caravaggio', 220, 'p024', 'camisetas', 'hombre', 'Camiseta de Off-White con logo frontal y flechas estampadas en la espalda. Presenta el motivo “Niño con una canasta de frutas” del cuadro de Caravaggio. Corte oversize, manga corta y cuello redondo. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Sudadera con capucha y cremallera Elves para hombre', 420, 'p025', 'sudaderas', 'hombre', 'Sudadera con capucha de Off-White con estampado de elfos y elfos delanteros y estampado de elfos en la espalda. Ajuste oversize, manga larga y capucha con cordón. Dos bolsillos delanteros y cierre de cremallera. Hecho en Italia. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Sudadera con capucha de desmaterialización para hombre', 420, 'p026', 'sudaderas', 'hombre', 'Sudadera con capucha de Off-White con motivo de oruga del mundo impreso en el pecho y letras en la espalda. Ajuste oversize, manga larga y capucha con cordón. Bolsillo canguro frontal. Hecho en Italia. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Sudadera con capucha Pascal para hombre', 420, 'p027', 'sudaderas', 'hombre', 'Sudadera con capucha de Off-White con logo frontal y estampado Pascal en la espalda. Ajuste oversize, manga larga y capucha con cordón. Bolsillo canguro frontal. Hecho en Italia. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Sudadera con capucha Running Wolves para hombre', 420, 'p028', 'sudaderas', 'hombre', 'Sudadera con capucha de Off-White con lobos corriendo y motivo del logo impreso en la parte delantera y trasera. Ajuste oversize, manga larga y capucha con cordón. Bolsillo canguro frontal. Hecho en Italia. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Sudadera con capucha para hombres', 420, 'p029', 'sudaderas', 'hombre', 'Sudadera con capucha de Off-White con motivo de logo impreso en el pecho y la espalda. Ajuste oversize, manga larga y capucha con cordón. Bolsillo canguro frontal. Hecho en Italia. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Sudadera con capucha y cremallera Vintage Paint para hombre', 555, 'p030', 'sudaderas', 'hombre', 'Sudadera con capucha de Off-White con logo y motivo de salpicaduras de pintura impresos en la parte delantera y trasera. Ajuste oversize, manga larga y capucha con cordón. Dos bolsillos delanteros y cierre de cremallera con tirador de clip. Hecho en Italia. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Sudadera con capucha Elf para hombre', 400, 'p031', 'sudaderas', 'hombre', 'Sudadera con capucha de Off-White con elfo y logo en la parte delantera y estampado gráfico en la espalda. Ajuste oversize, manga larga y capucha con cordón. Bolsillo canguro frontal. Hecho en Italia. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Chaqueta camo para hombre', 960, 'p032', 'sudaderas', 'hombre', 'Chaqueta de Off-White con manga larga, cierre con tira de velcro en el cuello alzado, cierre con cremallera en la parte delantera. Patrón de camuflaje con logo en contraste estampado por todas partes. Bolsillos con solapa en el pecho. Parche con logo negro cosido en la parte delantera. Hecho en Italia. Ajuste holgado. Talla normal, elige tu talla habitual. Tallaje estándar. Composición: 100% poliéster.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Sudadera con capucha Double Marker para hombre', 470, 'p033', 'sudaderas', 'hombre', 'Sudadera con capucha de Off-White. Logotipo de mano estampado en el pecho y logotipo de flechas en la espalda, bolsillo frontal tipo canguro y capucha fija con cordón ajustable. Ajustado. Fabricado en Portugal. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Sudadera con capucha con logo de marcador para hombre', 430, 'p034', 'sudaderas', 'hombre', 'Sudadera con capucha de Off-White. Logotipo de mano estampado en el pecho y logotipo de flechas en la espalda, bolsillo frontal tipo canguro y capucha fija con cordón ajustable. Ajustado. Fabricado en Portugal. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Sudadera con capucha con logo de marcador para hombre rosa', 430, 'p035', 'sudaderas', 'hombre', 'Sudadera con capucha de Off-White. Logotipo de mano impreso en el pecho y logotipo de flechas marcadoras en la espalda. Regular fit, manga larga con estampado diag, bolsillo canguro y capucha fija con cordón ajustable. Fabricado en Portugal. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Sudadera con capucha Apple para hombre', 430, 'p036', 'sudaderas', 'hombre', 'Sudadera con capucha de Off-White con motivo de manzana impreso en la parte delantera y trasera con el logo de flechas. Ajuste oversize, manga larga y capucha con cordón. Bolsillo canguro frontal. Hecho en Italia. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Sudadera para hombre San Girolamo', 405, 'p037', 'sudaderas', 'hombre', 'Sudadera de Off-White. Cuadro de Caravaggio impreso en la parte delantera y logo de flechas en la espalda. Corte oversize, manga larga con estampado diag y cuello redondo. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Sudadera con capucha para hombre San Girolamo slim', 430, 'p038', 'sudaderas', 'hombre', 'Sudadera con capucha de Off-White. Imagen de Caravaggio impresa en la parte delantera y logo de flechas en la espalda. Corte entallado, manga larga con estampado de diag y capucha con cordón. Bolsillo canguro frontal. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Sudadera Swimming Man slim para hombre', 460, 'p039', 'sudaderas', 'hombre', 'Sudadera de Off-White. Estampado de logo de Swimming Man en contraste en toda la superficie. Corte ceñido, manga larga y cuello redondo. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Sudadera Swimming Man slim para hombre blanca', 460, 'p040', 'sudaderas', 'hombre', 'Sudadera de Off-White. Estampado de logo de Swimming Man en contraste en toda la superficie. Corte ceñido, manga larga y cuello redondo. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Sudadera para Hombre Ángel Caravaggio', 405, 'p041', 'sudaderas', 'hombre', 'Sudadera ángel de Caravaggio de Off-White. Logotipo y diseño de Caravaggio estampado en la parte delantera y trasera. Corte oversize, manga larga y cuello redondo. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Sudadera con Capucha Arrows Skeleton para Hombre', 440, 'p042', 'sudaderas', 'hombre', 'Sudadera con capucha de Off-White con motivo de logo impreso en el pecho y la espalda. Ajuste oversize, manga larga y capucha con cordón. Bolsillo canguro frontal. Hecho en Italia. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Sudadera con capucha Shaking Hands para hombre', 450, 'p043', 'sudaderas', 'hombre', 'Sudadera con capucha para hombre de Off-White. Logotipo frontal estampado y diseño de flechas de manos temblorosas en la espalda. Corte oversize, mangas largas estampadas y bajo y puños elásticos. Capucha ajustable y bolsillo canguro frontal. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Sudadera con capucha Trellis Worker para hombre', 435, 'p044', 'sudaderas', 'hombre', 'Sudadera con capucha para hombre de Off-White. Bolsillo canguro y capucha ajustable con cordones. Corte oversize, manga larga. Estampados en contraste delante y detrás. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camisa damero floral para hombre', 395, 'p045', 'camisas', 'hombre', 'Camisa de manga corta de Off-White. Presenta cuello de bolos, cierre de botones en la parte delantera y estampado floral sobre cuadros blancos y negros. Ajuste holgado. Hecho en Italia. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Material: 100% viscosa.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camisa de cuadros Arrows para hombre', 510, 'p046', 'camisas', 'hombre', 'Camisa de manga larga de Off-White. Presenta cuello en punta, cierre con botones en la parte delantera, bolsillos en el pecho y logo de flechas estampado en la espalda. Hecho en Italia. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camisa de cuadros Arrows para hombre negra', 510, 'p047', 'camisas', 'hombre', 'Camisa de manga larga de Off-White. Presenta cuello en punta, cierre con botones en la parte delantera, bolsillos en el pecho y logo de flechas estampado en la espalda. Hecho en Italia. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Camisa Wet Floor para Hombre', 570, 'p048', 'camisas', 'hombre', 'Camisa de hombre de Off-White. Cierre frontal con botones y diseño estampado. Corte oversize, manga larga. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Material: 100% algodón y poliéster.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Pantalón de chándal para hombre', 425, 'p049', 'pantalones', 'hombre', 'Pantalón de jogging de Off-White con logo Swimming Man bordado en contraste en la parte delantera. Diseño de tres bolsillos, cintura con cordón y puños elásticos en los tobillos. Hecho en Italia. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Pantalón de chándal camo para hombre', 545, 'p050', 'pantalones', 'hombre', 'Pantalón de jogging de Off-White con estampado del logo Swimming Man en contraste sobre estampado de camuflaje. Diseño de tres bolsillos, cintura con cordón y puños elásticos en los tobillos. Hecho en Italia. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Pantalón corto para hombre', 495, 'p051', 'pantalones', 'hombre', 'Pantalones cortos de vestir de Off-White. Diseñado con cintura elástica con trabillas, cierre de cremallera y botón en la parte delantera, dos bolsillos laterales con abertura y dos bolsillos traseros de ribete. Diseño a medida, parche con logo frontal. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% lana virgen.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Pantalón de vestir para hombre', 690, 'p052', 'pantalones', 'hombre', 'Pantalón de vestir negro blanco roto con bolsillos laterales con cremallera y dos bolsillos traseros con abertura. Detalle de parche con logo. Cintura media, largo regular y corte ceñido. Hecho en Italia. Se ajusta a la talla real, elige tu talla normal. Tallaje italiano. Composición: 55% poliéster, 43% lana virgen, 2% elastano.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Swimming Man Logo Joggers for Men', 455, 'p053', 'pantalones', 'hombre', 'Pantalón de jogging de Off-White con estampado del logo Swimming Man en contraste. Diseño de tres bolsillos, cintura con cordón y puños en los tobillos. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Swimming Man Logo Shorts for Men', 425, 'p054', 'pantalones', 'hombre', 'Pantalones cortos de Off- con estampado de logo Swimming Man en contraste. Diseño de tres bolsillos, cintura con cordón y bajo sin rematar. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Cargo Shorts for Men', 625, 'p055', 'pantalones', 'hombre', 'Pantalones cortos de Off-White. Con estampado de logo de hombre de natación frontal. Perneras anchas, bolsillos multifuncionales con botones. Cierre frontal con botón y cremallera con detalle de clip. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Composición: 79% algodón, 21% poliamida.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Marker Logo Shorts for Men', 300, 'p056', 'pantalones', 'hombre', 'Shorts de Off-White con detalle de logo blanco en la parte delantera y estampado multicolor en la espalda. Diseño de tres bolsillos, cintura con cordón y bajo sin rematar. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Logo Shorts for Men', 310, 'p057', 'pantalones', 'hombre', 'Shorts de Off-White con detalle de logo de nadador blanco bordado en la parte delantera. Diseño de tres bolsillos, cintura con cordón y bajo sin rematar. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Belted Jeans for Men', 490, 'p058', 'pantalones', 'hombre', 'Vaqueros de entrepierna baja de Off-White. Cuenta con diseño de cinco bolsillos, cinturón con cinta industrial, detalle de etiqueta y corte ajustado. Se ajusta a la talla real, elige tu talla normal. Talla de jeans para hombre. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Marker Logo Trousers for Men', 390, 'p059', 'pantalones', 'hombre', 'Pantalón de jogging de Off-White con detalle de logo blanco en la parte delantera y estampado multicolor en la espalda. Diseño de tres bolsillos, cintura con cordón y puños elásticos. Se ajusta a la talla real, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('off-white', 'Pantalones cargo de nailon para hombre', 885, 'p060', 'pantalones', 'hombre', 'Pantalones cargo de corte slim de Off-White. Con la flecha de la firma y el logo de OFF en las perneras traseras. Puños ceñidos, bolsillos multifuncionales, bolsillos con cremallera y detalle de cierre de clip utilitario en la pierna. Se ajusta a la talla real, elige tu talla normal. Talla de jeans para hombre. Composición: 100% algodón y poliamida.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Camisa de flores para hombre', 600, 'p061', 'camisas', 'hombre', 'Camisa de manga corta de Casablanca con estampado integral con motivo de flores en la espalda. Cuello extendido y cierre frontal con botón de esmalte oculto. Ajuste holgado. Fabricado en Francia. Se ajusta a la talla real. Consigue tu talla habitual. Tallaje estándar. Material: 100% seda.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Camisa Tropical para Hombre', 600, 'p062', 'camisas', 'hombre', 'Camisa de manga corta de Casablanca con estampado tropical integral. Cuello abierto, bolsillo en el pecho y cierre frontal con botones ocultos. Ajuste holgado. Fabricado en Francia. Se ajusta a la talla real. Consigue tu talla habitual. Tallaje estándar. Material: 100% lino.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Camisa Tropical para Hombre azul', 600, 'p063', 'camisas', 'hombre', 'Camisa de manga corta de Casablanca con estampado tropical integral. Cuello abierto, bolsillo en el pecho y cierre frontal con botones ocultos. Ajuste holgado. Fabricado en Francia. Se ajusta a la talla real. Consigue tu talla habitual. Tallaje estándar. Material: 100% lino.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Camisa Tropical para Hombre rosa', 600, 'p064', 'camisas', 'hombre', 'Camisa de manga corta de Casablanca con estampado tropical integral. Cuello abierto, bolsillo en el pecho y cierre frontal con botones ocultos. Ajuste holgado. Fabricado en Francia. Se ajusta a la talla real. Consigue tu talla habitual. Tallaje estándar. Material: 100% lino.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Chaqueta vaquera Lucid Dreams para hombre', 495, 'p065', 'camisas', 'hombre', 'Chaqueta vaquera Casablanca con cuello extendido clásico, bolsillos de parche inspirados en la ropa de trabajo, puños de banda delgada y botones dorados con el logo grabado. Impresión multicolor completa. Corte entallado recto. Talla normal, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Camisa Kamehamea para hombre', 650, 'p066', 'camisas', 'hombre', 'Camisa de manga larga de Casablanca con estampado integral con motivo del logo en la espalda. Cuello extendido y cierre frontal con botones ocultos. Forma relajada. Hecho en Italia. Se ajusta a la talla real. Consigue tu talla habitual. Tallaje estándar. Material: 100% seda.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Chaqueta vaquera Huakai Beach para hombre', 495, 'p067', 'camisas', 'hombre', 'Chaqueta vaquera Casablanca con cuello extendido clásico, bolsillos de parche inspirados en la ropa de trabajo, puños de banda delgada y botones dorados con el logo grabado. Impresión de playa Huakai completa. Corte entallado recto. Talla normal, elige tu talla habitual. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Camiseta con icono del club de tenis para hombre', 130, 'p068', 'camisetas', 'hombre', 'Camiseta Casablanca de cuello redondo y manga corta. Presenta estampado gráfico frontal. Ajuste regular. Fabricado en el Reino Unido. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Material: 100% algodón orgánico.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Camiseta Hibiscus para hombre', 120, 'p069', 'camisetas', 'hombre', 'Camiseta Casablanca de cuello redondo y manga corta. Presenta estampado gráfico frontal. Ajuste regular. Fabricado en el Reino Unido. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Material: 100% algodón orgánico.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Camiseta School Of Beautiful para hombre', 120, 'p070', 'camisetas', 'hombre', 'Camiseta Casablanca de cuello redondo y manga corta. Presenta estampado gráfico frontal. Ajuste regular. Fabricado en el Reino Unido. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Material: 100% algodón orgánico.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Camiseta de Tennis Club Island para hombre', 120, 'p071', 'camisetas', 'hombre', 'Camiseta Casablanca de cuello redondo y manga corta. Presenta estampado gráfico frontal. Ajuste regular. Fabricado en el Reino Unido. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Material: 100% algodón orgánico.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Camiseta con icono del club de tenis para hombre rosa', 130, 'p072', 'camisetas', 'hombre', 'Camiseta Casablanca de cuello redondo y manga corta. Presenta estampado gráfico frontal. Ajuste regular. Fabricado en el Reino Unido. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Material: 100% algodón orgánico.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Camiseta de Hawaii para hombre', 120, 'p073', 'camisetas', 'hombre', 'Camiseta Casablanca de cuello redondo y manga corta en contraste verde. Presenta estampado gráfico frontal. Ajuste regular. Fabricado en el Reino Unido. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Material: 100% algodón orgánico.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Camiseta Mountain Tennis Club para hombre', 155, 'p074', 'camisetas', 'hombre', 'Camiseta Casablanca de cuello redondo y manga corta. Presenta estampado gráfico en el pecho y la espalda. Ajuste regular. Fabricado en el Reino Unido. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Material: 100% algodón orgánico.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Pantalones deportivos Casa Hawaii para hombre', 485, 'p075', 'pantalones', 'hombre', 'Pantalones de Casablanca con cinturilla elástica con cierre de cordón. Bolsillos de parche laterales y traseros. Detalles de cinta bordada lateral. Corte recto. Se ajusta a la talla real. Consigue tu talla habitual. Tallaje estándar. Material: 100% algodón orgánico.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Laurel Shorts para hombre', 250, 'p076', 'pantalones', 'hombre', 'Pantalón corto de Casablanca con cinturilla elástica con cierre de cordón. Bolsillos de parche laterales y traseros. Detalle de parche con logo. Fabricado en el Reino Unido. Se ajusta a la talla real. Consigue tu talla habitual. Tallaje estándar. Material: 100% algodón orgánico.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Shorts de tenis para hombre', 285, 'p077', 'pantalones', 'hombre', 'Pantalón corto de Casablanca con cinturilla elástica con cierre de cordón. Bolsillos de parche laterales y traseros. Detalle bordado del club de tenis. Fabricado en el Reino Unido. Se ajusta a la talla real. Consigue tu talla habitual. Tallaje estándar. Material: 100% algodón orgánico.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Shorts de tenis para hombre blancos', 285, 'p078', 'pantalones', 'hombre', 'Pantalón corto de Casablanca con cinturilla elástica con cierre de cordón. Bolsillos de parche laterales y traseros. Detalle bordado del club de tenis. Fabricado en el Reino Unido. Se ajusta a la talla real. Consigue tu talla habitual. Tallaje estándar. Material: 100% algodón orgánico.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Pantalones Rio para hombre', 470, 'p079', 'pantalones', 'hombre', 'Pantalón de vestir con pliegues en la parte delantera de Casablanca, tiro medio, cierre de gancho y cremallera. Estilo de tres bolsillos. Puños doblados, corte holgado. Talla normal, elige tu talla habitual. Tamaño estándar. Material: 100% lana virgen.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Shorts de baño para hombres', 150, 'p080', 'pantalones', 'hombre', 'Shorts de baño de Casablanca con bolsillos laterales y cinturilla elástica con cierre de cordón. Detalle de parche de goma con logo. Forro de malla. Fabricado en el Reino Unido. Se ajusta a la talla real. Consigue tu talla habitual. Tallaje estándar. Material: 100% poliéster.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Shorts estampados para hombre rosas', 580, 'p081', 'pantalones', 'hombre', 'Pantalón corto de Casablanca con estampado de rayas y cinturilla elástica con cierre de cordón. Forro de poliéster. Ajuste holgado. Fabricado en Francia. Se ajusta a la talla real. Consigue tu talla habitual. Tallaje estándar. Material: 100% seda.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Shorts estampados para hombre', 580, 'p082', 'pantalones', 'hombre', 'Pantalón corto de Casablanca con estampado de rayas y cinturilla elástica con cierre de cordón. Forro de poliéster. Ajuste holgado. Fabricado en Francia. Se ajusta a la talla real. Consigue tu talla habitual. Tallaje estándar. Material: 100% seda.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Sudadera Laurel para hombre burdeos', 285, 'p083', 'sudaderas', 'hombre', 'Sudadera de manga larga de Casablanca con estampado gráfico en la parte delantera y parche con el logo en la manga. Fabricado en Inglaterra Se ajusta a la talla real. Consigue tu talla habitual. Talla estándar.Material: 100% algodón orgánico.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Sudadera Laurel para hombre', 285, 'p084', 'sudaderas', 'hombre', 'Sudadera de manga larga de Casablanca con estampado gráfico en la parte delantera y parche con el logo en la manga. Fabricado en Inglaterra Se ajusta a la talla real. Consigue tu talla habitual. Talla estándar.Material: 100% algodón orgánico.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Sudadera con capucha Laurel para hombre', 375, 'p085', 'sudaderas', 'hombre', 'Sudadera de manga larga de Casablanca con capucha con cordón, bolsillo canguro y motivo del logo bordado en la parte delantera. Ajuste regular. Hecho en Inglaterra. Se ajusta a la talla real. Consigue tu talla habitual. Tallaje estándar. Material: 100% algodón orgánico.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Sudadera con capucha para hombres verde', 350, 'p086', 'sudaderas', 'hombre', 'Sudadera de manga larga de Casablanca con capucha con cordón, bolsillo canguro y mensaje bordado en la parte delantera. Ajuste regular. Hecho en Inglaterra. Se ajusta a la talla real. Consigue tu talla habitual. Tallaje estándar. Material: 100% algodón orgánico.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Sudadera con capucha para hombres azul', 350, 'p087', 'sudaderas', 'hombre', 'Sudadera de manga larga de Casablanca con capucha con cordón, bolsillo canguro y mensaje bordado en la parte delantera. Ajuste regular. Hecho en Inglaterra. Se ajusta a la talla real. Consigue tu talla habitual. Tallaje estándar. Material: 100% algodón orgánico.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('casablanca', 'Sudadera para hombre azul', 350, 'p088', 'sudaderas', 'hombre', 'Sudadera de manga larga de Casablanca con gráfico frontal. Ajuste regular. Hecho en Inglaterra. Se ajusta a la talla real. Consigue tu talla habitual. Tallaje estándar. Material: 100% algodón orgánico.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('stussy', 'Camiseta con Texto para Hombre naranja', 50, 'p089', 'camisetas', 'hombre', 'Camiseta Stussy. Cuenta con impresión de texto en la parte delantera y trasera. Talla normal, elige tu talla habitual. Tamaño estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('stussy', 'Camiseta con Texto para Hombre blanca', 50, 'p090', 'camisetas', 'hombre', 'Camiseta Stussy. Cuenta con impresión de texto en la parte delantera y trasera. Talla normal, elige tu talla habitual. Tamaño estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('stussy', 'Camiseta Básica Stussy para Hombre blanca', 50, 'p091', 'camisetas', 'hombre', 'Camiseta Stussy. Tiene una etiqueta impresa en la parte delantera y trasera. Talla normal, elige tu talla habitual. Tamaño estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('stussy', 'Camiseta para Hombre Delusion Pigment', 60, 'p092', 'camisetas', 'hombre', 'Camiseta Stussy. Presenta un motivo en contraste en la parte delantera y una impresión en color en la espalda. Talla normal, elige tu talla habitual. Tamaño estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('stussy', 'Camiseta Bola Ocho para hombre amarilla', 70, 'p093', 'camisetas', 'hombre', 'Camiseta Stussy, Logo parte delantera en color amarillo. Tamaño estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('stussy', 'Camiseta Peace Sign para hombre negra', 50, 'p094', 'camisetas', 'hombre', 'Camiseta Stussy de algodón seco con manga corta y cuello redondo con etiqueta del logo impresa en el pecho y estampado multicolor en la espalda. Ajuste regular. Talla normal, elige tu talla habitual. Tamaño estándar. Material: punto 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('stussy', 'Camiseta Peace Sign para hombre blanca', 50, 'p095', 'camisetas', 'hombre', 'Camiseta Stussy de algodón seco con manga corta y cuello redondo con etiqueta del logo impresa en el pecho y estampado multicolor en la espalda. Ajuste regular. Talla normal, elige tu talla habitual. Tamaño estándar. Material: punto 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('stussy', 'Camiseta Peace Sign para hombre naranja', 50, 'p096', 'camisetas', 'hombre', 'Camiseta Stussy de algodón seco con manga corta y cuello redondo con etiqueta del logo impresa en el pecho y estampado multicolor en la espalda. Ajuste regular. Talla normal, elige tu talla habitual. Tamaño estándar. Material: punto 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('stussy', 'Camiseta trébol pigment dye para hombre negra', 55, 'p097', 'camisetas', 'hombre', 'Camiseta Stussy de algodón seco de manga corta y cuello redondo con etiqueta con logo y club estampado en el pecho y en talla XXL estampada en la espalda. Ajuste regular. Talla normal, elige tu talla habitual. Tamaño estándar. Material: punto 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('stussy', 'Camiseta trébol pigment dye para hombre azul', 55, 'p098', 'camisetas', 'hombre', 'Camiseta Stussy de algodón seco de manga corta y cuello redondo con etiqueta con logo y club estampado en el pecho y en talla XXL estampada en la espalda. Ajuste regular. Talla normal, elige tu talla habitual. Tamaño estándar. Material: punto 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('stussy', 'Camiseta trébol pigment dye para hombre rosa', 55, 'p099', 'camisetas', 'hombre', 'Camiseta Stussy de algodón seco de manga corta y cuello redondo con etiqueta con logo y club estampado en el pecho y en talla XXL estampada en la espalda. Ajuste regular. Talla normal, elige tu talla habitual. Tamaño estándar. Material: punto 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('stussy', 'Camiseta básica para hombre blanca', 50, 'p100', 'camisetas', 'hombre', 'Camiseta Stussy de algodón seco de manga corta y cuello redondo con etiqueta del logo impresa en el pecho y en talla XXL impresa en la espalda. Ajuste regular. Talla normal, elige tu talla habitual. Tamaño estándar. Material: punto 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('stussy', 'Camiseta básica para hombre negra', 50, 'p101', 'camisetas', 'hombre', 'Camiseta Stussy de algodón seco de manga corta y cuello redondo con etiqueta del logo impresa en el pecho y en talla XXL impresa en la espalda. Ajuste regular. Talla normal, elige tu talla habitual. Tamaño estándar. Material: punto 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('stussy', 'Camiseta básica para hombre broto', 50, 'p102', 'camisetas', 'hombre', 'Camiseta Stussy de algodón seco de manga corta y cuello redondo con etiqueta del logo impresa en el pecho y en talla XXL impresa en la espalda. Ajuste regular. Talla normal, elige tu talla habitual. Tamaño estándar. Material: punto 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('stussy', 'Sudadera Basic Hood para hombre marron', 155, 'p103', 'sudaderas', 'hombre', 'Stock Logo sudadera con capucha básica de Stussy. Correa ajustable. Cierre frontal con cremallera. Logotipo estampado en el pecho. Bolsillo canguro. Talla normal, elige tu talla habitual. Tamaño estándar. Material: 80% algodón, 20% poliéster.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('stussy', 'Sudadera Basic Hood para hombre amarilla', 155, 'p104', 'sudaderas', 'hombre', 'Sudadera Stussy Basic Hood de corte clásico con logo estampado en el pecho y espalda. Bolsillo canguro. Talla normal, elige tu talla habitual. Tamaño estándar. Composición: 80% algodón, 20% poliéster.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('stussy', 'Sudadera Logo Mock para hombre', 130, 'p105', 'sudaderas', 'hombre', 'Sudadera de cuello alto Stussy Stock Logo de corte clásico con logo bordado en el pecho. Bolsillo canguro. Talla normal, elige tu talla habitual. Tamaño estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('stussy', 'Sudadera con capucha Stock Logo para hombre negra', 110, 'p106', 'sudaderas', 'hombre', 'Sudadera con capucha Stussy Stock Logo de corte clásico con logo bordado en el pecho. Bolsillo canguro. Talla normal, elige tu talla habitual. Tamaño estándar. Composición: 80% algodón, 20% poliéster.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('stussy', 'Sudadera con capucha logo bordado para hombre marino', 115, 'p107', 'sudaderas', 'hombre', 'Sudadera con capucha Stussy de corte clásico con logo bordado en el pecho, manga larga y bolsillo canguro. Talla normal, elige tu talla habitual. Tamaño estándar. Composición: 80% algodón, 20% poliéster.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('stussy', 'Sudadera básica con capucha para hombre camel', 105, 'p108', 'sudaderas', 'hombre', 'Sudadera Stussy Basic Hood de corte clásico con logo estampado en el pecho y espalda. Bolsillo canguro. Talla normal, elige tu talla habitual. Tamaño estándar. Composición: 80% algodón, 20% poliéster.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('stussy', 'Chaqueta workwear tintada para hombre', 180, 'p109', 'sudaderas', 'hombre', 'Chaqueta de trabajo con capucha teñida en prenda de Stussy. Cuenta con cierre frontal con cremallera metálica YKK, dos bolsillos de parche, dobladillo y puños elásticos y capucha con cordón. Trabilla de taquilla en la costura trasera del cuello y etiqueta con la bandera en la costura lateral. Ajuste regular. Talla normal, elige tu talla habitual. Tallaje estándar. Material: 100% sarga de algodón pesado.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('stussy', 'Sudadera Basic Hood para hombre negra', 155, 'p110', 'sudaderas', 'hombre', 'Sudadera Stussy Basic Hood de corte clásico con logo estampado en el pecho y espalda. Bolsillo canguro. Talla normal, elige tu talla habitual. Tamaño estándar. Composición: 80% algodón, 20% poliéster.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Camisa tipo Caftan Floral para Hombre', 680, 'p111', 'camisas', 'hombre', 'Camisa caftán Gucci con estampado floral. Presenta cuello redondo con abertura en forma de ojo de cerradura y cierre de botón. Mangas tres cuartos. Aberturas laterales. Se ajusta a la talla real, elige tu talla normal. Tallaje italiano. Composición: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Camisa de Manga Corta a Cuadros para Hombre', 580, 'p112', 'camisas', 'hombre', ' Camisa de Gucci. Tejido de cuadros. Corte holgado, manga corta. Detalle de cerdito bordado en el pecho. Talla normal, elige tu talla habitual. Tallaje italiano. Composición: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Camisa Oxford Fil Coupé con Símbolos', 490, 'p113', 'camisas', 'hombre', 'Camisa de vestir Gucci en 100% algodón, botones de nácar con los símbolos de la firma italiana - logo GG, abeja, trébol - bordado');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Camisa Bowling Ken Scott x Gucci para hombre', 780, 'p114', 'camisas', 'hombre', 'Camisa de bolos de Gucci. Con estampado de monograma Ken Scott x Gucci, manga corta, bolsillo de parche frontal. Detalle de etiqueta. Talla normal, elige tu talla habitual. Talla francesa. Material: 100% seda.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Camisa de lana a cuadros con GG para hombre', 780, 'p115', 'camisas', 'hombre', 'Camisa Gucci de corte regular, manga larga y etiqueta G entrelazada de cuero en el pecho. Cuello abotonado y bolsillo de parche en el pecho. Hecho en Italia. Se ajusta a la talla real, elige tu talla normal. Tallaje francés. Material: 100% lana.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Camisa de seda para hombre', 950, 'p116', 'camisas', 'hombre', 'Camisa de Gucci. Presenta cuello puntiagudo, manga larga y corte recto. Botones cubiertos, bolsillo en el pecho. Hecho en Italia. Se ajusta a la talla real, elige tu talla normal. Tallaje italiano. Material: 100% seda.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Camiseta con estampado original para hombre negra', 350, 'p117', 'camisetas', 'hombre', 'Camiseta oversize de Gucci. Estampado original de logo en manga corta y frontal. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Composición: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Camiseta extragrande Mickey Mouse para hombre', 450, 'p118', 'camisetas', 'hombre', 'Camiseta oversize de manga corta de Gucci. Presenta un estampado frontal de Mickey Mouse y el logotipo de Gucci vintage. Hecho en Italia. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Material: 100% algodón orgánico.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Camiseta Disney x Gucci para hombre', 450, 'p119', 'camisetas', 'hombre', 'Camiseta de corte slim de Gucci. Impresión frontal de Disney Donald Duck. Dobladillo recto, cuello redondo y puños en azul bebé. Efecto angustiado. Hecho en Italia. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Composición: 60% lino, 40% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Camiseta de Disney x Gucci para hombre gris', 450, 'p120', 'camisetas', 'hombre', 'Camiseta de corte oversize de Gucci. Delantero Disney Donald Duck estampado en jersey de algodón pesado gris lavado. Efecto angustiado. Hecho en Italia. Producto positivamente consciente. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Material: 100% algodón orgánico.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Camiseta oversize original Gucci negra', 475, 'p121', 'camisetas', 'hombre', 'Camiseta de manga corta Gucci. Cuello redondo ancho. Estampado de logo vintage en la parte delantera y ajuste holgado extragrande. Hecho en Italia. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Camiseta oversize original Gucci blanca', 475, 'p122', 'camisetas', 'hombre', 'Camiseta oversize de Gucci. Estampado original de logo en manga corta y frontal. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Composición: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Pantalones de jogging hechos a medida', 620, 'p123', 'pantalones', 'hombre', 'Pantalón de chándal de vestir de Off-White. Pernera entallada y cinturilla elástica. Bolsillos oblicuos delanteros. Bolsillos abotonados en la espalda. Detalle de pliegues. Se ajusta a la talla real, elige tu talla normal. Tamaño estándar. Material: 100% lana.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Pantalones de cuadros para hombre beige', 880, 'p124', 'pantalones', 'hombre', 'Pantalón de cuadros con bordado de gato de Gucci. Patrón de cuadros. Cierre frontal de botones y cremallera. Dos bolsillos con botones en la espalda. Cierre frontal con botón y cremallera. Detalle de gatito bordado en bolsillo trasero. Se ajusta a la talla real, elige tu talla normal. Tallaje de Itailing. Composición: 100% algodón, 100% poliéster.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Pantalones tapered con raya lateral para hombre', 950, 'p125', 'pantalones', 'hombre', 'Pantalones tapered de rayas laterales de Gucci. Con detalle de rayas en el lateral, puños y cinturilla elásticos con trabillas. Corte cónico. Dos bolsillos abiertos y bolsillos traseros con solapa en la espalda. Cierre frontal con botón y cremallera. Se ajusta a la talla real, elige tu talla normal, talla italiana. Composición: 100% algodón, 100% poliamida.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Pantalones de chándal Ken Scott x Gucci para hombre', 980, 'p126', 'pantalones', 'hombre', 'Pantalones de jogging de Gucci. Con estampado de monograma Ken Scott x Gucci, cinturilla elástica con cordón. Franja bicolor en los laterales y ribete en contraste. Parche de paquete G entrelazado. Ribetes de canalé. Estilo de tres bolsillos. Talla normal, elige tu talla habitual. Talla estándar Material: 55% Poliéster 45% Algodón');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Vaqueros con GG con lavado ecológico para hombre', 690, 'p127', 'pantalones', 'hombre', 'Vaqueros Gucci en denim de jacquard orgánico con GG lavado ecológico azul oscuro y marfil. Estilo de cinco bolsillos, con bolsillos traseros de parche adornados en cuero. Denim acampanado no elástico. Alto. Hecho en Italia. Se ajusta a la talla real, elige tu talla normal. Tallaje italiano. Material: 100% algodón orgánico.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Pantalones de chándal de lona con GG para hombre', 760, 'p128', 'pantalones', 'hombre', 'Pantalones de chándal Gucci en lona de algodón GG. Cintura elástica con cierre de cordón. Cierre de cremallera frontal. Bolsillos oblicuos delanteros y bolsillos traseros con solapa con botones. Hecho en Italia. Se ajusta a la talla real, elige tu talla normal. Talla italiana. Composición: 71% algodón, 29% poliéster.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Pantalón de pana para hombre marron Gucci', 880, 'p129', 'pantalones', 'hombre', 'Pantalón de corte regular de Gucci. Cinturilla ajustable con botón y cierre de cremallera. Bolsillos oblicuos en la parte delantera y bolsillos traseros con escote abotonado. Etiqueta de cuero con G entrelazadas en la parte posterior. Corte recto y puños de 6 cm. Hecho en Italia. Talla normal, elige tu talla habitual. Talla francesa. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Pantalones acampanados para hombre verde Gucci', 890, 'p130', 'pantalones', 'hombre', 'Pantalón Gucci. Con botones forrados. Bolsillos frontales con solapa, bolsillos oblicuos laterales y bolsillos traseros con ojal. Detalles de pliegues frontales. Ajuste relajado y regular. Cinturón de cinta interna. Hecho en Italia. Se ajusta a la talla real, elige tu talla normal. Tallaje italiano. Composición: 55% poliéster, 45% lana.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Shorts de dril de algodón para hombre Gucci roto', 650, 'p131', 'pantalones', 'hombre', 'Bermudas de Gucci, específicamente lavadas para un efecto vintage. Con parche de G entrelazadas en la espalda. Bolsillos oblicuos delanteros, bolsillo de ribete y bolsillos traseros con ojal con botones. Cierre con botón y cremallera. Ajustado. Forro de poliéster. Hecho en Italia. Se ajusta a la talla real, elige tu talla normal. Talla italiana. Material: 100% algodón orgánico.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Jeans para hombre Gucci', 690, 'p132', 'pantalones', 'hombre', 'Vaqueros de mezclilla tapered celestes de Gucci. Tiene cinturilla con trabillas, diseño de cinco bolsillos y pernera cónica. Se ajusta a la talla real, elige tu talla normal. Talla de jeans Gucci.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Shorts con estampado Ken Scott para hombre', 680, 'p133', 'pantalones', 'hombre', 'Pantalones cortos de Gucci. Con estampado de monograma Ken Scott x Gucci, cinturilla elástica con cierre de botón en la parte delantera. Detalle de etiqueta de parche en la espalda. Estilo de cuatro bolsillos. Hecho en Italia. Talla normal, elige tu talla habitual. Talla italiana. Material: 100% seda.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Suéter Web Gucci', 980, 'p134', 'sudaderas', 'hombre', 'Chaqueta Web con cremallera de Gucci. Rayas Web verdes y rojas. Ribete rojo. Cierre frontal con cremallera en tono dorado. Logo xxx en el pecho. Bolsillo canguro. Talla normal, elige tu talla habitual. Tamaño estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Chaqueta con cremallera y estampado Ken Scott x Gucci ', 1380, 'p135', 'pantalones', 'hombre', 'Chaqueta con cremallera de Gucci. Estampado de monograma Ken Scott x Gucci. Rayas en beige y marrón a lo largo de las mangas y ribete en contraste. Parche de GG en una de las mangas. Adornos de puntode canalé. Bolsillos delanteros. Talla normal, elige tu talla habitual645217 XJC5Z 443M24 X');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Chaqueta de jersey técnico con cremallera', 1200, 'p136', 'sudaderas', 'hombre', 'Chaqueta con cremallera de Gucci. Inspirado en la ropa deportiva retro. Rayas tribales verdes y rojas en las mangas y ribetes en contraste. Parche de G entrelazadas en el pecho. Ribetes de canalé. Bolsillos frontales con cremallera. Hecho en Italia. Talla normal, elige tu talla habitual. Tamaño estándar. Composición: 55% Poliéster 45% Algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Sudadera corta con diseño de pato Donald de Disney x Gucci', 850, 'p137', 'sudaderas', 'hombre', 'Sudadera corta de Gucci. Impresión frontal de Disney Donald Duck. Puños y dobladillo elásticos, cuello redondo. Efecto angustiado. Hecho en Italia. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Material: 100% algodón.');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `sexo`, `descripcion`) VALUES('gucci', 'Sudadera con capucha de Disney x Gucci para hombre', 950, 'p138', 'sudaderas', 'hombre', 'Sudadera con capucha gris Gucci con estampado de logo y Mickey Mouse en la parte delantera. Ajuste holgado, capucha fija con cordón y bolsillo canguro frontal. Hombros caídos. Hecho en Italia. Se ajusta a la talla real, elige tu talla normal. Tallaje estándar. Material: 100% algodón orgánico.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_transacciones`
--

DROP TABLE IF EXISTS `productos_transacciones`;
CREATE TABLE IF NOT EXISTS `productos_transacciones` (
  `id_transaccion` int(11) NOT NULL,
  `id_producto` varchar(15) COLLATE latin1_spanish_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `talla` varchar(15) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id_transaccion`,`id_producto`,`talla`) USING BTREE,
  KEY `id_transaccion` (`id_transaccion`),
  KEY `id_producto` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tallas`
--

DROP TABLE IF EXISTS `tallas`;
CREATE TABLE IF NOT EXISTS `tallas` (
  `id` varchar(15) COLLATE latin1_spanish_ci NOT NULL,
  `talla` varchar(5) COLLATE latin1_spanish_ci NOT NULL,
  `cantidad` int(5) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `tallas`
--

INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p001', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p001', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p001', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p001', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p001', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p002', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p002', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p002', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p002', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p002', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p003', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p003', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p003', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p003', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p003', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p004', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p004', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p004', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p004', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p004', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p005', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p005', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p005', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p005', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p005', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p006', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p006', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p006', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p006', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p006', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p007', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p007', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p007', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p007', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p007', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p008', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p008', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p008', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p008', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p008', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p009', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p009', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p009', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p009', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p009', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p010', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p010', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p010', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p010', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p010', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p011', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p011', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p011', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p011', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p011', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p012', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p012', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p012', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p012', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p012', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p013', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p013', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p013', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p013', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p013', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p014', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p014', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p014', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p014', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p014', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p015', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p015', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p015', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p015', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p015', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p016', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p016', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p016', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p016', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p016', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p017', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p017', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p017', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p017', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p017', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p018', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p018', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p018', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p018', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p018', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p019', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p019', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p019', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p019', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p019', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p020', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p020', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p020', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p020', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p020', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p021', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p021', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p021', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p021', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p021', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p022', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p022', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p022', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p022', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p022', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p023', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p023', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p023', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p023', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p023', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p024', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p024', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p024', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p024', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p024', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p025', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p025', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p025', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p025', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p025', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p026', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p026', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p026', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p026', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p026', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p027', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p027', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p027', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p027', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p027', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p028', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p028', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p028', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p028', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p028', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p029', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p029', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p029', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p029', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p029', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p030', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p030', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p030', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p030', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p030', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p031', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p031', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p031', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p031', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p031', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p032', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p032', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p032', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p032', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p032', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p033', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p033', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p033', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p033', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p033', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p034', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p034', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p034', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p034', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p034', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p035', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p035', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p035', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p035', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p035', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p036', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p036', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p036', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p036', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p036', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p037', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p037', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p037', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p037', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p037', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p038', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p038', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p038', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p038', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p038', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p039', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p039', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p039', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p039', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p039', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p040', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p040', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p040', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p040', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p040', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p041', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p041', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p041', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p041', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p041', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p042', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p042', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p042', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p042', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p042', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p043', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p043', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p043', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p043', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p043', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p044', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p044', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p044', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p044', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p044', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p045', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p045', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p045', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p045', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p045', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p046', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p046', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p046', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p046', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p046', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p047', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p047', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p047', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p047', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p047', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p048', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p048', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p048', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p048', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p048', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p049', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p049', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p049', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p049', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p049', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p050', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p050', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p050', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p050', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p050', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p051', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p051', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p051', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p051', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p051', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p052', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p052', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p052', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p052', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p052', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p053', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p053', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p053', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p053', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p053', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p054', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p054', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p054', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p054', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p054', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p055', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p055', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p055', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p055', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p055', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p056', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p056', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p056', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p056', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p056', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p057', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p057', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p057', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p057', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p057', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p058', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p058', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p058', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p058', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p058', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p059', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p059', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p059', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p059', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p059', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p060', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p060', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p060', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p060', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p060', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p061', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p061', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p061', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p061', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p061', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p062', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p062', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p062', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p062', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p062', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p063', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p063', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p063', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p063', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p063', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p064', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p064', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p064', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p064', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p064', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p065', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p065', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p065', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p065', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p065', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p066', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p066', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p066', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p066', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p066', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p067', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p067', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p067', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p067', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p067', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p068', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p068', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p068', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p068', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p068', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p069', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p069', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p069', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p069', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p069', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p070', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p070', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p070', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p070', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p070', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p071', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p071', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p071', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p071', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p071', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p072', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p072', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p072', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p072', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p072', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p073', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p073', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p073', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p073', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p073', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p074', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p074', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p074', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p074', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p074', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p075', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p075', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p075', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p075', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p075', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p076', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p076', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p076', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p076', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p076', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p077', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p077', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p077', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p077', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p077', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p078', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p078', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p078', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p078', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p078', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p079', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p079', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p079', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p079', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p079', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p080', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p080', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p080', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p080', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p080', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p081', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p081', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p081', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p081', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p081', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p082', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p082', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p082', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p082', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p082', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p083', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p083', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p083', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p083', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p083', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p084', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p084', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p084', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p084', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p084', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p085', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p085', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p085', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p085', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p085', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p086', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p086', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p086', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p086', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p086', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p087', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p087', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p087', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p087', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p087', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p088', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p088', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p088', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p088', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p088', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p089', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p089', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p089', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p089', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p089', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p090', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p090', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p090', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p090', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p090', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p091', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p091', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p091', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p091', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p091', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p092', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p092', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p092', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p092', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p092', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p093', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p093', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p093', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p093', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p093', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p094', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p094', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p094', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p094', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p094', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p095', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p095', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p095', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p095', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p095', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p096', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p096', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p096', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p096', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p096', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p097', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p097', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p097', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p097', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p097', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p098', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p098', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p098', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p098', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p098', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p099', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p099', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p099', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p099', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p099', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p100', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p100', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p100', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p100', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p100', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p101', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p101', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p101', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p101', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p101', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p102', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p102', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p102', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p102', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p102', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p103', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p103', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p103', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p103', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p103', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p104', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p104', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p104', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p104', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p104', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p105', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p105', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p105', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p105', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p105', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p106', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p106', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p106', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p106', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p106', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p107', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p107', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p107', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p107', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p107', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p108', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p108', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p108', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p108', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p108', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p109', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p109', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p109', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p109', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p109', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p110', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p110', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p110', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p110', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p110', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p111', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p111', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p111', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p111', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p111', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p112', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p112', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p112', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p112', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p112', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p113', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p113', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p113', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p113', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p113', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p114', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p114', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p114', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p114', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p114', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p115', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p115', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p115', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p115', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p115', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p116', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p116', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p116', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p116', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p116', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p117', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p117', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p117', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p117', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p117', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p118', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p118', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p118', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p118', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p118', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p119', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p119', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p119', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p119', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p119', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p120', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p120', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p120', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p120', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p120', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p121', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p121', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p121', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p121', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p121', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p122', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p122', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p122', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p122', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p122', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p123', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p123', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p123', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p123', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p123', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p124', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p124', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p124', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p124', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p124', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p125', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p125', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p125', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p125', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p125', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p126', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p126', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p126', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p126', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p126', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p127', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p127', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p127', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p127', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p127', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p128', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p128', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p128', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p128', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p128', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p129', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p129', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p129', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p129', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p129', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p130', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p130', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p130', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p130', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p130', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p131', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p131', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p131', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p131', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p131', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p132', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p132', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p132', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p132', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p132', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p133', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p133', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p133', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p133', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p133', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p134', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p134', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p134', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p134', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p134', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p135', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p135', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p135', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p135', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p135', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p136', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p136', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p136', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p136', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p136', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p137', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p137', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p137', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p137', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p137', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p138', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p138', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p138', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p138', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p138', 'XL', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones`
--

DROP TABLE IF EXISTS `transacciones`;
CREATE TABLE IF NOT EXISTS `transacciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `cantidad_productos` int(11) NOT NULL,
  `direccion` varchar(500) COLLATE latin1_spanish_ci NOT NULL,
  `comentario` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `id_usuario` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `clave` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `apellido` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `pais` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `region` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ciudad` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `codigoPostal` int(5) NOT NULL,
  `telefono` int(9) NOT NULL,
  `lineaDireccion1` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `lineaDireccion2` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`nombre`, `id_usuario`, `email`, `clave`, `apellido`, `pais`, `region`, `ciudad`, `codigoPostal`, `telefono`, `lineaDireccion1`, `lineaDireccion2`) VALUES('Adrian', 'Adrianleit', 'adrian@adelgado.net', '$2y$10$dnhsB6lCCsTlT8qvrXmWhOzhwhzZz0F0zI3zPhIyY84F01d56JgL.', 'Delgado', 'espaÃ±a', 'Madrid', 'Alcorcon', 28922, 644222837, 'Calle Los Pinos 22 1B', NULL);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comentarios_ibfk_3` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos_transacciones`
--
ALTER TABLE `productos_transacciones`
  ADD CONSTRAINT `productos_transacciones_ibfk_1` FOREIGN KEY (`id_transaccion`) REFERENCES `transacciones` (`id`),
  ADD CONSTRAINT `productos_transacciones_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `tallas`
--
ALTER TABLE `tallas`
  ADD CONSTRAINT `tallas_ibfk_1` FOREIGN KEY (`id`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `transacciones`
--
ALTER TABLE `transacciones`
  ADD CONSTRAINT `transacciones_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
