-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2022 a las 16:24:49
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ti1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agente`
--

CREATE TABLE `agente` (
  `id_agente` int(4) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `mesa` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `agente`
--

INSERT INTO `agente` (`id_agente`, `nombre`, `mesa`) VALUES
(1, 'Jimena Alarcon', 'Management'),
(2, 'Jose Renovato', 'Desarrollo'),
(3, 'Juan Lira', 'Desarrollo'),
(4, 'Yaressi Rodrigues', 'Soporte'),
(5, 'Manuel Olvera', 'Infraestructura'),
(6, 'Alejandro Cabello', 'Infraestructura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `id_area` int(4) NOT NULL,
  `area` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`id_area`, `area`) VALUES
(1, 'navetec'),
(2, 'proyectos'),
(3, 'desarrollo y construccion'),
(4, 'compras'),
(5, 'habitta'),
(6, 'sistemas'),
(7, 'administracion'),
(8, 'legal'),
(9, 'marketing'),
(10, 'control y medicion'),
(11, 'recursos humanos'),
(12, 'rentas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat`
--

CREATE TABLE `cat` (
  `id_cat` int(4) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `subcategoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cat`
--

INSERT INTO `cat` (`id_cat`, `categoria`, `subcategoria`) VALUES
(1, 'camaras', 'configuracion'),
(2, 'camaras', 'instalacion'),
(3, 'camaras', 'revision'),
(4, 'camaras', 'peticion de respaldo'),
(5, 'celular', 'creacion de correo'),
(6, 'celular', 'reemplazo'),
(7, 'celular', 'diagnostico'),
(8, 'celular', 'configuracion'),
(9, 'compras', 'equipo de red'),
(10, 'compras', 'equipo de computo'),
(11, 'compras', 'video conferencia'),
(12, 'compras', 'accesorios'),
(13, 'compras', 'consumible'),
(14, 'compras', 'soporte tecnico'),
(15, 'compras', 'cursos'),
(16, 'compras', 'equipo de impresion'),
(17, 'compras', 'proyector'),
(18, 'compras', 'monitor'),
(19, 'compras', 'cargador'),
(20, 'compras', 'electricidad (ups, nobreack)'),
(21, 'compras', 'insumo mantenimiento'),
(22, 'documentacion', 'responsivas'),
(23, 'documentacion', 'informe'),
(24, 'documentacion', 'politicas y procedimientos'),
(25, 'documentacion', 'manuales'),
(26, 'email', 'no envia'),
(27, 'email', 'crear o eliminar'),
(28, 'email', 'configurar'),
(29, 'email', 'cambio de contraseña'),
(30, 'email', 'rechazo de correo'),
(31, 'email', 'correos no reconocidos'),
(32, 'email', 'creacion de firmas'),
(33, 'software', 'instalar'),
(34, 'software', 'eliminar'),
(35, 'software', 'configurar'),
(36, 'software', 'actualizar'),
(37, 'software', 'crear'),
(38, 'equipo', 'asignacion'),
(39, 'equipo', 'resguardo'),
(40, 'hardware', 'cambio de pieza'),
(41, 'hardware', 'diagnostico'),
(42, 'hardware', 'reparacion'),
(43, 'hardware', 'mantenimiento preventivo'),
(44, 'hardware', 'mantenimiento correctivo'),
(45, 'impresora', 'instalar'),
(46, 'impresora', 'cambio de impresora'),
(47, 'impresora', 'no imprime'),
(48, 'impresora', 'atasco'),
(49, 'impresora', 'configuracion'),
(50, 'marketing ', 'clientes internos'),
(51, 'red', 'cableado estructurado'),
(52, 'red', 'cambio wify'),
(53, 'red', 'cambio credenciales de wify'),
(54, 'red', 'internet lento'),
(55, 'red', 'configuracion'),
(56, 'respaldo', 'respaldo celular'),
(57, 'respaldo', 'restaurar respaldo'),
(58, 'respaldo', 'respaldo laptop'),
(59, 'servidor', 'no conecta'),
(60, 'servidor', 'configuracion'),
(61, 'servidor', 'creacion de usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categorias` int(4) NOT NULL,
  `categorias` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categorias`, `categorias`) VALUES
(1, 'camaras'),
(2, 'celular'),
(3, 'compras'),
(4, 'documentacion'),
(5, 'email'),
(6, 'software'),
(7, 'equipo'),
(8, 'hardware'),
(9, 'impresora'),
(10, 'marketing'),
(11, 'red'),
(12, 'respaldo'),
(13, 'servidor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `equipo` varchar(26) NOT NULL,
  `responsable` varchar(36) NOT NULL,
  `cargo` varchar(34) NOT NULL,
  `departamento` varchar(25) NOT NULL,
  `sucursal` varchar(17) NOT NULL,
  `descripcion` varchar(17) NOT NULL,
  `marca` varchar(18) NOT NULL,
  `modelo` varchar(21) NOT NULL,
  `disco_duro` varchar(10) NOT NULL,
  `ram` varchar(5) NOT NULL,
  `no_identificacion` varchar(18) NOT NULL,
  `procesador` varchar(25) NOT NULL,
  `s_operativo` varchar(31) NOT NULL,
  `direccion_mac` varchar(17) NOT NULL,
  `estatus` varchar(8) NOT NULL,
  `no_serial` varchar(24) NOT NULL,
  `id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`equipo`, `responsable`, `cargo`, `departamento`, `sucursal`, `descripcion`, `marca`, `modelo`, `disco_duro`, `ram`, `no_identificacion`, `procesador`, `s_operativo`, `direccion_mac`, `estatus`, `no_serial`, `id`) VALUES
('Laptop', 'Abel Alejandro Carranza Sanchez', 'Gerente Juridico', 'JURIDICO', 'Santa Rosa', 'Equipo de computo', 'ASUS', '', '239 GB', '16 GB', 'GCC-21-068', 'Intel Core i5-6200', 'Windows 10 Home Single', '44-E9-79-17-6E-2D', 'Asignado', '00327-30432-99178-AAOEM', 1),
('Laptop', 'Ailyn Galvan Suarez', 'Auxiliar Administrativo', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP Elite Book 725 G2', '466 GB', '8 GB', 'GCC-21-072', 'Intel Core i5-3230M', 'Windows 10 Pro', 'AC-E0-10-F9-D5-E4', 'Asignado', '00330-80000-00000-AAOEM', 2),
('Laptop', 'Alan Fernando Orduña Orduña', 'Auxiliar de Recursos Humanos', 'RECURSOS HUMANOS', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP 246 G6', '932 GB', '8 GB', 'GCC-21-074', 'Intel Celeron 4100', 'Windows 10 Home', 'D0-C5-D3-43-4D-47', 'Asignado', '5CD7517B9H', 3),
('Equipo Completo', 'Alan Gonzales Montes de Oca', 'Lider de diseño', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'A0C', 'B365M H', '932 GB', '16 GB', 'GCC-22-089', 'INTEl Core i5-9400F CPU', 'Windows 10 Pro', '18-C0-4D-68-AF-D4', 'Asignado', '00330-80000-00000-AA883', 4),
('Laptop', 'Alma Yetzel Peña Alvarez', 'Auxiliar Marketing', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'HP', 'HP ProBook 450 G2', '446 GB', '8 GB', 'GCC-21', 'Intel Core i5-4210U CPU', 'Windows 11 Pro', 'B0-5A-DA-57-E7-EC', 'Asignado', '00330-50000-00000-AAOEM', 5),
('Laptop', 'Amayrani Oricel Olvera Jaimes', 'Asistente de Gerencia Rentas', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP Laptop 14-dk1xxx', '239 GB', '16 GB', 'GCC-22-011', 'AMD Ryzen 3 3250U', 'Windows 11 Home Single Languaje', '5C-FB-3A-D2-52-01', 'Asignado', '00342-43205-11121-AAOEM', 6),
('Laptop', 'Ana Lucia Montiel Juarez', 'Gerente de Proyectos', 'PROYECTOS', 'Santa Rosa', 'Equipo de computo', 'LENOVO', '82EY', '932 GB', '8 GB', 'GCC-22-085', 'AMD Ryzen 5 4600 H', 'Windows 10 Home Single Languaje', '14-5A-FC-51-4E-89', 'Asignado', '00327-31098-78069-AAOEM', 7),
('Monitor', 'Ana Lucia Montiel Juarez', 'Gerente de Proyectos', 'PROYECTOS', 'Santa Rosa', 'Monitor', 'ACER', '', '', '', 'GCC-22-085', '', '', '', 'Asignado', '', 8),
('Laptop', 'Anahi Ramirez Hernandez', 'Jefatura de Administración NAVETEC', 'NAVETEC', 'Santa Rosa', 'Equipo de computo', 'DELL', 'INSPIRON 15 3515', '256 GB', '8 GB', 'GCC-22-008', 'AMD RYZEN 5 3450U', 'Windows 11 Home Single Languaje', 'EA-93-4A-62-37-DD', 'Asignado', '7MWYV A02', 9),
('Laptop', 'Ariana Aramis Alvarez Montañes', 'Asistente Juridico', 'JURIDICO', 'Santa Rosa', 'Equipo de computo', 'DELL', 'Latitude 7480', '239 GB', '8 GB', 'GCC-22-083', 'Intel Core i5-6300U CPU', 'Windows 10 Home Single Languaje', 'F8-94-C2-9D-A9-6D', 'Asignado', '00327-30754-60261-AAOEM', 10),
('Laptop', 'Brenda Jimena Alarcon Vargas', 'Coordindora de Sistemas', 'SISTEMAS', 'Santa Rosa', 'Equipo de computo', 'HP', 'Envy Laptop 13-ah0xx', '256 GB', '8 GB', 'GCC-22-081', 'Intel Core i5-8250U', 'Windows 11 Pro', '48-5F-99-31-6D-E1', 'Asignado', '00330-80000-00000-AA896', 11),
('Laptop', 'Brenda Paola Rivera Velazquez', 'Becario Juridico', 'JURIDICO', 'Santa Rosa', 'Equipo de computo', 'LENOVO', '80T6', '466 GB', '4 GB', 'GCC-22-065', 'Intel Celeron CPU N3060', 'Windows 10 Home Single Languaje', '3C-95-09-5B-46-87', 'Asignado', '00327-70000-00001-AA426', 12),
('Laptop', 'Cesar Alanso Herrera Barrera', 'Abogado Junior', 'LEGAL', 'Bernardo Quintana', 'Equipo de computo', 'HP', 'HP 240 G7 Notebook', '466 GB', '8 GB', 'GCC-22-092', 'Intel Core i3-1005G2', 'Windows 11 Home Single Languaje', '69-6C-80-0F-90-27', 'Asignado', '00327-30955-08455-AAOEM', 13),
('Laptop', 'Cesar Enrique Bolfeta Franco', 'Reclutador', 'RECURSOS HUMANOS', 'Santa Rosa', 'Equipo de computo', 'HP', '14-BS010LA', '932 GB', '8 GB', 'GCC-21-064', 'Intel Petium', 'Windows 10 Home Single', '4D-9F-38-A9-CF-1F', 'Asignado', '5CD7517B9H', 14),
('Laptop', 'Cesar Tabares Castellanos', 'Coordinador Ventas', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP 240 G6 Notebook PC', '932 GB', '8 GB', 'GCC-21-045', 'Intel Celeron N4100 CPU', 'Windows 10 Home Single Languaje', '90-32-4B-A4-9D-57', 'Asignado', '00327-30207-16095-AAOEM', 15),
('Equipo Completo', 'Claudia Ivette Gutierrez Mexicano', 'Auxiliar de Diseño', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'A0C', 'B365M H', '932 GB', '32 GB', 'GCC-22-088', 'INTEl Core i5-9400 CPU', 'Windows 10 Pro', '18-C0-4D-60-E2-28', 'Asignado', '00331-10000-00001-AA688', 16),
('Laptop', 'Daniela Aguilar Gutierrez', 'Ejecutivo Atencion al Cliente', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'LENOVO', '80KY', '466 GB', '8 GB', 'GCC-21-028', 'Intel Core i3-4005U', 'Windows 10 Pro', 'F4-06-69-8A-E7-E2', 'Asignado', '00330-53448-55261-AAOEM', 17),
('Laptop', 'Daniela Hidalgo Prats', 'Asistente Gerencial Direccion', 'ADMINISTRACION', 'Santa Rosa', 'Equipo de computo', 'HP', 'ELITE BOOK 725 G2', '466 GB', '4 GB', 'GCC-21-036', 'AMD A6-Pro-70503 R4', 'Windows 10 Pro', 'AC-E0-10-E1-85-5E', 'Asignado', '00330-50000-00000-AAOEM', 18),
('Laptop', 'Daniela Sanchez Apaes', 'Auxiliar Administrativo', 'NAVETEC', 'Santa Rosa', 'Equipo de computo', 'LENOVO', 'V110-80TF', '480GB', '4 GB', 'GCC-21-016', 'Intel Celeron N3350', 'Windows 10 Home Single', '7C-67-A2-AE-1C-1C', 'Asignado', 'R90NK638', 19),
('Laptop', 'Diego Dominguez Zacapala', 'Lider de automatizacion', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'DELL', 'Inspiron 3593', '220 GB', '8 GB', 'GCC-22-091', 'Intel Core i5-1035G1 CPU', 'Windows 11 Home', '40-5B-D8-23-89-E9', 'Asignado', '00325-81551-88941-AAOEM', 20),
('Monitor', 'Diego Dominguez Zacapala', 'Lider de automatizacion', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Monitor', 'DELL', '', '', '', 'GCC-22-092', '', '', '', 'Asignado', '', 21),
('Monitor', 'Diego Dominguez Zacapala', 'Lider de automatizacion', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Monitor', 'View Sonic', '', '', '', 'GCC-22-093', '', '', '', 'Asignado', '', 22),
('Tableta', 'Diego Dominguez Zacapala', 'Lider de automatizacion', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Tableta', 'SAMSUNG', 'Galaxy Tab S6 Lite', '64 GB', '4 GB', 'GCC-22-003', '', '', '', 'Asignado', '', 23),
('Tableta', 'Diego Dominguez Zacapala', 'Lider de automatizacion', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Tableta', 'SAMSUNG', 'Galaxy Tab S6 Lite', '64 GB', '4 GB', 'GCC-22-004', '', '', '', 'Asignado', '', 24),
('Lentes de Realidad Virtual', 'Diego Dominguez Zacapala', 'Lider de automatizacion', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Oculus', 'Oculus', 'Oculus Quest 2', '64 GB', '', 'GCC-21-19', '', '', '', 'Asignado', '', 25),
('Lentes de Realidad Virtual', 'Diego Dominguez Zacapala', 'Lider de automatizacion', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Oculus', 'Oculus', 'Oculus Quest 2', '64 GB', '', 'GCC-21-20', '', '', '', 'Asignado', '', 26),
('Laptop', 'Dulce Mendoza', 'Recepcionista', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'HP', 'HP 240 G7 Notebook', '932 GB', '8 GB', 'GCC-21-053', 'Intel Core i3-4005U', 'Windows 10 Home Single Languaje', '40-B8-9A-6E-FE-1F', 'Asignado', '00327-60000-00000-AA020', 27),
('Equipo Completo', 'Edgar Josue De Jesus', 'Becario Rentas', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'LENOVO', 'SNJ0XK4T', '224 GB', '16 GB', 'GCC-21-116', 'Intel Core i7', 'Windows 10 Pro', '4C-CC-6A-1F-94-E9', 'Asignado', '1S10FGA03RLSMJ03XK4T', 28),
('Laptop', 'Eduardo Jesus Castillo Marquez', 'Auxiliar Administracion', 'ADMINISTRACION', 'Santa Rosa', 'Equipo de computo', 'HP', '245 GS NOTEBOOK PC', '224 GB', '8 GB', 'GCC-21-032', 'AMD A8-7410 APU', 'Windows 10 Home Single Languaje', '72-C9-4E-79-B1-F5', 'Asignado', '5CD8348Y11', 29),
('Equipo Completo', 'Emmanuel Garcia Roman', 'Auxiliar de Control y Medicion', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'HP', 'HP ProDesk 600 G2 DM', '223 GB', '8 GB', 'GCC-21-102', 'Intel Core i3-6100T CPU', 'Windows 10 Pro', 'C8-D3-FF-9D-2D-9B', 'Asignado', '00331-10000-00001-AA220', 30),
('Laptop', 'Erick Adrian Pineda Carrillo', 'Coordinador de Administracion', 'ADMINISTRACION', 'Santa Rosa', 'Equipo de computo', 'DELL', 'Inspiron i5 3515', '239 GB', '8 GB', 'GCC-22-010', 'AMD RYZEN 5 3450U', 'Windows 11 Home Single Languaje', 'A8-93-4A-62-31-EB', 'Asignado', '00342-43206-01828-AAOEM', 31),
('Laptop', 'Fernando Cuacuas', 'Gerente de Marketing', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'HP', 'HP Pavilion x360', '224 GB', '8 GB', 'GCC-21-104', 'Intel Core i5-7200U', 'Windows 10 Home Single Languaje', 'D4-6A-6A-31-48-E5', 'Asignado', '00327-30007-41269-AAOEM', 32),
('Laptop', 'Francelia Atanacio Rios', 'Coordinadora Administrativo HABITA', 'HABITA', 'Santa Rosa', 'Equipo de computo', 'DELL', 'V110-80TF', '256 GB', '8 GB', 'GCC-22-009', 'AMD RYZEN 5 3450U', 'Windows 11 Home Single Languaje', 'A8-93-4A-62-4C-29', 'Asignado', 'R90NK68H', 33),
('Laptop', 'Hannia Ivette Rosales Santos', 'Auxiliar Sistemas', 'SISTEMAS', 'Santa Rosa', 'Equipo de computo', 'DELL', 'Latitude 3550', '447 GB', '8 GB', 'GCC-22-082', 'Intel Core i5-5200U', 'Windows 11 Pro', 'DC-53-60-DC-52-9E', 'Asignado', '00330-50000-00000-AAOEM', 34),
('Laptop', 'Isaac Bernabé Aguilar Rivera', 'Auxiliar Compras', 'ADMINISTRACION', 'Santa Rosa', 'Equipo de computo', 'LENOVO', '330-14 AST', '932 GB', '8 GB', 'GCC-21-033', 'AMD A6-9225 RADEON R4', 'Windows 10 Home Single', '28-39-26-D0-7B-3D', 'Asignado', 'PF273DSC', 35),
('Equipo Completo', 'Isai Jaziel Garcia Hernandez', 'Programador Realidad Virtual', 'PROYECTOS', 'Santa Rosa', 'Equipo de computo', 'VIEW SONIC', 'N/A', '1.8 TB', '32 GB', 'GCC-21-003', 'Intel Core i7-9700 CPU', 'Windows 10 Pro', '18-C0-4D-68-4F-D7', 'Asignado', 'N/A', 36),
('Lentes de Realidad Virtual', 'Isai Jaziel Garcia Hernandez', 'Programador Realidad Virtual', 'PROYECTOS', 'Santa Rosa', 'Oculus', 'Oculus', 'Oculus Quest 2', '64 GB', '', 'GCC-21-18', '', '', '', 'Asignado', 'KW49CM', 37),
('Laptop', 'Itza Nicole Barrios Sanchez', 'Auxiliar Administrativo HABITA', 'HABITA', 'Santa Rosa', 'Equipo de computo', 'DELL', 'Latitud E6440', '224 GB', '8 GB', 'GCC-21-015', 'Intel Core i5-4200M', 'Windows 11 Pro', 'EC-F4-B8-68-26-F4', 'Asignado', 'CND53U6GN7', 38),
('Laptop', 'Jazmin Janel Martinez Rodriguez', 'Practicante', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP 245 G5 Notebook PC', '932 GB', '8 GB', 'GCC-21-096', 'AMD A8-7410 APU', 'Windows 10 Home', '70-C9-4E-77-F6-FF', 'Asignado', '00327-30023-71959-AAOEM', 39),
('Laptop', 'Jhony Pacheco Garcia', 'Auxiliar Compras', 'ADMINISTRACION', 'Santa Rosa', 'Equipo de computo', 'HP', '14-BS010LA', '932 GB', '8 GB', 'GCC-21-043', 'Intel Petium CPU', 'Windows 10 Home Single Languaje', '80-C5-F2-74-10-4D', 'Asignado', 'SCD812D52K', 40),
('Laptop', 'Jorge Alberto Huerta Hernandez', 'Jefe de Desarrollo', 'DESARROLLO Y CONSTRUCCION', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP Probook', '699 GB', '6 GB', 'GCC-22-086', 'Intel Core i5-4200M', 'Windows 8.1 Pro', '40-F0-2F-72-05-17', 'Asignado', '00261-50000-00000-AA098', 41),
('Laptop', 'Jose Alfredo Medellin Castillo', 'Auxiliar de Compras', 'ADMINISTRACION COMPRAS', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP NOTEBOOK', '932 GB', '8 GB', 'GCC-21-032', 'AMD A6-7310 APU', 'Windows 10 Home Single Languaje', '3C-AQ-67-F8-DC-B9', 'Asignado', '00327-30482-06038-AAOEM', 42),
('Laptop', 'Jose Antonio Renovato Hiedra', 'Auxiliar Sistemas', 'SISTEMAS', 'Santa Rosa', 'Equipo de computo', 'HP', '24067 Notebook', '480 GB', '8 GB', 'GCC-22-080', 'Intel Core i3-100561', 'Windows 11 Home Single Languaje', '64-6C-80-5D-71-CB', 'Asignado', '00327-30000-00000-AAOEM', 43),
('Laptop', 'Jose Uzziel Jimenez Hernandez', 'Coordinador de Recursos Humanos', 'RECURSOS HUMANOS', 'Santa Rosa', 'Equipo de computo', 'HP', '14-BS010LA', '932 GB', '8 GB', 'GCC-21-064', 'Intel Celeron', 'Windows 10 Home', 'C8-D9-D2-7D-3A-60', 'Asignado', '5CD7517B9H', 44),
('Laptop', 'Juan Daniel Maldonado Moreno', 'Auxiliar Administrativo HABITA', 'HABITA', 'Santa Rosa', 'Equipo de computo', 'LENOVO', 'ThinkPad', '119 GB', '8 GB', 'GCC-21-023', 'Intel Core i5-4300U', 'Windows 10 Pro', 'E8-2A-EA-9B-3A-25', 'Asignado', 'VXWRD-CG4GJ', 45),
('Laptop', 'Julio Xaco Romero', 'Auxiliar de Control y Medicion', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'LENOVO', 'qqqq123456', '930 GB', '8GB', 'GCC-22-013', 'Intel Core i5-3230M CPU', 'Windows 10 Pro', 'A4-17-31-F9-FA-23', 'Asignado', '00330-80000-00000-AA845', 46),
('Laptop', 'Karina Bravo Ascencio', 'Becaria de Marketing', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'HP', 'HP EliteBook 820 G2', '237 GB', '8 GB', 'GCC-073', 'Intel Core i5-5300U CPU', 'Windows 11 Home', 'FC-3F-DB-88-07-GE', 'Asignado', '00326-10000-000000-AA843', 47),
('Laptop', 'Karla Daniela Ramirez Cruz', 'Lider Gestiorias', 'PROYECTOS', 'Santa Rosa', 'Equipo de computo', 'ACER', 'N15W1', '447 GB', '16 GB', 'GCC-21-087', 'i5 Intel Core', 'Windows 10 Pro', '30-65-BC-98-33-8B', 'Asignado', 'NXVBRAl00260501D2A6600', 48),
('Laptop', 'Leonardo Daniel Valero Gonzalez', 'Auxiliar Administrativo Contable', 'DIRECCION CONTROLLER', 'Santa Rosa', 'Equipo de computo', 'ASUS', 'X541U4', '240 GB', '8 GB', 'GCC-21-069', 'Intel Core i5-6200U', 'Windows 10 Home Single', '94-E9-79-17-AF-B8', 'Asignado', '00327-60000-00000-AA894', 49),
('Laptop', 'Liliana Rendiz', 'Asistente Direccion', 'NAVETEC-HABITTA', 'Bernardo Quintana', 'Equipo de computo', 'ASUS', 'HP Notebook', '932 GB', '12 GB', 'GCC-21-103', 'Intel Core i3-1005G1 CPU', 'Windows 10 Home Single Languaje', '3C-9C-0F-E1-41-14', 'Asignado', '', 50),
('Equipo Completo', 'Lisseth Guadalupe Elizalde Alquisira', 'Lider Proyecto', 'PROYECTOS', 'Santa Rosa', 'Equipo de computo', 'DELL, HP', 'P239H', '1.8 TB', '16 GB', 'GCC-21-002', 'Intel Core i7-7700', 'Windows 10 Pro', '1C-1B-0D-99-E3-99', 'Asignado', 'N/A', 51),
('Equipo Completo', 'Lisseth Guadalupe Elizalde Alquisira', 'Lider Proyecto', 'PROYECTOS', 'Santa Rosa', 'Equipo de computo', 'VIEW SONIC, ASUS', 'VS-14880', '932 GB', '16 GB', 'GCC-22-003', 'AMD RYZEN 5 5600X', 'Windows 10 Home Single', '04-42-1A-8D-D5-D2', 'Asignado', 'N/A', 52),
('Laptop', 'Liu Yesenia Velasquez Ricardez', 'Lider de Custom Service', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'Lenovo', '20B7S1HX01', '465 GB', '8 GB', 'GCC-21-079', 'Intel Core i5-43000u CPU', 'Windows 10 ProWi', '28-D2-44-B8-B3-C2', 'Asignado', '00330-80000-00000-AA145', 53),
('Laptop', 'Loruama Andrea Gomez Sanchez', 'Legal Adviser', 'JURIDICO', 'Bernardo Quintana', 'Equipo de computo', 'HP', 'HP 240 G6 Notebook PC', '52.9 GB', '8 GB', 'GCC-21-084', 'Intel Coleron N4100 CPU', 'Windows 11 Home', 'C8-D9-D2-8A-24-16', 'Asignado', '00327-30636-90520-AAOEM', 54),
('Laptop', 'Maria Amparo Ramirez Mendez', 'Auxiliar Legal', 'JURIDICO', 'Bernardo Quintana', 'Equipo de computo', 'DELL', 'Inspiron 3421', '187 GB', '8 GB', 'GCC-21-110', 'Intel Core i3-3217U CPU', 'Windows 10 home', '3C-77-E6-9F-E8-99', 'Asignado', '00327-60000-00000-AA770', 55),
('Laptop', 'Maria del Sol Eloisa Barrera Raigosa', 'Coordinadora Compras', 'ADMINISTRACION COMPRAS', 'Santa Rosa', 'Equipo de computo', 'DELL', 'Inspiron 5566', '447 GB', '8 GB', 'GCC-21-031', 'Intel Core i3-7100U CPU', 'Windows 10 Home Single Languaje', 'A8-6B-AD-64-31-B1', 'Asignado', '64TGXF2', 56),
('Laptop', 'Maria Fernanda Najera Manzano', 'Legal Adviser', 'JURIDICO', 'Bernardo Quintana', 'Equipo de computo', 'HP', 'HP 240 G4 Notebook PC', '909 GB', '4 GB', 'GCC-21-049', 'Intel Celeron CPU N3050', 'Windows 10 Pro', 'D8-5D-E2-CB-BE-05', 'Asignado', '00327-60000-00000-AA646', 57),
('Laptop', 'Maria Guadalupe Espindola Ledesma', 'Auxiliar Administrativo', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'DELL', 'Vostro 3500', '466 GB', '4 GB', 'GCC-21-070', 'Intel Core i3 CPU', 'Windows 10 Pro', '1C-65-9D-C6-32-46', 'Asignado', '00330-80000-00000-AA690', 58),
('Laptop', 'Maria Guadalupe Lopez Campizano', 'Ejecutiva Rentas', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'LENOVO', '80TF', '500 GB', '4 GB', 'GCC-21-027', 'Intel Core i5', 'Windows 10 Home', '7E-67-A2-AD-FA-34', 'Asignado', '00330-80000-00000-AA432', 59),
('Laptop', 'Mario Islas Lira', 'Director Operaciones', 'DIRECCION OPERACIONES', 'Santa Rosa', 'Equipo de computo', 'ASUS', 'N550LF', '932 GB', '16 GB', 'GCC-22-079', 'Intel Core i7-4500u', 'Windows 10 Pro', '34-27-1E-AC-QC-B4', 'Asignado', 'S/N', 60),
('Equipo Completo', 'Mario Torres Muños', 'Auxiliar 3D', 'PROYECTOS', 'Santa Rosa', 'Equipo de computo', 'HUAWEI', 'GAMING NACER', '119 GB', '16 GB', 'GCC-21-001', 'Intel Core i5-7400 CPU', 'Windows 10 Pro', '1C-1B-0D-58-E5-10', 'Asignado', 'N/A', 61),
('Laptop', 'Marisela Mendoza Torres', 'Coordinacion de Rentas', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'DELL', 'Latitude 3590', '239 gb', '8 GB', 'GCC-21-080', 'Intel Core i5', 'Windows 10 Pro', 'FC-01-7C-87-68-6E', 'Asignado', '1Q0JKP2', 62),
('Laptop', 'Marisol Guerrero Zea', 'Lider de Control y Medicion', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'DELL', 'Vostro 3400', '222 GB', '8 GB', 'GCC-21-043', 'Intel Core i5-1135G7 CPU', 'Windows 10 Pro', '64-6C-80-00-87-69', 'Asignado', '00330-53351-25646-AAOEM', 63),
('Laptop', 'Martin Rodriguez Escobar', 'Coordinador de Parques NAVETEC', 'NAVETEC', 'Santa Rosa', 'Equipo de computo', 'HP', 'Probook 455 G5', '930 GB', '6 GB', 'GCC-21-112', 'AMD A8-7410', 'Windows 10 Single Languaje', 'D0-C5-D3-53-0B-71', 'Asignado', '5CD8349MS3', 64),
('Laptop', 'Mauricio Rojano Mata', 'Gerente Administracion', 'ADMINISTRACION', 'Santa Rosa', 'Equipo de computo', 'LENOVO', '81LW', '447 GB', '8 GB', 'GCC-21-090', 'AMD Ryzen 7300U', 'Windows 10 Home Single Languaje', '28-39-26-D0-ED-A5', 'Asignado', '00342-41409-83943-AAOEM', 65),
('Laptop', 'Mihael Cruz Bernal', 'Auxiliar Presupuestos', 'DESARROLLO Y PROYECTOS', 'Santa Rosa', 'Equipo de computo', 'DELL', 'Latitude 3550', '119 GB', '8 GB', 'GCC-21-043', 'Intel Core i5-5200U', 'Windows 10 Pro', 'DC-53-60-D9-7F-D3', 'Asignado', 'DLW4042', 66),
('Laptop', 'Minerva Chavez Gamiño', 'Auxiliar de Recursos Humanos', 'RECURSOS HUMANOS', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP 245 G5', '932 GB', '8 GB', 'GCC-21-034', 'AMD A8-7410', 'Windows 11 Home', 'F0-4D-A2-BB-D3-C0', 'Asignado', '5CG7430X98', 67),
('Laptop', 'Nazareth Gonzalez Navarro', 'Auxiliar Administrativo HABITA', 'HABITA', 'Santa Rosa', 'Equipo de computo', 'HP', '15-AY008lA', '224 GB', '8 GB', 'GCC-21-065', 'Intel Petium CPU N3710', 'Windows 10 Home Single', '94-E9-79-88-0B-43', 'Asignado', 'CND6388885', 68),
('Laptop', 'Paola Anahi Ocaña Rodea', 'Ejecutiva Rentas', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP NOTEBOOK', '466 GB', '8 GB', 'GCC-21-098', 'Intel Celeron CPU N3050', 'Windows 10 Pro', '74-DF-BF-03-2A-4B', 'Asignado', '00330-80000-00000-AA447', 69),
('Equipo Completo', 'Paola Bustos', 'Auxiliar Proyectos', 'PROYECTOS', 'Santa Rosa', 'Equipo de computo', 'VIEW SONIC, ACTECK', 'VS15562', '932 GB', '16 GB', 'GCC-21-004', 'Intel Core i5-7400', 'Windows 10 Pro', '1C-1B-0D-58-E7-E3', 'Asignado', 'N/A', 70),
('Laptop', 'Paola Nieves Valdelamar', 'Auxiliar de Custom Service', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'Lenovo', '20BUS1L12L', '223 GB', '8 GB', 'GCC-21-060', 'Intel Core i5-5300U CPU', 'Windows 10 Pro', '10-02-B5-16-94-8D', 'Asignado', '00330-50000-00000-AAOEM', 71),
('Laptop', 'Paola Patricia Gonsalez Vasquez', 'Becaria de Marketing', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'DELL', 'Inspiron 3593', '219 GB', '8 GB', 'GCC-067', 'Intel Core i5-1035G1 CPU', 'Windows 11 Home', '2A-CD-C4-74-CC-4F', 'Asignado', '00325-81847-07480-AAOEM', 72),
('Laptop', 'Rafael Torres', 'Supervisor Gruas', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP NOTEBOOK', '298 GB', '8 GB', 'GCC-21-026', 'Intel Pentium CPU', 'Windows 10 Home Single Languaje', '44-1C-A8-9B-83-13', 'Asignado', '00327-30398-02201-AAOEM', 73),
('Laptop', 'Reyna Itzel Ramirez Campista', 'Auxiliar Administrativo', 'NAVETEC', 'Santa Rosa', 'Equipo de computo', 'HP', 'Elite book 1040 G2', '240 GB', '4 GB', 'GCC-21-011', 'Intel Core i5-5300U', 'Windows 10 Pro', '66-80-99-a0-94-3E', 'Asignado', '1588-3003', 74),
('Laptop', 'Roberto Garcia Magdaleno', 'Encargado de Almacen', 'ADMINISTRACION', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP Probook 455 G5', '466 GB', '8 GB', 'GCC-22-087', 'AMD A10-9620P RADEON R5', 'Windows 10 Pro', 'D8-9C-67-2C-04-79', 'Asignado', '00330-80000-00000-AA480', 75),
('Laptop y Monitor', 'Rosa Karina Ramirez Patlan', 'Jefe de Control y Obra Presupuesto', 'CONSTRUCCION', 'Santa Rosa', 'Equipo de computo', 'ACER, ASUS', 'N15W1', '932 GB', '12 GB', 'GCC-21-029', 'Intel Core i5-6200U', 'Windows 10 Pro', '10-02-B5-5A-B6-A8', 'Asignado', 'MX279H', 76),
('Laptop', 'Rosa Laura Solis Banda', 'Asistente Ejecutivo', 'NUEVOS NEGOCIOS', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP24565', '932 GB', '8 GB', 'GCC-21-037', 'Intel Petium CPU', 'Windows 10 Home Single Languaje', '70-C9-4E-79-B2-17', 'Asignado', '5CD8348Y11', 77),
('Laptop', 'Rosa Maria Rivero Maldonado', 'Jefatura de titulacion', 'JURIDICO', 'Bernardo Quintana', 'Equipo de computo', 'HP', 'HP Pavilion x360', '118 GB', '8 GB', 'GCC-22-090', 'Intel Core i3-1005G1 CPU', 'Windows 11 Home', '78-2B-46-DC-85-E8', 'Asignado', '00356-02282-39860-AAOEM', 78),
('Laptop', 'Samantha Valeria Garnica Morales', 'Recepcionista', 'RECURSOS HUMANOS', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP 240 G4 Notebook', '932 GB', '4 GB', 'GCC-21-093', 'Intel Celeron CPU N3050', 'Windows 10 Home Single Languaje', 'D8-5D-E2-CB-A9-73', 'Asignado', '00327-60000-00000-AA609', 79),
('Laptop', 'Samantha Valeria Garnica Morales', 'Recepcionista', 'RECURSOS HUMANOS', 'Santa Rosa', 'Equipo de computo', 'DELL', 'Inspiron N5110', '596 GB', '6 GB', 'GCC-21-100', 'Intel Core i7-2670QM CPU', 'Windows 10 Pro', 'AC-72-89-BA-2C-A5', 'Asignado', '00331-10000-00001-AA550', 80),
('Laptop', 'Saul Morales Enriquez', 'Auxiliar de Control y Medicion', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'DELL', 'Latitude 5400', '237 GB', '8 GB', 'GCC-21-113', 'Intel Core i5-8265U CPU', 'Windows 10 Pro', '08-D2-3E-36-6E-DD', 'Asignado', '00330-52890-39096-AAOEM', 81),
('Laptop', 'Sayiri Yesenia Alarcon Gomez', 'Auxiliar Administrativo', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'LENOVO', '24663P3', '239 GB', '8 GB', 'GCC-21-072', 'Intel Core i5-3230M', 'Windows 10 Pro', '70-18-8B-F6-58-20', 'Asignado', '00330-80000-00000-AA461', 82),
('Laptop', 'Sebastian Codina Gallardo', 'Auxiliar Administrativo', 'ADMINISTRACION', 'Santa Rosa', 'Equipo de computo', 'HP', 'PROBOOK 455 G5', '932 GB', '8 GB', 'GCC-21-091', 'AMD A10-9620P RADEON R5', 'Windows 11 Home Single Languaje', 'D8-9C-67-2B-FE-6F', 'Asignado', 'HSN-Q03C', 83),
('Laptop', 'Sofia Esmeralda Vera Victorio', 'Auxiliar Control', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'LENOVO', '81D1', '932 GB', '8 GB', 'GCC-22-001', 'Intel Petium Silver N5000', 'Windows 10 Home Single', '50-5B-C2-CD-42-7F', 'Asignado', 'N/A', 84),
('Laptop', 'Valeria Edith Fraustro Gamez', 'Jefatura Financiera', 'ADMINISTRACION', 'Santa Rosa', 'Equipo de computo', 'DELL', 'Inspiron 3421', '239 GB', '8 GB', 'GCC-21-105', 'Intel Core i3-32170', 'Windows 10 Home Single Languaje', '64-5A-04-C3-47-D4', 'Asignado', '20FM50RN15', 85),
('Laptop', 'Vanesa Angeles Hernandez', 'Auxiliar Administrativa Rentas', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'HP', 'ELITEBOOK 840 G2', '239 GB', '8 GB', 'GCC-21-044', 'Intel Core i5', 'Windows 10 Pro', '94-65-9C-31-CA-13', 'Asignado', 'F2656', 86),
('Laptop', 'Yadira Jimenez Cervantes', 'Auxiliar Administrativo HABITA', 'HABITA', 'Santa Rosa', 'Equipo de computo', 'LENOVO', '330-14AST', '447 GB', '8 GB', 'GCC-21-039', 'AMD A6-9225 RADEON R4', 'Windows 10 Home Single', '28-39-26-D1-BB-6B', 'Asignado', 'PF273KSP', 87),
('Laptop', 'Yaressi Rodriguez Del Angel', 'Auxiliar Sistemas', 'SISTEMAS', 'Santa Rosa', 'Equipo de computo', 'HP', 'Elite Book 480', '1 TB', '12 GB', 'GCC-21-030', 'Intel Core i5-5300U', 'Windows 10 Pro', '5C-E0-C5-7B-01-BF', 'Asignado', '00330-50000-00000-AAOEM', 88),
('Laptop', 'Abel Alejandro Carranza Sanchez', 'Gerente Juridico', 'JURIDICO', 'Santa Rosa', 'Equipo de computo', 'ASUS', '', '239 GB', '16 GB', 'GCC-21-068', 'Intel Core i5-6200', 'Windows 10 Home Single', '44-E9-79-17-6E-2D', 'Asignado', '00327-30432-99178-AAOEM', 89),
('Laptop', 'Ailyn Galvan Suarez', 'Auxiliar Administrativo', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP Elite Book 725 G2', '466 GB', '8 GB', 'GCC-21-072', 'Intel Core i5-3230M', 'Windows 10 Pro', 'AC-E0-10-F9-D5-E4', 'Asignado', '00330-80000-00000-AAOEM', 90),
('Laptop', 'Alan Fernando Orduña Orduña', 'Auxiliar de Recursos Humanos', 'RECURSOS HUMANOS', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP 246 G6', '932 GB', '8 GB', 'GCC-21-074', 'Intel Celeron 4100', 'Windows 10 Home', 'D0-C5-D3-43-4D-47', 'Asignado', '5CD7517B9H', 91),
('Equipo Completo', 'Alan Gonzales Montes de Oca', 'Lider de diseño', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'A0C', 'B365M H', '932 GB', '16 GB', 'GCC-22-089', 'INTEl Core i5-9400F CPU', 'Windows 10 Pro', '18-C0-4D-68-AF-D4', 'Asignado', '00330-80000-00000-AA883', 92),
('Laptop', 'Alma Yetzel Peña Alvarez', 'Auxiliar Marketing', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'HP', 'HP ProBook 450 G2', '446 GB', '8 GB', 'GCC-21', 'Intel Core i5-4210U CPU', 'Windows 11 Pro', 'B0-5A-DA-57-E7-EC', 'Asignado', '00330-50000-00000-AAOEM', 93),
('Laptop', 'Amayrani Oricel Olvera Jaimes', 'Asistente de Gerencia Rentas', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP Laptop 14-dk1xxx', '239 GB', '16 GB', 'GCC-22-011', 'AMD Ryzen 3 3250U', 'Windows 11 Home Single Languaje', '5C-FB-3A-D2-52-01', 'Asignado', '00342-43205-11121-AAOEM', 94),
('Laptop', 'Ana Lucia Montiel Juarez', 'Gerente de Proyectos', 'PROYECTOS', 'Santa Rosa', 'Equipo de computo', 'LENOVO', '82EY', '932 GB', '8 GB', 'GCC-22-085', 'AMD Ryzen 5 4600 H', 'Windows 10 Home Single Languaje', '14-5A-FC-51-4E-89', 'Asignado', '00327-31098-78069-AAOEM', 95),
('Monitor', 'Ana Lucia Montiel Juarez', 'Gerente de Proyectos', 'PROYECTOS', 'Santa Rosa', 'Monitor', 'ACER', '', '', '', 'GCC-22-085', '', '', '', 'Asignado', '', 96),
('Laptop', 'Anahi Ramirez Hernandez', 'Jefatura de Administración NAVETEC', 'NAVETEC', 'Santa Rosa', 'Equipo de computo', 'DELL', 'INSPIRON 15 3515', '256 GB', '8 GB', 'GCC-22-008', 'AMD RYZEN 5 3450U', 'Windows 11 Home Single Languaje', 'EA-93-4A-62-37-DD', 'Asignado', '7MWYV A02', 97),
('Laptop', 'Ariana Aramis Alvarez Montañes', 'Asistente Juridico', 'JURIDICO', 'Santa Rosa', 'Equipo de computo', 'DELL', 'Latitude 7480', '239 GB', '8 GB', 'GCC-22-083', 'Intel Core i5-6300U CPU', 'Windows 10 Home Single Languaje', 'F8-94-C2-9D-A9-6D', 'Asignado', '00327-30754-60261-AAOEM', 98),
('Laptop', 'Brenda Jimena Alarcon Vargas', 'Coordindora de Sistemas', 'SISTEMAS', 'Santa Rosa', 'Equipo de computo', 'HP', 'Envy Laptop 13-ah0xx', '256 GB', '8 GB', 'GCC-22-081', 'Intel Core i5-8250U', 'Windows 11 Pro', '48-5F-99-31-6D-E1', 'Asignado', '00330-80000-00000-AA896', 99),
('Laptop', 'Brenda Paola Rivera Velazquez', 'Becario Juridico', 'JURIDICO', 'Santa Rosa', 'Equipo de computo', 'LENOVO', '80T6', '466 GB', '4 GB', 'GCC-22-065', 'Intel Celeron CPU N3060', 'Windows 10 Home Single Languaje', '3C-95-09-5B-46-87', 'Asignado', '00327-70000-00001-AA426', 100),
('Laptop', 'Cesar Alanso Herrera Barrera', 'Abogado Junior', 'LEGAL', 'Bernardo Quintana', 'Equipo de computo', 'HP', 'HP 240 G7 Notebook', '466 GB', '8 GB', 'GCC-22-092', 'Intel Core i3-1005G2', 'Windows 11 Home Single Languaje', '69-6C-80-0F-90-27', 'Asignado', '00327-30955-08455-AAOEM', 101),
('Laptop', 'Cesar Enrique Bolfeta Franco', 'Reclutador', 'RECURSOS HUMANOS', 'Santa Rosa', 'Equipo de computo', 'HP', '14-BS010LA', '932 GB', '8 GB', 'GCC-21-064', 'Intel Petium', 'Windows 10 Home Single', '4D-9F-38-A9-CF-1F', 'Asignado', '5CD7517B9H', 102),
('Laptop', 'Cesar Tabares Castellanos', 'Coordinador Ventas', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP 240 G6 Notebook PC', '932 GB', '8 GB', 'GCC-21-045', 'Intel Celeron N4100 CPU', 'Windows 10 Home Single Languaje', '90-32-4B-A4-9D-57', 'Asignado', '00327-30207-16095-AAOEM', 103),
('Equipo Completo', 'Claudia Ivette Gutierrez Mexicano', 'Auxiliar de Diseño', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'A0C', 'B365M H', '932 GB', '32 GB', 'GCC-22-088', 'INTEl Core i5-9400 CPU', 'Windows 10 Pro', '18-C0-4D-60-E2-28', 'Asignado', '00331-10000-00001-AA688', 104),
('Laptop', 'Daniela Aguilar Gutierrez', 'Ejecutivo Atencion al Cliente', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'LENOVO', '80KY', '466 GB', '8 GB', 'GCC-21-028', 'Intel Core i3-4005U', 'Windows 10 Pro', 'F4-06-69-8A-E7-E2', 'Asignado', '00330-53448-55261-AAOEM', 105),
('Laptop', 'Daniela Hidalgo Prats', 'Asistente Gerencial Direccion', 'ADMINISTRACION', 'Santa Rosa', 'Equipo de computo', 'HP', 'ELITE BOOK 725 G2', '466 GB', '4 GB', 'GCC-21-036', 'AMD A6-Pro-70503 R4', 'Windows 10 Pro', 'AC-E0-10-E1-85-5E', 'Asignado', '00330-50000-00000-AAOEM', 106),
('Laptop', 'Daniela Sanchez Apaes', 'Auxiliar Administrativo', 'NAVETEC', 'Santa Rosa', 'Equipo de computo', 'LENOVO', 'V110-80TF', '480GB', '4 GB', 'GCC-21-016', 'Intel Celeron N3350', 'Windows 10 Home Single', '7C-67-A2-AE-1C-1C', 'Asignado', 'R90NK638', 107),
('Laptop', 'Diego Dominguez Zacapala', 'Lider de automatizacion', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'DELL', 'Inspiron 3593', '220 GB', '8 GB', 'GCC-22-091', 'Intel Core i5-1035G1 CPU', 'Windows 11 Home', '40-5B-D8-23-89-E9', 'Asignado', '00325-81551-88941-AAOEM', 108),
('Monitor', 'Diego Dominguez Zacapala', 'Lider de automatizacion', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Monitor', 'DELL', '', '', '', 'GCC-22-092', '', '', '', 'Asignado', '', 109),
('Monitor', 'Diego Dominguez Zacapala', 'Lider de automatizacion', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Monitor', 'View Sonic', '', '', '', 'GCC-22-093', '', '', '', 'Asignado', '', 110),
('Tableta', 'Diego Dominguez Zacapala', 'Lider de automatizacion', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Tableta', 'SAMSUNG', 'Galaxy Tab S6 Lite', '64 GB', '4 GB', 'GCC-22-003', '', '', '', 'Asignado', '', 111),
('Tableta', 'Diego Dominguez Zacapala', 'Lider de automatizacion', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Tableta', 'SAMSUNG', 'Galaxy Tab S6 Lite', '64 GB', '4 GB', 'GCC-22-004', '', '', '', 'Asignado', '', 112),
('Lentes de Realidad Virtual', 'Diego Dominguez Zacapala', 'Lider de automatizacion', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Oculus', 'Oculus', 'Oculus Quest 2', '64 GB', '', 'GCC-21-19', '', '', '', 'Asignado', '', 113),
('Lentes de Realidad Virtual', 'Diego Dominguez Zacapala', 'Lider de automatizacion', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Oculus', 'Oculus', 'Oculus Quest 2', '64 GB', '', 'GCC-21-20', '', '', '', 'Asignado', '', 114),
('Laptop', 'Dulce Mendoza', 'Recepcionista', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'HP', 'HP 240 G7 Notebook', '932 GB', '8 GB', 'GCC-21-053', 'Intel Core i3-4005U', 'Windows 10 Home Single Languaje', '40-B8-9A-6E-FE-1F', 'Asignado', '00327-60000-00000-AA020', 115),
('Equipo Completo', 'Edgar Josue De Jesus', 'Becario Rentas', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'LENOVO', 'SNJ0XK4T', '224 GB', '16 GB', 'GCC-21-116', 'Intel Core i7', 'Windows 10 Pro', '4C-CC-6A-1F-94-E9', 'Asignado', '1S10FGA03RLSMJ03XK4T', 116),
('Laptop', 'Eduardo Jesus Castillo Marquez', 'Auxiliar Administracion', 'ADMINISTRACION', 'Santa Rosa', 'Equipo de computo', 'HP', '245 GS NOTEBOOK PC', '224 GB', '8 GB', 'GCC-21-032', 'AMD A8-7410 APU', 'Windows 10 Home Single Languaje', '72-C9-4E-79-B1-F5', 'Asignado', '5CD8348Y11', 117),
('Equipo Completo', 'Emmanuel Garcia Roman', 'Auxiliar de Control y Medicion', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'HP', 'HP ProDesk 600 G2 DM', '223 GB', '8 GB', 'GCC-21-102', 'Intel Core i3-6100T CPU', 'Windows 10 Pro', 'C8-D3-FF-9D-2D-9B', 'Asignado', '00331-10000-00001-AA220', 118),
('Laptop', 'Erick Adrian Pineda Carrillo', 'Coordinador de Administracion', 'ADMINISTRACION', 'Santa Rosa', 'Equipo de computo', 'DELL', 'Inspiron i5 3515', '239 GB', '8 GB', 'GCC-22-010', 'AMD RYZEN 5 3450U', 'Windows 11 Home Single Languaje', 'A8-93-4A-62-31-EB', 'Asignado', '00342-43206-01828-AAOEM', 119),
('Laptop', 'Fernando Cuacuas', 'Gerente de Marketing', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'HP', 'HP Pavilion x360', '224 GB', '8 GB', 'GCC-21-104', 'Intel Core i5-7200U', 'Windows 10 Home Single Languaje', 'D4-6A-6A-31-48-E5', 'Asignado', '00327-30007-41269-AAOEM', 120),
('Laptop', 'Francelia Atanacio Rios', 'Coordinadora Administrativo HABITA', 'HABITA', 'Santa Rosa', 'Equipo de computo', 'DELL', 'V110-80TF', '256 GB', '8 GB', 'GCC-22-009', 'AMD RYZEN 5 3450U', 'Windows 11 Home Single Languaje', 'A8-93-4A-62-4C-29', 'Asignado', 'R90NK68H', 121),
('Laptop', 'Hannia Ivette Rosales Santos', 'Auxiliar Sistemas', 'SISTEMAS', 'Santa Rosa', 'Equipo de computo', 'DELL', 'Latitude 3550', '447 GB', '8 GB', 'GCC-22-082', 'Intel Core i5-5200U', 'Windows 11 Pro', 'DC-53-60-DC-52-9E', 'Asignado', '00330-50000-00000-AAOEM', 122),
('Laptop', 'Isaac Bernabé Aguilar Rivera', 'Auxiliar Compras', 'ADMINISTRACION', 'Santa Rosa', 'Equipo de computo', 'LENOVO', '330-14 AST', '932 GB', '8 GB', 'GCC-21-033', 'AMD A6-9225 RADEON R4', 'Windows 10 Home Single', '28-39-26-D0-7B-3D', 'Asignado', 'PF273DSC', 123),
('Equipo Completo', 'Isai Jaziel Garcia Hernandez', 'Programador Realidad Virtual', 'PROYECTOS', 'Santa Rosa', 'Equipo de computo', 'VIEW SONIC', 'N/A', '1.8 TB', '32 GB', 'GCC-21-003', 'Intel Core i7-9700 CPU', 'Windows 10 Pro', '18-C0-4D-68-4F-D7', 'Asignado', 'N/A', 124),
('Lentes de Realidad Virtual', 'Isai Jaziel Garcia Hernandez', 'Programador Realidad Virtual', 'PROYECTOS', 'Santa Rosa', 'Oculus', 'Oculus', 'Oculus Quest 2', '64 GB', '', 'GCC-21-18', '', '', '', 'Asignado', 'KW49CM', 125),
('Laptop', 'Itza Nicole Barrios Sanchez', 'Auxiliar Administrativo HABITA', 'HABITA', 'Santa Rosa', 'Equipo de computo', 'DELL', 'Latitud E6440', '224 GB', '8 GB', 'GCC-21-015', 'Intel Core i5-4200M', 'Windows 11 Pro', 'EC-F4-B8-68-26-F4', 'Asignado', 'CND53U6GN7', 126),
('Laptop', 'Jazmin Janel Martinez Rodriguez', 'Practicante', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP 245 G5 Notebook PC', '932 GB', '8 GB', 'GCC-21-096', 'AMD A8-7410 APU', 'Windows 10 Home', '70-C9-4E-77-F6-FF', 'Asignado', '00327-30023-71959-AAOEM', 127),
('Laptop', 'Jhony Pacheco Garcia', 'Auxiliar Compras', 'ADMINISTRACION', 'Santa Rosa', 'Equipo de computo', 'HP', '14-BS010LA', '932 GB', '8 GB', 'GCC-21-043', 'Intel Petium CPU', 'Windows 10 Home Single Languaje', '80-C5-F2-74-10-4D', 'Asignado', 'SCD812D52K', 128),
('Laptop', 'Jorge Alberto Huerta Hernandez', 'Jefe de Desarrollo', 'DESARROLLO Y CONSTRUCCION', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP Probook', '699 GB', '6 GB', 'GCC-22-086', 'Intel Core i5-4200M', 'Windows 8.1 Pro', '40-F0-2F-72-05-17', 'Asignado', '00261-50000-00000-AA098', 129),
('Laptop', 'Jose Alfredo Medellin Castillo', 'Auxiliar de Compras', 'ADMINISTRACION COMPRAS', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP NOTEBOOK', '932 GB', '8 GB', 'GCC-21-032', 'AMD A6-7310 APU', 'Windows 10 Home Single Languaje', '3C-AQ-67-F8-DC-B9', 'Asignado', '00327-30482-06038-AAOEM', 130),
('Laptop', 'Jose Antonio Renovato Hiedra', 'Auxiliar Sistemas', 'SISTEMAS', 'Santa Rosa', 'Equipo de computo', 'HP', '24067 Notebook', '480 GB', '8 GB', 'GCC-22-080', 'Intel Core i3-100561', 'Windows 11 Home Single Languaje', '64-6C-80-5D-71-CB', 'Asignado', '00327-30000-00000-AAOEM', 131),
('Laptop', 'Jose Uzziel Jimenez Hernandez', 'Coordinador de Recursos Humanos', 'RECURSOS HUMANOS', 'Santa Rosa', 'Equipo de computo', 'HP', '14-BS010LA', '932 GB', '8 GB', 'GCC-21-064', 'Intel Celeron', 'Windows 10 Home', 'C8-D9-D2-7D-3A-60', 'Asignado', '5CD7517B9H', 132),
('Laptop', 'Juan Daniel Maldonado Moreno', 'Auxiliar Administrativo HABITA', 'HABITA', 'Santa Rosa', 'Equipo de computo', 'LENOVO', 'ThinkPad', '119 GB', '8 GB', 'GCC-21-023', 'Intel Core i5-4300U', 'Windows 10 Pro', 'E8-2A-EA-9B-3A-25', 'Asignado', 'VXWRD-CG4GJ', 133),
('Laptop', 'Julio Xaco Romero', 'Auxiliar de Control y Medicion', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'LENOVO', 'qqqq123456', '930 GB', '8GB', 'GCC-22-013', 'Intel Core i5-3230M CPU', 'Windows 10 Pro', 'A4-17-31-F9-FA-23', 'Asignado', '00330-80000-00000-AA845', 134),
('Laptop', 'Karina Bravo Ascencio', 'Becaria de Marketing', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'HP', 'HP EliteBook 820 G2', '237 GB', '8 GB', 'GCC-073', 'Intel Core i5-5300U CPU', 'Windows 11 Home', 'FC-3F-DB-88-07-GE', 'Asignado', '00326-10000-000000-AA843', 135),
('Laptop', 'Karla Daniela Ramirez Cruz', 'Lider Gestiorias', 'PROYECTOS', 'Santa Rosa', 'Equipo de computo', 'ACER', 'N15W1', '447 GB', '16 GB', 'GCC-21-087', 'i5 Intel Core', 'Windows 10 Pro', '30-65-BC-98-33-8B', 'Asignado', 'NXVBRAl00260501D2A6600', 136),
('Laptop', 'Leonardo Daniel Valero Gonzalez', 'Auxiliar Administrativo Contable', 'DIRECCION CONTROLLER', 'Santa Rosa', 'Equipo de computo', 'ASUS', 'X541U4', '240 GB', '8 GB', 'GCC-21-069', 'Intel Core i5-6200U', 'Windows 10 Home Single', '94-E9-79-17-AF-B8', 'Asignado', '00327-60000-00000-AA894', 137),
('Laptop', 'Liliana Rendiz', 'Asistente Direccion', 'NAVETEC-HABITTA', 'Bernardo Quintana', 'Equipo de computo', 'ASUS', 'HP Notebook', '932 GB', '12 GB', 'GCC-21-103', 'Intel Core i3-1005G1 CPU', 'Windows 10 Home Single Languaje', '3C-9C-0F-E1-41-14', 'Asignado', '', 138),
('Equipo Completo', 'Lisseth Guadalupe Elizalde Alquisira', 'Lider Proyecto', 'PROYECTOS', 'Santa Rosa', 'Equipo de computo', 'DELL, HP', 'P239H', '1.8 TB', '16 GB', 'GCC-21-002', 'Intel Core i7-7700', 'Windows 10 Pro', '1C-1B-0D-99-E3-99', 'Asignado', 'N/A', 139),
('Equipo Completo', 'Lisseth Guadalupe Elizalde Alquisira', 'Lider Proyecto', 'PROYECTOS', 'Santa Rosa', 'Equipo de computo', 'VIEW SONIC, ASUS', 'VS-14880', '932 GB', '16 GB', 'GCC-22-003', 'AMD RYZEN 5 5600X', 'Windows 10 Home Single', '04-42-1A-8D-D5-D2', 'Asignado', 'N/A', 140),
('Laptop', 'Liu Yesenia Velasquez Ricardez', 'Lider de Custom Service', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'Lenovo', '20B7S1HX01', '465 GB', '8 GB', 'GCC-21-079', 'Intel Core i5-43000u CPU', 'Windows 10 ProWi', '28-D2-44-B8-B3-C2', 'Asignado', '00330-80000-00000-AA145', 141),
('Laptop', 'Loruama Andrea Gomez Sanchez', 'Legal Adviser', 'JURIDICO', 'Bernardo Quintana', 'Equipo de computo', 'HP', 'HP 240 G6 Notebook PC', '52.9 GB', '8 GB', 'GCC-21-084', 'Intel Coleron N4100 CPU', 'Windows 11 Home', 'C8-D9-D2-8A-24-16', 'Asignado', '00327-30636-90520-AAOEM', 142),
('Laptop', 'Maria Amparo Ramirez Mendez', 'Auxiliar Legal', 'JURIDICO', 'Bernardo Quintana', 'Equipo de computo', 'DELL', 'Inspiron 3421', '187 GB', '8 GB', 'GCC-21-110', 'Intel Core i3-3217U CPU', 'Windows 10 home', '3C-77-E6-9F-E8-99', 'Asignado', '00327-60000-00000-AA770', 143),
('Laptop', 'Maria del Sol Eloisa Barrera Raigosa', 'Coordinadora Compras', 'ADMINISTRACION COMPRAS', 'Santa Rosa', 'Equipo de computo', 'DELL', 'Inspiron 5566', '447 GB', '8 GB', 'GCC-21-031', 'Intel Core i3-7100U CPU', 'Windows 10 Home Single Languaje', 'A8-6B-AD-64-31-B1', 'Asignado', '64TGXF2', 144),
('Laptop', 'Maria Fernanda Najera Manzano', 'Legal Adviser', 'JURIDICO', 'Bernardo Quintana', 'Equipo de computo', 'HP', 'HP 240 G4 Notebook PC', '909 GB', '4 GB', 'GCC-21-049', 'Intel Celeron CPU N3050', 'Windows 10 Pro', 'D8-5D-E2-CB-BE-05', 'Asignado', '00327-60000-00000-AA646', 145),
('Laptop', 'Maria Guadalupe Espindola Ledesma', 'Auxiliar Administrativo', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'DELL', 'Vostro 3500', '466 GB', '4 GB', 'GCC-21-070', 'Intel Core i3 CPU', 'Windows 10 Pro', '1C-65-9D-C6-32-46', 'Asignado', '00330-80000-00000-AA690', 146),
('Laptop', 'Maria Guadalupe Lopez Campizano', 'Ejecutiva Rentas', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'LENOVO', '80TF', '500 GB', '4 GB', 'GCC-21-027', 'Intel Core i5', 'Windows 10 Home', '7E-67-A2-AD-FA-34', 'Asignado', '00330-80000-00000-AA432', 147),
('Laptop', 'Mario Islas Lira', 'Director Operaciones', 'DIRECCION OPERACIONES', 'Santa Rosa', 'Equipo de computo', 'ASUS', 'N550LF', '932 GB', '16 GB', 'GCC-22-079', 'Intel Core i7-4500u', 'Windows 10 Pro', '34-27-1E-AC-QC-B4', 'Asignado', 'S/N', 148),
('Equipo Completo', 'Mario Torres Muños', 'Auxiliar 3D', 'PROYECTOS', 'Santa Rosa', 'Equipo de computo', 'HUAWEI', 'GAMING NACER', '119 GB', '16 GB', 'GCC-21-001', 'Intel Core i5-7400 CPU', 'Windows 10 Pro', '1C-1B-0D-58-E5-10', 'Asignado', 'N/A', 149),
('Laptop', 'Marisela Mendoza Torres', 'Coordinacion de Rentas', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'DELL', 'Latitude 3590', '239 gb', '8 GB', 'GCC-21-080', 'Intel Core i5', 'Windows 10 Pro', 'FC-01-7C-87-68-6E', 'Asignado', '1Q0JKP2', 150),
('Laptop', 'Marisol Guerrero Zea', 'Lider de Control y Medicion', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'DELL', 'Vostro 3400', '222 GB', '8 GB', 'GCC-21-043', 'Intel Core i5-1135G7 CPU', 'Windows 10 Pro', '64-6C-80-00-87-69', 'Asignado', '00330-53351-25646-AAOEM', 151),
('Laptop', 'Martin Rodriguez Escobar', 'Coordinador de Parques NAVETEC', 'NAVETEC', 'Santa Rosa', 'Equipo de computo', 'HP', 'Probook 455 G5', '930 GB', '6 GB', 'GCC-21-112', 'AMD A8-7410', 'Windows 10 Single Languaje', 'D0-C5-D3-53-0B-71', 'Asignado', '5CD8349MS3', 152),
('Laptop', 'Mauricio Rojano Mata', 'Gerente Administracion', 'ADMINISTRACION', 'Santa Rosa', 'Equipo de computo', 'LENOVO', '81LW', '447 GB', '8 GB', 'GCC-21-090', 'AMD Ryzen 7300U', 'Windows 10 Home Single Languaje', '28-39-26-D0-ED-A5', 'Asignado', '00342-41409-83943-AAOEM', 153),
('Laptop', 'Mihael Cruz Bernal', 'Auxiliar Presupuestos', 'DESARROLLO Y PROYECTOS', 'Santa Rosa', 'Equipo de computo', 'DELL', 'Latitude 3550', '119 GB', '8 GB', 'GCC-21-043', 'Intel Core i5-5200U', 'Windows 10 Pro', 'DC-53-60-D9-7F-D3', 'Asignado', 'DLW4042', 154),
('Laptop', 'Minerva Chavez Gamiño', 'Auxiliar de Recursos Humanos', 'RECURSOS HUMANOS', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP 245 G5', '932 GB', '8 GB', 'GCC-21-034', 'AMD A8-7410', 'Windows 11 Home', 'F0-4D-A2-BB-D3-C0', 'Asignado', '5CG7430X98', 155),
('Laptop', 'Nazareth Gonzalez Navarro', 'Auxiliar Administrativo HABITA', 'HABITA', 'Santa Rosa', 'Equipo de computo', 'HP', '15-AY008lA', '224 GB', '8 GB', 'GCC-21-065', 'Intel Petium CPU N3710', 'Windows 10 Home Single', '94-E9-79-88-0B-43', 'Asignado', 'CND6388885', 156),
('Laptop', 'Paola Anahi Ocaña Rodea', 'Ejecutiva Rentas', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP NOTEBOOK', '466 GB', '8 GB', 'GCC-21-098', 'Intel Celeron CPU N3050', 'Windows 10 Pro', '74-DF-BF-03-2A-4B', 'Asignado', '00330-80000-00000-AA447', 157),
('Equipo Completo', 'Paola Bustos', 'Auxiliar Proyectos', 'PROYECTOS', 'Santa Rosa', 'Equipo de computo', 'VIEW SONIC, ACTECK', 'VS15562', '932 GB', '16 GB', 'GCC-21-004', 'Intel Core i5-7400', 'Windows 10 Pro', '1C-1B-0D-58-E7-E3', 'Asignado', 'N/A', 158),
('Laptop', 'Paola Nieves Valdelamar', 'Auxiliar de Custom Service', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'Lenovo', '20BUS1L12L', '223 GB', '8 GB', 'GCC-21-060', 'Intel Core i5-5300U CPU', 'Windows 10 Pro', '10-02-B5-16-94-8D', 'Asignado', '00330-50000-00000-AAOEM', 159),
('Laptop', 'Paola Patricia Gonsalez Vasquez', 'Becaria de Marketing', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'DELL', 'Inspiron 3593', '219 GB', '8 GB', 'GCC-067', 'Intel Core i5-1035G1 CPU', 'Windows 11 Home', '2A-CD-C4-74-CC-4F', 'Asignado', '00325-81847-07480-AAOEM', 160),
('Laptop', 'Rafael Torres', 'Supervisor Gruas', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP NOTEBOOK', '298 GB', '8 GB', 'GCC-21-026', 'Intel Pentium CPU', 'Windows 10 Home Single Languaje', '44-1C-A8-9B-83-13', 'Asignado', '00327-30398-02201-AAOEM', 161),
('Laptop', 'Reyna Itzel Ramirez Campista', 'Auxiliar Administrativo', 'NAVETEC', 'Santa Rosa', 'Equipo de computo', 'HP', 'Elite book 1040 G2', '240 GB', '4 GB', 'GCC-21-011', 'Intel Core i5-5300U', 'Windows 10 Pro', '66-80-99-a0-94-3E', 'Asignado', '1588-3003', 162),
('Laptop', 'Roberto Garcia Magdaleno', 'Encargado de Almacen', 'ADMINISTRACION', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP Probook 455 G5', '466 GB', '8 GB', 'GCC-22-087', 'AMD A10-9620P RADEON R5', 'Windows 10 Pro', 'D8-9C-67-2C-04-79', 'Asignado', '00330-80000-00000-AA480', 163),
('Laptop y Monitor', 'Rosa Karina Ramirez Patlan', 'Jefe de Control y Obra Presupuesto', 'CONSTRUCCION', 'Santa Rosa', 'Equipo de computo', 'ACER, ASUS', 'N15W1', '932 GB', '12 GB', 'GCC-21-029', 'Intel Core i5-6200U', 'Windows 10 Pro', '10-02-B5-5A-B6-A8', 'Asignado', 'MX279H', 164),
('Laptop', 'Rosa Laura Solis Banda', 'Asistente Ejecutivo', 'NUEVOS NEGOCIOS', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP24565', '932 GB', '8 GB', 'GCC-21-037', 'Intel Petium CPU', 'Windows 10 Home Single Languaje', '70-C9-4E-79-B2-17', 'Asignado', '5CD8348Y11', 165),
('Laptop', 'Rosa Maria Rivero Maldonado', 'Jefatura de titulacion', 'JURIDICO', 'Bernardo Quintana', 'Equipo de computo', 'HP', 'HP Pavilion x360', '118 GB', '8 GB', 'GCC-22-090', 'Intel Core i3-1005G1 CPU', 'Windows 11 Home', '78-2B-46-DC-85-E8', 'Asignado', '00356-02282-39860-AAOEM', 166),
('Laptop', 'Samantha Valeria Garnica Morales', 'Recepcionista', 'RECURSOS HUMANOS', 'Santa Rosa', 'Equipo de computo', 'HP', 'HP 240 G4 Notebook', '932 GB', '4 GB', 'GCC-21-093', 'Intel Celeron CPU N3050', 'Windows 10 Home Single Languaje', 'D8-5D-E2-CB-A9-73', 'Asignado', '00327-60000-00000-AA609', 167),
('Laptop', 'Samantha Valeria Garnica Morales', 'Recepcionista', 'RECURSOS HUMANOS', 'Santa Rosa', 'Equipo de computo', 'DELL', 'Inspiron N5110', '596 GB', '6 GB', 'GCC-21-100', 'Intel Core i7-2670QM CPU', 'Windows 10 Pro', 'AC-72-89-BA-2C-A5', 'Asignado', '00331-10000-00001-AA550', 168),
('Laptop', 'Saul Morales Enriquez', 'Auxiliar de Control y Medicion', 'COMERCIALIZACIÓN', 'Bernardo Quintana', 'Equipo de computo', 'DELL', 'Latitude 5400', '237 GB', '8 GB', 'GCC-21-113', 'Intel Core i5-8265U CPU', 'Windows 10 Pro', '08-D2-3E-36-6E-DD', 'Asignado', '00330-52890-39096-AAOEM', 169),
('Laptop', 'Sayiri Yesenia Alarcon Gomez', 'Auxiliar Administrativo', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'LENOVO', '24663P3', '239 GB', '8 GB', 'GCC-21-072', 'Intel Core i5-3230M', 'Windows 10 Pro', '70-18-8B-F6-58-20', 'Asignado', '00330-80000-00000-AA461', 170),
('Laptop', 'Sebastian Codina Gallardo', 'Auxiliar Administrativo', 'ADMINISTRACION', 'Santa Rosa', 'Equipo de computo', 'HP', 'PROBOOK 455 G5', '932 GB', '8 GB', 'GCC-21-091', 'AMD A10-9620P RADEON R5', 'Windows 11 Home Single Languaje', 'D8-9C-67-2B-FE-6F', 'Asignado', 'HSN-Q03C', 171),
('Laptop', 'Sofia Esmeralda Vera Victorio', 'Auxiliar Control', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'LENOVO', '81D1', '932 GB', '8 GB', 'GCC-22-001', 'Intel Petium Silver N5000', 'Windows 10 Home Single', '50-5B-C2-CD-42-7F', 'Asignado', 'N/A', 172),
('Laptop', 'Valeria Edith Fraustro Gamez', 'Jefatura Financiera', 'ADMINISTRACION', 'Santa Rosa', 'Equipo de computo', 'DELL', 'Inspiron 3421', '239 GB', '8 GB', 'GCC-21-105', 'Intel Core i3-32170', 'Windows 10 Home Single Languaje', '64-5A-04-C3-47-D4', 'Asignado', '20FM50RN15', 173),
('Laptop', 'Vanesa Angeles Hernandez', 'Auxiliar Administrativa Rentas', 'RENTAS', 'Santa Rosa', 'Equipo de computo', 'HP', 'ELITEBOOK 840 G2', '239 GB', '8 GB', 'GCC-21-044', 'Intel Core i5', 'Windows 10 Pro', '94-65-9C-31-CA-13', 'Asignado', 'F2656', 174),
('Laptop', 'Yadira Jimenez Cervantes', 'Auxiliar Administrativo HABITA', 'HABITA', 'Santa Rosa', 'Equipo de computo', 'LENOVO', '330-14AST', '447 GB', '8 GB', 'GCC-21-039', 'AMD A6-9225 RADEON R4', 'Windows 10 Home Single', '28-39-26-D1-BB-6B', 'Asignado', 'PF273KSP', 175),
('Laptop', 'Yaressi Rodriguez Del Angel', 'Auxiliar Sistemas', 'SISTEMAS', 'Santa Rosa', 'Equipo de computo', 'HP', 'Elite Book 480', '1 TB', '12 GB', 'GCC-21-030', 'Intel Core i5-5300U', 'Windows 10 Pro', '5C-E0-C5-7B-01-BF', 'Asignado', '00330-50000-00000-AAOEM', 176),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 177),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 178);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password`
--

CREATE TABLE `password` (
  `id_password` int(3) NOT NULL,
  `responsable` varchar(100) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `id_ticket` int(4) NOT NULL,
  `usuario` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `telefono` int(10) NOT NULL,
  `area` varchar(30) NOT NULL,
  `descripcion` varchar(159) NOT NULL,
  `url` varchar(100) NOT NULL,
  `agente` varchar(40) NOT NULL,
  `mesa` varchar(40) NOT NULL,
  `categoria` varchar(40) NOT NULL,
  `subcategoria` varchar(60) NOT NULL,
  `t_registro` datetime NOT NULL,
  `estado` varchar(20) NOT NULL,
  `sucursal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tickets`
--

INSERT INTO `tickets` (`id_ticket`, `usuario`, `email`, `telefono`, `area`, `descripcion`, `url`, `agente`, `mesa`, `categoria`, `subcategoria`, `t_registro`, `estado`, `sucursal`) VALUES
(8, 'Diego', 'hola@gmail.com', 2147483647, 'CONTROL Y MEDICION', 'necesito que mi correo tenga otra contraseña', 'add/20221115140658426.pdf', 'Yaressi Rodrigues', 'soporte', 'email', 'cambio de contraseña', '2022-11-24 10:50:30', 'abierto', 'Santa Rosa'),
(9, 'jose renovato', 'jarenovato@grupoccima.com', 722476817, 'TI', 'necesito que se configure mi telefono de flotilla', 'add/servidor de correos .jpg', 'Yaressi Rodrigues', 'soporte', 'celular', 'configuracion', '2022-11-24 10:52:26', 'abierto', 'Santa Rosa'),
(10, 'Diego', 'hola@gmail.com', 1234567890, 'CONTROL Y MEDICION', 'necesito la creacion de un sistema de tickets', 'add/WhatsApp Image 2022-11-25 at 09.30.25(2).jpeg', 'Jose Renovato', 'desarrollo', 'software', 'configurar', '2022-11-28 09:19:43', 'abierto', 'Bernardo Quintana'),
(11, 'Diego', 'ejemplo@correo.com', 1234567890, 'CONTROL Y MEDICION', 'mi internet esta demasiado lento ', 'add/20221115140658426.pdf', 'Manuel Olvera', 'infraestructura', 'red', 'internet', '2022-11-29 10:49:31', 'abierto', 'Bernardo Quintana'),
(12, 'Diego', 'ejemplo@correo.com', 192837465, 'CONTROL Y MEDICION', 'hola', 'add/20221115140658426.pdf', 'Manuel Olvera', 'infraestructura', 'red', 'cableado', '2022-11-29 10:51:33', 'abierto', 'Bernardo Quintana'),
(13, 'Diego', 'jarenovato@grupoccima.com', 2147483647, 'CONTROL Y MEDICION', 'requiero de las politicas de su departamento ', 'add/20221115140658426.pdf', 'Jimena Alarcon', 'manager', 'documentacion', 'politicas', '2022-11-29 11:00:17', 'abierto', 'Santa Rosa'),
(14, 'mario', 'mlira@grupoccima.com', 2147483647, 'ADMINISTRACION', 'necesito un sistema para creación de reportes anuales en el area de habitta', 'add/team.jpg', 'Jose Renovato', 'desarrollo', 'software', 'crear', '2022-11-29 15:21:19', 'abierto', 'Santa Rosa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(3) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `usuario` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `area` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `usuario`, `password`, `area`) VALUES
(16, 'Manuel Olvera', 'Manuel Olvera', 'manuel123', 'TI'),
(17, 'Yaressi Rodrigues', 'Yaressi Rodrigues', '123456', 'TI'),
(18, 'Jimena Alarcon', 'Jimena Alarcon', 'jimena20', 'TI'),
(19, 'Mario', 'mario', '123456', 'ADMINISTRACION'),
(20, 'Diego', 'Diego', '123456', 'CONTROL Y MEDICION'),
(21, 'Juan Lira', 'Juan Lira', 'juan123456', 'TI'),
(22, 'Jose Renovato', 'Jose Renovato', 'reno12345', 'TI');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agente`
--
ALTER TABLE `agente`
  ADD PRIMARY KEY (`id_agente`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id_area`);

--
-- Indices de la tabla `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categorias`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password`
--
ALTER TABLE `password`
  ADD PRIMARY KEY (`id_password`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id_ticket`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agente`
--
ALTER TABLE `agente`
  MODIFY `id_agente` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `id_area` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `cat`
--
ALTER TABLE `cat`
  MODIFY `id_cat` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categorias` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT de la tabla `password`
--
ALTER TABLE `password`
  MODIFY `id_password` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id_ticket` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
