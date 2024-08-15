-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-08-2024 a las 20:51:45
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rest-api`
--
CREATE DATABASE IF NOT EXISTS `rest-api` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rest-api`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--
-- Creación: 15-08-2024 a las 15:02:57
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `autor` varchar(30) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `año-publicacion` date NOT NULL COMMENT 'YYYY-MM-DD',
  `ISBN` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `nombre`, `autor`, `categoria`, `año-publicacion`, `ISBN`) VALUES
(1, 'Hacia la tesis: itinerarios co', 'Souza, María Silvina - Mangari', 'Lengua y Literatura /Estudios ', '2022-08-03', '9789503408995'),
(2, 'Nietzsche: detective de bajos ', 'Jorge Manzano', 'Filosofia', '2007-08-01', '9781413586497'),
(3, 'Peón de dama. Volumen 1', 'Manuel del Pozo', 'Negocios', '2012-08-09', '9788468631332'),
(4, 'El sentido de la existencia hu', 'Edward Wilson', 'Filosofia', '2014-08-03', '9788497849722'),
(5, 'Los públicos en las relaciones', 'María Isabel Míguez', 'Economía ', '2010-08-01', '9788497881067'),
(6, 'Gestión pública del turismo', 'Miralbell Izard', 'Economía', '2010-08-25', '9788497880282'),
(7, 'Netnografía', 'Miguel Fresno', 'Ingeniería Informática', '2011-08-03', '9788497883856'),
(8, 'Comunicación y discurso', 'Adriana Gil', 'Lengua y Literatura', '2011-08-31', '9788497883900'),
(9, 'La teoria literària', 'Ignasi Ribó', 'Crítica Literaria', '2011-08-31', '9788497883993'),
(11, 'Economia Domestica', 'Gabriel Pereyra', 'Interes General', '2022-06-24', '25665588'),
(14, 'Economía de Japón', 'Àngels Pelegrín Solé', 'Economía', '2011-08-31', '9788497884211');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
