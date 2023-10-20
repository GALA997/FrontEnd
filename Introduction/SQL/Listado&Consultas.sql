-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2023 a las 21:49:51
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `veterinaria mi mascota`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c`
--

CREATE TABLE `c` (
  `Nombre` varchar(50) NOT NULL,
  `Nit` varchar(20) NOT NULL,
  `Dirrecion` varchar(75) NOT NULL,
  `Telefono` int(15) NOT NULL,
  `Mascota` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `c`
--

INSERT INTO `c` (`Nombre`) VALUES
('Alfredo Garcia'),
('Andrea Arana'),
('Carlos Hernandez'),
('Dayana Lopez'),
('Martin Garcia'),
('Madedison Heart'),
('Diego Lagos'),
('Ivana Pellecer'),
('Alejandra Bosque'),
('Marvin Caceres'),
('Paola Juazrez');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*------------------------------------------------------------------------------------------------------------------------------------*/
/*2. Listado de mascotas con el nombre de la persona por nombre de la mascota*/
SELECT m.Mascota, c.Nombre
FROM mascota m
INNER JOIN cliente c
ON m.Mascota = c.Mascota
ORDER BY `m`.`Mascota` ASC;

/*3.Listado de mascota con el nombre de la persona ordenados por fecha de registro*/
