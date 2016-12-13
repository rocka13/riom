-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-06-2016 a las 17:34:17
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `riom2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `id_cargo` int(11) NOT NULL,
  `nom_cargo` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`id_cargo`, `nom_cargo`) VALUES
(1, 'admin'),
(2, 'recepcionista'),
(3, 'radiologo'),
(4, 'mensajero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

CREATE TABLE `cita` (
  `id_cita` int(11) NOT NULL,
  `ff` date NOT NULL,
  `hh_llegada` time NOT NULL,
  `hh_toma` time NOT NULL,
  `hh_salida` time NOT NULL,
  `atendido` varchar(2) NOT NULL,
  `responsable` int(2) NOT NULL,
  `cita_paciente` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cita`
--

INSERT INTO `cita` (`id_cita`, `ff`, `hh_llegada`, `hh_toma`, `hh_salida`, `atendido`, `responsable`, `cita_paciente`) VALUES
(1, '2016-05-16', '12:10:00', '21:58:00', '00:00:00', 'SI', 2, 1),
(2, '2016-05-16', '12:23:00', '21:58:00', '00:00:00', 'SI', 2, 1),
(3, '2016-05-16', '12:26:00', '21:58:00', '00:00:00', 'SI', 2, 1),
(4, '2016-05-16', '12:38:00', '21:58:00', '00:00:00', 'SI', 2, 1),
(5, '2016-05-16', '12:43:00', '21:58:00', '00:00:00', 'SI', 2, 1),
(6, '2016-05-16', '12:47:00', '21:58:00', '00:00:00', 'SI', 2, 1),
(7, '2016-05-16', '12:47:00', '21:58:00', '00:00:00', 'SI', 2, 1),
(8, '2016-05-16', '12:52:00', '21:58:00', '00:00:00', 'SI', 2, 1),
(9, '2016-05-16', '13:40:00', '21:58:00', '00:00:00', 'SI', 2, 1),
(10, '2016-05-16', '13:40:00', '21:57:00', '00:00:00', 'SI', 2, 1),
(11, '2016-05-16', '13:45:00', '21:57:00', '00:00:00', 'SI', 2, 1),
(12, '2016-05-16', '13:47:00', '21:57:00', '21:59:00', 'SI', 2, 1),
(13, '2016-05-16', '13:51:00', '21:57:00', '21:59:00', 'SI', 2, 1),
(14, '2016-05-16', '13:52:00', '21:57:00', '21:59:00', 'SI', 2, 1),
(15, '2016-05-16', '13:54:00', '21:57:00', '21:59:00', 'SI', 2, 1),
(16, '2016-05-16', '13:54:00', '21:57:00', '21:59:00', 'SI', 2, 1),
(17, '2016-05-16', '13:56:00', '21:57:00', '21:59:00', 'SI', 2, 1),
(18, '2016-05-16', '13:56:00', '21:57:00', '21:59:00', 'SI', 2, 1),
(19, '2016-05-16', '13:58:00', '21:57:00', '21:59:00', 'SI', 2, 1),
(20, '2016-05-16', '17:07:00', '21:57:00', '21:59:00', 'SI', 2, 1),
(21, '2016-05-16', '17:16:00', '21:57:00', '21:59:00', 'SI', 2, 1),
(22, '2016-05-16', '17:16:00', '21:57:00', '21:59:00', 'SI', 2, 1),
(23, '2016-05-16', '17:17:00', '21:57:00', '21:59:00', 'SI', 2, 1),
(24, '2016-05-16', '18:35:00', '21:56:00', '21:59:00', 'SI', 2, 1),
(25, '2016-05-16', '18:37:00', '18:11:00', '21:59:00', 'SI', 2, 1),
(26, '2016-05-16', '18:41:00', '21:56:00', '21:59:00', 'SI', 2, 1),
(27, '2016-05-16', '18:43:00', '21:56:00', '21:59:00', 'SI', 2, 1),
(28, '2016-05-16', '18:43:00', '21:56:00', '21:59:00', 'SI', 2, 1),
(29, '2016-05-16', '18:44:00', '21:56:00', '21:59:00', 'SI', 2, 1),
(30, '2016-05-16', '18:44:00', '21:56:00', '21:59:00', 'SI', 2, 1),
(31, '2016-05-16', '18:44:00', '21:56:00', '21:59:00', 'SI', 2, 1),
(32, '2016-05-16', '19:17:00', '21:56:00', '21:59:00', 'SI', 2, 1),
(33, '2015-04-16', '19:20:00', '17:59:00', '21:59:00', 'SI', 2, 1),
(34, '2016-05-16', '21:30:00', '21:56:00', '21:59:00', 'SI', 2, 1),
(35, '2016-05-16', '21:33:00', '17:59:00', '21:59:00', 'SI', 2, 1),
(36, '2016-05-16', '21:33:00', '21:56:00', '21:59:00', 'SI', 2, 1),
(37, '2016-05-16', '21:33:00', '21:56:00', '21:59:00', 'SI', 2, 1),
(38, '2016-05-16', '21:34:00', '21:56:00', '21:59:00', 'SI', 2, 1),
(39, '2016-05-17', '01:22:00', '17:57:00', '21:59:00', 'SI', 2, 1),
(40, '2016-05-17', '01:25:00', '21:56:00', '21:59:00', 'SI', 2, 1),
(41, '2016-05-17', '01:29:00', '21:56:00', '21:59:00', 'SI', 2, 1),
(42, '2016-05-17', '01:30:00', '21:56:00', '21:59:00', 'SI', 2, 1),
(43, '2015-05-18', '13:30:00', '21:56:00', '21:59:00', 'SI', 2, 1),
(44, '2016-05-18', '13:31:00', '21:56:00', '21:59:00', 'SI', 2, 1),
(45, '2016-05-18', '13:31:00', '21:55:00', '21:59:00', 'SI', 2, 1),
(46, '2016-05-18', '13:33:00', '17:56:00', '21:59:00', 'SI', 2, 1),
(47, '2016-05-18', '17:02:00', '21:55:00', '21:59:00', 'SI', 2, 1),
(48, '2016-05-18', '17:14:00', '21:55:00', '02:05:00', 'SI', 2, 2),
(49, '2016-05-18', '17:15:00', '14:25:00', '21:59:00', 'SI', 2, 1),
(50, '2016-05-18', '17:17:00', '00:00:00', '00:00:00', 'NO', 2, 0),
(51, '2016-05-18', '17:52:00', '09:23:00', '02:05:00', 'SI', 2, 2),
(52, '2016-05-18', '17:53:00', '09:23:00', '21:59:00', 'SI', 2, 2),
(53, '2016-05-18', '17:53:00', '17:57:00', '02:16:00', 'SI', 2, 1),
(54, '2016-05-18', '17:53:00', '09:23:00', '02:05:00', 'SI', 2, 2),
(55, '2016-05-19', '00:59:00', '09:23:00', '02:05:00', 'SI', 2, 2),
(56, '2016-03-19', '01:09:00', '15:12:00', '02:05:00', 'SI', 2, 2),
(57, '2016-04-19', '16:55:00', '17:08:00', '21:59:00', 'SI', 2, 3),
(58, '2016-05-19', '17:05:00', '17:08:00', '17:06:00', 'SI', 2, 4),
(59, '2016-05-20', '15:43:00', '21:55:00', '08:18:00', 'SI', 2, 5),
(60, '2016-05-23', '12:59:00', '13:00:00', '13:01:00', 'SI', 2, 5),
(61, '2016-04-24', '02:24:00', '21:55:00', '21:59:00', 'SI', 7, 5),
(62, '2016-05-27', '15:22:00', '21:55:00', '21:58:00', 'SI', 2, 6),
(63, '2016-05-27', '22:02:00', '22:02:00', '22:03:00', 'SI', 2, 6),
(64, '2016-05-27', '22:03:00', '22:05:00', '22:12:00', 'SI', 2, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consecutivo`
--

CREATE TABLE `consecutivo` (
  `id_consecutivo` int(11) NOT NULL,
  `paciente_id_consecutivo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dr`
--

CREATE TABLE `dr` (
  `id_doctor` int(11) NOT NULL,
  `nom_doctor` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dr`
--

INSERT INTO `dr` (`id_doctor`, `nom_doctor`) VALUES
(1, 'escandon ltda'),
(2, 'sonrisas'),
(3, 'sonria'),
(4, 'sonrisa sana'),
(5, 'hospital'),
(6, 'medicar girardot');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen`
--

CREATE TABLE `examen` (
  `id_examen` int(11) NOT NULL,
  `nom_examen` varchar(50) NOT NULL,
  `precio` int(7) NOT NULL,
  `cubs` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `examen`
--

INSERT INTO `examen` (`id_examen`, `nom_examen`, `precio`, `cubs`) VALUES
(1, 'panoramica', 18000, 'sd4a5s'),
(2, 'periapical digital', 8000, 'asdas54'),
(3, 'paquete', 72000, 'asdasd45'),
(4, 'juego periapical', 52000, 'fdsf564'),
(5, 'modelo de estudio', 22000, 'gre25fre'),
(6, 'periapical', 8000, 'as45s'),
(7, 'prueba 3', 2000, 'asd555');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `id_paciente` int(11) NOT NULL,
  `tipo_dc` varchar(3) NOT NULL,
  `num_dc` int(15) NOT NULL,
  `nom_1` varchar(15) NOT NULL,
  `nom_2` varchar(15) NOT NULL,
  `ape_1` varchar(15) NOT NULL,
  `ape_2` varchar(15) NOT NULL,
  `ff_nac` date NOT NULL,
  `sexo` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`id_paciente`, `tipo_dc`, `num_dc`, `nom_1`, `nom_2`, `ape_1`, `ape_2`, `ff_nac`, `sexo`) VALUES
(1, 'NIT', 1108452824, 'oscar', 'javier', 'amortegui', '', '1987-09-15', 'Masculino'),
(2, 'CC', 15489572, 'luis', 'fernando', 'amortegui', 'garcia', '1985-02-19', 'Masculino'),
(3, 'CC', 11554477, 'luna', 'dayanna', 'ochoa', 'amortegui', '1993-05-15', 'Femenino'),
(4, 'CC', 598654, 'daniel', '', 'reyes', '', '1956-06-15', 'Masculino'),
(5, 'CC', 118545, 'aurora', '', 'garcia', '', '1965-09-07', 'Femenino'),
(6, 'CC', 46465465, 'omar', '', 'perez', '', '1956-03-15', 'Masculino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id_servicio` int(11) NOT NULL,
  `doctor` int(3) NOT NULL,
  `examen` int(3) NOT NULL,
  `credito` varchar(2) NOT NULL,
  `enviar` varchar(2) NOT NULL,
  `precio` int(6) NOT NULL,
  `cantidad` int(2) NOT NULL,
  `repetir` int(2) NOT NULL,
  `servicio_cita` int(4) NOT NULL,
  `obs_repetir` varchar(30) NOT NULL,
  `mensajero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id_servicio`, `doctor`, `examen`, `credito`, `enviar`, `precio`, `cantidad`, `repetir`, `servicio_cita`, `obs_repetir`, `mensajero`) VALUES
(1, 1, 4, 'si', 'no', 52000, 3, 0, 1, '', 0),
(2, 1, 1, 'no', 'no', 18000, 3, 0, 34, '', 0),
(3, 1, 4, 'no', 'no', 52000, 0, 1, 35, '', 0),
(4, 4, 3, 'si', 'si', 72000, 2, 0, 37, '', 8),
(5, 1, 4, 'no', 'no', 52000, 2, 0, 42, '', 0),
(6, 1, 4, 'si', 'no', 52000, 3, 0, 37, '', 0),
(7, 1, 5, 'no', 'si', 22000, 1, 0, 37, '', 8),
(8, 1, 4, 'si', 'si', 15, 3, 1, 53, '', 8),
(9, 1, 3, 'no', 'si', 72, 2, 1, 53, '', 8),
(10, 4, 1, 'si', 'no', 17000, 1, 0, 55, '', 0),
(11, 1, 4, 'no', 'no', 52000, 2, 0, 56, '', 0),
(12, 5, 1, 'si', 'si', 13000, 2, 6, 57, 'borrosa', 8),
(13, 1, 4, 'no', 'no', 52000, 13, 4, 57, 'nitida', 0),
(14, 1, 5, 'si', 'si', 22000, 3, 0, 58, '', 8),
(15, 1, 4, 'no', 'no', 52000, 3, 0, 60, '', 0),
(16, 1, 4, 'si', 'no', 52000, 3, 0, 61, '', 0),
(17, 1, 3, 'no', 'no', 72000, 5, 0, 61, '', 0),
(18, 1, 4, 'si', 'si', 10000, 2, 0, 59, '', 8),
(19, 4, 1, 'si', 'si', 15000, 2, 0, 62, '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nom_usuario` varchar(40) NOT NULL,
  `nick` varchar(10) NOT NULL,
  `clave` varchar(10) NOT NULL,
  `tipo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nom_usuario`, `nick`, `clave`, `tipo`) VALUES
(1, 'javier saenz trujillo', 'javisaenz', 'admin123', 1),
(2, 'jenny llanos', 'jenny2016', '1234', 2),
(3, 'daniel', 'daniel', '1234', 3),
(4, 'aide', 'aide52', '12345', 1),
(5, 'jujujuj', 'ghghg', 'ghhghg', 2),
(6, 'prueba2', 'asd2', 'asdasd2', 2),
(7, 'manuel', 'mao', '1234', 2),
(8, 'camilo', 'cami', '1234', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id_cargo`);

--
-- Indices de la tabla `cita`
--
ALTER TABLE `cita`
  ADD PRIMARY KEY (`id_cita`),
  ADD KEY `cita_paciente` (`cita_paciente`);

--
-- Indices de la tabla `consecutivo`
--
ALTER TABLE `consecutivo`
  ADD PRIMARY KEY (`id_consecutivo`);

--
-- Indices de la tabla `dr`
--
ALTER TABLE `dr`
  ADD PRIMARY KEY (`id_doctor`);

--
-- Indices de la tabla `examen`
--
ALTER TABLE `examen`
  ADD PRIMARY KEY (`id_examen`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id_servicio`),
  ADD KEY `examen` (`examen`),
  ADD KEY `doctor` (`doctor`),
  ADD KEY `servicio_cita` (`servicio_cita`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `tipo` (`tipo`),
  ADD KEY `tipo_2` (`tipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `cita`
--
ALTER TABLE `cita`
  MODIFY `id_cita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT de la tabla `consecutivo`
--
ALTER TABLE `consecutivo`
  MODIFY `id_consecutivo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dr`
--
ALTER TABLE `dr`
  MODIFY `id_doctor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `examen`
--
ALTER TABLE `examen`
  MODIFY `id_examen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `cita` (`cita_paciente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD CONSTRAINT `servicio_ibfk_1` FOREIGN KEY (`examen`) REFERENCES `examen` (`id_examen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `servicio_ibfk_2` FOREIGN KEY (`servicio_cita`) REFERENCES `cita` (`id_cita`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`tipo`) REFERENCES `cargos` (`id_cargo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
