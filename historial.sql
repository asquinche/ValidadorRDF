-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-04-2018 a las 17:58:32
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `historial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id` int(11) NOT NULL,
  `tipo_validacion` varchar(50) NOT NULL,
  `nombre_archivo` varchar(100) NOT NULL,
  `errores` varchar(300) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id`, `tipo_validacion`, `nombre_archivo`, `errores`, `fecha`, `hora`) VALUES
(1, 'John', 'Doe', 'john@example.com', '0000-00-00', '00:00:10'),
(2, 'John', 'Doe', 'john@example.com', '0000-00-00', '00:00:10'),
(3, 'validar por entrada directa', 'filepro_fieldcount()', '', '0000-00-00', '00:00:05'),
(4, 'validar por entrada directa', ' <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc', '', '0000-00-00', '00:00:05'),
(5, 'validar por entrada directa', ' <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc', '', '0000-00-00', '00:00:05'),
(6, 'validar por entrada directa', ' <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc', '', '2018-04-16', '00:00:05'),
(7, 'validar por entrada directa', ' <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc', '', '2018-04-16', '17:50:59'),
(8, 'validar por entrada directa', ' <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc', '', '2018-04-16', '17:56:29'),
(9, 'validar por entrada directa', ' <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc', '', '2018-04-16', '00:00:00'),
(10, 'validar por entrada directa', ' <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc', '', '2018-04-16', '18:09:06'),
(11, 'validar por entrada directa', ' <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc', '', '2018-04-16', '18:11:09'),
(12, 'validar por entrada directa', 'getdate()                        ', '', '2018-04-16', '18:12:54'),
(13, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '18:14:03'),
(14, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '18:15:24'),
(15, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '18:31:50'),
(16, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '18:33:14'),
(17, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '18:34:03'),
(18, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '18:34:41'),
(19, 'validar por entrada directa', '                        ', '', '2018-04-16', '18:35:04'),
(20, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '18:36:20'),
(21, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '18:36:40'),
(22, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '18:36:55'),
(23, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '18:39:08'),
(24, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '18:41:25'),
(25, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '18:42:17'),
(26, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '18:43:51'),
(27, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '18:45:46'),
(28, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '18:46:22'),
(29, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '18:47:07'),
(30, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '18:48:12'),
(31, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '18:48:49'),
(32, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '18:49:11'),
(33, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '18:50:20'),
(34, 'validar por entrada directa', '', '', '2018-04-16', '18:53:44'),
(35, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '18:55:49'),
(36, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '18:58:56'),
(37, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '18:59:30'),
(38, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '19:00:22'),
(39, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '19:00:59'),
(40, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '19:02:57'),
(41, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '19:03:57'),
(42, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '19:11:05'),
(43, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF                 \n', '2018-04-16', '23:00:46'),
(44, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '23:15:09'),
(45, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '23:15:23'),
(46, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '23:17:04'),
(47, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '23:19:23'),
(48, 'validar por entrada directa', '<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc="http://purl.org/dc/ele', ',Revise la lÃ­nea nÃºmero <b>0</b>:&lt;rdf:RDF xmlns:rdf=&quot;http://www.w3.org/1999/02/22-rdf-syntax-ns#&quot;\r\n', '2018-04-16', '23:19:56'),
(49, 'validar por entrada directa', '<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc="http://purl.org/dc/ele', ',Revise la lÃ­nea nÃºmero <b>0</b>:&lt;rdf:RDF xmlns:rdf=&quot;http://www.w3.org/1999/02/22-rdf-syntax-ns#&quot;\r\n', '2018-04-16', '23:21:41'),
(50, 'validar por entrada directa', '<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc="http://purl.org/dc/ele', ',Revise la lÃ­nea nÃºmero <b>0</b>:&lt;rdf:RDF xmlns:rdf=&quot;http://www.w3.org/1999/02/22-rdf-syntax-ns#&quot;\r\n', '2018-04-16', '23:23:58'),
(51, 'validar por entrada directa', '<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc="http://purl.org/dc/ele', ',Revise la lÃ­nea nÃºmero <b>0</b>:&lt;rdf:RDF xmlns:rdf=&quot;http://www.w3.org/1999/02/22-rdf-syntax-ns#&quot;\r\n', '2018-04-16', '23:24:19'),
(52, 'validar por entrada directa', '<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc="http://purl.org/dc/ele', ',Revise la lÃ­nea nÃºmero <b>0</b>:&lt;rdf:RDF xmlns:rdf=&quot;http://www.w3.org/1999/02/22-rdf-syntax-ns#&quot;\r\n', '2018-04-16', '23:24:45'),
(53, 'validar por entrada directa', '<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc="http://purl.org/dc/ele', ',Revise la lÃ­nea nÃºmero <b>0</b>:&lt;rdf:RDF xmlns:rdf=&quot;http://www.w3.org/1999/02/22-rdf-syntax-ns#&quot;\r\n', '2018-04-16', '23:25:14'),
(54, 'validar por entrada directa', '<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc="http://purl.org/dc/ele', ',Revise la lÃ­nea nÃºmero <b>0</b>:&lt;rdf:RDF xmlns:rdf=&quot;http://www.w3.org/1999/02/22-rdf-syntax-ns#&quot;\r\n', '2018-04-16', '23:25:43'),
(55, 'validar por entrada directa', '<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc="http://purl.org/dc/ele', ',Revise la lÃ­nea nÃºmero <b>0</b>:&lt;rdf:RDF xmlns:rdf=&quot;http://www.w3.org/1999/02/22-rdf-syntax-ns#&quot;\r\n', '2018-04-16', '23:27:00'),
(56, 'validar por entrada directa', '<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc="http://purl.org/dc/ele', ',Revise la lÃ­nea nÃºmero <b>0</b>:&lt;rdf:RDF xmlns:rdf=&quot;http://www.w3.org/1999/02/22-rdf-syntax-ns#&quot;\r\n', '2018-04-16', '23:27:25'),
(57, 'validar por entrada directa', '<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc="http://purl.org/dc/ele', ',Revise la lÃ­nea nÃºmero <b>0</b>:&lt;rdf:RDF xmlns:rdf=&quot;http://www.w3.org/1999/02/22-rdf-syntax-ns#&quot;\r\n', '2018-04-16', '23:31:41'),
(58, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-16', '23:32:18'),
(59, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '0', '2018-04-17', '00:01:54'),
(60, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:05:28'),
(61, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:05:58'),
(62, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:06:14'),
(63, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:07:19'),
(64, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:08:57'),
(65, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:10:18'),
(66, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:10:48'),
(67, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:11:41'),
(68, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:12:11'),
(69, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:12:31'),
(70, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:12:49'),
(71, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:14:58'),
(72, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:15:57'),
(73, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:16:24'),
(74, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:17:07'),
(75, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:18:21'),
(76, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:19:01'),
(77, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:19:30'),
(78, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:19:42'),
(79, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:22:31'),
(80, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:23:57'),
(81, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:25:58'),
(82, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:26:46'),
(83, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:28:08'),
(84, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:28:27'),
(85, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:28:52'),
(86, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:31:39'),
(87, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:32:15'),
(88, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF                      \n', '2018-04-17', '01:35:03'),
(89, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF                      \n', '2018-04-17', '01:36:33'),
(90, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF                      \n', '2018-04-17', '01:38:20'),
(91, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF                      \n', '2018-04-17', '01:38:25'),
(92, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF                      \n', '2018-04-17', '01:42:11'),
(93, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF                      \n', '2018-04-17', '01:42:36'),
(94, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF                      \n', '2018-04-17', '01:43:29'),
(95, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF                      \n', '2018-04-17', '01:45:19'),
(96, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF                      \n', '2018-04-17', '01:45:39'),
(97, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF                      \n', '2018-04-17', '01:45:43'),
(98, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF                      \n', '2018-04-17', '01:46:08'),
(99, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF                      \n', '2018-04-17', '01:46:21'),
(100, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF                      \n', '2018-04-17', '01:47:41'),
(101, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF                      \n', '2018-04-17', '01:47:54'),
(102, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF                      \n', '2018-04-17', '01:49:06'),
(103, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF                      \n', '2018-04-17', '01:50:11'),
(104, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF                      \n', '2018-04-17', '01:50:35'),
(105, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF                      \n', '2018-04-17', '01:50:52'),
(106, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:51:21'),
(107, 'validar por entrada directa', '<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc="http://purl.org/dc/ele', ',Revise la lÃ­nea nÃºmero <b>0</b>:&lt;rdf:RDF xmlns:rdf=&quot;http://www.w3.org/1999/02/22-rdf-syntax-ns#&quot;\r\n', '2018-04-17', '01:51:38'),
(108, 'validar por entrada directa', '<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc="http://purl.org/dc/ele', ',Revise la lÃ­nea nÃºmero <b>0</b>:&lt;rdf:RDF xmlns:rdf=&quot;http://www.w3.org/1999/02/22-rdf-syntax-ns#&quot;\r\n', '2018-04-17', '01:52:07'),
(109, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '01:52:52'),
(110, 'validar por entrada directa', '                        <?xml version="1.0"?>', '', '2018-04-17', '01:57:20'),
(111, 'validar por entrada directa', '                        <?xml version="1.0"?>', '', '2018-04-17', '01:58:42'),
(112, 'validar por entrada directa', '                        <?xml version="1.0"?>', '', '2018-04-16', '19:02:52'),
(113, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS RDF/XML <br /> Revise la lÃ­nea: #<b>7</b> :                         \n', '2018-04-17', '09:05:14'),
(114, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS RDF/XML <br /> Revise la lÃ­nea: #<b>7</b> :                         \n', '2018-04-17', '09:06:03'),
(115, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS RDF/XML <br /> Revise la lÃ­nea: #<b>7</b> :                         \n', '2018-04-17', '09:07:19'),
(116, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS RDF/XML <br /> Revise la lÃ­nea: #<b>7</b> :                         \n', '2018-04-17', '09:10:33'),
(117, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS RDF/XML <br /> Revise la lÃ­nea: #<b>7</b> :                         \n', '2018-04-17', '09:11:29'),
(118, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS RDF/XML <br /> Revise la lÃ­nea: #<b>7</b> :                         \n', '2018-04-17', '09:12:12'),
(119, 'validar por entrada directa', '  <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:d', ',ERROR DE SINTAXIS RDF/XML <br /> Revise la lÃ­nea: #<b>7</b> :                       \n', '2018-04-17', '09:14:26'),
(120, 'validar por entrada directa', '  <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:d', '', '2018-04-17', '09:14:55'),
(121, 'validar por entrada directa', '  <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:d', '', '2018-04-17', '09:15:42'),
(122, 'validar por entrada directa', '  <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:d', '', '2018-04-17', '09:16:20'),
(123, 'validar por entrada directa', '  <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:d', '', '2018-04-17', '09:16:52'),
(124, 'validar por entrada directa', '  <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:d', '', '2018-04-17', '09:17:23'),
(125, 'validar por entrada directa', '  <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:d', '', '2018-04-17', '09:17:42'),
(126, 'validar por entrada directa', '  <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:d', '', '2018-04-17', '09:18:00'),
(127, 'validar por entrada directa', '  <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:d', '', '2018-04-17', '09:18:21'),
(128, 'validar por entrada directa', '  <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:d', '', '2018-04-17', '09:19:03'),
(129, 'validar por entrada directa', '  <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:d', '', '2018-04-17', '09:19:26'),
(130, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '09:20:04'),
(131, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '09:20:32'),
(132, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>3</b> :   &lt;rdf:Description rdf:about=&quot;http://www.w3.org/&quot;&gt;\r\n,ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>4</b> :     &lt;dc:title&gt;World Wide Web Consortium&lt;/dc:title&gt; \r\n,ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>5</b> :', '2018-04-17', '09:20:54'),
(133, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '09:21:35'),
(134, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF    \n', '2018-04-17', '09:21:49'),
(135, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '09:22:14'),
(136, 'validar por entrada directa', '', ',Revise la lÃ­nea nÃºmero <b>0</b>:\n', '2018-04-17', '09:22:23'),
(137, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n    xmlns:c', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>5</b> :     &lt;contact:mailbox rdf:resource=&quot;mailto:em@w3.org&quot;/&gt;\r\n,ERROR DE SINTAXIS RDF/XML <br /> Revise la lÃ­nea: #<b>6</b> :     &lt;contact:personalTitle&gt;Dr.&lt;/contact:personalTitle&gt; \r\n,ERROR DE SINTAXIS <br /> Revise la lÃ­', '2018-04-17', '09:24:40'),
(138, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n    xmlns:c', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>5</b> :     &lt;contact:mailbox rdf:resource=&quot;mailto:em@w3.org&quot;/&gt;\r\n,ERROR DE SINTAXIS RDF/XML <br /> Revise la lÃ­nea: #<b>6</b> :     &lt;contact:personalTitle&gt;Dr.&lt;/contact:personalTitle&gt; \r\n,ERROR DE SINTAXIS <br /> Revise la lÃ­', '2018-04-17', '09:31:22'),
(139, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '09:35:26'),
(140, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '09:35:49'),
(141, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '09:36:06'),
(142, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '09:36:18'),
(143, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '09:37:00'),
(144, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '09:37:17'),
(145, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '09:38:23'),
(146, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF                     \n', '2018-04-17', '09:38:38'),
(147, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '09:38:51'),
(148, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '09:41:32'),
(149, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS RDF/XML <br /> Revise la lÃ­nea: #<b>7</b> :                  \n', '2018-04-17', '09:42:17'),
(150, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS RDF/XML <br /> Revise la lÃ­nea: #<b>7</b> :                  \n', '2018-04-17', '09:44:15'),
(151, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS RDF/XML <br /> Revise la lÃ­nea: #<b>7</b> :                  \n', '2018-04-17', '09:44:55'),
(152, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '09:45:08'),
(153, 'validar por entrada directa', ' <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc', '', '2018-04-17', '09:45:38'),
(154, 'validar por entrada directa', ' <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc', '', '2018-04-17', '09:45:54'),
(155, 'validar por entrada directa', ' <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc', '', '2018-04-17', '09:49:16'),
(156, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '09:49:53'),
(157, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF                    \n', '2018-04-17', '09:50:09'),
(158, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '09:51:40'),
(159, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF                    \n', '2018-04-17', '09:51:52'),
(160, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> :                     \n', '2018-04-17', '09:52:04'),
(161, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:Description&gt;\r\n,ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>7</b> :                     \n', '2018-04-17', '09:52:22'),
(162, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS RDF/XML <br /> Revise la lÃ­nea: #<b>7</b> :                     \n', '2018-04-17', '09:52:50'),
(163, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '09:53:01'),
(164, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>5</b> :  \r\n,ERROR DE SINTAXIS RDF/XML <br /> Revise la lÃ­nea: #<b>6</b> :   &lt;/rdf:Description&gt;\r\n', '2018-04-17', '09:53:13'),
(165, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '09:53:48'),
(166, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '09:54:01'),
(167, 'validar por entrada directa', '<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc="http://purl.org/dc/ele', ',Revise la lÃ­nea nÃºmero <b>0</b>:&lt;rdf:RDF xmlns:rdf=&quot;http://www.w3.org/1999/02/22-rdf-syntax-ns#&quot;\r\n', '2018-04-17', '09:54:16'),
(168, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-17', '10:02:52'),
(169, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:RDF               \n', '2018-04-17', '10:03:08'),
(170, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> :             \n', '2018-04-17', '10:03:30'),
(171, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>6</b> : &lt;/rdf:Description&gt;\r\n,ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>7</b> :             \n', '2018-04-17', '10:03:47'),
(172, 'validar por entrada directa', '', ',Revise la lÃ­nea nÃºmero <b>0</b>:\n', '2018-04-24', '08:54:22'),
(173, 'validar por entrada directa', ' <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n         x', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>4</b> :       &lt;s:students rdf:parseType=&quot;Collection&quot;&gt;\r\n,ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>5</b> :             &lt;rdf:Description rdf:about=&quot;http://example.org/students/Amy&quot;/&gt;\r\n,ERROR DE SINTAXIS <br /> Revise ', '2018-04-24', '09:00:04'),
(174, 'validar por entrada directa', ' <?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n         x', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>4</b> :       &lt;s:students rdf:parseType=&quot;Collection&quot;&gt;\r\n,ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>5</b> :             &lt;rdf:Description rdf:about=&quot;http://example.org/students/Amy&quot;/&gt;\r\n,ERROR DE SINTAXIS <br /> Revise ', '2018-04-24', '09:01:16'),
(175, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n         xm', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>4</b> :       &lt;s:students rdf:parseType=&quot;Collection&quot;&gt;\r\n,ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>5</b> :             &lt;rdf:Description rdf:about=&quot;http://example.org/students/Amy&quot;/&gt;\r\n,ERROR DE SINTAXIS <br /> Revise ', '2018-04-24', '09:02:19'),
(176, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n  xmlns:dc=', '', '2018-04-24', '09:04:35'),
(177, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n         xm', '', '2018-04-24', '09:05:14'),
(178, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n         xm', '', '2018-04-24', '09:06:15'),
(179, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n         xm', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>4</b> : &lt;s:students rdf:parseType=&quot;Collection&quot;&gt;                  \n', '2018-04-24', '09:06:35'),
(180, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n         xm', '', '2018-04-24', '09:07:00'),
(181, 'validar por entrada directa', '<?xml version="1.0"?>\r\n<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"\r\n         xm', ',ERROR DE SINTAXIS <br /> Revise la lÃ­nea: #<b>4</b> : &lt;s:students rdf:parseType=&quot;Collection&quot;&gt;                    \n', '2018-04-24', '09:07:14'),
(182, 'validar por entrada directa', '<?xml version="1.0" encoding="utf-8" ?>\r\n<rdf:RDF\r\n	xmlns:rdf="http://www.w3.org/1999/02/22-rdf-synt', '', '2018-04-24', '09:11:54');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
