-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2017 a las 04:21:20
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
(1, 1, 'Informe seguimiento y monitoreo de alumnos de primer año. Proceso de inducción', '4', '25/11/2017 04:33pm', '/uploads/7K6RRckvoLpNEjLRG1y8l6hSgoCFOKCKNMrzIfZQdm850sVu53-Procedimiento-de-Tesis.docx'),
(1, 2, 'Informe pdf', '2', '25/11/2017 07:00pm', '/uploads/eAX4Kn5fP46IfC56ZK7GjosWGIdZab37h66vteeIDL77PHmr4H-Procedimiento-de-Tesis.pdf'),
(2, 3, 'test', '2', '25/11/2017 09:21pm', '/uploads/3r2TpXsV2LcKGTTGwFglZdFKHTb6v7XI2LUkjayauBiUW1kUKD-Composer-Setup.exe'),
(2, 4, 'winrar', '2', '25/11/2017 09:22pm', '/uploads/BeUNtmfPixeawyxFZnTjj2OcDbwqYc3sawJYFvySSO4biZKk8n-WinRAR.v5.40.FINAL.ES.x86.x64.REGGED.exe'),
(2, 5, 'max', '2', '25/11/2017 10:23pm', '/uploads/dzLkjRDskGp5bp4JRmSPNzD0NrxPoqoZIgEpvxhcfXhiO3Iv3E-ATKPackage_Win10_64_VER100050.zip');

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
(1, 'facebook', 'https://www.facebook.com/bmora'),
(1, 'telefono', '937483744343'),
(2, 'facebook', 'https://www.facebook.com/nmunoz'),
(2, 'telefono', '9323987237237'),
(3, 'facebook', 'https://www.facebook.com/fferrada'),
(3, 'telefono', '83828632623'),
(4, 'facebook', 'https://www.facebook.com/dalcayaga'),
(4, 'telefono', '8233628362832'),
(8, 'facebook', 'face/wqew'),
(8, 'telefono', '965334534534');

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
(1, '1.0.1', '13/11/2017', '23/05/2018', 4, 10, 8),
(2, '1.0.0', '25/11/2017', '', 0, 1, 10),
(4, '1.0.0', '04/12/2017', '', 0, 1, 13);

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
(1, 2, 'Estructura ISO 9001', 'Estructura de ISO 9001:2008[editar]\r\nCapítulo 1 al 3: guías y descripciones generales.\r\nCapítulo 4 - Sistema de gestión: contiene los requisitos generales y los requisitos para gestionar la documentación.\r\nCapítulo 5 - Responsabilidades de la Dirección: contiene los requisitos que debe cumplir la dirección de la organización, tales como definir la política, asegurar que las responsabilidades y autoridades están definidas, aprobar objetivos, el compromiso de la dirección con la calidad, etc.\r\nCapítulo 6 - Gestión de los recursos: la Norma distingue 3 tipos de recursos sobre los cuales se debe actuar: recursos humanos, infraestructura, y ambiente de trabajo. Aquí se contienen los requisitos exigidos en su gestión.\r\nCapítulo 7 - Realización del producto/servicio: aquí están contenidos los requisitos puramente de lo que se produce o brinda como servicio (la norma incluye servicio cuando denomina \"producto\"), desde la atención al cliente, hasta la entrega del producto o el servicio.\r\nCapítulo 8 - Medición, análisis y mejora: aquí se sitúan los requisitos para los procesos que recopilan información, la analizan, y que actúan en consecuencia. El objetivo es mejorar continuamente la capacidad de la organización para suministrar productos y/o servicios que cumplan con los requisitos. El objetivo declarado en la Norma, es que la organización busque sin descanso la satisfacción del cliente a través del cumplimiento de los requisitos.\r\nISO 9001:2008 tiene muchas semejanzas con el famoso “PDCA”, acrónimo de Plan, Do, Check, Act (\"Planificar, Hacer, Verificar, Actuar\").[cita requerida] La norma está estructurada en cuatro grandes bloques, completamente lógicos, y esto significa que con el modelo de sistema de gestión de calidad basado en ISO se puede desarrollar en cualquier actividad, sin importar si el producto o servicio lo brinda una organización pública o privada, cualquiera que sea su tamaño. La norma ISO 9000:2000 (obsoleta) se va a presentar con una estructura válida para diseñar e implantar cualquier sistema de gestión, no solamente el de calidad, e incluso para integrar diferentes versiones.\r\nLa nueva ISO 9001:2015[editar]\r\nDesde junio del 2012 se inició la revisión de la versión actual de la norma; ciertamente la intención es hacer una renovación mayor. Se busca que con el uso y certificación de esta norma las empresas sean más competitivas para el año 2020. Según el INLAC la norma cambiará en un 30%, respecto a la versión 2008; teniendo una estructura de alto nivel, incorporando dos nuevos requisitos quedando su estructura de la siguiente manera:1​\r\nAlcance\r\nReferencias Normativas\r\nTérminos y Definiciones\r\nContexto de la Organización\r\nLiderazgo\r\nPlanificación\r\nSoporte\r\nOperación\r\nEvaluación del Desempeño\r\nMejora\r\nEl proceso de revisión de la norma ISO 9001 inicia su fase final, después de que el pasado 3 de junio se publicara el borrador de la ISO 9001:2015, elaborado por el comité técnico ISO/TC 176 responsable de elaborar las normas de ISO 9000 y complementarias. Siguiendo la planificación prevista, el FDIS (borrador final) se publicará en noviembre de 2014 para poder publicar definitivamente la nueva versión de la norma en el otoño del año 2015.\r\nLa Norma ISO 9001 especifica los requisitos para un sistema de gestión de la calidad que pueden utilizarse para su aplicación interna por las organizaciones, para certificación o con fines contractuales. Se centra en la eficacia del sistema de gestión de la calidad para satisfacer los requisitos del cliente.\r\nLa versión oficial fue publicada el 15 de septiembre del 2015 y desde entonces está disponible para ser adquirida en www.iso.org. Esta es la 5ta edición de esta norma internacional y sustituye a la versión anterior.\r\nLas organizaciones certificada ISO 9001:2008 requieren realizar un proceso de transición a la nueva edición, de cara a mantener la certificación.', '24/11/2017 10:34pm', '2'),
(1, 4, 'ISO/IEC 27000-series', 'La serie de normas ISO/IEC 27000 son estándares de seguridad publicados por la Organización Internacional para la Estandarización (ISO) y la Comisión Electrotécnica Internacional (IEC).\r\nLa serie contiene las mejores prácticas recomendadas en Seguridad de la información para desarrollar, implementar y mantener Especificaciones para los Sistemas de Gestión de la Seguridad de la Información (SGSI). la mayoría de estas normas se encuentran en preparación e incluyen:\r\nISO/IEC 27000 - es un vocabulario estándar para el SGSI. Introducción y base para el resto. Tercera versión: enero de 2014.\r\nISO/IEC 27001 - es la certificación que deben obtener las organizaciones. Norma que especifica los requisitos para la implantación del SGSI. Es la norma más importante de la familia. Adopta un enfoque de gestión de riesgos y promueve la mejora continua de los procesos. Fue publicada como estándar internacional en octubre de 2005. Revisada en septiembre de 2013.\r\nISO/IEC 27002 - Information technology - Security techniques - Code of practice for information security management. Previamente BS 7799 Parte 1 y la norma ISO/IEC 17799. Es código de buenas prácticas para la gestión de seguridad de la información. Fue publicada en julio de 2005 como ISO 17799:2005 y recibió su nombre oficial ISO/IEC 27002:2005 el 1 de julio de 2007. Última versión: 27002:2013, de setiembre de 2013.\r\nISO/IEC 27003 - son directrices para la implementación de un SGSI. Es el soporte de la norma ISO/IEC 27001. Publicada el 1 de febrero de 2010. No es certificable.\r\nISO/IEC 27004 - son métricas para la gestión de seguridad de la información. Es la que proporciona recomendaciones de quién, cuándo y cómo realizar mediciones de seguridad de la información. Publicada el 7 de diciembre de 2009, no se encuentra traducida al español actualmente.\r\nISO/IEC 27005 - trata la gestión de riesgos en seguridad de la información. Es la que proporciona recomendaciones y lineamientos de métodos y técnicas de evaluación de riesgos de Seguridad en la Información, en soporte del proceso de gestión de riesgos de la norma ISO/IEC 27001. Es la más relacionada a la actual British Standard BS 7799 parte 3. Publicada en junio de 2008. Revisada en junio de 2011.\r\nISO/IEC 27006 - Requisitos para la acreditación de las organizaciones que proporcionan la certificación de los sistemas de gestión de la seguridad de la información. Esta norma especifica requisitos específicos para la certificación de SGSI y es usada en conjunto con la norma 17021-1, la norma genérica de acreditación. Publicada en 2007 y revisada en diciembre de 2011 y septiembre de 2015.\r\nISO/IEC 27007 - es una guía para auditar al SGSI. Publicada en noviembre de 2011.\r\nISO/IEC 27016 - es una norma que se concentra en un análisis financiero y económico de equipos y procedimientos de la seguridad de la información. Publicada en febrero de 2014.\r\nISO/IEC 27017 - es una guía de seguridad para Cloud Computing. Publicada en diciembre de 2015.\r\nISO/IEC 27035:2011 - Seguridad de la información – Técnicas de Seguridad – Gestión de Incidentes de Seguridad. Este standard hace foco en las actividades de: detección, reporte y evaluación de incidentes de seguridad y sus vulnerabilidades. Publicada en agosto de 2011.1​\r\nISO/IEC 27799:2008 - es una guía para implementar ISO/IEC 27002 en la industria de la salud.\r\nVéase también[editar]\r\nSGSI\r\nSeguridad de la información\r\nSeguridad por Niveles\r\nPDCA\r\nReferencias[editar]\r\nVolver arriba ↑ «ISO oficialmente liberó la norma ISO/IEC 27035:2011 | BITCompany via @bit_company». www.bitcompany.biz. Consultado el 2 de agosto de 2017.\r\nEnlaces externos[editar]\r\nISO oficialmente liberó la norma ISO/IEC 27035:2011: Artículo del blog de BITCompany\r\nInteli: Portal de información y todo sobre Tecnologías de la Información (en español)\r\nwww.segu-info.com.ar: Sitio especializado en Seguridad de la Información.\r\nwww.iso27000.es: Portal con información en español sobre la serie 27000 y los sistemas de gestión de seguridad de la información.\r\nwww.iso.org: Venta online de la norma ISO/IEC 27001 en inglés.\r\nISO 27001 Certificates: Base de datos con todas las empresas certificadas y alcances de certificación.\r\nBritish Standards Institution: BSI, con información específica de la serie 27000 en español.\r\nISO 27001 Portal: Portal con información sobre la serie ISO 27000.\r\nIRCA: Registro Internacional de Auditores, con información en español.\r\nOtros estándares sobre seguridad de la información\r\nCRYPTEX - Seguridad de la Información: Web dedicada al tema: Seguridad de la Información.\r\nwww.molinsdeq.com: Implantación de ISO 27001. Consultoría Molins de Q.\r\nAsociación Española para el Fomento de la Seguridad de la Información, ISMS Forum Spain', '25/11/2017 03:49pm', '4'),
(2, 5, 'ISO 9002 reemplazada por la ISO 9001..', 'ISO 9002La norma ISO 9002 es un conjunto de normas generadas por la Organización Internacional para la Estandarización. Su título es “Modelo para asegurar la calidad en la producción, la instalación y el servicio”. Aunque hoy en día la norma ISO 9002 se encuentra obsoleta y ha sido reemplazada por la ISO 9001, este nuevo estándar se utiliza para la creación de nuevos productos que satisfagan las necesidades de los usuarios.El estándar se retiró en el año 2000, se centraba en garantizar la calidad de los procesos, de las instalaciones y del servicio. La certificación en ISO 9002 se utilizó para las organizaciones que no tenían un componente de creación de diseño para el modelo de negocio. \r\nMATRICÚLATE CURSO ONLINE AUDITOR INTERNO ISO 9001:2008\r\n El certificado internacional ISO 9002 fue una declaración por escrito de la certificación de una empresa que sigue todos los requisitos, las especificaciones y los alineamientos que establece la Organización Internacional para la Estandarización en la dicha norma. Como hemos dicho anteriormente, este estándar, que aplicaba todos los requisitos de calidad en el manejo de los sistemas de gestión,  ahora está obsoleto. Se ha reemplazado por la norma ISO 9001:2008, la cual engloba su propio contenido y además alberga el contenido de las  las normas  ISO 9002 e ISO 9003.La norma ISO 9002 proporcionaba detalles para crear y mantener un Sistema de Gestión de la Calidad de forma eficiente. Los requisitos se encuentraban divididos en 20 secciones que iban desde la responsabilidad en el manejo, la cual definía la política de la compañía acerca de la calidad, a las técnicas estadísticas, que ofrecían los procedimientos en detalle. La norma ISO 9002 requiería que los negocios desarrollaran un lenguaje estandarizado para documentar las prácticas de calidad y de este modo crear un sistema con el que poder rastrear, asegurar y documentar todas las prácticas y poder realizar la auditoría externa.Todas las normas que se publican por la Organización Internacional para la Estandarización son de carácter voluntario. De acuerdo con ISO, la mejor razón para utilizar las normas es la efectividad y la eficiencia que genera en la organización que la implementa. Las empresas no se encuentran obligadas a obtener la certificación de las normas ISO. Sin embargo, una empresa que se decida a implementar un Sistema de Gestión de la Calidad basado en la norma ISO 9001 cumplirá todos los requisitos legales de una forma más sencilla, además de atraer nuevos clientes y motivar a su personal cuando un SGC es bien manejado.\r\nLa norma #ISO9002 se encuentra obsoleta y ha sido reemplazada por la #ISO9001\r\nCLICK TO TWEET\r\nLa norma ISO 9002 en su día se encargó de la garantía de calidad específicas para las organizaciones que trabajan mediante el diseño establecido, pero aún no habían creado el diseño  en ellos mismos. Incluía procedimientos de revisión de los contratos, el control del mantenimiento del producto que es suministrado por el cliente y las técnicas de estadísticas. Durante el año 2000 la norma ISO 9002 se unió a la norma ISO 9001, ya que era muy similar. La norma ISO 9001 se asegura de que el estándar de calidad cubre la producción, la fabricación y partes de servicio de la ISO 9002, además de cubrir procesos de creación de diseño.Entre las organizaciones que se benefician de la obtención de la certificación ISO 9002, estaban  aquellas tiendas de encargo de montaje, proveedores de contratos laborales, empresas de servicios y organizaciones de servicios, además de escuelas y hospitales.Las organizaciones que implantan las normas de la familia ISO 9000 con frecuencia contratan a un consultor de certificación que se encarga de ayudar a realizar todos los cambios necesarios para obtener la certificación. Una organización que busca la certificación tendrá que escribir una descripción del trabajo para cada posición en la organización y generar procedimientos para fabricar el producto y las instalaciones. Este proceso puede tardar entre 10 y 24 meses. Una vez que la empresa ha puesto en práctica todas las recomendaciones que ha realizado el consultor, debe comunicarse con un registrador de la empresa.  El registrador recomendará entonces a la organización que se certifique bajo el estándar elegido.Software para el Sistema de Gestión de la CalidadEl Software ISOTools Excellence para ISO 9001 está diseñado para cubrir de forma eficaz cada uno de los requerimientos de un SGC, alcanzar resultados excelentes y obtener beneficios como son el aumento de la eficacia y efectividad del sistema, máximo retorno de la inversión, impacto positivo en el medio ambiente, facilidad en la toma de decisiones, gestión de conocimiento y mejora continua, ahorro de tiempo y costes, mejora el trabajo en equipo y satisfacción del cliente....', '30/11/2017 04:16pm', '1');

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
(8, '', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_contactos`
--

CREATE TABLE `lista_contactos` (
  `id_contacto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `lista_contactos`
--

INSERT INTO `lista_contactos` (`id_contacto`, `id_usuario`) VALUES
(2, 1),
(2, 3),
(2, 4),
(3, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicions`
--

CREATE TABLE `medicions` (
  `id` int(11) NOT NULL,
  `id_proceso` int(11) NOT NULL,
  `fecha_medicion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `detalles` text COLLATE utf8_spanish2_ci,
  `anotacion_mejora` text COLLATE utf8_spanish2_ci
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
(3, 'Entregar formulario', 'formulario', 'semestral', 10),
(5, 'wwwwwwww', 'ewew', 'eweew', 13);

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
(4, 'Analista', NULL, 'Lunes a sabado 10:00 a 15:00'),
(8, 'personal', NULL, 'waewqewq');

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
(8, 'Recopilación de información alumnos', 3, '*dasdasd\r\n*fewtwet ewr wer we', 'eweqweq', 30, 'MA'),
(10, 'Inscribir tema de Tesis', 4, '*Apoyar a estudiantes\r\n*Agilizar proceso', 'Facilitar hoja de inscripción', 35, 'PP'),
(13, 'proceso de prueba 2', 3, 'qweqweqwe\r\nwq\r\neqw\r\ne\r\nqw\r\ne', 'qwwqw', 12, 'REQM');

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
(1, '19.235.566-K', 'Boris', 'Mora', 'admin@ucm.cl', '$2y$10$wYARPc4n61ugclrlY.tnkeLFnVkUeWZewQZI/zZ2b/8/rSuL9fpwO', 'admin', 'activo', '27/02/1992', 'fYnQxPdvtII4X6kmR54T22kLlHMdHUItw8O8a8ajoE5IB0VAHMXgnvep1vLF', '2017-10-25 22:40:52.0', '2017-10-25 22:40:52.0'),
(2, '18.344.546-2', 'Nicolas', 'Muñoz', 'personal@ucm.cl', '$2y$10$.idLdZDtxa88uOkyYKI9ceo3ZPRH5YFtAipkKEbdi583WIqapksgW', 'personal', 'activo', '18/05/1991', '6dhVEBhqWYixA2ZdotqbHn5lkPXNPxNhZ9yToFkaIq8l54jyc4ZpM2PbHNj6', '2017-10-25 22:44:06.0', '2017-10-25 22:44:06.0'),
(3, '17.456.467-8', 'Felipe', 'Ferrada', 'personal2@ucm.cl', '$2y$10$h6JMKThc3K/bS0VV9DiKleWuKSqSPRQVY06.2paw/XB.rnRDxiRqe', 'personal', 'activo', '18/09/1992', 'HTevWVeNf7TPnFMRmYnE2bo874Ph6NJqO7QlUsDtGBskcBS8WFQrpoHH2r2i', '2017-10-25 22:45:55.0', '2017-10-25 22:45:55.0'),
(4, '18.345.666-5', 'Diego', 'Alcayaga', 'personal3@ucm.cl', '$2y$10$FL9yHhKygzFK4s/zi6ID5OBXqB28yqkflyhJvHMjKVMUKfmDXpnga', 'personal', 'activo', '12/12/1993', 'jsAgePOwc1xamgz0VfKD91O9cIb8KjJT9JaKgmT4Qxu8IIXrbSR0Oue9K4jr', '2017-10-25 22:47:28.0', '2017-10-25 22:47:28.0'),
(8, '17.456.466-2', 'Pedro', 'Perez', 'pperez@ucm.cl', '$2y$10$8zq4qbddMRXb8ppc3tlRduMuWorNicshqA3iVcu62262ETEqy5Q/e', 'personal', 'activo', '12/02/1992', NULL, '2017-12-04 21:33:52.0', '2017-12-04 21:33:52.0');

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
  MODIFY `id_doc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `medicions`
--
ALTER TABLE `medicions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `objetivo`
--
ALTER TABLE `objetivo`
  MODIFY `id_objetivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `proceso`
--
ALTER TABLE `proceso`
  MODIFY `id_proceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `riesgos`
--
ALTER TABLE `riesgos`
  MODIFY `id_riesgo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
