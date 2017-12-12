-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-12-2017 a las 00:53:10
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `9001`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivo`
--

CREATE TABLE `archivo` (
  `id_doc` int(11) NOT NULL,
  `num_archivo` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `autor` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `archivo` text COLLATE utf8_spanish2_ci,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area_procesos`
--

CREATE TABLE `area_procesos` (
  `cod_area` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `area_procesos`
--

INSERT INTO `area_procesos` (`cod_area`, `nombre`) VALUES
('CAR', 'Análisis causal y resolución'),
('CM', 'Gestión de configuración'),
('DAR', 'Análisis de desiciones y resolución'),
('IPM + IPPD', 'Gestión integrada del proyecto'),
('MA', 'Medición y análisis'),
('OID', 'Innovacion y despliegue en la organización'),
('OPD + IPPD', 'Definición de procesos de la organización'),
('OPF', 'Enfoque en Procesos de la Organización'),
('OPP', 'Rendimiento del proceso de la organización'),
('OT', 'Formación organizativa'),
('PI', 'Integración de producto'),
('PMC', 'Monitorización y control del proyecto'),
('PP', 'Planificación del proyecto'),
('PPQA', 'Asegramiento de la calidad de proceso y de pr'),
('QPM', 'Gestión cuantitativa de proyeto'),
('RD', 'Desarrollo de requerimientos'),
('REQM', 'Gestión de requerimientos'),
('RSKM', 'Gestión de riesgos'),
('SAM', 'Gestión de acuerdos con proveedores'),
('TS', 'Solución técnica'),
('VAL', 'Validación'),
('VER', 'Verificación ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `medio` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `contacto` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `medio`, `contacto`) VALUES
(11, 'facebook', 'https://www.facebook.com/fferrrada'),
(11, 'telefono', '92198372893728'),
(14, 'facebook', 'gfghc'),
(14, 'telefono', '98787857857'),
(15, 'facebook', 'Auténtico Wang ante'),
(15, 'telefono', '999414602'),
(16, 'facebook', 'facebook'),
(16, 'telefono', '9324837483743');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentacion`
--

CREATE TABLE `documentacion` (
  `id_doc` int(11) NOT NULL,
  `version_proceso` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_inicio` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_fin` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `num_cambios` int(11) NOT NULL,
  `num_participantes` int(11) DEFAULT NULL,
  `id_proceso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `documentacion`
--

INSERT INTO `documentacion` (`id_doc`, `version_proceso`, `fecha_inicio`, `fecha_fin`, `num_cambios`, `num_participantes`, `id_proceso`) VALUES
(1, '1.0.0', '06/12/2017', '', 0, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE `documento` (
  `id_doc` int(11) NOT NULL,
  `num_documento` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `cuerpo` text COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `autor` varchar(45) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formacion`
--

CREATE TABLE `formacion` (
  `id_usuario` int(11) NOT NULL,
  `aniosexperiencia` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Ntrabajos` int(11) DEFAULT NULL,
  `grado` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Cursosodiplomados` text COLLATE utf8_spanish2_ci,
  `recomendaciones` text COLLATE utf8_spanish2_ci,
  `curriculum` text COLLATE utf8_spanish2_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `formacion`
--

INSERT INTO `formacion` (`id_usuario`, `aniosexperiencia`, `Ntrabajos`, `grado`, `Cursosodiplomados`, `recomendaciones`, `curriculum`) VALUES
(11, '', 0, '', '', '', ''),
(14, '', 0, '', '', '', ''),
(15, '', 0, '', '', '', ''),
(16, '', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_contactos`
--

CREATE TABLE `lista_contactos` (
  `id_contacto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicions`
--

CREATE TABLE `medicions` (
  `id` int(11) NOT NULL,
  `id_proceso` int(11) NOT NULL,
  `fecha_medicion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `detalles` text COLLATE utf8_spanish2_ci,
  `anotacion_mejora` text COLLATE utf8_spanish2_ci,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `medicions`
--

INSERT INTO `medicions` (`id`, `id_proceso`, `fecha_medicion`, `detalles`, `anotacion_mejora`, `id_usuario`) VALUES
(1, 1, '2017-12-06 15:51:57', 'ewqeqwe', 'qweqweqw', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objetivo`
--

CREATE TABLE `objetivo` (
  `id_objetivo` int(11) NOT NULL,
  `to_make` varchar(1000) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `resources` varchar(1000) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tipo_indicador` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `id_proceso` int(11) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `objetivo`
--

INSERT INTO `objetivo` (`id_objetivo`, `to_make`, `resources`, `tipo_indicador`, `id_proceso`, `id_usuario`) VALUES
(1, 'accon 1', 'eqweqw', 'ewqeqw', 1, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `id_usuario` int(11) NOT NULL,
  `ocupacion` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fecha ingreso` date DEFAULT NULL,
  `horarios` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`id_usuario`, `ocupacion`, `fecha ingreso`, `horarios`) VALUES
(11, 'personal', NULL, 'ldaksdkasd'),
(15, 'Personal', NULL, 'De lunes a viernes'),
(16, 'personal', NULL, 'lunes 09:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso`
--

CREATE TABLE `proceso` (
  `id_proceso` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `id_responsable` int(11) NOT NULL,
  `metas` varchar(400) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `implementacion` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tiempo_medicion` int(11) DEFAULT NULL,
  `cod_area` varchar(45) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `proceso`
--

INSERT INTO `proceso` (`id_proceso`, `nombre`, `id_responsable`, `metas`, `implementacion`, `tiempo_medicion`, `cod_area`) VALUES
(1, 'proceso 1', 11, '*meta1\r\n*meta2', 'implkementacvion1', 30, 'REQM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `riesgos`
--

CREATE TABLE `riesgos` (
  `id_riesgo` int(11) NOT NULL,
  `titulo` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcion` varchar(400) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `id_proceso` int(11) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `riesgos`
--

INSERT INTO `riesgos` (`id_riesgo`, `titulo`, `descripcion`, `id_proceso`, `id_usuario`) VALUES
(1, 'riesgo 1', 'wqeqweqw\r\ne\r\nqw\r\ne\r\nwq\r\neqweqew', 1, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `rut` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellido` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `password` varchar(150) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tipo` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `estado` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fecha_nac` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created_at` timestamp(1) NULL DEFAULT NULL,
  `updated_at` timestamp(1) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `rut`, `nombre`, `apellido`, `email`, `password`, `tipo`, `estado`, `fecha_nac`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, '18.244.245-2', 'Felipe', 'Ferrada', 'personal@ucm.cl', '$2y$10$2lSNpowYD7Q05yvVuU3eOOKwRKTqEPGOKUqa4jX7FJCYVzspnSFP6', 'personal', 'activo', '12/02/1992', 'u81IhrBkDfO5c6JSzgwcjfJm3wEDAcRXSpVUpePKFFpIEbJpLEvnDLB3YOTP', '2017-12-05 13:01:32.0', '2017-12-05 13:01:32.0'),
(14, '197576576-2', 'boris', 'mora', 'admin@ucm.cl', '$2y$10$o9IUnY3DJ54vIPSXmywa4eE68ThJUtb2loS9xvRuFJJFuclu6f.KW', 'admin', 'activo', '12/04/1992', 'JdL88ScCSRFmlp7qbG40ExLR1gXVHOg7Jsehxz3KeROoMiLIPuZfm9wyYhMC', '2017-12-05 13:15:13.0', '2017-12-05 13:15:13.0'),
(15, '18.226.990-5', 'Nicolás', 'Muñoz', 'personal2@ucm.cl', '$2y$10$thhmYTtnLYiQT5MRSOJ3euM.1cxXDPPHZrnaScRL0te72/e5q9qtq', 'personal', 'activo', '05/11/1992', 'xFKSyDvxHSKkryog61EhhXDa8swyTQZcREwMlcUTrG8Au851inZrH4JAIB3y', '2017-12-05 13:20:08.0', '2017-12-05 13:20:08.0'),
(16, '18.226.9905', 'NICOLAS2', 'MMSS', 'personal4@ucm.cl', '$2y$10$kEV7zc55QenmxrMaKuntPOBOZmeuLXKoM7oAC3UDPM5q2SRaItIna', 'personal', 'activo', '12/04/1992', NULL, '2017-12-05 15:03:42.0', '2017-12-05 15:03:42.0');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `archivo`
--
ALTER TABLE `archivo`
  ADD PRIMARY KEY (`id_doc`,`num_archivo`);

--
-- Indices de la tabla `area_procesos`
--
ALTER TABLE `area_procesos`
  ADD PRIMARY KEY (`cod_area`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`,`medio`);

--
-- Indices de la tabla `documentacion`
--
ALTER TABLE `documentacion`
  ADD PRIMARY KEY (`id_doc`),
  ADD KEY `fk_documentacion_proceso1_idx` (`id_proceso`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`id_doc`,`num_documento`);

--
-- Indices de la tabla `formacion`
--
ALTER TABLE `formacion`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `lista_contactos`
--
ALTER TABLE `lista_contactos`
  ADD PRIMARY KEY (`id_contacto`,`id_usuario`),
  ADD KEY `fk_lista_contactos_users1_idx` (`id_usuario`);

--
-- Indices de la tabla `medicions`
--
ALTER TABLE `medicions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `fk_medicion` (`id_proceso`);

--
-- Indices de la tabla `objetivo`
--
ALTER TABLE `objetivo`
  ADD PRIMARY KEY (`id_objetivo`),
  ADD KEY `fk_objetivo_idx` (`id_proceso`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `fk_personal_users1_idx` (`id_usuario`);

--
-- Indices de la tabla `proceso`
--
ALTER TABLE `proceso`
  ADD PRIMARY KEY (`id_proceso`),
  ADD KEY `fk_area_idx` (`id_responsable`),
  ADD KEY `fk_proceso2_idx` (`cod_area`);

--
-- Indices de la tabla `riesgos`
--
ALTER TABLE `riesgos`
  ADD PRIMARY KEY (`id_riesgo`),
  ADD KEY `fk_riesgo_idx` (`id_proceso`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `documentacion`
--
ALTER TABLE `documentacion`
  MODIFY `id_doc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `medicions`
--
ALTER TABLE `medicions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `objetivo`
--
ALTER TABLE `objetivo`
  MODIFY `id_objetivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `proceso`
--
ALTER TABLE `proceso`
  MODIFY `id_proceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `riesgos`
--
ALTER TABLE `riesgos`
  MODIFY `id_riesgo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `archivo`
--
ALTER TABLE `archivo`
  ADD CONSTRAINT `fk_documento` FOREIGN KEY (`id_doc`) REFERENCES `documentacion` (`id_doc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD CONSTRAINT `fk_contacto` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `documentacion`
--
ALTER TABLE `documentacion`
  ADD CONSTRAINT `fk_documentacion_proceso1` FOREIGN KEY (`id_proceso`) REFERENCES `proceso` (`id_proceso`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `documento`
--
ALTER TABLE `documento`
  ADD CONSTRAINT `fk_doc` FOREIGN KEY (`id_doc`) REFERENCES `documentacion` (`id_doc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `formacion`
--
ALTER TABLE `formacion`
  ADD CONSTRAINT `fk_formacion` FOREIGN KEY (`id_usuario`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lista_contactos`
--
ALTER TABLE `lista_contactos`
  ADD CONSTRAINT `fk_lista_contactos_users1` FOREIGN KEY (`id_usuario`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `medicions`
--
ALTER TABLE `medicions`
  ADD CONSTRAINT `fk_medicion` FOREIGN KEY (`id_proceso`) REFERENCES `proceso` (`id_proceso`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `objetivo`
--
ALTER TABLE `objetivo`
  ADD CONSTRAINT `fk_objetivo` FOREIGN KEY (`id_proceso`) REFERENCES `proceso` (`id_proceso`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `personal`
--
ALTER TABLE `personal`
  ADD CONSTRAINT `fk_personal_users1` FOREIGN KEY (`id_usuario`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `proceso`
--
ALTER TABLE `proceso`
  ADD CONSTRAINT `fk_proceso` FOREIGN KEY (`id_responsable`) REFERENCES `personal` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_proceso2` FOREIGN KEY (`cod_area`) REFERENCES `area_procesos` (`cod_area`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `riesgos`
--
ALTER TABLE `riesgos`
  ADD CONSTRAINT `fk_riesgo` FOREIGN KEY (`id_proceso`) REFERENCES `proceso` (`id_proceso`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
