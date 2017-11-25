-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2017 a las 19:25:52
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
  `archivo` text COLLATE utf8_spanish2_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `archivo`
--

INSERT INTO `archivo` (`id_doc`, `num_archivo`, `titulo`, `autor`, `fecha`, `archivo`) VALUES
(1, 1, 'Informe pdf', '3', '25/11/2017 01:47pm', '/uploads/aebPd68lA3r40AOYRVgBAv7Tldtx8V3H07iyWvwyCFrXl1lGdd-Procedimiento-de-Tesis.pdf'),
(1, 2, 'Informe seguimiento y monitoreo de alumnos de primer año. Proceso de inducción', '3', '25/11/2017 02:19pm', '/uploads/GPVaZUagbOEbJt6wqFIRvTs1LNVmtXkIOUBCGGYZdYzAEOL5CC-Procedimiento-de-Tesis.docx'),
(1, 3, 'instalador composer', '3', '25/11/2017 02:30pm', '/uploads/Uj887mNcsWKZUmuVPn1e5mbJEQZu3GjLIdjosAwUpQFQ57JhO9-Composer-Setup.exe');

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
('CM', 'Gestión de configuración'),
('MA', 'Medición y análisis'),
('PP', 'Planificación del proyecto'),
('RD', 'Desarrollo de requerimientos'),
('RSKM', 'Gestión de riesgos'),
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
(1, 'facebook', 'https://www.facebook.com/bmora'),
(1, 'telefono', '937483744343'),
(2, 'facebook', 'https://www.facebook.com/nmunoz'),
(2, 'telefono', '9323987237237'),
(3, 'facebook', 'https://www.facebook.com/fferrada'),
(3, 'telefono', '83828632623'),
(4, 'facebook', 'https://www.facebook.com/dalcayaga'),
(4, 'telefono', '8233628362832');

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
(1, '1.0.0', '13/11/2017', '', 0, 1, 8);

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

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`id_doc`, `num_documento`, `titulo`, `cuerpo`, `fecha`, `autor`) VALUES
(1, 1, 'Documento #1', 'La Norma ISO 9001:2015 elaborada por la Organización Internacional para la Normalización (ISO por sus siglas en inglés), determina los requisitos para un Sistema de Gestión de la Calidad, que pueden utilizarse para su aplicación interna por las organizaciones, sin importar si el producto y/o servicio que brinda una organización pública o empresa privadas, cualquiera que sea su rama, para su certificación o con fines contractuales.\r\nLa Organización Internacional de Normalización es un organismo independiente, no gubernamental que reúne actualmente a 162 miembros de distintos países alrededor del mundo. Este organismo se inició tras la Segunda Guerra Mundial (febrero de 1947) en donde delegados de 25 países se reunieron en Inglaterra para coordinar y unificar estándares mundiales.\r\nDependiendo del país, puede denominarse la misma norma \"ISO 9001\" de diferente forma agregándose la denominación del organismo que la representan dentro del país: UNE-EN-ISO 9001:2015 (España), IRAM-ISO 9001:2015 (Argentina), NTC-ISO 9001:2015 (Colombia), etc., acompañada del año de la última actualización de la norma.\r\nISO 9001: contiene los requisitos del modelo de gestión.\r\nISO 9004: contiene a la antigua ISO 9001, y además amplía cada uno de los puntos con más explicaciones y casos, e invita a los implantadores a ir más allá de los requisitos con nuevas ideas, que apunta a eficiencia del sistema.\r\nISO 19011 en su nueva versión 2011: detalla los requisitos para realizar las auditorías de un sistema de gestión ISO 9001 y también para el sistema de gestión medioambiental establecido en ISO 14001.', '24/11/2017 09:55pm', '2'),
(1, 2, 'Estructura ISO 9001', 'Estructura de ISO 9001:2008[editar]\r\nCapítulo 1 al 3: guías y descripciones generales.\r\nCapítulo 4 - Sistema de gestión: contiene los requisitos generales y los requisitos para gestionar la documentación.\r\nCapítulo 5 - Responsabilidades de la Dirección: contiene los requisitos que debe cumplir la dirección de la organización, tales como definir la política, asegurar que las responsabilidades y autoridades están definidas, aprobar objetivos, el compromiso de la dirección con la calidad, etc.\r\nCapítulo 6 - Gestión de los recursos: la Norma distingue 3 tipos de recursos sobre los cuales se debe actuar: recursos humanos, infraestructura, y ambiente de trabajo. Aquí se contienen los requisitos exigidos en su gestión.\r\nCapítulo 7 - Realización del producto/servicio: aquí están contenidos los requisitos puramente de lo que se produce o brinda como servicio (la norma incluye servicio cuando denomina \"producto\"), desde la atención al cliente, hasta la entrega del producto o el servicio.\r\nCapítulo 8 - Medición, análisis y mejora: aquí se sitúan los requisitos para los procesos que recopilan información, la analizan, y que actúan en consecuencia. El objetivo es mejorar continuamente la capacidad de la organización para suministrar productos y/o servicios que cumplan con los requisitos. El objetivo declarado en la Norma, es que la organización busque sin descanso la satisfacción del cliente a través del cumplimiento de los requisitos.\r\nISO 9001:2008 tiene muchas semejanzas con el famoso “PDCA”, acrónimo de Plan, Do, Check, Act (\"Planificar, Hacer, Verificar, Actuar\").[cita requerida] La norma está estructurada en cuatro grandes bloques, completamente lógicos, y esto significa que con el modelo de sistema de gestión de calidad basado en ISO se puede desarrollar en cualquier actividad, sin importar si el producto o servicio lo brinda una organización pública o privada, cualquiera que sea su tamaño. La norma ISO 9000:2000 (obsoleta) se va a presentar con una estructura válida para diseñar e implantar cualquier sistema de gestión, no solamente el de calidad, e incluso para integrar diferentes versiones.\r\nLa nueva ISO 9001:2015[editar]\r\nDesde junio del 2012 se inició la revisión de la versión actual de la norma; ciertamente la intención es hacer una renovación mayor. Se busca que con el uso y certificación de esta norma las empresas sean más competitivas para el año 2020. Según el INLAC la norma cambiará en un 30%, respecto a la versión 2008; teniendo una estructura de alto nivel, incorporando dos nuevos requisitos quedando su estructura de la siguiente manera:1​\r\nAlcance\r\nReferencias Normativas\r\nTérminos y Definiciones\r\nContexto de la Organización\r\nLiderazgo\r\nPlanificación\r\nSoporte\r\nOperación\r\nEvaluación del Desempeño\r\nMejora\r\nEl proceso de revisión de la norma ISO 9001 inicia su fase final, después de que el pasado 3 de junio se publicara el borrador de la ISO 9001:2015, elaborado por el comité técnico ISO/TC 176 responsable de elaborar las normas de ISO 9000 y complementarias. Siguiendo la planificación prevista, el FDIS (borrador final) se publicará en noviembre de 2014 para poder publicar definitivamente la nueva versión de la norma en el otoño del año 2015.\r\nLa Norma ISO 9001 especifica los requisitos para un sistema de gestión de la calidad que pueden utilizarse para su aplicación interna por las organizaciones, para certificación o con fines contractuales. Se centra en la eficacia del sistema de gestión de la calidad para satisfacer los requisitos del cliente.\r\nLa versión oficial fue publicada el 15 de septiembre del 2015 y desde entonces está disponible para ser adquirida en www.iso.org. Esta es la 5ta edición de esta norma internacional y sustituye a la versión anterior.\r\nLas organizaciones certificada ISO 9001:2008 requieren realizar un proceso de transición a la nueva edición, de cara a mantener la certificación.', '24/11/2017 10:34pm', '2');

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
-- Estructura de tabla para la tabla `medicion`
--

CREATE TABLE `medicion` (
  `id_proceso` int(11) NOT NULL,
  `fecha_medicion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `detalles` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `anotacion_mejora` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objetivo`
--

CREATE TABLE `objetivo` (
  `id_objetivo` int(11) NOT NULL,
  `to_make` varchar(1000) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `resources` varchar(1000) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tipo_indicador` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `id_proceso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `objetivo`
--

INSERT INTO `objetivo` (`id_objetivo`, `to_make`, `resources`, `tipo_indicador`, `id_proceso`) VALUES
(1, 'Reducir burocracia al matricularse', 'Portal del alumno, encargado del portal', 'cantidad de matriculas por periodo', 3);

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
(2, 'desarrollador laravel', NULL, 'Lunes a viernes 08:00 a 17:00'),
(3, 'desarrollador laravel', NULL, 'Lunes a miercoles 09:00 a 12:00'),
(4, 'Analista', NULL, 'Lunes a sabado 10:00 a 15:00');

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
(2, 'Toma de ramos', 2, '*Realizar proceso sin retrasos\r\n*Reducir inconsistencias\r\n*Asegurar que los alumnos tomen ramos', 'Habilitar opción en el sistema', 3, 'PP'),
(3, 'Matricula', 3, '*Agilizar proceso de matricula\r\n*Aumentar las matriculas', 'Habilitar opción en el sistema', 2, 'MA'),
(8, 'Recopilación de información alumnos', 3, '*dasdasd\r\n*fewtwet ewr wer we', 'eweqweq', 30, 'MA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `riesgos`
--

CREATE TABLE `riesgos` (
  `id_riesgo` int(11) NOT NULL,
  `titulo` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcion` varchar(400) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `id_proceso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `riesgos`
--

INSERT INTO `riesgos` (`id_riesgo`, `titulo`, `descripcion`, `id_proceso`) VALUES
(1, 'Pocas fichas', 'Puede que las fichas no alcancen para todos los alumnos, lo que significaria una perdida de información', 8);

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
(1, '19.235.566-K', 'Boris', 'Mora', 'admin@ucm.cl', '$2y$10$wYARPc4n61ugclrlY.tnkeLFnVkUeWZewQZI/zZ2b/8/rSuL9fpwO', 'admin', 'activo', '27/02/1992', 'jlu1tl1LvKMozRuQTvTi7I2jVOf49JboEuRhK83iM52hIAW22GxWLGX4eK2b', '2017-10-25 22:40:52.0', '2017-10-25 22:40:52.0'),
(2, '18.344.546-2', 'Nicolas', 'Muñoz', 'personal@ucm.cl', '$2y$10$.idLdZDtxa88uOkyYKI9ceo3ZPRH5YFtAipkKEbdi583WIqapksgW', 'personal', 'activo', '18/05/1991', 'f9vhNz7ZbHS4jO0WahGzCamnr07uZLneVcpYZsEcaPEFZONdEhDIxceRKna2', '2017-10-25 22:44:06.0', '2017-10-25 22:44:06.0'),
(3, '17.456.467-8', 'Felipe', 'Ferrada', 'personal2@ucm.cl', '$2y$10$h6JMKThc3K/bS0VV9DiKleWuKSqSPRQVY06.2paw/XB.rnRDxiRqe', 'personal', 'activo', '18/09/1992', NULL, '2017-10-25 22:45:55.0', '2017-10-25 22:45:55.0'),
(4, '18.345.666-5', 'Diego', 'Alcayaga', 'personal3@ucm.cl', '$2y$10$FL9yHhKygzFK4s/zi6ID5OBXqB28yqkflyhJvHMjKVMUKfmDXpnga', 'personal', 'activo', '12/12/1993', NULL, '2017-10-25 22:47:28.0', '2017-10-25 22:47:28.0');

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
  ADD PRIMARY KEY (`id_contacto`),
  ADD KEY `fk_lista_contactos_users1_idx` (`id_usuario`);

--
-- Indices de la tabla `medicion`
--
ALTER TABLE `medicion`
  ADD PRIMARY KEY (`id_proceso`,`fecha_medicion`);

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
-- AUTO_INCREMENT de la tabla `objetivo`
--
ALTER TABLE `objetivo`
  MODIFY `id_objetivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `proceso`
--
ALTER TABLE `proceso`
  MODIFY `id_proceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `riesgos`
--
ALTER TABLE `riesgos`
  MODIFY `id_riesgo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  ADD CONSTRAINT `fk_formacion` FOREIGN KEY (`id_usuario`) REFERENCES `personal` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lista_contactos`
--
ALTER TABLE `lista_contactos`
  ADD CONSTRAINT `fk_lista_contactos_users1` FOREIGN KEY (`id_usuario`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `medicion`
--
ALTER TABLE `medicion`
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
