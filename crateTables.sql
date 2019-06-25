-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 09-05-2019 a las 22:05:36
-- Versión del servidor: 10.2.23-MariaDB
-- Versión de PHP: 7.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u599013836_ng4`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FRECUENTA`
--

CREATE TABLE `FRECUENTA` (
  `PERSONA` text COLLATE utf8_unicode_ci NOT NULL,
  `BAR` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `FRECUENTA`
--

INSERT INTO `FRECUENTA` (`PERSONA`, `BAR`) VALUES
('Jorge', 'Belfast'),
('Jorge', 'Nitro'),
('Jorge', 'Peñon del Aguila'),
('Ezequiel', 'Belfast'),
('Ezequiel', 'Asgardian'),
('Ezequiel', 'Nitro'),
('Agustin', 'Hoxon'),
('Agustin', 'Asgardian'),
('Agustin', 'Peñon del Aguila'),
('David', 'Belfast'),
('David', 'Hoxon'),
('David', 'Peñon del Aguila'),
('Martin', 'Eon6'),
('Martin', 'Antares'),
('Martin', 'Peñon del Aguila'),
('Emilio', 'Asgardian'),
('Emilio', 'Nitro'),
('Emilio', 'Peñon del Aguila'),
('Cristian', 'Fenicia'),
('Cristian', 'Asgardian'),
('Cristian', 'Nitro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `GUSTA`
--

CREATE TABLE `GUSTA` (
  `PERSONA` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CERVEZA` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `GUSTA`
--

INSERT INTO `GUSTA` (`PERSONA`, `CERVEZA`) VALUES
('Jorge', 'Pale Ale / Bitter'),
('Jorge', 'Irish Ale'),
('Jorge', 'APA'),
('Jorge', 'Brown Ale'),
('Jorge', 'Belgian Strong Ale'),
('Jorge', 'Strong Ale'),
('Jorge', 'Specialty beer'),
('Ezequiel', 'Pilsner / Larger'),
('Ezequiel', 'Brown Ale'),
('Ezequiel', 'Porter'),
('Ezequiel', 'Imp / Am Stout'),
('Ezequiel', 'India Pale Ale'),
('Ezequiel', 'Am India Pale Ale'),
('Ezequiel', 'German Wheat/ Rye / Wit Beer'),
('Ezequiel', 'Belgian / French Ale'),
('Agustin', 'Pilsner / Larger'),
('Agustin', 'Pale Ale / Bitter'),
('Agustin', 'Irish Ale'),
('Agustin', 'Porter'),
('Agustin', 'Stout'),
('Agustin', 'Imp / Am Stout'),
('Agustin', 'India Pale Ale'),
('Agustin', 'Am India Pale Ale'),
('Agustin', 'Smoke / Wood- Aged beer'),
('Agustin', 'Sour'),
('David', 'Pilsner / Larger'),
('David', 'Amber Lager'),
('David', 'Porter'),
('David', 'Stout'),
('David', 'Imp / Am Stout'),
('David', 'India Pale Ale'),
('David', 'Am India Pale Ale'),
('David', 'German Wheat/ Rye / Wit Beer'),
('David', 'Belgian / French Ale'),
('David', 'Belgian Strong Ale'),
('David', 'Strong Ale'),
('David', 'Sour'),
('Martin', 'Strong Ale'),
('Martin', 'Fruit Beer'),
('Martin', 'Spice / Herb / Vegetable beer'),
('Martin', 'Smoke / Wood- Aged beer'),
('Martin', 'Specialty beer'),
('Martin', 'Honey'),
('Martin', 'Sour'),
('Emilio', 'Strong Ale'),
('Emilio', 'Fruit Beer'),
('Emilio', 'Spice / Herb / Vegetable beer'),
('Emilio', 'Smoke / Wood- Aged beer'),
('Emilio', 'Specialty beer'),
('Emilio', 'Honey'),
('Emilio', 'Sour'),
('Cristian', 'Pilsner / Larger'),
('Cristian', 'Pale Ale / Bitter'),
('Cristian', 'Irish Ale'),
('Cristian', 'Scottish'),
('Cristian', 'American Red Ale'),
('Cristian', 'APA'),
('Cristian', 'Brown Ale'),
('Cristian', 'Stout'),
('Cristian', 'Imp / Am Stout'),
('Cristian', 'India Pale Ale'),
('Cristian', 'Am India Pale Ale'),
('Cristian', 'Sour');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SIRVE`
--

CREATE TABLE `SIRVE` (
  `BAR` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CERVEZA` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `SIRVE`
--

INSERT INTO `SIRVE` (`BAR`, `CERVEZA`) VALUES
('Belfast', 'Pilsner / Larger'),
('Belfast', 'Amber Lager'),
('Belfast', 'Pale Ale / Bitter'),
('Belfast', 'American Red Ale'),
('Belfast', 'Stout'),
('Belfast', 'India Pale Ale'),
('Belfast', 'Belgian / French Ale'),
('Belfast', 'Specialty beer'),
('Belfast', 'Sour'),
('Eon6', 'Dark Lager'),
('Eon6', 'Pale Ale / Bitter'),
('Eon6', 'Brown Ale'),
('Eon6', 'Porter'),
('Eon6', 'Am India Pale Ale'),
('Eon6', 'Strong Ale'),
('Eon6', 'Spice / Herb / Vegetable beer'),
('Eon6', 'Specialty beer'),
('Eon6', 'Sour'),
('Hoxon', 'Amber Lager'),
('Hoxon', 'Hybrid beer (cerveza híbrida)'),
('Hoxon', 'Irish Ale'),
('Hoxon', 'American Red Ale'),
('Hoxon', 'Brown Ale'),
('Hoxon', 'Stout'),
('Hoxon', 'India Pale Ale'),
('Hoxon', 'German Wheat/ Rye / Wit Beer'),
('Hoxon', 'Strong Ale'),
('Hoxon', 'Spice / Herb / Vegetable beer'),
('Hoxon', 'Specialty beer'),
('Hoxon', 'Sour'),
('Fenicia', 'Amber Lager'),
('Fenicia', 'Hybrid beer (cerveza híbrida)'),
('Fenicia', 'Pale Ale / Bitter'),
('Fenicia', 'Scottish'),
('Fenicia', 'Brown Ale'),
('Fenicia', 'Stout'),
('Fenicia', 'Am India Pale Ale'),
('Fenicia', 'Belgian / French Ale'),
('Fenicia', 'Fruit Beer'),
('Fenicia', 'Smoke / Wood- Aged beer'),
('Fenicia', 'Honey'),
('Antares', 'Pilsner / Larger'),
('Antares', 'Irish Ale'),
('Antares', 'Scottish'),
('Antares', 'Brown Ale'),
('Antares', 'Stout'),
('Antares', 'India Pale Ale'),
('Antares', 'Belgian / French Ale'),
('Antares', 'Strong Ale'),
('Antares', 'Spice / Herb / Vegetable beer'),
('Antares', 'Specialty beer'),
('Asgardian', 'Amber Lager'),
('Asgardian', 'Hybrid beer (cerveza híbrida)'),
('Asgardian', 'Pale Ale / Bitter'),
('Asgardian', 'American Red Ale'),
('Asgardian', 'Brown Ale'),
('Asgardian', 'Stout'),
('Asgardian', 'Am India Pale Ale'),
('Asgardian', 'Belgian / French Ale'),
('Asgardian', 'Fruit Beer'),
('Asgardian', 'Honey'),
('Asgardian', 'Sour'),
('Nitro', 'Amber Lager'),
('Nitro', 'Pale Ale / Bitter'),
('Nitro', 'Scottish'),
('Nitro', 'APA'),
('Nitro', 'Porter'),
('Nitro', 'Imp / Am Stout'),
('Nitro', 'Belgian / French Ale'),
('Nitro', 'Spice / Herb / Vegetable beer'),
('Nitro', 'Honey'),
('Nitro', 'Sour'),
('Peñon del Aguila', 'Hybrid beer (cerveza híbrida)'),
('Peñon del Aguila', 'Irish Ale'),
('Peñon del Aguila', 'Belgian / French Ale'),
('Peñon del Aguila', 'Strong Ale'),
('Peñon del Aguila', 'Smoke / Wood- Aged beer'),
('Peñon del Aguila', 'Specialty beer'),
('Peñon del Aguila', 'Honey'),
('Peñon del Aguila', 'Sour');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
