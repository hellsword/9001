-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2017 a las 21:56:46
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
(1, 1, 'Instrucciones de uso', '11', '09/12/2017 04:31pm', '/uploads/1NCOAbBOgoO2onWJbgZvLjZJpfZC8gBUadmXtFz2AHv9ec2T4q-Instrucciones de uso.docx');

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
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `num_cambios` int(11) NOT NULL,
  `num_participantes` int(11) DEFAULT NULL,
  `id_proceso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `documentacion`
--

INSERT INTO `documentacion` (`id_doc`, `version_proceso`, `fecha_inicio`, `fecha_fin`, `num_cambios`, `num_participantes`, `id_proceso`) VALUES
(1, '1.0.0', '2017-06-14', '2017-12-08', 0, 1, 1),
(2, '1.0.0', '2016-09-06', '2017-12-22', 0, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE `documento` (
  `id_doc` int(11) NOT NULL,
  `num_documento` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `cuerpo` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `autor` varchar(45) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`id_doc`, `num_documento`, `titulo`, `cuerpo`, `fecha`, `autor`) VALUES
(1, 1, 'ISO 9001', '<p>La&nbsp;<strong>Norma ISO 9001:2015</strong>&nbsp;elaborada por la&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_para_la_Normalizaci%C3%B3n\">Organizaci&oacute;n Internacional para la Normalizaci&oacute;n</a>&nbsp;(ISO por sus siglas en ingl&eacute;s), determina los requisitos para un&nbsp;<a href=\"https://es.wikipedia.org/wiki/Sistema_de_Gesti%C3%B3n_de_la_Calidad\">Sistema de Gesti&oacute;n de la Calidad</a>, que pueden utilizarse para su aplicaci&oacute;n interna por las organizaciones, sin importar si el producto y/o servicio lo brinda una organizaci&oacute;n p&uacute;blica o empresa privada, cualquiera que sea su rama, para su certificaci&oacute;n o con fines contractuales.</p>\r\n\r\n<p>La Organizaci&oacute;n Internacional de Normalizaci&oacute;n es un organismo independiente, no gubernamental que re&uacute;ne actualmente a 162 miembros de distintos pa&iacute;ses alrededor del mundo. Este organismo se inici&oacute; tras la Segunda Guerra Mundial (febrero de 1947) en donde delegados de 25 pa&iacute;ses se reunieron en Inglaterra para coordinar y unificar est&aacute;ndares mundiales.</p>\r\n\r\n<p>Dependiendo del pa&iacute;s, puede denominarse la misma norma &quot;ISO 9001&quot; de diferente forma agreg&aacute;ndose la denominaci&oacute;n del organismo que la representan dentro del pa&iacute;s: UNE-EN-ISO 9001:2015 (Espa&ntilde;a), IRAM-ISO 9001:2015 (Argentina), NTC-ISO 9001:2015 (Colombia), etc., acompa&ntilde;ada del a&ntilde;o de la &uacute;ltima actualizaci&oacute;n de la norma.</p>\r\n\r\n<ul>\r\n	<li>ISO 9001: contiene los requisitos del modelo de gesti&oacute;n.</li>\r\n	<li>ISO 9004: contiene a la antigua ISO 9001, y adem&aacute;s ampl&iacute;a cada uno de los puntos con m&aacute;s explicaciones y casos, e invita a los implantadores a ir m&aacute;s all&aacute; de los requisitos con nuevas ideas, que apunta a eficiencia del sistema.</li>\r\n	<li>ISO 19011 en su nueva versi&oacute;n 2011: detalla los requisitos para realizar las auditor&iacute;as de un sistema de gesti&oacute;n ISO 9001 y tambi&eacute;n para el sistema de gesti&oacute;n medioambiental establecido en&nbsp;<a href=\"https://es.wikipedia.org/wiki/ISO_14001\">ISO 14001</a>.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>&Iacute;ndice</h2>\r\n\r\n<p>&nbsp;&nbsp;[ocultar]&nbsp;</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/ISO_9001#Estructura_de_ISO_9001:2008\">1Estructura de ISO 9001:2008</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/ISO_9001#La_nueva_ISO_9001:2015\">2La nueva ISO 9001:2015</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/ISO_9001#Diferencias_entre_la_versión_2008_y_la_versión_2015\">3Diferencias entre la versi&oacute;n 2008 y la versi&oacute;n 2015</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/ISO_9001#Véase_también\">4V&eacute;ase tambi&eacute;n</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/ISO_9001#Referencias\">5Referencias</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/ISO_9001#Enlaces_externos\">6Enlaces externos</a></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Estructura de ISO 9001:2008[<a href=\"https://es.wikipedia.org/w/index.php?title=ISO_9001&amp;action=edit&amp;section=1\">editar</a>]</h2>\r\n\r\n<ul>\r\n	<li><strong>Cap&iacute;tulo 1 al 3</strong>: gu&iacute;as y descripciones generales.</li>\r\n	<li><strong>Cap&iacute;tulo 4 - Sistema de gesti&oacute;n</strong>: contiene los requisitos generales y los requisitos para gestionar la documentaci&oacute;n.</li>\r\n	<li><strong>Cap&iacute;tulo 5 - Responsabilidades de la Direcci&oacute;n</strong>: contiene los requisitos que debe cumplir la direcci&oacute;n de la organizaci&oacute;n, tales como definir la pol&iacute;tica, asegurar que las responsabilidades y autoridades est&aacute;n definidas, aprobar objetivos, el compromiso de la direcci&oacute;n con la calidad, etc.</li>\r\n	<li><strong>Cap&iacute;tulo 6 - Gesti&oacute;n de los recursos</strong>: la Norma distingue 3 tipos de recursos sobre los cuales se debe actuar:&nbsp;<a href=\"https://es.wikipedia.org/wiki/Recursos_humanos\">recursos humanos</a>, infraestructura, y ambiente de trabajo. Aqu&iacute; se contienen los requisitos exigidos en su gesti&oacute;n.</li>\r\n	<li><strong>Cap&iacute;tulo 7 - Realizaci&oacute;n del producto/servicio</strong>: aqu&iacute; est&aacute;n contenidos los requisitos puramente de lo que se produce o brinda como servicio (la norma incluye servicio cuando denomina &quot;producto&quot;), desde la atenci&oacute;n al cliente, hasta la entrega del producto o el servicio.</li>\r\n	<li><strong>Cap&iacute;tulo 8 - Medici&oacute;n, an&aacute;lisis y mejora</strong>: aqu&iacute; se sit&uacute;an los requisitos para los procesos que recopilan informaci&oacute;n, la analizan, y que act&uacute;an en consecuencia. El objetivo es mejorar continuamente la capacidad de la organizaci&oacute;n para suministrar productos y/o servicios que cumplan con los requisitos. El objetivo declarado en la Norma, es que la organizaci&oacute;n busque sin descanso la satisfacci&oacute;n del cliente a trav&eacute;s del cumplimiento de los requisitos.</li>\r\n</ul>\r\n\r\n<p><strong>ISO 9001:2008</strong>&nbsp;tiene muchas semejanzas con el famoso &ldquo;<a href=\"https://es.wikipedia.org/wiki/C%C3%ADrculo_de_Deming\">PDCA</a>&rdquo;, acr&oacute;nimo de&nbsp;<em>Plan, Do, Check, Act</em>&nbsp;(&quot;Planificar, Hacer, Verificar, Actuar&quot;).[<em><a href=\"https://es.wikipedia.org/wiki/Wikipedia:Verificabilidad\">cita&nbsp;requerida</a></em>]&nbsp;La norma est&aacute; estructurada en cuatro grandes bloques, completamente l&oacute;gicos, y esto significa que con el modelo de sistema de gesti&oacute;n de calidad basado en ISO se puede desarrollar en cualquier actividad, sin importar si el producto o servicio lo brinda una organizaci&oacute;n p&uacute;blica o privada, cualquiera que sea su tama&ntilde;o. La norma ISO 9000:2000 (obsoleta) se va a presentar con una estructura v&aacute;lida para dise&ntilde;ar e implantar cualquier sistema de gesti&oacute;n, no solamente el de calidad, e incluso para integrar diferentes versiones.</p>\r\n\r\n<h2>La nueva ISO 9001:2015[<a href=\"https://es.wikipedia.org/w/index.php?title=ISO_9001&amp;action=edit&amp;section=2\">editar</a>]</h2>\r\n\r\n<p>Desde junio del 2012 se inici&oacute; la revisi&oacute;n de la versi&oacute;n actual de la norma; ciertamente la intenci&oacute;n es hacer una renovaci&oacute;n mayor. Se busca que con el uso y certificaci&oacute;n de esta norma las empresas sean m&aacute;s competitivas para el a&ntilde;o 2020. Seg&uacute;n el INLAC la norma cambiar&aacute; en un 30%, respecto a la versi&oacute;n 2008; teniendo una estructura de alto nivel, incorporando dos nuevos requisitos quedando su estructura de la siguiente manera:<a href=\"https://es.wikipedia.org/wiki/ISO_9001#cite_note-1\">1</a>​</p>\r\n\r\n<ol>\r\n	<li><strong>Alcance</strong></li>\r\n	<li><strong>Referencias Normativas</strong></li>\r\n	<li><strong>T&eacute;rminos y Definiciones</strong></li>\r\n	<li><strong>Contexto de la Organizaci&oacute;n</strong></li>\r\n	<li><strong>Liderazgo</strong></li>\r\n	<li><strong>Planificaci&oacute;n</strong></li>\r\n	<li><strong>Soporte</strong></li>\r\n	<li><strong>Operaci&oacute;n</strong></li>\r\n	<li><strong>Evaluaci&oacute;n del Desempe&ntilde;o</strong></li>\r\n	<li><strong>Mejora</strong></li>\r\n</ol>\r\n\r\n<p>El proceso de revisi&oacute;n de la norma ISO 9001 inicia su fase final, despu&eacute;s de que el pasado 3 de junio se publicara el borrador de la ISO 9001:2015, elaborado por el comit&eacute; t&eacute;cnico ISO/TC 176 responsable de elaborar las normas de ISO 9000 y complementarias. Siguiendo la planificaci&oacute;n prevista, el FDIS (borrador final) se publicar&aacute; en noviembre de 2014 para poder publicar definitivamente la nueva versi&oacute;n de la norma en el oto&ntilde;o del a&ntilde;o 2015.</p>\r\n\r\n<p>La Norma ISO 9001 especifica los requisitos para un sistema de gesti&oacute;n de la calidad que pueden utilizarse para su aplicaci&oacute;n interna por las organizaciones, para certificaci&oacute;n o con fines contractuales. Se centra en la eficacia del sistema de gesti&oacute;n de la calidad para satisfacer los requisitos del cliente.</p>\r\n\r\n<p>La versi&oacute;n oficial fue publicada el 15 de septiembre del 2015 y desde entonces est&aacute; disponible para ser adquirida en&nbsp;<a href=\"http://www.iso.org/\">www.iso.org</a>. Esta es la 5ta edici&oacute;n de esta norma internacional y sustituye a la versi&oacute;n anterior.</p>\r\n\r\n<p>Las organizaciones certificada ISO 9001:2008 requieren realizar un proceso de transici&oacute;n a la nueva edici&oacute;n, de cara a mantener la certificaci&oacute;n.</p>\r\n\r\n<h2>Diferencias entre la versi&oacute;n 2008 y la versi&oacute;n 2015[<a href=\"https://es.wikipedia.org/w/index.php?title=ISO_9001&amp;action=edit&amp;section=3\">editar</a>]</h2>\r\n\r\n<p>Seg&uacute;n el borrador publicado por la organizaci&oacute;n ISO, se pueden apreciar cambios sustanciales en la nueva versi&oacute;n con respecto a la versi&oacute;n de 2008. Estos cambios, seg&uacute;n las comparaciones que se han podido realizar al respecto, abordan los siguientes aspectos:<a href=\"https://es.wikipedia.org/wiki/ISO_9001#cite_note-2\">2</a>​</p>\r\n\r\n<ul>\r\n	<li>Mejora la redacci&oacute;n hacia un enfoque m&aacute;s general y adaptado a las entidades de servicios. Se centra en la planificaci&oacute;n y el liderazgo y cambiando el t&eacute;rmino &quot;realizaci&oacute;n de productos&quot; por el de &quot;operaciones&quot;.</li>\r\n	<li>&Eacute;nfasis en el enfoque basado en procesos. La nueva versi&oacute;n cuenta con una cl&aacute;usula espec&iacute;fica donde se define un conjunto de requisitos para que una entidad adopte este enfoque basado en procesos.</li>\r\n	<li>De acciones preventivas a prevenci&oacute;n a m&aacute;s alto nivel. El apartado donde en la antigua versi&oacute;n se habla sobre esto desaparece. Sin embargo, se habla de la prevenci&oacute;n a mayor escala, en coherencia con nuevos puntos sobre la gesti&oacute;n del riesgo, aspecto que se aborda con m&aacute;s profundidad.</li>\r\n	<li>Cambios terminol&oacute;gicos.\r\n	<ul>\r\n		<li>Los t&eacute;rminos &quot;documento&quot; y &quot;registro&quot; se sustituyen por el de &quot;informaci&oacute;n documentada&quot;.</li>\r\n		<li>El t&eacute;rmino &quot;cliente&quot; pasa a denominarse &quot;parte interesada&quot;, lo que cuadra con un nuevo enfoque hacia la calidad total y los modelos de Excelencia empresarial.</li>\r\n	</ul>\r\n	</li>\r\n	<li>M&aacute;s detalle en la Gesti&oacute;n del Cambio: Tambi&eacute;n muy relacionado con los modelos de Excelencia est&aacute; el apartado sobre &quot;Planificaci&oacute;n y control de cambios&quot;, con mejoras sobre la versi&oacute;n actual.</li>\r\n	<li>Mayor compatibilidad con otras normas. Esta nueva versi&oacute;n es una norma de alto nivel.</li>\r\n	<li>Se pasa de 8 principios a 7 principios de un Sistema de Gesti&oacute;n.</li>\r\n</ul>\r\n\r\n<h2>V&eacute;ase tambi&eacute;n[<a href=\"https://es.wikipedia.org/w/index.php?title=ISO_9001&amp;action=edit&amp;section=4\">editar</a>]</h2>\r\n\r\n<ul>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Aseguramiento_de_la_calidad\">Aseguramiento de la calidad</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/SRM#Desarrollo_de_proveedores\">Desarrollo de proveedores</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/ISO_9000\">ISO 9000</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Monozukuri\">Monozukuri</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Sistema_integrado_de_gesti%C3%B3n\">Sistema integrado de gesti&oacute;n</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Sistema_de_producci%C3%B3n\">Sistema de producci&oacute;n</a></li>\r\n</ul>\r\n\r\n<h2>Referencias[<a href=\"https://es.wikipedia.org/w/index.php?title=ISO_9001&amp;action=edit&amp;section=5\">editar</a>]</h2>\r\n\r\n<ol>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/ISO_9001#cite_ref-1\">Volver arriba&uarr;</a>&nbsp;<a href=\"http://www.inlac.org/\">http://www.inlac.org</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/ISO_9001#cite_ref-2\">Volver arriba&uarr;</a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/ISO_9001:2015\">ISO 9001:2015</a>&nbsp;Primeros draft, art&iacute;culos t&eacute;cnicos y comentarios.</li>\r\n</ol>\r\n\r\n<h2>Enlaces externos[<a href=\"https://es.wikipedia.org/w/index.php?title=ISO_9001&amp;action=edit&amp;section=6\">editar</a>]</h2>\r\n\r\n<ul>\r\n	<li><a href=\"http://www.iso90012015.com.ar/\">ISO 9001:2015</a>: Principales cambios en la nueva versi&oacute;n de la ISO 9001</li>\r\n	<li><a href=\"http://www.bsigroup.es/\">BSI</a>: La ISO 9001 se basa en la norma BS5750, que fue publicada oficialmente por British Standards Institution (BSI)</li>\r\n	<li><a href=\"http://www.iso.org/\">ISO</a>: P&aacute;gina principal de la organizaci&oacute;n ISO</li>\r\n</ul>', '09/12/2017 04:30pm', '11');
INSERT INTO `documento` (`id_doc`, `num_documento`, `titulo`, `cuerpo`, `fecha`, `autor`) VALUES
(1, 2, 'Organización Internacional de Normalización', '<p>La&nbsp;<strong>Organizaci&oacute;n Internacional de Normalizaci&oacute;n</strong>&nbsp;(originalmente en ingl&eacute;s:&nbsp;<em>International Organization for Standardization</em>, conocida por las&nbsp;<a href=\"https://es.wikipedia.org/wiki/Siglas\">siglas</a>&nbsp;<strong>ISO</strong>) es una organizaci&oacute;n para la creaci&oacute;n de est&aacute;ndares internacionales compuesta por diversas&nbsp;<a href=\"https://es.wikipedia.org/wiki/Normalizaci%C3%B3n#Organismos_Nacionales_de_Normalizaci.C3.B3n\">organizaciones nacionales de estandarizaci&oacute;n</a>.</p>\r\n\r\n<p>Fundada el&nbsp;<a href=\"https://es.wikipedia.org/wiki/23_de_febrero\">23 de febrero</a>&nbsp;de&nbsp;<a href=\"https://es.wikipedia.org/wiki/1947\">1947</a>, la organizaci&oacute;n promueve el uso de est&aacute;ndares propietarios, industriales y comerciales a nivel mundial. Su sede est&aacute; en&nbsp;<a href=\"https://es.wikipedia.org/wiki/Ginebra\">Ginebra</a>&nbsp;(<a href=\"https://es.wikipedia.org/wiki/Suiza\">Suiza</a>)<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-About_ISO-3\">3</a>​ y hasta 2015 trabajaba en 196 pa&iacute;ses.<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-4\">4</a>​</p>\r\n\r\n<p>Fue una de las primeras organizaciones a las que se le concedi&oacute;&nbsp;<a href=\"https://es.wikipedia.org/wiki/Anexo:Organizaciones_con_estado_consultivo_del_Consejo_Econ%C3%B3mico_y_Social_de_las_Naciones_Unidas\">estatus consultivo general</a>&nbsp;en el&nbsp;<a href=\"https://es.wikipedia.org/wiki/Consejo_Econ%C3%B3mico_y_Social_de_las_Naciones_Unidas\">Consejo Econ&oacute;mico y Social de las Naciones Unidas</a>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>&Iacute;ndice</h2>\r\n\r\n<p>&nbsp;&nbsp;[ocultar]&nbsp;</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#Introducción\">1Introducci&oacute;n</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#Nombre_y_siglas\">2Nombre y siglas</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#Historia\">3Historia</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#Estructura\">4Estructura</a>\r\n	<ul>\r\n		<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#Comités_conjuntos_con_IEC\">4.1Comit&eacute;s conjuntos con IEC</a>\r\n		<ul>\r\n			<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#ISO/IEC_JTC_1\">4.1.1ISO/IEC JTC 1</a></li>\r\n			<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#ISO/IEC_JTC_2\">4.1.2ISO/IEC JTC 2</a></li>\r\n		</ul>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#Afiliación\">5Afiliaci&oacute;n</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#Financiación\">6Financiaci&oacute;n</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#Estándares_Internacionales_y_otras_publicaciones\">7Est&aacute;ndares Internacionales y otras publicaciones</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#Productos_con_el_nombre_de_ISO\">8Productos con el nombre de ISO</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#Críticas\">9Cr&iacute;ticas</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#Véase_también\">10V&eacute;ase tambi&eacute;n</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#Referencias\">11Referencias</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#Lecturas_adicionales\">12Lecturas adicionales</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#Enlaces_externos\">13Enlaces externos</a></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Introducci&oacute;n[<a href=\"https://es.wikipedia.org/w/index.php?title=Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n&amp;action=edit&amp;section=1\">editar</a>]</h2>\r\n\r\n<p>La Organizaci&oacute;n Internacional de Estandarizaci&oacute;n (ISO) es una organizaci&oacute;n independiente y no-gubernamental formada por las organizaciones de estandarizaci&oacute;n de sus 163 pa&iacute;ses miembros. Es el mayor desarrollador mundial de est&aacute;ndares internacionales voluntarios y facilita el comercio mundial al proporcionar est&aacute;ndares comunes entre pa&iacute;ses. Se han establecido cerca de veinte mil est&aacute;ndares cubriendo desde productos manufacturados y tecnolog&iacute;a a seguridad alimenticia, agricultura y sanidad.<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-About_ISO-3\">3</a>​</p>\r\n\r\n<p>El uso de est&aacute;ndares facilita la creaci&oacute;n de productos y servicios que sean seguros, fiables y de calidad. Los est&aacute;ndares ayudan a los negocios a aumentar la productividad a la vez que minimizan los errores y el gasto. Al permitir comparar directamente productos de diferentes fabricantes, facilita que nuevas compa&ntilde;&iacute;as puedan entrar en nuevos mercados y ayudar en el desarrollo de un comercio global con bases justas. Los est&aacute;ndares tambi&eacute;n sirven para proteger a los consumidores y usuarios finales de productos y servicios, asegurando que los productos certificados se ajusten a los m&iacute;nimos estandarizados internacionalmente.<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-About_ISO-3\">3</a>​</p>\r\n\r\n<h2>Nombre y siglas[<a href=\"https://es.wikipedia.org/w/index.php?title=Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n&amp;action=edit&amp;section=2\">editar</a>]</h2>\r\n\r\n<p>Los tres idiomas oficiales de ISO son&nbsp;<a href=\"https://es.wikipedia.org/wiki/Idioma_ingl%C3%A9s\">ingl&eacute;s</a>,&nbsp;<a href=\"https://es.wikipedia.org/wiki/Idioma_franc%C3%A9s\">franc&eacute;s</a>&nbsp;y&nbsp;<a href=\"https://es.wikipedia.org/wiki/Idioma_ruso\">ruso</a>.<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-languages-5\">5</a>​ El nombre de la organizaci&oacute;n en franc&eacute;s es&nbsp;<em>Organisation internationale de normalisation</em>,&nbsp;<em>International Organization for Standarization</em>&nbsp;en ingl&eacute;s y&nbsp;<em>Международная организация по стандартизации</em>&nbsp;en ruso. Seg&uacute;n ISO, debido a que su nombre en diferentes idiomas tendr&iacute;a diferentes siglas (&quot;IOS&quot; en ingl&eacute;s, &quot;OIN&quot; en franc&eacute;s, etc.), la organizaci&oacute;n adopt&oacute; &quot;ISO&quot; como sus siglas en referencia a la palabra&nbsp;<a href=\"https://es.wikipedia.org/wiki/Idioma_griego\">griega</a>&nbsp;<em>isos</em>&nbsp;(ἴ&sigma;&omicron;&sigmaf;, traducido como&nbsp;<em>igual</em>)&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-about_iso-6\">6</a>​ Sin embargo, durante las reuniones fundacionales de la nueva organizaci&oacute;n, esta palabra nunca fue mencionada, as&iacute; que esta explicaci&oacute;n podr&iacute;a haber sido imaginada posteriormente.<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso_name-7\">7</a>​</p>\r\n\r\n<p>Tanto el nombre &quot;ISO&quot; como el logo son marcas registradas, y su uso est&aacute; restringido.<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso_logo-8\">8</a>​</p>\r\n\r\n<h2>Historia[<a href=\"https://es.wikipedia.org/w/index.php?title=Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n&amp;action=edit&amp;section=3\">editar</a>]</h2>\r\n\r\n<p><a href=\"https://commons.wikimedia.org/wiki/File:Memory_plaque_of_founding_ISA_in_Prague_cropped.jpg\"><img alt=\"\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Memory_plaque_of_founding_ISA_in_Prague_cropped.jpg/260px-Memory_plaque_of_founding_ISA_in_Prague_cropped.jpg\" style=\"height:101px; width:260px\" /></a></p>\r\n\r\n<p>Placa se&ntilde;alando el edificio en&nbsp;<a href=\"https://es.wikipedia.org/wiki/Praga\">Praga</a>&nbsp;donde se fund&oacute; el predecesor de ISO, ISA.</p>\r\n\r\n<p>La organizaci&oacute;n conocida hoy en d&iacute;a como ISO naci&oacute; en 1926 como la&nbsp;<a href=\"https://es.wikipedia.org/w/index.php?title=Federaci%C3%B3n_Internacional_de_Asociaciones_de_Estandarizaci%C3%B3n_Nacionales&amp;action=edit&amp;redlink=1\">Federaci&oacute;n Internacional de Asociaciones de Estandarizaci&oacute;n Nacionales</a>&nbsp;(ISA). Fue suspendida en 1942<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-Brief_history-9\">9</a>​ durante la&nbsp;<a href=\"https://es.wikipedia.org/wiki/Segunda_Guerra_Mundial\">Segunda Guerra Mundial</a>, pero tras la guerra se le propuso por parte del&nbsp;<a href=\"https://es.wikipedia.org/w/index.php?title=Comit%C3%A9_Coordinador_de_Est%C3%A1ndares_de_las_Naciones_Unidas&amp;action=edit&amp;redlink=1\">Comit&eacute; Coordinador de Est&aacute;ndares de las Naciones Unidas</a>&nbsp;(UNSCC) formar un nuevo cuerpo de est&aacute;ndares globales. En octubre de 1946, delegados de ISA y de UNSCC de 25 pa&iacute;ses se reunieron en&nbsp;<a href=\"https://es.wikipedia.org/wiki/Londres\">Londres</a>&nbsp;y decidieron unir fuerzas para crear la nueva Organizaci&oacute;n Internacional de Normalizaci&oacute;n; la nueva organizaci&oacute;n comenzar&iacute;a oficialmente a operar en febrero de 1947.&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-50_years-10\">10</a>​</p>\r\n\r\n<h2>Estructura[<a href=\"https://es.wikipedia.org/w/index.php?title=Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n&amp;action=edit&amp;section=4\">editar</a>]</h2>\r\n\r\n<p>ISO es una organizaci&oacute;n voluntaria cuyos miembros son autoridades reconocidas en estandarizaci&oacute;n, cada uno representando a un pa&iacute;s. Los miembros se re&uacute;nen anualmente en la Asamblea General para discutir los objetivos estrat&eacute;gicos de ISO. La organizaci&oacute;n est&aacute; coordinada por un Secretariado Central con sede en&nbsp;<a href=\"https://es.wikipedia.org/wiki/Ginebra\">Ginebra</a>.<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-ISOStructureAndGovernance-11\">11</a>​</p>\r\n\r\n<p>Un Consejo rotativo de 20 miembros proporcionan gu&iacute;a y gobierno, incluyendo el establecimiento de los presupuestos anuales del Secretariado Central.<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-ISOStructureAndGovernance-11\">11</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-tech_ctte_list-12\">12</a>​</p>\r\n\r\n<p>La Junta de Administraci&oacute;n T&eacute;cnica es la responsable de cerca de 250 comit&eacute;s t&eacute;cnicos, quienes desarrollan los est&aacute;ndares ISO.<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-ISOStructureAndGovernance-11\">11</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso_technical_ctte-13\">13</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-develops-14\">14</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-governance-15\">15</a>​</p>\r\n\r\n<h3>Comit&eacute;s conjuntos con IEC[<a href=\"https://es.wikipedia.org/w/index.php?title=Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n&amp;action=edit&amp;section=5\">editar</a>]</h3>\r\n\r\n<p>ISO ha formado varios comit&eacute;s conjuntos con la&nbsp;<a href=\"https://es.wikipedia.org/wiki/Comisi%C3%B3n_Electrot%C3%A9cnica_Internacional\">Comisi&oacute;n Electrot&eacute;cnica Internacional</a>&nbsp;(IEC) para desarrollar est&aacute;ndares y la terminolog&iacute;a relacionados con &aacute;reas de tecnolog&iacute;a el&eacute;ctrica y electr&oacute;nica.</p>\r\n\r\n<p>ISO/IEC JTC 1[<a href=\"https://es.wikipedia.org/w/index.php?title=Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n&amp;action=edit&amp;section=6\">editar</a>]</p>\r\n\r\n<p>Tecnolog&iacute;a de la Informaci&oacute;n</p>\r\n\r\n<p>Art&iacute;culo principal:&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/ISO/IEC_JTC_1\">En:ISO/IEC JTC 1</a></em></p>\r\n\r\n<p>El Comit&eacute; Conjunto T&eacute;cnico ISO/IEC 1 (JTC 1) fue creado en 1987 para &quot;desarrollar, mantener, promover y facilitar los est&aacute;ndares relacionados con la Tecnolog&iacute;a de la Informaci&oacute;n&quot;.<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-jtc1_home-16\">16</a>​</p>\r\n\r\n<p>ISO/IEC JTC 2[<a href=\"https://es.wikipedia.org/w/index.php?title=Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n&amp;action=edit&amp;section=7\">editar</a>]</p>\r\n\r\n<p>Proyecto de Comit&eacute; Conjunto&nbsp;&ndash; Eficiencia energ&eacute;tica y fuentes de energ&iacute;a renovables&nbsp;&ndash; Terminolog&iacute;a com&uacute;n</p>\r\n\r\n<p>El Comit&eacute; Conjunto T&eacute;cnico ISO/IEC 2 (JTC 2) se cre&oacute; en 2009 con el prop&oacute;sito de &quot;estandarizar el campo de la eficiencia energ&eacute;tica y las fuentes de energ&iacute;as renovables&quot;.<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso_list_tech-17\">17</a>​</p>\r\n\r\n<h2>Afiliaci&oacute;n[<a href=\"https://es.wikipedia.org/w/index.php?title=Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n&amp;action=edit&amp;section=8\">editar</a>]</h2>\r\n\r\n<p><a href=\"https://commons.wikimedia.org/wiki/File:ISO_Members.svg\"><img alt=\"\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/ISO_Members.svg/420px-ISO_Members.svg.png\" style=\"height:216px; width:420px\" /></a></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pa&iacute;ses miembro de ISO con derecho a voto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Miembros corresponsales (pa&iacute;ses sin un cuerpo nacional de estandarizaci&oacute;n).&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Miembros subscriptores (pa&iacute;ses con peque&ntilde;as econom&iacute;as)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pa&iacute;ses no-miembros con c&oacute;digos&nbsp;<a href=\"https://es.wikipedia.org/wiki/ISO_3166-1\">ISO 3166-1</a>.</p>\r\n\r\n<p>ISO tiene 163 pa&iacute;ses miembro,&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-ISO_members-2\">2</a>​ de un total de 206 pa&iacute;ses en el mundo.</p>\r\n\r\n<p>ISO tiene tres categor&iacute;as de miembros:<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-ISO_members-2\">2</a>​</p>\r\n\r\n<ul>\r\n	<li>Los&nbsp;<em>Cuerpos miembro</em>&nbsp;son cuerpos de estandarizaci&oacute;n nacionales considerados los m&aacute;s representativos de cada pa&iacute;s. Son los &uacute;nicos miembros de ISO con derecho a voto.</li>\r\n	<li>Los&nbsp;<em>Miembros corresponsales</em>&nbsp;son pa&iacute;ses que no tienen su propia organizaci&oacute;n de estandarizaci&oacute;n. Estos miembros est&aacute;n informados sobre el trabajo de ISO, pero no participan en la promulgaci&oacute;n de est&aacute;ndares.</li>\r\n	<li>Los&nbsp;<em>Miembros subscriptores</em>&nbsp;son pa&iacute;ses con peque&ntilde;as econom&iacute;as. Pagan tarifas reducidas, pero pueden seguir el desarrollo de los est&aacute;ndares.</li>\r\n</ul>\r\n\r\n<p>Los miembros participantes son llamados miembros &quot;P&quot;, en contraposici&oacute;n a los miembros observadores, que son llamados miembros &quot;O&quot;.</p>\r\n\r\n<h2>Financiaci&oacute;n[<a href=\"https://es.wikipedia.org/w/index.php?title=Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n&amp;action=edit&amp;section=9\">editar</a>]</h2>\r\n\r\n<p>ISO est&aacute; financiada por una combinaci&oacute;n de:<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso_general-18\">18</a>​</p>\r\n\r\n<ul>\r\n	<li>Organizaciones que administran proyectos espec&iacute;ficos o prestan a expertos para participar en el trabajo t&eacute;cnico.</li>\r\n	<li>Subscripciones de los cuerpos miembros. Estas subscripciones son proporcionales al&nbsp;<a href=\"https://es.wikipedia.org/wiki/Producto_interior_bruto\">producto interior bruto</a>&nbsp;de cada pa&iacute;s y sus cifras de comercio.</li>\r\n	<li>Venta de est&aacute;ndares.</li>\r\n</ul>\r\n\r\n<h2>Est&aacute;ndares Internacionales y otras publicaciones[<a href=\"https://es.wikipedia.org/w/index.php?title=Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n&amp;action=edit&amp;section=10\">editar</a>]</h2>\r\n\r\n<p>V&eacute;ase tambi&eacute;n:&nbsp;<em><a href=\"https://es.wikipedia.org/wiki/Anexo:Normas_ISO\">Anexo:Normas ISO</a></em></p>\r\n\r\n<p>Los principales productos de ISO son sus est&aacute;ndares internacionales. ISO tambi&eacute;n publica informes t&eacute;cnicos, especificaciones t&eacute;cnicas, especificaciones disponibles p&uacute;blicamente,&nbsp;<a href=\"https://es.wikipedia.org/wiki/Errata\">erratas</a>&nbsp;t&eacute;cnicas, y gu&iacute;as.<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-ISOUS95IECUS95directives2004-19\">19</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso-directives-20\">20</a>​</p>\r\n\r\n<p>Est&aacute;ndares internacionales</p>\r\n\r\n<p>Son designados utilizando el formato&nbsp;<em>ISO[/IEC] [/ASTM] [IS] nnnnn[-p]:[yyyy] T&iacute;tulo</em>, donde&nbsp;<em>nnnnn</em>&nbsp;es el n&uacute;mero del est&aacute;ndar,&nbsp;<em>p</em>&nbsp;es un n&uacute;mero opcional de parte,&nbsp;<em>yyyy</em>&nbsp;es el a&ntilde;o de publicaci&oacute;n y&nbsp;<em>T&iacute;tulo</em>describe el tema del est&aacute;ndar.&nbsp;<em>IEC</em>&nbsp;(de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Comisi%C3%B3n_Electrot%C3%A9cnica_Internacional\">Comisi&oacute;n Electrot&eacute;cnica Internacional</a>&nbsp;se incluye si el est&aacute;ndar es el resultado del trabajo de ISO/IEC JT1 (El Comit&eacute; Conjunto T&eacute;cnico).&nbsp;<em>ASTM</em>&nbsp;(de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Sociedad_Americana_para_Pruebas_de_Materiales\">Sociedad Americana para Pruebas de Materiales</a>) se usa para los est&aacute;ndares desarrollados junto a ASTM Internacional.&nbsp;<em>yyyy</em>&nbsp;y&nbsp;<em>IS</em>&nbsp;no se usan para est&aacute;ndares incompletos o que no hayan sido publicados y bajo determinadas circunstancias se pueden omitir del t&iacute;tulo de un trabajo publicado.</p>\r\n\r\n<p>Informes t&eacute;cnicos</p>\r\n\r\n<p>Son emitidos cuando un comit&eacute; t&eacute;cnico o un subcomit&eacute; re&uacute;ne informaci&oacute;n de un tipo distinto del que normalmente se publica como un Est&aacute;ndar Internacional,<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-ISOUS95IECUS95directives2004-19\">19</a>​ tal como referencias y explicaciones. El convenio de denominaci&oacute;n para estos es el mismo que para los est&aacute;ndares, excepto que se antepone&nbsp;<em>TR</em>&nbsp;en lugar de&nbsp;<em>IS</em>&nbsp;en el nombre del informe.<br />\r\nPor ejemplo:</p>\r\n\r\n<ul>\r\n	<li>ISO/IEC TR 17799:2000 Code of Practice for Information Security Management</li>\r\n	<li>ISO/TR 19033:2000 Technical product documentation &mdash; Metadata for construction documentation</li>\r\n</ul>\r\n\r\n<p>Especificaciones t&eacute;cnicas y disponibles p&uacute;blicamente</p>\r\n\r\n<p>Las especificaciones t&eacute;cnicas se pueden crear cuando &quot;el tema en cuesti&oacute;n est&aacute; todav&iacute;a bajo desarrollo o cuando por cualquier otra raz&oacute;n existe la posibilidad en un futuro no inmediato de un acuerdo para publicar un Est&aacute;ndar Internacional&quot;. Una especificaci&oacute;n disponible p&uacute;blicamente es normalmente una &quot;especificaci&oacute;n intermedia, publicada previamente al desarrollo de un Est&aacute;ndar Internacional compleor, o, en IEC puede ser una publicaci&oacute;n conjunta publicada en colaboraci&oacute;n con una organizaci&oacute;n externa&quot;.<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-ISOUS95IECUS95directives2004-19\">19</a>​ Por convenio, ambos tipos de especificaciones son nombradas de manera similar a los informes t&eacute;cnicos de la organizaci&oacute;n.<br />\r\nPor ejemplo:</p>\r\n\r\n<ul>\r\n	<li>ISO/TS 16952-1:2006 Technical product documentation &mdash; Reference designation system &mdash; Part 1: General application rules</li>\r\n	<li>ISO/PAS 11154:2006 Road vehicles &mdash; Roof load carriers</li>\r\n</ul>\r\n\r\n<p>Erratas t&eacute;cnicas</p>\r\n\r\n<p>A veces ISO tambi&eacute;n publica &quot;erratas t&eacute;cnicas&quot;. &Eacute;sta son enmiendas hechas a est&aacute;ndares ya existentes debido a fallos t&eacute;cnicos menores, mejoras de usabilidad o extensiones de aplicabilidad limitada. Normalmente son publicados con la intenci&oacute;n de que el est&aacute;ndar afectado sea actualizado o retirado en la siguiente revisi&oacute;n prevista.<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-ISOUS95IECUS95directives2004-19\">19</a>​</p>\r\n\r\n<p>Gu&iacute;as ISO</p>\r\n\r\n<p>Son meta-est&aacute;ndares que cubren &quot;materias relacionadas con la estandarizaci&oacute;n internacional&quot;.<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-ISOUS95IECUS95directives2004-19\">19</a>​ Son nombradas utilizando el formato&nbsp;<em>&quot;ISO[/IEC]Guide N:yyyy: T&iacute;tulo&quot;</em><br />\r\nPor ejmplo:</p>\r\n\r\n<ul>\r\n	<li>ISO/IEC Guide 2:2004 Standardization and related activities &mdash; General vocabulary</li>\r\n	<li>ISO/IEC Guide 65:1996 General requirements for bodies operating product certification</li>\r\n</ul>\r\n\r\n<p>Un est&aacute;ndar publicado por ISO/IEC es la &uacute;ltima etapa en un largo proceso que normalmente comienza con la propuesta de un nuevo trabajo en un comit&eacute;. Aqu&iacute; se presentan algunas abreviaturas usadas para marcar un est&aacute;ndar cuando est&aacute; en este estado:<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-about-mpeg-21\">21</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso-stages-codes-22\">22</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso-stages-23\">23</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-acronyms-committees-24\">24</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso-directives-procedures-25\">25</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-abbr-26\">26</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-us-tag-committee-27\">27</a>​</p>\r\n\r\n<ul>\r\n	<li>PWI &ndash; Objeto de Trabajo Preliminal (Preliminary Work Item)</li>\r\n	<li>NP o NWIP &ndash; Nueva Propuesta (New Proposal) o Propuesta de Nuevo &Iacute;tem de Trabajo (New Work Item Proposal) (por ejmplo, ISO/IEC NP 23007)</li>\r\n	<li>AWI &ndash; &Iacute;tem de Trabajo Aprobado (Approved new Work Item) (por ejemplo, ISO/IEC AWI 15444-14)</li>\r\n	<li>WD &ndash; Borrador de Trabajo (Working Draft) (por ejemplo, ISO/IEC WD 27032)</li>\r\n	<li>CD &ndash; Borrador de Comit&eacute; (Committee Draft) (por ejemplo, ISO/IEC CD 23000-5)</li>\r\n	<li>FCD &ndash; Borrador Final de Comit&eacute; (Final Committee Draft) (por ejemplo, ISO/IEC FCD 23000-12)</li>\r\n	<li>DIS &ndash; Borrador de Est&aacute;ndar Internacional (Draft International Standard) (por ejemplo., ISO/IEC DIS 14297)</li>\r\n	<li>FDIS &ndash; Borrador Final de Est&aacute;ndar Internacional (Final Draft International Standard) (por ejemplo, ISO/IEC FDIS 27003)</li>\r\n	<li>PRF &ndash; Prueba de un nuevo Est&aacute;ndar Internacional (Proof of a new International Standard) (por ejemplo, ISO/IEC PRF 18018)</li>\r\n	<li>IS &ndash; Est&aacute;ndar Internaciona (International Standard) (por ejemplo, ISO/IEC 13818-1:2007)</li>\r\n</ul>\r\n\r\n<p>Abreviaturas usadas para enmiendas:<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-about-mpeg-21\">21</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso-stages-codes-22\">22</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso-stages-23\">23</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-acronyms-committees-24\">24</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso-directives-procedures-25\">25</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-abbr-26\">26</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-us-tag-committee-27\">27</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso-tr-ts-2009-28\">28</a>​</p>\r\n\r\n<ul>\r\n	<li>NP Amd &ndash; Enmienda de Nueva Propuesta (New Proposal Amendment) (por ejemplo, ISO/IEC 15444-2:2004/NP Amd 3)</li>\r\n	<li>AWI Amd &ndash; Enmienda de Nuevo &Iacute;tem de Trabajo (Approved new Work Item Amendment) (por ejemplo, ISO/IEC 14492:2001/AWI Amd 4)</li>\r\n	<li>WD Amd &ndash; Enmienda de Borrador de Trabajo (Working Draft Amendment) (por ejemplo, ISO 11092:1993/WD Amd 1)</li>\r\n	<li>CD Amd / PDAmd &ndash; Enmienda de Borrador de Comit&eacute; (Committee Draft Amendment) / Enmienda de Borrador Propuesto (Proposed Draft Amendment) (por ejemplo, ISO/IEC 13818-1:2007/CD Amd 6)</li>\r\n	<li>FPDAmd / DAM (DAmd) &ndash; Enmienda de Borrador Propuesto Final (Final Proposed Draft Amendment) / Borrador de Enmienda (Draft Amendment) (por ejemplo, ISO/IEC 14496-14:2003/FPDAmd 1)</li>\r\n	<li>FDAM (FDAmd) &ndash; Enmienda de Borrador Final (Final Draft Amendment) (por ejemplo, ISO/IEC 13818-1:2007/FDAmd 4)</li>\r\n	<li>PRF Amd &ndash; Enmienda de Prueba de un nuevo Est&aacute;ndar Internacional (Proof of a new International Standard Amendment) (por ejemplo, ISO 12639:2004/PRF Amd 1)</li>\r\n	<li>Amd &ndash; Enmienda (Amendment) (por ejemplo, ISO/IEC 13818-1:2007/Amd 1:2007)</li>\r\n</ul>\r\n\r\n<p>Otras abreviaturas:<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso-directives-procedures-25\">25</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-abbr-26\">26</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso-tr-ts-2009-28\">28</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-deliverables-29\">29</a>​</p>\r\n\r\n<ul>\r\n	<li>TR &ndash; Informe T&eacute;cnico (Technical Report) (por ejemplo, ISO/IEC TR 19791:2006)</li>\r\n	<li>DTR &ndash; Borrador de Informe T&eacute;cnico (Draft Technical Report) (por ejemplo, ISO/IEC DTR 19791)</li>\r\n	<li>TS &ndash; Especificaci&oacute;n T&eacute;cnica (Technical Specification) (por ejemplo, ISO/TS 16949:2009)</li>\r\n	<li>DTS &ndash; Borrador de Especificaci&oacute;n T&eacute;cnica (Draft Technical Specification) (por ejemplo, ISO/DTS 11602-1)</li>\r\n	<li>PAS &ndash; Especificaci&oacute;n Disponible P&uacute;blicamente (Publicly Available Specification)</li>\r\n	<li>TTA &ndash; Evaluaci&oacute;n de Tendencias Tecnol&oacute;gicas (Technology Trends Assessment) (por ejemplo, ISO/TTA 1:1994)</li>\r\n	<li>IWA &ndash; Acuerdo de Taller Internacional (International Workshop Agreement) (por ejmeplo, IWA 1:2005)</li>\r\n	<li>Cor &ndash; Errata T&eacute;cnica (Technical Corrigendum) (por ejemplo, ISO/IEC 13818-1:2007/Cor 1:2008)</li>\r\n	<li>Guide &ndash; una gu&iacute;a para comit&eacute;s t&eacute;cnicos para la preparaci&oacute;n de est&aacute;ndares.</li>\r\n</ul>\r\n\r\n<p>Los Est&aacute;ndares Internacionales son desarrollados por los comit&eacute;s t&eacute;cnicos de ISO (TC) y subcomit&eacute;s (SC) por un proceso con seis etapas:&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso-stages-23\">23</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso-directives-part1-30\">30</a>​</p>\r\n\r\n<ul>\r\n	<li>Etapa 1: Etapa de proposici&oacute;n</li>\r\n	<li>Etapa 2: Etapa de preparaci&oacute;n</li>\r\n	<li>Etapa 3: Etapa de comit&eacute;</li>\r\n	<li>Etapa 4: Etapa de investigaci&oacute;n</li>\r\n	<li>Etapa 5: Etapa de aprobaci&oacute;n</li>\r\n	<li>Etapa 6: Etapa de publicaci&oacute;n</li>\r\n</ul>\r\n\r\n<p>Los TC y SC pueden establecer grupos de trabajo (WG) de expertos para la preparaci&oacute;n de borradores de trabajo. Los Subcomit&eacute;s pueden tener varios grupos de trabajo, los cuales a su vez pueden tener varios Subgrupos (SG).<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-wg11-structure-31\">31</a>​</p>\r\n\r\n<table>\r\n	<caption>Etapas en el proceso de desarrollo de un est&aacute;ndar ISO<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso-stages-codes-22\">22</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso-stages-23\">23</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-acronyms-committees-24\">24</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-us-tag-committee-27\">27</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso-directives-part1-30\">30</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso-tr-ts-2009-28\">28</a>​</caption>\r\n	<tbody>\r\n		<tr>\r\n			<th>C&oacute;digo de etapa</th>\r\n			<th>Etapa</th>\r\n			<th>Nombre del documento asociado</th>\r\n			<th>Abreviatura</th>\r\n			<th>\r\n			<p>Description</p>\r\n			</th>\r\n		</tr>\r\n		<tr>\r\n			<td>00</td>\r\n			<td>Preliminar</td>\r\n			<td>&Iacute;tem de trabajo preliminar</td>\r\n			<td>PWI</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>Propuesta</td>\r\n			<td>Propuesta de nuevo &iacute;tem de trabajo</td>\r\n			<td>NP or NWIP y NP Amd/TR/TS/IWA</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>20</td>\r\n			<td>Preparatoria</td>\r\n			<td>Borrador o borradores de trabajo</td>\r\n			<td>AWI, AWI Amd/TR/TS, WD y WD Amd/TR/TS</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>30</td>\r\n			<td>Comit&eacute;</td>\r\n			<td>Borrador o borradores de comit&eacute;</td>\r\n			<td>CD, CD Amd/Cor/TR/TS, PDAmd (PDAM), PDTR y PDTS</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>40</td>\r\n			<td>Investigaci&oacute;n</td>\r\n			<td>Borrador de investigaci&oacute;n</td>\r\n			<td>DIS, FCD, FPDAmd, DAmd (DAM), FPDISP, DTR y DTS</td>\r\n			<td>(CDV in IEC)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>50</td>\r\n			<td>Aprobaci&oacute;n</td>\r\n			<td>Borrador final</td>\r\n			<td>FDIS, FDAmd (FDAM), PRF, PRF Amd/TTA/TR/TS/Suppl y FDTR</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>60</td>\r\n			<td>Publicaci&oacute;n</td>\r\n			<td>Est&aacute;ndar Internacional</td>\r\n			<td rowspan=\"2\">ISO, TR, TS, IWA, Amd y Cor</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>90</td>\r\n			<td>Revisi&oacute;n</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>95</td>\r\n			<td>Retirada</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Es posible omitir ciertas etapas, si hay alg&uacute;n documento con un cierto grado de madurez al principio del proyecto de estandarizaci&oacute;n, por ejemplo un est&aacute;ndar desarrollado por otra organizaci&oacute;n. Las directrices de ISO/IEC tambi&eacute;n permiten el llamado &quot;Procedimiento abreviado&quot;. En este procedimiento el documento es enviado directamente para aprobaci&oacute;n como un Borrador de Est&aacute;ndar Internacional (DIS) a los cuerpos miembros de ISO o como un Borrador Final de Est&aacute;ndar Internacional (FDIS) si el documento fue desarrollado por un cuerpo internacional de estandarizaci&oacute;n reconocido por el Consejo de ISO.<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso-stages-23\">23</a>​</p>\r\n\r\n<p>El primer paso -una propuesta de trabajo (Nueva Proposici&oacute;n)- es aprobado el el subcomit&eacute; o comit&eacute; t&eacute;cnico relevante (por ejemplo, SC29 y JTC1 respectivamente en el caso de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Moving_Picture_Experts_Group\">Moving Picture Experts Group</a>- ISO/IEC JTC1/SC29/WG11). Un grupo de trabajo (WG) de expertos es establecido por el TC/SC para la preparaci&oacute;n de un borrador de trabajo. Cuando el objetivo de un nuevo trabajo est&aacute; lo suficientemente claro, alguno de los grupos de trabajo (por ejemplo, MPEG) normalmente hace una petici&oacute;n abierta de proposiciones -conocido como &quot;petici&oacute;n de propuestas&quot;. El primer documento que es producido por ejemplo para los est&aacute;ndares de codificaci&oacute;n de audio y v&iacute;deo es llamado un modelo de verificaci&oacute;n (VM) (anteriormente tambi&eacute;n llamado un &quot;modelo de simulaci&oacute;n y prueba&quot;). Cuando se alcanza la suficiente confianza en la estabilidad del est&aacute;ndar en desarrollo, se produce un borrador de trabajo (WD). Tiene la forma de un est&aacute;ndar, pero se mantiene internamente para ser revisado por el grupo de trabajo. Cuando un borrador de trabajo es lo suficientemente s&oacute;lido y el grupo de trabajo est&aacute; seguro que de ha desarrollado la mejor soluci&oacute;n t&eacute;cnica para el problema tratado, &eacute;ste se convierte en un borrador de comit&eacute; (CD). Si es necesario, es entonces cuando es enviado a los miembros P del TC/SE (los cuerpos nacionales) para votaci&oacute;n.</p>\r\n\r\n<p>El CD pasa a ser un borrador final de comit&eacute; (FCD) si el n&uacute;mero de votos positivos est&aacute; por encima del quorum. Varios borradores de comit&eacute; pueden ser evaluados hasta que se alcance un consenso en su contenido t&eacute;cnico. Cuando se alcanza, el texto es finalizado para ser enviado como un borrador de Est&aacute;ndar Internacional (DIS). El texto es entonces enviado a los cuerpos nacionales para votaci&oacute;n y ser comentado en un periodo de cinco meses. Es aprobado como un borrador final de Est&aacute;ndar Internacional (FDIS) si un las dos terceras partes de los miembros P del TC/SC est&aacute;n a favor y no m&aacute;s de un cuarto del total de votos emitidos son negativos. ISO celebrar&aacute; entonces una votaci&oacute;n con los Cuerpos Nacionales donde no se podr&aacute;n proponer cambios t&eacute;cnicos al texto (una votaci&oacute;n se s&iacute;/no), en un periodo de dos meses. Es aprobado como un Est&aacute;ndar Internacional (IS) si las dos terceras partes de los miembros P del TC/SC est&aacute;n a favor y no m&aacute;s de un cuarto de los votos emitidos son negativos. Tras la aprobaci&oacute;n, solo se introducir&aacute;n cambios menores editoriales en el texto. El texto final se env&iacute;a al Secretariado Central de ISO, el cual lo publica como un Est&aacute;ndar Internacional.<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-about-mpeg-21\">21</a>​<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso-stages-23\">23</a>​</p>\r\n\r\n<h2>Productos con el nombre de ISO[<a href=\"https://es.wikipedia.org/w/index.php?title=Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n&amp;action=edit&amp;section=11\">editar</a>]</h2>\r\n\r\n<p>El hecho de que muchos de los est&aacute;ndares creados por ISO son ubicuos ha llevado, en ocasiones, al uso de &quot;ISO&quot; para llamar al producto en s&iacute; que se adecua a un est&aacute;ndar. Algunos ejemplos de ello son:</p>\r\n\r\n<ul>\r\n	<li>Muchas&nbsp;<a href=\"https://es.wikipedia.org/wiki/Imagen_de_disco_%C3%B3ptico\">im&aacute;genes de CD</a>&nbsp;terminan con la&nbsp;<a href=\"https://es.wikipedia.org/wiki/Extensi%C3%B3n_de_archivo\">extensi&oacute;n de archivo</a>&nbsp;&quot;<a href=\"https://es.wikipedia.org/wiki/Imagen_ISO\">ISO</a>&quot; para especificar que utilizan el est&aacute;ndar de sistemas de archivos&nbsp;<a href=\"https://es.wikipedia.org/wiki/ISO_9660\">ISO 9660</a>&nbsp;a diferencia de otros sistemas de archivos, por lo que dichas im&aacute;genes son llamadas com&uacute;nmente &quot;ISOs&quot;. T&eacute;cnicamente todos los ordenadores con unidades&nbsp;<a href=\"https://es.wikipedia.org/wiki/CD-ROM\">CD-ROM</a>&nbsp;que puedan leer los&nbsp;<a href=\"https://es.wikipedia.org/wiki/Disco_Compacto\">CD</a>&nbsp;utilizan este est&aacute;ndar. Algunos&nbsp;<a href=\"https://es.wikipedia.org/wiki/DVD-ROM\">DVD-ROM</a>&nbsp;tambi&eacute;n usa el sistema de archivos ISO 9660.</li>\r\n	<li>La sensibilidad de una pel&iacute;cula fotogr&aacute;fica a la luz (su&nbsp;<a href=\"https://es.wikipedia.org/wiki/Escala_de_sensibilidad_fotogr%C3%A1fica\">escala de sensibilidad fotogr&aacute;fica</a>) se describe en los est&aacute;ndares ISO 6, ISO 2240 e ISO 5800; por lo que normalmente la sensibilidad de la pel&iacute;cula se conoce como su n&uacute;mero ISO.</li>\r\n	<li>Al ser originalmente definido en el est&aacute;ndar ISO 518, la zapata de conexi&oacute;n para el&nbsp;<a href=\"https://es.wikipedia.org/wiki/Flash_(fotograf%C3%ADa)\">flash</a>&nbsp;en las c&aacute;maras fotogr&aacute;ficas (<em>hot shoe</em>&nbsp;en ingl&eacute;s) es conocido como&nbsp;<em>ISO shoe</em>&nbsp;en el mundo anglosaj&oacute;n.</li>\r\n</ul>\r\n\r\n<h2>Cr&iacute;ticas[<a href=\"https://es.wikipedia.org/w/index.php?title=Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n&amp;action=edit&amp;section=12\">editar</a>]</h2>\r\n\r\n<p>A excepci&oacute;n de un peque&ntilde;o n&uacute;mero de est&aacute;ndares aislados,&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-FreelyAvailableStandards-32\">32</a>​ los est&aacute;ndares ISO no est&aacute;n disponibles gratuitamente,&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-iso_shopFAQ-33\">33</a>​ cuyo coste ha sido visto por algunos sectores como demasiado elevado para proyectos peque&ntilde;os&nbsp;<a href=\"https://es.wikipedia.org/wiki/Software_de_c%C3%B3digo_abierto\">software de c&oacute;digo abierto</a>.<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-oreilly2007-34\">34</a>​</p>\r\n\r\n<p>Los procedimientos abreviados del ISO/IEC JTC1 (usado por&nbsp;<a href=\"https://es.wikipedia.org/wiki/Office_Open_XML\">Office Open XML</a>&nbsp;y&nbsp;<a href=\"https://es.wikipedia.org/wiki/OpenDocument\">OpenDocument</a>) han cosechado cr&iacute;ticas en relaci&oacute;n a la&nbsp;<a href=\"https://es.wikipedia.org/w/index.php?title=Estandarizaci%C3%B3n_de_Office_Open_XML&amp;action=edit&amp;redlink=1\">estandarizaci&oacute;n de Office Open XML</a>. Martin Bryan, convocante del ISO/IEC JTC1/SC34 WG1, dijo al respecto:</p>\r\n\r\n<blockquote>\r\n<p>I would recommend my successor that it is perhaps time to pass WG1&rsquo;s outstanding standards over to OASIS, where they can get approval in less than a year and then do a PAS submission to ISO, which will get a lot more attention and be approved much faster than standards currently can be within WG1.</p>\r\n\r\n<p>The disparity of rules for PAS, Fast-Track and ISO committee generated standards is fast making ISO a laughing stock in IT circles. The days of open standards development are fast disappearing. Instead we are getting &#39;standardization by corporation&#39;.</p>\r\n\r\n<p>Report on WG1 activity for December 2007 Meeting of ISO/IEC JTC1/SC34/WG1 in Kyoto<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-jtc1_sc34_0940-35\">35</a>​</p>\r\n</blockquote>\r\n\r\n<p>El empresario en seguridad e inversor de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Ubuntu_(sistema_operativo)\">Ubuntu</a>,&nbsp;<a href=\"https://es.wikipedia.org/wiki/Mark_Shuttleworth\">Mark Shuttleworth</a>, coment&oacute; en el proceso de&nbsp;<a href=\"https://es.wikipedia.org/w/index.php?title=Estandarizaci%C3%B3n_de_Office_Open_XML&amp;action=edit&amp;redlink=1\">estandarizaci&oacute;n de Office Open XML</a>&nbsp;que &quot;cree que deval&uacute;a la confianza de la gente en el procedimiento de creaci&oacute;n de est&aacute;ndares&quot; y aleg&oacute; que ISO no estaba llevando a cabo sus responsabilidades. Tambi&eacute;n se&ntilde;al&oacute; que&nbsp;<a href=\"https://es.wikipedia.org/wiki/Microsoft\">Microsoft</a>&nbsp;ha presionado activamente a muchos pa&iacute;ses que tradicionalmente no han participado en ISO y formado comit&eacute;s con empleados de Microsoft, proveedores de soluciones y distribuidores afines a Office Open XLM.</p>\r\n\r\n<blockquote>\r\n<p>When you have a process built on trust and when that trust is abused, ISO should halt the process... ISO is an engineering old boys club and these things are boring so you have to have a lot of passion &hellip; then suddenly you have an investment of a lot of money and lobbying and you get artificial results. The process is not set up to deal with intensive corporate&nbsp;<a href=\"https://es.wikipedia.org/wiki/Lobbying\">lobbying</a>&nbsp;and so you end up with something being a standard that is not clear.</p>\r\n\r\n<p>Ubuntu&rsquo;s Shuttleworth blames ISO for OOXML&rsquo;s win<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_note-zdnet_2222-36\">36</a>​</p>\r\n</blockquote>\r\n\r\n<h2>V&eacute;ase tambi&eacute;n[<a href=\"https://es.wikipedia.org/w/index.php?title=Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n&amp;action=edit&amp;section=13\">editar</a>]</h2>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li><a href=\"https://es.wikipedia.org/wiki/American_National_Standards_Institute\">American National Standards Institute</a></li>\r\n				<li><a href=\"https://es.wikipedia.org/wiki/Associa%C3%A7%C3%A3o_Brasileira_de_Normas_T%C3%A9cnicas\">Associa&ccedil;&atilde;o Brasileira de Normas T&eacute;cnicas</a>, Asociaci&oacute;n Brasile&ntilde;a de Normas T&eacute;cnicas.</li>\r\n				<li><a href=\"https://es.wikipedia.org/wiki/Deutsches_Institut_f%C3%BCr_Normung\">Deutsches Institut f&uuml;r Normung</a>, Instituto Alem&aacute;n de Estandarizaci&oacute;n (DIN).</li>\r\n				<li><a href=\"https://es.wikipedia.org/wiki/British_Standards_Institution\">British Standards Institution</a>, Instituto Brit&aacute;nico de Est&aacute;ndarizaci&oacute;n (BSI).</li>\r\n				<li><a href=\"https://es.wikipedia.org/wiki/Comit%C3%A9_Europeo_de_Normalizaci%C3%B3n\">Comit&eacute; Europeo de Normalizaci&oacute;n</a></li>\r\n				<li><a href=\"https://es.wikipedia.org/wiki/GOST\">GOST</a>, conjunto de est&aacute;ndares t&eacute;cnicos mantenidos por el&nbsp;<a href=\"https://es.wikipedia.org/w/index.php?title=Consejo_Interestatal_para_la_Estandartizaci%C3%B3n,_Meteorolog%C3%ADa_y_Certificaci%C3%B3n&amp;action=edit&amp;redlink=1\">Consejo Interestatal para la Estandartizaci&oacute;n, Meteorolog&iacute;a y Certificaci&oacute;n</a></li>\r\n				<li><a href=\"https://es.wikipedia.org/wiki/International_Electrotechnical_Commission\">International Electrotechnical Commission</a></li>\r\n				<li><a href=\"https://es.wikipedia.org/wiki/IEEE_Standards_Association\">IEEE Standards Association</a></li>\r\n				<li><a href=\"https://es.wikipedia.org/wiki/International_Telecommunication_Union\">International Telecommunication Union</a></li>\r\n				<li><a href=\"https://es.wikipedia.org/wiki/Anexo:Normas_ISO\">Anexo:Normas ISO</a></li>\r\n				<li><a href=\"https://es.wikipedia.org/wiki/Normalizaci%C3%B3n\">Normalizaci&oacute;n</a></li>\r\n				<li><a href=\"https://es.wikipedia.org/wiki/Grupo_de_trabajo_de_ingenier%C3%ADa_de_internet\">Grupo de trabajo de ingenier&iacute;a de internet</a></li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Referencias[<a href=\"https://es.wikipedia.org/w/index.php?title=Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n&amp;action=edit&amp;section=14\">editar</a>]</h2>\r\n\r\n<ol>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-general_vocabulary_1-0\">Volver arriba&uarr;</a>&nbsp;The three official full names of the ISO can be found at the beginning of the foreword sections of the PDF document:&nbsp;<a href=\"http://www.iso.org/iso/iso_iec_guide_2_2004.pdf\">&laquo;ISO/IEC Guide 2:2004 Standardization and related activities &mdash; General vocabulary&raquo;</a>&nbsp;(PDF).&nbsp;<a href=\"https://web.archive.org/web/20110721233751/http://www.iso.org/iso/iso_iec_guide_2_2004.pdf\">Archivado</a>&nbsp;desde el original el 21 de julio de 2011.</li>\r\n	<li>&uarr;&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-ISO_members_2-0\">Saltar a:<em><strong>a</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-ISO_members_2-1\"><em><strong>b</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-ISO_members_2-2\"><em><strong>c</strong></em></a>&nbsp;<a href=\"http://www.iso.org/iso/home/about/iso_members.htm\">&laquo;ISO members&raquo;</a>. International Organization for Standardization.&nbsp;<a href=\"https://web.archive.org/web/20150209160543/http://www.iso.org/iso/home/about/iso_members.htm\">Archivado</a>&nbsp;desde el original el 9 de febrero de 2015.</li>\r\n	<li>&uarr;&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-About_ISO_3-0\">Saltar a:<em><strong>a</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-About_ISO_3-1\"><em><strong>b</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-About_ISO_3-2\"><em><strong>c</strong></em></a>&nbsp;<a href=\"http://www.iso.org/iso/about.htm\">&laquo;About ISO&raquo;</a>. ISO.&nbsp;<a href=\"https://web.archive.org/web/20071004201243/http://www.iso.org/iso/about.htm\">Archivado</a>&nbsp;desde el original el 4 de octubre de 2007.</li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-4\">Volver arriba&uarr;</a>&nbsp;The number of membre working countries an be found on the first page of the report.&nbsp;<a href=\"http://www.iso.org/iso/annual_report-2013.pdf\">&laquo;Annual Report 2013&raquo;</a>.&nbsp;<em>ISO</em>. Consultado el 18 de junio de 2014.</li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-languages_5-0\">Volver arriba&uarr;</a>&nbsp;<a href=\"http://www.iso.org/iso/iso_catalogue/how_to_use_the_catalogue.htm\">&laquo;How to use the ISO Catalogue&raquo;</a>. ISO.org.&nbsp;<a href=\"https://web.archive.org/web/20071004225623/http://www.iso.org/iso/iso_catalogue/how_to_use_the_catalogue.htm\">Archivado</a>&nbsp;desde el original el 4 de octubre de 2007.</li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-about_iso_6-0\">Volver arriba&uarr;</a>&nbsp;<a href=\"http://www.iso.org/iso/home/about.htm#2012_aboutiso_iso_name-text-Anchor\">&laquo;About ISO - Our name&raquo;</a>. ISO.&nbsp;<a href=\"https://web.archive.org/web/20120919212143/http://www.iso.org/iso/home/about.htm#2012_aboutiso_iso_name-text-Anchor\">Archivado</a>&nbsp;desde el original el 19 de septiembre de 2012.</li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso_name_7-0\">Volver arriba&uarr;</a>&nbsp;<a href=\"http://www.iso.org/iso/2012_friendship_among_equals.pdf\">&laquo;Friendship among equals&raquo;</a>. ISO.&nbsp;(page 20)</li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso_logo_8-0\">Volver arriba&uarr;</a>&nbsp;<a href=\"http://www.iso.org/iso/home/name_and_logo.htm\">&laquo;ISO name and logo&raquo;</a>. ISO.&nbsp;<a href=\"https://web.archive.org/web/20120919222138/http://www.iso.org/iso/home/name_and_logo.htm\">Archivado</a>&nbsp;desde el original el 19 de septiembre de 2012.</li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-Brief_history_9-0\">Volver arriba&uarr;</a>&nbsp;<a href=\"http://www.sis.pitt.edu/~mbsclass/standards/martincic/isohistr.htm\">&laquo;A Brief History of ISO&raquo;</a>. University of Pittsburgh.</li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-50_years_10-0\">Volver arriba&uarr;</a>&nbsp;<a href=\"http://www.iso.org/iso/2012_friendship_among_equals.pdf\"><em>Friendship among equals - Recollections from ISO&#39;s first fifty years</em></a>&nbsp;(PDF), International Organization for Standardization, 1997, pp.&nbsp;15-18,&nbsp;<small><a href=\"https://es.wikipedia.org/wiki/ISBN\">ISBN</a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Especial:FuentesDeLibros/92-67-10260-5\">92-67-10260-5</a></small>,&nbsp;<a href=\"https://web.archive.org/web/20121026060448/http://www.iso.org/iso/2012_friendship_among_equals.pdf\">archivado</a>&nbsp;desde el original el 26 de octubre de 2012</li>\r\n	<li>&uarr;&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-ISOStructureAndGovernance_11-0\">Saltar a:<em><strong>a</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-ISOStructureAndGovernance_11-1\"><em><strong>b</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-ISOStructureAndGovernance_11-2\"><em><strong>c</strong></em></a>&nbsp;<a href=\"http://www.iso.org/iso/home/about/about_governance.htm\">&laquo;Structure and governance&raquo;</a>. International Organization for Standardization.&nbsp;<a href=\"https://web.archive.org/web/20120919222955/http://www.iso.org/iso/home/about/about_governance.htm\">Archivado</a>&nbsp;desde el original el 19 de septiembre de 2012.</li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-tech_ctte_list_12-0\">Volver arriba&uarr;</a>&nbsp;<a href=\"http://www.iso.org/iso/home/standards_development/list_of_iso_technical_committees/iso_technical_committee.htm?commid=55010\">&laquo;Council&raquo;</a>. International Organization for Standardization.&nbsp;<a href=\"https://web.archive.org/web/20121103211437/http://www.iso.org/iso/home/standards_development/list_of_iso_technical_committees/iso_technical_committee.htm?commid=55010\">Archivado</a>&nbsp;desde el original el 3 de noviembre de 2012.</li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso_technical_ctte_13-0\">Volver arriba&uarr;</a>&nbsp;<a href=\"http://www.iso.org/iso/home/standards_development/list_of_iso_technical_committees.htm\">&laquo;Technical committees&raquo;</a>. International Organization for Standardization.&nbsp;<a href=\"https://web.archive.org/web/20120919220258/http://www.iso.org/iso/home/standards_development/list_of_iso_technical_committees.htm\">Archivado</a>&nbsp;desde el original el 19 de septiembre de 2012.</li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-develops_14-0\">Volver arriba&uarr;</a>&nbsp;<a href=\"http://www.iso.org/iso/home/standards_development/who-develops-iso-standards.htm\">&laquo;Who develops ISO standards?&raquo;</a>. International Organization for Standardization.&nbsp;<a href=\"https://web.archive.org/web/20120919212351/http://www.iso.org/iso/home/standards_development/who-develops-iso-standards.htm\">Archivado</a>&nbsp;desde el original el 19 de septiembre de 2012.</li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-governance_15-0\">Volver arriba&uarr;</a>&nbsp;<a href=\"http://www.iso.org/iso/home/standards_development/governance_of_technical_work.htm\">&laquo;Governance of technical work&raquo;</a>. International Organization for Standardization.&nbsp;<a href=\"https://web.archive.org/web/20120919222005/http://www.iso.org/iso/home/standards_development/governance_of_technical_work.htm\">Archivado</a>&nbsp;desde el original el 19 de septiembre de 2012.</li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-jtc1_home_16-0\">Volver arriba&uarr;</a>&nbsp;<a href=\"http://www.iso.org/iso/jtc1_home\">&laquo;ISO/IEC JTC 1&raquo;</a>. International Organization for Standardization.&nbsp;<a href=\"https://web.archive.org/web/20111215062549/http://www.iso.org/iso/jtc1_home\">Archivado</a>&nbsp;desde el original el 15 de diciembre de 2011.</li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso_list_tech_17-0\">Volver arriba&uarr;</a>&nbsp;<a href=\"http://www.iso.org/iso/home/standards_development/list_of_iso_technical_committees/iso_technical_committee.htm?commid=585141\">&laquo;ISO/IEC JPC 2 Joint Project Committee - Energy efficiency and renewable energy sources - Common terminology&raquo;</a>. International Organization for Standardization.&nbsp;<a href=\"https://web.archive.org/web/20121006120431/http://www.iso.org/iso/home/standards_development/list_of_iso_technical_committees/iso_technical_committee.htm?commid=585141\">Archivado</a>&nbsp;desde el original el 6 de octubre de 2012.</li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso_general_18-0\">Volver arriba&uarr;</a>&nbsp;<a href=\"http://www.iso.org/iso/support/faqs/faqs_general_information_on_iso.htm\">&laquo;General information on ISO&raquo;</a>. ISO.&nbsp;<a href=\"https://web.archive.org/web/20071005105014/http://www.iso.org/iso/support/faqs/faqs_general_information_on_iso.htm\">Archivado</a>&nbsp;desde el original el 5 de octubre de 2007.</li>\r\n	<li>&uarr;&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-ISOUS95IECUS95directives2004_19-0\">Saltar a:<em><strong>a</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-ISOUS95IECUS95directives2004_19-1\"><em><strong>b</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-ISOUS95IECUS95directives2004_19-2\"><em><strong>c</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-ISOUS95IECUS95directives2004_19-3\"><em><strong>d</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-ISOUS95IECUS95directives2004_19-4\"><em><strong>e</strong></em></a>&nbsp;The ISO directives are published in two distinct parts:\r\n	<ul>\r\n		<li><a href=\"http://www.iec.ch/members_experts/refdocs/iec/isoiecdir-1%7Bed9.0%7Den.pdf\">&laquo;ISO/IEC Directives, Part 1: Procedures for the technical work&raquo;</a>&nbsp;(PDF). ISO/IEC. 2012.&nbsp;<a href=\"https://web.archive.org/web/20120613062832/http://www.iec.ch/members_experts/refdocs/iec/isoiecdir-1%7Bed9.0%7Den.pdf\">Archivado</a>&nbsp;desde el original el 13 de junio de 2012.</li>\r\n		<li><a href=\"http://www.iec.ch/members_experts/refdocs/iec/isoiec-dir2%7Bed6.0%7Den.pdf\">&laquo;ISO/IEC Directives, Part 2: Rules for the structure and drafting of International Standards&raquo;</a>&nbsp;(PDF). ISO/IEC. 2011.&nbsp;<a href=\"https://web.archive.org/web/20111016080553/http://iec.ch/members_experts/refdocs/iec/isoiec-dir2%7Bed6.0%7Den.pdf\">Archivado</a>&nbsp;desde el original el 16 de octubre de 2011.</li>\r\n	</ul>\r\n	</li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso-directives_20-0\">Volver arriba&uarr;</a>&nbsp;ISO.&nbsp;<a href=\"http://www.iso.org/directives\">&laquo;ISO/IEC Directives and ISO supplement&raquo;</a>.&nbsp;<a href=\"https://web.archive.org/web/20050423234219/http://www.iso.org/directives/\">Archivado</a>&nbsp;desde el original el 23 de abril de 2005.</li>\r\n	<li>&uarr;&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-about-mpeg_21-0\">Saltar a:<em><strong>a</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-about-mpeg_21-1\"><em><strong>b</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-about-mpeg_21-2\"><em><strong>c</strong></em></a>&nbsp;<a href=\"http://mpeg.chiariglione.org/about_mpeg.htm\">&laquo;About MPEG&raquo;</a>. chiariglione.org.&nbsp;<a href=\"https://web.archive.org/web/20100221015546/http://mpeg.chiariglione.org/about_mpeg.htm\">Archivado</a>&nbsp;desde el original el 21 de febrero de 2010.</li>\r\n	<li>&uarr;&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso-stages-codes_22-0\">Saltar a:<em><strong>a</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso-stages-codes_22-1\"><em><strong>b</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso-stages-codes_22-2\"><em><strong>c</strong></em></a>&nbsp;ISO.&nbsp;<a href=\"http://www.iso.org/iso/standards_development/processes_and_procedures/stages_description/stages_table.htm#s90\">&laquo;International harmonized stage codes&raquo;</a>.&nbsp;<a href=\"https://web.archive.org/web/20070812204054/http://www.iso.org/iso/standards_development/processes_and_procedures/stages_description/stages_table.htm#s90\">Archivado</a>&nbsp;desde el original el 12 de agosto de 2007.</li>\r\n	<li>&uarr;&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso-stages_23-0\">Saltar a:<em><strong>a</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso-stages_23-1\"><em><strong>b</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso-stages_23-2\"><em><strong>c</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso-stages_23-3\"><em><strong>d</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso-stages_23-4\"><em><strong>e</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso-stages_23-5\"><em><strong>f</strong></em></a>&nbsp;ISO.&nbsp;<a href=\"http://www.iso.org/iso/standards_development/processes_and_procedures/stages_description.htm\">&laquo;Stages of the development of International Standards&raquo;</a>.&nbsp;<a href=\"https://web.archive.org/web/20070812204054/http://www.iso.org/iso/standards_development/processes_and_procedures/stages_description.htm\">Archivado</a>&nbsp;desde el original el 12 de agosto de 2007.</li>\r\n	<li>&uarr;&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-acronyms-committees_24-0\">Saltar a:<em><strong>a</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-acronyms-committees_24-1\"><em><strong>b</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-acronyms-committees_24-2\"><em><strong>c</strong></em></a>&nbsp;<a href=\"http://www.iso27001security.com/html/faq.html#Acronyms\">&laquo;The ISO27k FAQ - ISO/IEC acronyms and committees&raquo;</a>. IsecT Ltd.&nbsp;<a href=\"https://web.archive.org/web/20051124081445/http://www.iso27001security.com/html/faq.html#Acronyms\">Archivado</a>&nbsp;desde el original el 24 de noviembre de 2005.</li>\r\n	<li>&uarr;&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso-directives-procedures_25-0\">Saltar a:<em><strong>a</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso-directives-procedures_25-1\"><em><strong>b</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso-directives-procedures_25-2\"><em><strong>c</strong></em></a>&nbsp;ISO (2007).&nbsp;<a href=\"http://www.astm.org/COMMIT/1st_Supplement.pdf\">&laquo;ISO/IEC Directives Supplement &mdash; Procedures specific to ISO&raquo;</a>&nbsp;(PDF).&nbsp;<a href=\"https://web.archive.org/web/20120112093253/http://www.astm.org/COMMIT/1st_Supplement.pdf\">Archivado</a>&nbsp;desde el original el 12 de enero de 2012.</li>\r\n	<li>&uarr;&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-abbr_26-0\">Saltar a:<em><strong>a</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-abbr_26-1\"><em><strong>b</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-abbr_26-2\"><em><strong>c</strong></em></a>&nbsp;ISO (2007).&nbsp;<a href=\"http://www.iso.org/iso/support/faqs/faqs_list_abbreviations.htm\">&laquo;List of abbreviations used throughout ISO Online&raquo;</a>.&nbsp;<a href=\"https://web.archive.org/web/20070812204054/http://www.iso.org/iso/support/faqs/faqs_list_abbreviations.htm\">Archivado</a>&nbsp;desde el original el 12 de agosto de 2007.</li>\r\n	<li>&uarr;&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-us-tag-committee_27-0\">Saltar a:<em><strong>a</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-us-tag-committee_27-1\"><em><strong>b</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-us-tag-committee_27-2\"><em><strong>c</strong></em></a>&nbsp;<a href=\"http://www.sae.org/exdomains/standardsdev/global_resources/US%20TAG%20Committe%20Handbook%206March2008.doc\">&laquo;US Tag Committee Handbook&raquo;</a>&nbsp;(DOC). March 2008.</li>\r\n	<li>&uarr;&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso-tr-ts-2009_28-0\">Saltar a:<em><strong>a</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso-tr-ts-2009_28-1\"><em><strong>b</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso-tr-ts-2009_28-2\"><em><strong>c</strong></em></a>&nbsp;ISO/IEC JTC1 (2 de noviembre de 2009),&nbsp;<a href=\"http://isotc.iso.org/livelink/livelink/JTC001-N-9876.pdf?func=doc.Fetch&amp;nodeId=8498789&amp;docTitle=JTC001-N-9876\"><em>Letter Ballot on the JTC 1 Standing Document on Technical Specifications and Technical Reports</em></a>&nbsp;(PDF)</li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-deliverables_29-0\">Volver arriba&uarr;</a>&nbsp;ISO.&nbsp;<a href=\"http://www.iso.org/iso/standards_development/processes_and_procedures/deliverables.htm\">&laquo;ISO deliverables&raquo;</a>.&nbsp;<a href=\"https://web.archive.org/web/20070812204054/http://www.iso.org/iso/standards_development/processes_and_procedures/deliverables.htm\">Archivado</a>&nbsp;desde el original el 12 de agosto de 2007.</li>\r\n	<li>&uarr;&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso-directives-part1_30-0\">Saltar a:<em><strong>a</strong></em></a>&nbsp;<a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso-directives-part1_30-1\"><em><strong>b</strong></em></a>&nbsp;ISO (2008),&nbsp;<a href=\"http://www.iec.ch/tiss/iec/Directives-Part1-Ed6.pdf\"><em>ISO/IEC Directives, Part 1 - Procedures for the technical work, Sixth edition, 2008</em></a>&nbsp;(PDF),&nbsp;<a href=\"https://web.archive.org/web/20100714140207/http://www.iec.ch/tiss/iec/Directives-Part1-Ed6.pdf\">archivado</a>&nbsp;desde el original el 14 de julio de 2010</li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-wg11-structure_31-0\">Volver arriba&uarr;</a>&nbsp;ISO, IEC (5 de noviembre de 2009).&nbsp;<a href=\"http://kikaku.itscj.ipsj.or.jp/sc29/29w12911.htm\">&laquo;ISO/IEC JTC 1/SC&nbsp;29, SC&nbsp;29/WG 11 Structure (ISO/IEC JTC 1/SC 29/WG 11 - Coding of Moving Pictures and Audio)&raquo;</a>.&nbsp;<a href=\"https://web.archive.org/web/20010128180300/http://www.itscj.ipsj.or.jp/sc29/29w12911.htm\">Archivado</a>&nbsp;desde el original el 28 de enero de 2001.</li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-FreelyAvailableStandards_32-0\">Volver arriba&uarr;</a>&nbsp;<a href=\"http://standards.iso.org/ittf/PubliclyAvailableStandards/\">&laquo;Freely Available Standards&raquo;</a>. ISO. 1 de febrero de 2011.</li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-iso_shopFAQ_33-0\">Volver arriba&uarr;</a>&nbsp;<a href=\"http://www.iso.org/iso/store/shopping_faqs.htm\">&laquo;Shopping FAQs&raquo;</a>. ISO.&nbsp;<a href=\"https://web.archive.org/web/20071005054552/http://www.iso.org/iso/store/shopping_faqs.htm\">Archivado</a>&nbsp;desde el original el 5 de octubre de 2007.</li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-oreilly2007_34-0\">Volver arriba&uarr;</a>&nbsp;Jelliffe, Rick (1 de agosto de 2007).&nbsp;<a href=\"http://www.oreillynet.com/xml/blog/2007/08/where_to_get_iso_standards_on.html\">&laquo;Where to get ISO Standards on the Internet free&raquo;</a>. oreillynet.com.&nbsp;<a href=\"https://web.archive.org/web/20071124060422/http://www.oreillynet.com/xml/blog/2007/08/where_to_get_iso_standards_on.html\">Archivado</a>&nbsp;desde el original el 24 de noviembre de 2007. &laquo;<em>The lack of free online availability has effectively made ISO standard irrelevant to the (home/hacker section of the) Open Source community</em>&raquo;.</li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-jtc1_sc34_0940_35-0\">Volver arriba&uarr;</a>&nbsp;<a href=\"http://www.jtc1sc34.org/repository/0940.htm\">&laquo;Report on WG1 activity for December 2007 Meeting of ISO/IEC JTC1/SC34/WG1 in Kyoto&raquo;</a>. iso/jtc1 sc34.&nbsp;<a href=\"https://web.archive.org/web/20070812081252/http://www.jtc1sc34.org/repository/0940.htm\">Archivado</a>&nbsp;desde el original el 12 de agosto de 2007.</li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n#cite_ref-zdnet_2222_36-0\">Volver arriba&uarr;</a>&nbsp;<a href=\"http://blogs.zdnet.com/open-source/?p=2222\">&laquo;Ubuntu&rsquo;s Shuttleworth blames ISO for OOXML&rsquo;s win&raquo;</a>. ZDNet.com. 1 de abril de 2008.&nbsp;<a href=\"https://web.archive.org/web/20080404052723/http://blogs.zdnet.com/open-source/?p=2222\">Archivado</a>&nbsp;desde el original el 4 de abril de 2008.</li>\r\n</ol>\r\n\r\n<h2>Lecturas adicionales[<a href=\"https://es.wikipedia.org/w/index.php?title=Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n&amp;action=edit&amp;section=15\">editar</a>]</h2>\r\n\r\n<ul>\r\n	<li><a href=\"https://es.wikipedia.org/w/index.php?title=JoAnne_Yates&amp;action=edit&amp;redlink=1\">JoAnne Yates</a>&nbsp;and Craig N. Murphy,&nbsp;<a href=\"http://web.mit.edu/iandeseminar/Papers/Fall2006/Yates.pdf\">&laquo;Coordinating International Standards: The Formation of the ISO&raquo;</a>&nbsp;(PDF).&nbsp;<a href=\"https://web.archive.org/web/20100922210249/http://web.mit.edu/iandeseminar/Papers/Fall2006/Yates.pdf\">Archivado</a>&nbsp;desde el original el 22 de septiembre de 2010.&nbsp;<a href=\"http://web.mit.edu/iandeseminar/index2006.html\"><em>MIT Innovations and Entrepreneurship Seminar Series</em>, Fall 2006</a>.</li>\r\n	<li>Kuert, Willy (1997).&nbsp;<a href=\"http://www.iso.org/iso/2012_friendship_among_equals.pdf\">&laquo;Friendship Among Equals - Recollections from ISO&#39;s first fifty years&raquo;</a>&nbsp;(PDF). ISO.&nbsp;<a href=\"https://web.archive.org/web/20121026060448/http://www.iso.org/iso/2012_friendship_among_equals.pdf\">Archivado</a>&nbsp;desde el original el 26 de octubre de 2012.</li>\r\n</ul>\r\n\r\n<h2>Enlaces externos[<a href=\"https://es.wikipedia.org/w/index.php?title=Organizaci%C3%B3n_Internacional_de_Normalizaci%C3%B3n&amp;action=edit&amp;section=16\">editar</a>]</h2>\r\n\r\n<ul>\r\n	<li><img alt=\"\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Commons-logo.svg/15px-Commons-logo.svg.png\" style=\"height:20px; width:15px\" />&nbsp;<a href=\"https://es.wikipedia.org/wiki/Wikimedia_Commons\">Wikimedia Commons</a>&nbsp;alberga contenido multimedia sobre&nbsp;<strong><a href=\"https://commons.wikimedia.org/wiki/Category:International_Organization_for_Standardization_(ISO)\">Organizaci&oacute;n Internacional de Normalizaci&oacute;n</a></strong>.</li>\r\n	<li><a href=\"http://www.iso.org/\">Sitio oficial de ISO</a>\r\n	<ul>\r\n		<li><a href=\"http://standards.iso.org/ittf/PubliclyAvailableStandards/index.html\">Publicly Available Standards</a>, con acceso gratuito a un peque&ntilde;o conjunto de los est&aacute;ndares.</li>\r\n		<li><a href=\"http://www.iso.org/iso/search/extendedsearchstandards.htm?formKeyword=&amp;displayForm=true&amp;published=true\">Advanced search for standards and/or projects</a></li>\r\n		<li><a href=\"http://cdb.iso.org/\">Concept Database</a>, una base de datos terminol&oacute;gica de est&aacute;ndares ISO.</li>\r\n	</ul>\r\n	</li>\r\n	<li><a href=\"http://www.jtc1.org/\">ISO/IEC JTC1</a></li>\r\n	<li>Certification Bodies&nbsp;<a href=\"http://www.tra-cd.com/\">TRA Certification</a></li>\r\n	<li><a href=\"https://tracert.memberclicks.net/personnel-certification\">Personnel Certification</a></li>\r\n	<li><a href=\"http://www.qualityassociates.org/\">ISO 9001 consulting services in California</a></li>\r\n</ul>\r\n\r\n<p><a href=\"https://es.wikipedia.org/wiki/Especial:Categor%C3%ADas\">Categor&iacute;as</a>:&nbsp;</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Categor%C3%ADa:Organizaciones_fundadas_en_1947\">Organizaciones fundadas en 1947</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Categor%C3%ADa:Organizaciones_de_est%C3%A1ndares\">Organizaciones de est&aacute;ndares</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Categor%C3%ADa:Normas_ISO\">Normas ISO</a></li>\r\n</ul>', '09/12/2017 04:34pm', '15');
INSERT INTO `documento` (`id_doc`, `num_documento`, `titulo`, `cuerpo`, `fecha`, `autor`) VALUES
(2, 3, 'CMMI', '<p><strong>Integraci&oacute;n de modelos de madurez de capacidades</strong>&nbsp;o&nbsp;<strong>Capability Maturity Model Integration</strong>&nbsp;(CMMI) es un modelo para la mejora y evaluaci&oacute;n de procesos para el desarrollo, mantenimiento y operaci&oacute;n de sistemas de software.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>&Iacute;ndice</h2>\r\n\r\n<p>&nbsp;&nbsp;[ocultar]&nbsp;</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Capability_Maturity_Model_Integration#Modelos_CMMI\">1Modelos CMMI</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Capability_Maturity_Model_Integration#Evaluaci.C3.B3n_.28Appraisal.29\">2Evaluaci&oacute;n (Appraisal)</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Capability_Maturity_Model_Integration#V.C3.A9ase_tambi.C3.A9n\">3V&eacute;ase tambi&eacute;n</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Capability_Maturity_Model_Integration#Notas_y_referencias\">4Notas y referencias</a></li>\r\n	<li><a href=\"https://es.wikipedia.org/wiki/Capability_Maturity_Model_Integration#Enlaces_externos\">5Enlaces externos</a></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Modelos CMMI[<a href=\"https://es.wikipedia.org/w/index.php?title=Capability_Maturity_Model_Integration&amp;action=edit&amp;section=1\">editar</a>]</h2>\r\n\r\n<p>Las mejores pr&aacute;cticas CMMI se publican en los documentos llamados modelos. En la actualidad hay tres &aacute;reas de inter&eacute;s cubiertas por los modelos de CMMI: Desarrollo, Adquisici&oacute;n y Servicios.</p>\r\n\r\n<p>La versi&oacute;n actual de CMMI es la versi&oacute;n 1.3 la cual fue liberada el 1 de noviembre de 2010. Hay tres constelaciones de la versi&oacute;n 1.2 disponible:</p>\r\n\r\n<ul>\r\n	<li>CMMI para el Desarrollo (CMMI-DEV o CMMI for Development), Versi&oacute;n 1.2 fue liberado en agosto de 2006. En &eacute;l se tratan procesos de desarrollo de productos y servicios.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>CMMI para la adquisici&oacute;n (CMMI-ACQ o CMMI for Acquisition), Versi&oacute;n 1.2 fue liberado en noviembre de 2007. En &eacute;l se tratan la gesti&oacute;n de la cadena de suministro, adquisici&oacute;n y contrataci&oacute;n externa en los procesos del gobierno y la industria.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>CMMI (CMMI-SVC o CMMI for Services), est&aacute; dise&ntilde;ado para cubrir todas las actividades que requieren gestionar, establecer y entregar Servicios.</li>\r\n</ul>\r\n\r\n<p>Dentro de la constelaci&oacute;n CMMI-DEV, existen dos modelos:</p>\r\n\r\n<ul>\r\n	<li>CMMI-DEV</li>\r\n	<li>CMMI-DEV + IPPD (Integrated Product and Process Development)</li>\r\n</ul>\r\n\r\n<p>Independientemente de la constelaci&oacute;n\\modelo que opta una organizaci&oacute;n, las pr&aacute;cticas CMMI deben adaptarse a cada organizaci&oacute;n en funci&oacute;n de sus objetivos de negocio.</p>\r\n\r\n<p>Las organizaciones no pueden ser certificadas CMMI. Por el contrario, una organizaci&oacute;n es evaluada (por ejemplo, usando un m&eacute;todo de evaluaci&oacute;n como SCAMPI) y recibe una calificaci&oacute;n de nivel 1-5 si sigue los niveles de Madurez (si bien se comienza con el nivel 2). En caso de que quiera la organizaci&oacute;n, puede coger &aacute;reas de proceso y en vez de por niveles de madurez puede obtener los niveles de capacidad en cada una de las &Aacute;reas de Proceso, obteniendo el &quot;Perfil de Capacidad&quot; de la Organizaci&oacute;n.</p>\r\n\r\n<p>Nivel 1: No Confiable- Ambiente impredecible donde las organizaciones no tienen actividades de control y no est&aacute;n dise&ntilde;adas.</p>\r\n\r\n<p>Nivel 2: Informal- Las actividades de control existen pero no se ponen en practica. Los controles dependen b&aacute;sicamente de las personas. No hay un entrenamiento formal ni comunicaci&oacute;n de las actividades de control.</p>\r\n\r\n<p>Nivel 3: estandarizado- Las actividades de control existen y est&aacute;n dise&ntilde;adas, han sido documentadas y comunicadas a los empleados, las desviaciones de las actividades de control probablemente no se detecten.</p>\r\n\r\n<p>Nivel 4: Monitoreado- Se utilizan herramientas en una forma limitada para soportar las actividades de control</p>\r\n\r\n<p>Nivel 5: Optimizado- Es una estructura integrada de control interno con un monitoreo en tiempo real por la gerencia, as&iacute; como mejoras continuas-auto control, se encuentran cambios m&aacute;s r&aacute;pidos al momento de detectar errores en los manejos de las actividades o en las personas.</p>\r\n\r\n<h2>Evaluaci&oacute;n (Appraisal)[<a href=\"https://es.wikipedia.org/w/index.php?title=Capability_Maturity_Model_Integration&amp;action=edit&amp;section=2\">editar</a>]</h2>\r\n\r\n<p>Muchas organizaciones valoran el medir su progreso llevando a cabo una evaluaci&oacute;n (appraisal) y ganando una clasificaci&oacute;n del nivel de madurez o de un nivel de capacidad de logro. Este tipo de evaluaciones son realizadas normalmente por una o m&aacute;s de las siguientes razones:</p>\r\n\r\n<ul>\r\n	<li>Para determinar que tan bien los procesos de la organizaci&oacute;n se comparan con las mejores pr&aacute;cticas CMMI y determinar qu&eacute; mejoras se pueden hacer.</li>\r\n	<li>Como requisito del cliente en licitaciones p&uacute;blicas o concursos privados.</li>\r\n</ul>\r\n\r\n<p>Las valoraciones de las organizaciones utilizando un modelo CMMI deben ajustarse a los requisitos definidos en el documento &quot;Appraisal Requirements for CMMI&quot; (ARC). La evaluaci&oacute;n se enfoca en identificar oportunidades de mejora, y comparar los procesos de la organizaci&oacute;n con las mejores pr&aacute;cticas CMMI. Los equipos de evaluaci&oacute;n usan el modelo CMMI y un m&eacute;todo conforme a ARC para guiar su evaluaci&oacute;n y reporte de conclusiones. Los resultados de la evaluaci&oacute;n son usados para planear mejoras en la organizaci&oacute;n. Hay tres clases de evaluaci&oacute;n: Clase A,B,C. El Standard CMMI Appraisal Method for Process Improvement (SCAMPI) es un M&eacute;todo de evaluaci&oacute;n que cumple todos los requerimientos ARC. Una evaluaci&oacute;n de clase A es m&aacute;s formal y es la &uacute;nica que puede resultar en una clasificaci&oacute;n de nivel.</p>\r\n\r\n<p>El Standard CMMI Appraisal Method for Process Improvement (SCAMPI) es el m&eacute;todo oficial SEI para proveer puntos de referencia de sistemas de calificaci&oacute;n en relaci&oacute;n con los modelos CMMI. SCAMPI se usa para identificar fortalezas y debilidades de los procesos, revelar riesgos de desarrollo/adquisici&oacute;n, y determinar niveles de capacidad y madurez. Se utilizan ya sea como parte de un proceso o programa de mejoramiento, o para la calificaci&oacute;n de posibles proveedores. El m&eacute;todo define el proceso de evaluaci&oacute;n constando de preparaci&oacute;n; las actividades sobre el terreno; observaciones preliminares, conclusiones y valoraciones; presentaci&oacute;n de informes y actividades de seguimiento.</p>', '09/12/2017 07:09pm', '15');

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
-- Estructura de tabla para la tabla `instrucciones`
--

CREATE TABLE `instrucciones` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `instrucciones`
--

INSERT INTO `instrucciones` (`id`, `titulo`, `descripcion`) VALUES
(1, 'Algunas instrucciones simples', 'Dentro de la página principal usted podrá acceder a un resumen de los elementos más importantes de la página,\r\n                            dentro de los cuales podemos destacar el calendario de eventos y la sección con cada uno de los módulos como RRHH, \r\n                            Procesos, Objetivos, etc....');

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
(1, 'proceso 1', 11, '*meta1\r\n*meta2', 'implkementacvion1', 30, 'REQM'),
(2, 'proceso2', 11, '*dwwew\r\n*wqeqwe\r\n*dwqewq', 'qweqw', 232, 'PP');

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
(11, '18.244.245-2', 'Felipe', 'Ferrada', 'personal@ucm.cl', '$2y$10$2lSNpowYD7Q05yvVuU3eOOKwRKTqEPGOKUqa4jX7FJCYVzspnSFP6', 'personal', 'activo', '12/02/1992', 'AB8bMPeZ7AXAUpRsoH6CIoRbqSoWqZL7q57bAanZXxmzQKBDd4bQaf8vFvw9', '2017-12-05 13:01:32.0', '2017-12-05 13:01:32.0'),
(14, '197576576-2', 'boris', 'mora', 'admin@ucm.cl', '$2y$10$o9IUnY3DJ54vIPSXmywa4eE68ThJUtb2loS9xvRuFJJFuclu6f.KW', 'admin', 'activo', '12/04/1992', '8M40EY6rv6yJy7cXse3OK7KLz0rgNayZjjYCVVD8agTchiWP5h6yezGVJYFV', '2017-12-05 13:15:13.0', '2017-12-05 13:15:13.0'),
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
-- Indices de la tabla `instrucciones`
--
ALTER TABLE `instrucciones`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id_doc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id_proceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
