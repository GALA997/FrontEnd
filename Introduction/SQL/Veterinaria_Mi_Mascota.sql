-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2023 a las 23:18:12
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
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `Mascota` varchar(20) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `Persona responsable` varchar(50) NOT NULL,
  `Id cita` varchar(10) NOT NULL,
  `Asistencia` varchar(3) NOT NULL,
  `Siguiente cita` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`Mascota`, `Fecha`, `Hora`, `Persona responsable`, `Id cita`, `Asistencia`, `Siguiente cita`) VALUES
('Mishi', '2023-02-12', '14:34:41', 'Andrea Arana', 'cdg6790', 'Si', '2023-10-28'),
('Lipe', '2021-04-19', '17:00:02', 'Marvin Caceres', 'ghm8760', 'Si', '2023-12-07'),
('Chorrita', '2022-06-01', '13:34:56', 'Martin Garcia', 'guu6099', 'Si', '2023-10-01'),
('Scott', '2022-07-09', '14:09:08', 'Alejandra Bosque', 'hew9009', 'Si', '2023-11-27'),
('Lencho', '2023-03-12', '15:09:12', 'Carlos Hernandez', 'hjk5480', 'No', '2023-11-21'),
('Noodle', '2023-09-13', '15:31:06', 'Madedison Heart', 'huy2323', 'Si', '2023-12-07'),
('Lila', '2022-12-14', '12:34:09', 'Ivana Pellever', 'jnm8735', 'No', '2023-12-09'),
('Toby', '2023-09-17', '12:45:42', 'Alfredo Garcia', 'kwq9387', 'Si', '2023-12-23'),
('Mina', '2021-09-12', '10:09:23', 'Dayana Lopez', 'mdr3098', 'Si', '2023-11-02'),
('Rufus', '2019-02-21', '15:03:29', 'Paola Juarez', 'tpl2871', 'Si', '2023-11-05'),
('Panqueque', '2023-09-02', '11:09:12', 'Diego Lagos', 'tyt7824', 'Si', '2023-10-27'),
('Noodle', '2023-04-02', '16:09:09', 'Madedison Heart', 'yuc4344', 'Si', '2023-09-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `Nombre` varchar(50) NOT NULL,
  `Nit` varchar(20) NOT NULL,
  `Dirrecion` varchar(75) NOT NULL,
  `Telefono` int(15) NOT NULL,
  `Mascota` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`Nombre`, `Nit`, `Dirrecion`, `Telefono`, `Mascota`) VALUES
('Alfredo Garcia', '8932458', 'Colonia el Paraiso zona 4 ', 55982145, 'Toby'),
('Andrea Arana', '7815368', 'Calle 3 zona 9 Ciudad Zapote', 89783900, 'Mishi'),
('Carlos Hernandez', '47893K', 'Calle poniente casa 56 Ciudad Vieja', 84683499, 'Lencho'),
('Dayana Lopez', '7749390', '4Av.calle sur casa 57', 45621023, 'Mina'),
('Martin Garcia', '847998', '6ta calle colonia el adoquin', 741255499, 'Chorrita'),
('Madedison Heart', '299844J', 'Colonia Antigua zona 13', 45139788, 'Noodle'),
('Diego Lagos', '434994', '8va calle poniente zona 5', 98416878, 'Panqueque'),
('Ivana Pellecer', '29077K', '9Av Norte Final calle los aposentros', 20367841, 'Lila'),
('Alejandra Bosque', '438434', 'Colonia Prado sur zona 5', 78530012, '	Scott'),
('Marvin Caceres', '347344K', '7Av sur calle las amiericas', 72000032, 'Lipe'),
('Paola Juazrez', '577738', '4ta Calle poniente Antigua Guatemala', 78861044, 'Rufus');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascota`
--

CREATE TABLE `mascota` (
  `Mascota` varchar(20) NOT NULL,
  `Fecha de nacimiento` date NOT NULL,
  `Fecha de registro` date NOT NULL,
  `Persona responsable` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mascota`
--

INSERT INTO `mascota` (`Mascota`, `Fecha de nacimiento`, `Fecha de registro`, `Persona responsable`) VALUES
('Mishi', '2022-09-08', '2023-02-12', 'Andrea Arana'),
('Lencho', '2016-04-04', '2021-12-09', 'Carlos Hernandez'),
('Mina', '2023-01-07', '2023-02-22', 'Dayana Lopez'),
('Chorrita', '2014-07-13', '2019-06-27', 'Martin Garcia'),
('Noodle', '2022-12-27', '2023-04-02', 'Madedison Heart'),
('Panqueque', '2023-06-30', '2023-07-23', 'Diego Lagos'),
('Lila', '2020-09-08', '2022-11-16', 'Ivana Pellecer'),
('Scott', '2021-11-07', '2022-01-03', 'Alejandra Bosque'),
('Lipe', '2019-10-26', '2021-03-18', 'Marvin Caceres'),
('Rufus', '2017-08-09', '2018-05-23', 'Paola Juarez'),
('Toby', '2021-09-03', '2022-04-09', 'Alfredo Garcia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamiento`
--

CREATE TABLE `tratamiento` (
  `Mascota` varchar(20) NOT NULL,
  `Tratamiento` varchar(75) NOT NULL,
  `Id cita` varchar(10) NOT NULL,
  `Costo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tratamiento`
--

INSERT INTO `tratamiento` (`Mascota`, `Tratamiento`, `Id cita`, `Costo`) VALUES
('Chorrita', 'Vacuna de rabia', 'guu6099', 350),
('Lencho', 'Vacuna de rabia', 'hjk5480', 0),
('Lila', 'Consulta general', 'jnm8735', 0),
('Lipe', 'Consulta general', 'ghm8760', 200),
('Mina', 'Consulta general', 'mdr3098', 200),
('Mishi', 'Vacuna ', 'cdg6790', 300),
('Noodle', 'Consulta general y vacunas', 'huy2323', 950),
('Panqueque', 'Consulta general', 'tyt7824', 200),
('Rufus', 'Extraccion de colmios', 'tpl2871', 500),
('Scott', 'Desparasitacion', 'hew9009', 500),
('Toby', 'Extraccion de colmios', 'kwq9387', 500);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`Id cita`);

--
-- Indices de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD PRIMARY KEY (`Mascota`),
  ADD KEY `FK_Cita` (`Id cita`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD CONSTRAINT `FK_Cita` FOREIGN KEY (`Id cita`) REFERENCES `citas` (`Id cita`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
