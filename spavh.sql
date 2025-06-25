-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 17-06-2025 a las 22:08:05
-- Versión del servidor: 8.4.3
-- Versión de PHP: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spavh`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendarcita`
--

CREATE TABLE `agendarcita` (
  `IdAgendarCita` int NOT NULL,
  `Usuarios_IdUsuarios` int UNSIGNED NOT NULL,
  `Horarios_IdHorarios` int NOT NULL,
  `Servicio` varchar(100) NOT NULL,
  `MetodoPago` varchar(50) NOT NULL,
  `Alergias` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `agendarcita`
--

INSERT INTO `agendarcita` (`IdAgendarCita`, `Usuarios_IdUsuarios`, `Horarios_IdHorarios`, `Servicio`, `MetodoPago`, `Alergias`) VALUES
(1, 5, 1, 'Masaje', 'Efectivo', 'ninguna'),
(2, 5, 2, 'Masaje', 'Tarjeta', 'ninguna'),
(3, 6, 3, 'Masaje', 'Efectivo', 'Ninguna'),
(4, 5, 4, 'Masaje', 'Efectivo', 'Ninguna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add agendarcita', 7, 'add_agendarcita'),
(26, 'Can change agendarcita', 7, 'change_agendarcita'),
(27, 'Can delete agendarcita', 7, 'delete_agendarcita'),
(28, 'Can view agendarcita', 7, 'view_agendarcita'),
(29, 'Can add auth group', 8, 'add_authgroup'),
(30, 'Can change auth group', 8, 'change_authgroup'),
(31, 'Can delete auth group', 8, 'delete_authgroup'),
(32, 'Can view auth group', 8, 'view_authgroup'),
(33, 'Can add auth group permissions', 9, 'add_authgrouppermissions'),
(34, 'Can change auth group permissions', 9, 'change_authgrouppermissions'),
(35, 'Can delete auth group permissions', 9, 'delete_authgrouppermissions'),
(36, 'Can view auth group permissions', 9, 'view_authgrouppermissions'),
(37, 'Can add auth permission', 10, 'add_authpermission'),
(38, 'Can change auth permission', 10, 'change_authpermission'),
(39, 'Can delete auth permission', 10, 'delete_authpermission'),
(40, 'Can view auth permission', 10, 'view_authpermission'),
(41, 'Can add auth user', 11, 'add_authuser'),
(42, 'Can change auth user', 11, 'change_authuser'),
(43, 'Can delete auth user', 11, 'delete_authuser'),
(44, 'Can view auth user', 11, 'view_authuser'),
(45, 'Can add auth user groups', 12, 'add_authusergroups'),
(46, 'Can change auth user groups', 12, 'change_authusergroups'),
(47, 'Can delete auth user groups', 12, 'delete_authusergroups'),
(48, 'Can view auth user groups', 12, 'view_authusergroups'),
(49, 'Can add auth user user permissions', 13, 'add_authuseruserpermissions'),
(50, 'Can change auth user user permissions', 13, 'change_authuseruserpermissions'),
(51, 'Can delete auth user user permissions', 13, 'delete_authuseruserpermissions'),
(52, 'Can view auth user user permissions', 13, 'view_authuseruserpermissions'),
(53, 'Can add citaservicios', 14, 'add_citaservicios'),
(54, 'Can change citaservicios', 14, 'change_citaservicios'),
(55, 'Can delete citaservicios', 14, 'delete_citaservicios'),
(56, 'Can view citaservicios', 14, 'view_citaservicios'),
(57, 'Can add contacto', 15, 'add_contacto'),
(58, 'Can change contacto', 15, 'change_contacto'),
(59, 'Can delete contacto', 15, 'delete_contacto'),
(60, 'Can view contacto', 15, 'view_contacto'),
(61, 'Can add django admin log', 16, 'add_djangoadminlog'),
(62, 'Can change django admin log', 16, 'change_djangoadminlog'),
(63, 'Can delete django admin log', 16, 'delete_djangoadminlog'),
(64, 'Can view django admin log', 16, 'view_djangoadminlog'),
(65, 'Can add django content type', 17, 'add_djangocontenttype'),
(66, 'Can change django content type', 17, 'change_djangocontenttype'),
(67, 'Can delete django content type', 17, 'delete_djangocontenttype'),
(68, 'Can view django content type', 17, 'view_djangocontenttype'),
(69, 'Can add django migrations', 18, 'add_djangomigrations'),
(70, 'Can change django migrations', 18, 'change_djangomigrations'),
(71, 'Can delete django migrations', 18, 'delete_djangomigrations'),
(72, 'Can view django migrations', 18, 'view_djangomigrations'),
(73, 'Can add django session', 19, 'add_djangosession'),
(74, 'Can change django session', 19, 'change_djangosession'),
(75, 'Can delete django session', 19, 'delete_djangosession'),
(76, 'Can view django session', 19, 'view_djangosession'),
(77, 'Can add horarios', 20, 'add_horarios'),
(78, 'Can change horarios', 20, 'change_horarios'),
(79, 'Can delete horarios', 20, 'delete_horarios'),
(80, 'Can view horarios', 20, 'view_horarios'),
(81, 'Can add metodopago', 21, 'add_metodopago'),
(82, 'Can change metodopago', 21, 'change_metodopago'),
(83, 'Can delete metodopago', 21, 'delete_metodopago'),
(84, 'Can view metodopago', 21, 'view_metodopago'),
(85, 'Can add perfiles', 22, 'add_perfiles'),
(86, 'Can change perfiles', 22, 'change_perfiles'),
(87, 'Can delete perfiles', 22, 'delete_perfiles'),
(88, 'Can view perfiles', 22, 'view_perfiles'),
(89, 'Can add registroproducto', 23, 'add_registroproducto'),
(90, 'Can change registroproducto', 23, 'change_registroproducto'),
(91, 'Can delete registroproducto', 23, 'delete_registroproducto'),
(92, 'Can view registroproducto', 23, 'view_registroproducto'),
(93, 'Can add servicios', 24, 'add_servicios'),
(94, 'Can change servicios', 24, 'change_servicios'),
(95, 'Can delete servicios', 24, 'delete_servicios'),
(96, 'Can view servicios', 24, 'view_servicios'),
(97, 'Can add usuarios', 25, 'add_usuarios'),
(98, 'Can change usuarios', 25, 'change_usuarios'),
(99, 'Can delete usuarios', 25, 'delete_usuarios'),
(100, 'Can view usuarios', 25, 'view_usuarios'),
(101, 'Can add mensaje contacto', 26, 'add_mensajecontacto'),
(102, 'Can change mensaje contacto', 26, 'change_mensajecontacto'),
(103, 'Can delete mensaje contacto', 26, 'delete_mensajecontacto'),
(104, 'Can view mensaje contacto', 26, 'view_mensajecontacto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citaservicios`
--

CREATE TABLE `citaservicios` (
  `IdCitaServicios` int NOT NULL,
  `Servicios_IdServicios` int NOT NULL,
  `AgendarCita_idAgendarCita` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `IdContacto` int NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Usuarios_IdUsuarios` int UNSIGNED NOT NULL,
  `Mensaje` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(26, 'home', 'mensajecontacto'),
(6, 'sessions', 'session'),
(7, 'usuarios', 'agendarcita'),
(8, 'usuarios', 'authgroup'),
(9, 'usuarios', 'authgrouppermissions'),
(10, 'usuarios', 'authpermission'),
(11, 'usuarios', 'authuser'),
(12, 'usuarios', 'authusergroups'),
(13, 'usuarios', 'authuseruserpermissions'),
(14, 'usuarios', 'citaservicios'),
(15, 'usuarios', 'contacto'),
(16, 'usuarios', 'djangoadminlog'),
(17, 'usuarios', 'djangocontenttype'),
(18, 'usuarios', 'djangomigrations'),
(19, 'usuarios', 'djangosession'),
(20, 'usuarios', 'horarios'),
(21, 'usuarios', 'metodopago'),
(22, 'usuarios', 'perfiles'),
(23, 'usuarios', 'registroproducto'),
(24, 'usuarios', 'servicios'),
(25, 'usuarios', 'usuarios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-05-21 15:17:50.527267'),
(2, 'auth', '0001_initial', '2025-05-21 15:17:50.978093'),
(3, 'admin', '0001_initial', '2025-05-21 15:17:51.103361'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-05-21 15:17:51.126469'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-05-21 15:17:51.134772'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-05-21 15:17:51.215262'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-05-21 15:17:51.274224'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-05-21 15:17:51.302352'),
(9, 'auth', '0004_alter_user_username_opts', '2025-05-21 15:17:51.308538'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-05-21 15:17:51.368394'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-05-21 15:17:51.371287'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-05-21 15:17:51.374563'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-05-21 15:17:51.441177'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-05-21 15:17:51.499615'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-05-21 15:17:51.520661'),
(16, 'auth', '0011_update_proxy_permissions', '2025-05-21 15:17:51.529422'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-05-21 15:17:51.590326'),
(18, 'sessions', '0001_initial', '2025-05-21 15:17:51.619599'),
(19, 'home', '0001_initial', '2025-05-27 14:49:38.941559'),
(20, 'usuarios', '0001_initial', '2025-05-27 14:49:38.980799');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('bdipn08rc537qlx7ubm1n6wg4eja9rpu', 'eyJ1c3VhcmlvX2lkIjo1LCJwZXJmaWwiOiJ1c3VhcmlvIn0:1uRYer:Qx0E121-R6U0rcaoCu6aWdRBfRSUX837KWi6ZcY-hQc', '2025-07-01 15:55:33.189829'),
('khamojzb30wcjp24bi0dlgqocnszrxzl', 'eyJ1c3VhcmlvX2lkIjo1LCJwZXJmaWwiOiJ1c3VhcmlvIn0:1uMwvo:6hi2LmVvUMGaiwuEr60tpKSoIWCSd0PlqLl2VIfii3o', '2025-06-18 22:50:00.484600'),
('vnjq7s5hug47nshp4beaw8c407gxsf6w', 'eyJ1c3VhcmlvX2lkIjoxMCwicGVyZmlsIjoidXN1YXJpbyJ9:1uHmAK:QNVqMOGa7JVgKlW_ry464St13ga3-40KFIFWr-wwV8Y', '2025-06-04 16:19:36.227093'),
('wg9lxg67h35lxyjzs306imdcqnyu3fv4', 'eyJ1c3VhcmlvX2lkIjo1LCJwZXJmaWwiOiJ1c3VhcmlvIn0:1uRXoz:nGKnZR0fq-6r960_SA552DgXGpimoF_9YdJjDhTLM_4', '2025-07-01 15:01:57.505512');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_mensajecontacto`
--

CREATE TABLE `home_mensajecontacto` (
  `id` bigint NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `correo` varchar(254) NOT NULL,
  `mensaje` longtext NOT NULL,
  `fecha` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `home_mensajecontacto`
--

INSERT INTO `home_mensajecontacto` (`id`, `nombre`, `apellido`, `correo`, `mensaje`, `fecha`) VALUES
(1, 'lola', 'pajarito', 'lola@gmail.com', 'mejoren más la página, gracias', '2025-05-27 15:00:14.559739'),
(2, 'lola', 'pajarito', 'lola@gmail.com', 'Hola', '2025-05-27 15:06:25.786620'),
(3, 'manguito', 'pajarito', 'manguito@gmail.com', 'hola', '2025-05-27 15:12:06.559674'),
(4, 'luciana', 'Castrillón', 'luciana@gmail.com', 'chaito', '2025-05-27 15:20:57.748572'),
(5, 'luci', 'Castrillón', 'luci@gmail.com', 'buenas', '2025-05-27 15:23:32.486380'),
(6, 'luci', 'Castrillón', 'luci@gmail.com', 'hyhyh', '2025-05-27 15:26:38.853697'),
(7, 'lola', 'pajarito', 'lola@gmail.com', 'rrrr', '2025-05-27 15:28:13.593265');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `IdHorarios` int NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`IdHorarios`, `Fecha`, `Hora`) VALUES
(1, '2025-06-04', '10:02'),
(2, '2025-06-01', '10:24'),
(3, '2025-06-05', '17:48'),
(4, '2025-06-18', '10:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodopago`
--

CREATE TABLE `metodopago` (
  `IdMetodoPago` int NOT NULL,
  `Descripcion` varchar(50) NOT NULL,
  `AgendarCita_idAgendarCita` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `IdPerfiles` int NOT NULL,
  `Descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`IdPerfiles`, `Descripcion`) VALUES
(1, 'Admin'),
(2, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registroproducto`
--

CREATE TABLE `registroproducto` (
  `idRegistroProducto` int NOT NULL,
  `Imagen` text NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Precio` varchar(50) NOT NULL,
  `Perfiles_IdPerfiles` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `IdServicios` int NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Precio` int NOT NULL,
  `ImagenProducto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `IdUsuarios` int UNSIGNED NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(60) NOT NULL,
  `TipoDocumento` tinyint NOT NULL,
  `NumeroDocumento` bigint NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Contraseña` varchar(45) NOT NULL,
  `Celular` varchar(15) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `Perfiles_IdPerfiles` int NOT NULL,
  `Usuarios_IdUsuario` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`IdUsuarios`, `Nombre`, `Apellido`, `TipoDocumento`, `NumeroDocumento`, `Correo`, `Contraseña`, `Celular`, `FechaNacimiento`, `Perfiles_IdPerfiles`, `Usuarios_IdUsuario`) VALUES
(1, 'Veronica', 'Hernandez', 1, 2132435432, 'spavh@gmail.com', 'spavero258341.', '32332332', '2025-04-01', 1, 1),
(5, 'Juli', 'Correa Yepes', 1, 122322131, 'juli@gmail.com', 'Jy2810666', '323212331', '2025-07-26', 2, 2),
(6, 'Dear', 'Correa Yepes', 1, 213453234, 'correaestiven09@gmail.com', 'Hz258341.', '2345324', '2025-04-22', 2, 0),
(7, 'Bad Badtz', 'Maru', 1, 12345643212, 'juanestivencorrea04@gmail.com', 'khnR6istzsFpaGJ', '123123213', '2025-04-15', 2, 0),
(8, 'Te amo', 'White', 1, 67678657576, 'love@gmail.com', 'Hz258341.', '355353535', '2025-04-25', 2, 0),
(9, 'luciana', 'Castrillón', 1, 1011394248, 'luciana@gmail.com', '12345', '1234567890', '2006-03-06', 2, 0),
(10, 'john', 'Salazar', 1, 10101010101, 'john@gmail.com', '54321', '3000000000', '2005-08-22', 2, 0),
(11, 'Alexis', 'Correa', 1, 1023432454, 'alexis@gmail.com', 'Al258341.', '3103096050', '1985-07-19', 2, 0),
(13, 'Estiven', 'Zapata Muñoz', 1, 1011396325, 'ejemplo@gmail.com', '123321', '32122312131', '2007-04-29', 2, 0),
(14, 'lola', 'pajarito', 1, 1010101010, 'lola@gmail.com', '12345', '3000000000', '2004-03-06', 2, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agendarcita`
--
ALTER TABLE `agendarcita`
  ADD PRIMARY KEY (`IdAgendarCita`),
  ADD KEY `Usuarios_IdUsuarios` (`Usuarios_IdUsuarios`),
  ADD KEY `Horarios_IdHorarios` (`Horarios_IdHorarios`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `citaservicios`
--
ALTER TABLE `citaservicios`
  ADD PRIMARY KEY (`IdCitaServicios`),
  ADD KEY `fk_CitaServicios_Servicios1_idx` (`Servicios_IdServicios`),
  ADD KEY `fk_CitaServicios_AgendarCita1_idx` (`AgendarCita_idAgendarCita`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`IdContacto`),
  ADD KEY `fk_Contacto_Usuarios1_idx` (`Usuarios_IdUsuarios`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `home_mensajecontacto`
--
ALTER TABLE `home_mensajecontacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`IdHorarios`);

--
-- Indices de la tabla `metodopago`
--
ALTER TABLE `metodopago`
  ADD PRIMARY KEY (`IdMetodoPago`),
  ADD KEY `fk_MetodoPago_AgendarCita1_idx` (`AgendarCita_idAgendarCita`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`IdPerfiles`),
  ADD UNIQUE KEY `Descripcion_UNIQUE` (`Descripcion`);

--
-- Indices de la tabla `registroproducto`
--
ALTER TABLE `registroproducto`
  ADD PRIMARY KEY (`idRegistroProducto`),
  ADD KEY `fk_RegistroProducto_Perfiles1_idx` (`Perfiles_IdPerfiles`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`IdServicios`),
  ADD UNIQUE KEY `IdAngendar_UNIQUE` (`IdServicios`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`IdUsuarios`),
  ADD UNIQUE KEY `NumeroDocumento_UNIQUE` (`NumeroDocumento`),
  ADD KEY `fk_Registros_Perfiles1_idx` (`Perfiles_IdPerfiles`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agendarcita`
--
ALTER TABLE `agendarcita`
  MODIFY `IdAgendarCita` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `citaservicios`
--
ALTER TABLE `citaservicios`
  MODIFY `IdCitaServicios` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `IdContacto` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `home_mensajecontacto`
--
ALTER TABLE `home_mensajecontacto`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `IdHorarios` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `metodopago`
--
ALTER TABLE `metodopago`
  MODIFY `IdMetodoPago` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `IdPerfiles` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `registroproducto`
--
ALTER TABLE `registroproducto`
  MODIFY `idRegistroProducto` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `IdServicios` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `IdUsuarios` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `agendarcita`
--
ALTER TABLE `agendarcita`
  ADD CONSTRAINT `agendarcita_ibfk_1` FOREIGN KEY (`Usuarios_IdUsuarios`) REFERENCES `usuarios` (`IdUsuarios`),
  ADD CONSTRAINT `agendarcita_ibfk_2` FOREIGN KEY (`Horarios_IdHorarios`) REFERENCES `horarios` (`IdHorarios`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
