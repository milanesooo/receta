-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2024 a las 07:01:42
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `receta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bebidas`
--

CREATE TABLE `bebidas` (
  `id_comida` int(11) NOT NULL,
  `Nombre` varchar(1000) NOT NULL,
  `Porciones` varchar(1000) NOT NULL,
  `Ingredientes` varchar(1000) NOT NULL,
  `Procedimiento` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bebidas`
--

INSERT INTO `bebidas` (`id_comida`, `Nombre`, `Porciones`, `Ingredientes`, `Procedimiento`) VALUES
(1, 'Limonada Clásica', '4', '1 litro de agua fría\r\n4 limones\r\n4 cucharadas de azúcar (o al gusto)\r\nCubos de hielo\r\n', 'Exprime el jugo de los limones y cuela para eliminar semillas.\r\nMezcla el jugo con el agua fría.\r\nAgrega el azúcar y mezcla hasta disolver completamente.\r\nSirve con hielo y decora con rodajas de limón si deseas.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comida`
--

CREATE TABLE `comida` (
  `id_comida` int(11) NOT NULL,
  `Nombre` varchar(1000) NOT NULL,
  `Porciones` varchar(1000) NOT NULL,
  `Ingredientes` varchar(1000) NOT NULL,
  `Procedimiento` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comida`
--

INSERT INTO `comida` (`id_comida`, `Nombre`, `Porciones`, `Ingredientes`, `Procedimiento`) VALUES
(1, 'Enchiladas Rojas', '6', '12 tortillas de maíz\r\n2 tazas de salsa roja (jitomates, chiles secos, ajo, cebolla)\r\n1 pechuga de pollo desmenuzada\r\n1 taza de crema\r\n1 taza de queso rallado\r\nAceite para freír', 'Calienta las tortillas en aceite ligeramente para que sean manejables.\r\nRellena cada tortilla con pollo desmenuzado y enrolla.\r\nColoca las enchiladas en un plato y vierte la salsa roja caliente por encima.\r\nDecora con crema, queso rallado y, si deseas, lechuga.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postre`
--

CREATE TABLE `postre` (
  `id_comida` int(11) NOT NULL,
  `Nombre` varchar(1000) NOT NULL,
  `Porciones` varchar(1000) NOT NULL,
  `Ingredientes` varchar(1000) NOT NULL,
  `Procedimiento` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `postre`
--

INSERT INTO `postre` (`id_comida`, `Nombre`, `Porciones`, `Ingredientes`, `Procedimiento`) VALUES
(1, 'Pastel de Tres Leches', '8', '1 taza de harina\r\n1 taza de azúcar\r\n5 huevos\r\n1 cucharadita de vainilla\r\n1 lata de leche evaporada\r\n1 lata de leche condensada\r\n1 taza de crema para batir\r\nFrutas (opcional, para decorar)', 'Bate los huevos con el azúcar hasta obtener una mezcla esponjosa.\r\nIncorpora la harina y la vainilla, y mezcla suavemente.\r\nVierte en un molde engrasado y hornea a 180°C por 25-30 minutos.\r\nMezcla las tres leches (evaporada, condensada y crema).\r\nPerfora el pastel ya frío con un tenedor y vierte la mezcla de leches.\r\nDecora con crema batida y frutas si deseas.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registra`
--

CREATE TABLE `registra` (
  `id_usuario` int(11) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registra`
--

INSERT INTO `registra` (`id_usuario`, `correo`, `usuario`, `clave`) VALUES
(1, 'jasso231@gmail.com', 'MILANESO', 'antraxXD');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bebidas`
--
ALTER TABLE `bebidas`
  ADD PRIMARY KEY (`id_comida`);

--
-- Indices de la tabla `comida`
--
ALTER TABLE `comida`
  ADD PRIMARY KEY (`id_comida`);

--
-- Indices de la tabla `postre`
--
ALTER TABLE `postre`
  ADD PRIMARY KEY (`id_comida`);

--
-- Indices de la tabla `registra`
--
ALTER TABLE `registra`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bebidas`
--
ALTER TABLE `bebidas`
  MODIFY `id_comida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `comida`
--
ALTER TABLE `comida`
  MODIFY `id_comida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `postre`
--
ALTER TABLE `postre`
  MODIFY `id_comida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `registra`
--
ALTER TABLE `registra`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
