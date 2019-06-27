-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 27-06-2019 a las 14:44:20
-- Versión del servidor: 10.2.23-MariaDB
-- Versión de PHP: 7.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: 'u599013836_ng4'
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'FRECUENTA'
--

CREATE TABLE 'FRECUENTA' (
  'PERSONA' text COLLATE utf8_unicode_ci NOT NULL,
  'BAR' text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'GUSTA'
--

CREATE TABLE 'GUSTA' (
  'PERSONA' text COLLATE utf8_unicode_ci DEFAULT NULL,
  'CERVEZA' text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla 'SIRVE'
--

CREATE TABLE 'SIRVE' (
  'BAR' text COLLATE utf8_unicode_ci DEFAULT NULL,
  'CERVEZA' text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;
