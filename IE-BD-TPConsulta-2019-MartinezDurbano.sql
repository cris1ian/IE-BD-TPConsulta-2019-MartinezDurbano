-- ========================================================================================
-- Tablas
-- ========================================================================================

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

-- ========================================================================================
-- Instancia
-- ========================================================================================


-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 27-06-2019 a las 16:45:59
-- Versión del servidor: 10.2.23-MariaDB
-- Versión de PHP: 7.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: `u599013836_ng4`
--

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
('Martin', 'Eon6'),
('Martin', 'Antares'),
('Martin', 'Peñon del Aguila'),
('Emilio', 'Asgardian'),
('Emilio', 'Nitro'),
('Emilio', 'Peñon del Aguila'),
('Cristian', 'Fenicia'),
('Cristian', 'Asgardian'),
('Cristian', 'Nitro'),
('David', 'Belfast'),
('David', 'Nitro'),
('David', 'Peñon del Aguila'),
('David', 'Asgardian'),
('David', 'Hoxon'),
('David', 'Eon6'),
('David', 'Antares'),
('David', 'Fenicia');

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
('Agustin', 'Porter'),
('Agustin', 'Imp / Am Stout'),
('Agustin', 'Am India Pale Ale'),
('Agustin', 'Smoke / Wood- Aged beer'),
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
('Martin', 'Fruit Beer'),
('Cristian', 'Pilsner / Larger'),
('Cristian', 'Irish Ale'),
('Cristian', 'American Red Ale'),
('Cristian', 'Brown Ale'),
('Cristian', 'Stout'),
('Cristian', 'India Pale Ale'),
('Cristian', 'Am India Pale Ale'),
('Emilio', 'India Pale Ale');

--
-- Volcado de datos para la tabla `SIRVE`
--

INSERT INTO `SIRVE` (`BAR`, `CERVEZA`) VALUES
('Belfast', 'Pilsner / Larger'),
('Belfast', 'Amber Lager'),
('Belfast', 'American Red Ale'),
('Belfast', 'Stout'),
('Belfast', 'India Pale Ale'),
('Belfast', 'Belgian / French Ale'),
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
('Asgardian', 'American Red Ale'),
('Asgardian', 'Stout'),
('Asgardian', 'Am India Pale Ale'),
('Asgardian', 'Belgian / French Ale'),
('Asgardian', 'Fruit Beer'),
('Asgardian', 'Honey'),
('Asgardian', 'Sour'),
('Nitro', 'Amber Lager'),
('Nitro', 'Scottish'),
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


-- ========================================================================================
-- Resolucion
-- ========================================================================================

-- Mostrar los bares que sirven alguna cerveza que le guste a Jorge

SELECT DISTINCT(BAR)
FROM SIRVE
WHERE SIRVE.CERVEZA IN (
	SELECT GUSTA.CERVEZA FROM GUSTA
	WHERE GUSTA.PERSONA = 'JORGE'
)
ORDER BY BAR;

-- Mostrar los nombres de las personas que frecuentan al menos un bar que sirven alguna cerveza que les guste

SELECT DISTINCT(FRECUENTA.PERSONA) 
FROM FRECUENTA
INNER JOIN GUSTA ON FRECUENTA.PERSONA = GUSTA.PERSONA
INNER JOIN SIRVE ON (GUSTA.CERVEZA = SIRVE.CERVEZA AND FRECUENTA.BAR = SIRVE.BAR)
ORDER BY FRECUENTA.PERSONA ASC;

-- Mostrar los nombres de las personas que sólo frecuentan bares que sirven alguna cerveza que les guste. (Asumir que a cada persona le gusta al menos una cerveza y frecuenta al menos un bar)
-- Agustín  frecuenta Hoxon que no sirve ninguna cerveza que le guste
-- Cristian frecuenta Nitro que no sirve ninguna cerveza que le guste
-- Jorge frecuenta Belfast y Nitro que no sirven ninguna cerveza que le guste
-- Emilio frecuenta Asgardian, Nitro y Peñon del Aguila que no sirven ninguna cerveza que le guste
-- Emilio frecuenta Antares, Eon6 y Peñon del Aguila que no sirven ninguna cerveza que le guste

SELECT Q1.PERSONA
FROM (
	-- Esto devuelve la cantidad de bares que frecuenta cada uno y además sirven una cerveza que les gusta
	SELECT FRECUENTA.PERSONA, COUNT(DISTINCT(FRECUENTA.BAR)) AS 'CANT1'
	FROM FRECUENTA
	INNER JOIN SIRVE ON FRECUENTA.BAR = SIRVE.BAR
	INNER JOIN GUSTA ON (GUSTA.CERVEZA = SIRVE.CERVEZA AND GUSTA.PERSONA = FRECUENTA.PERSONA)
	GROUP BY FRECUENTA.PERSONA
	ORDER BY FRECUENTA.PERSONA, FRECUENTA.BAR, SIRVE.CERVEZA ASC
) AS Q1
INNER JOIN (
	-- Esto devuelve la cantidad de bares que frecuenta cada uno
	SELECT FRECUENTA.PERSONA, COUNT(FRECUENTA.BAR) AS 'CANT2'
	FROM FRECUENTA
	GROUP BY FRECUENTA.PERSONA
	ORDER BY FRECUENTA.PERSONA
) AS Q2 ON Q1.PERSONA = Q2.PERSONA
WHERE CANT1 = CANT2
ORDER BY Q1.PERSONA;

-- Mostrar los nombres de las personas que no frecuenten ningún bar que sirva una cerveza que les guste
SELECT DISTINCT(FRECUENTA.PERSONA)
FROM FRECUENTA
WHERE FRECUENTA.PERSONA NOT IN (
	SELECT GUSTA_P
	FROM (
		-- Devuelve los bares que sirven alguna cerveza que le gusta a cada uno
		SELECT GUSTA.PERSONA AS GUSTA_P, SIRVE.BAR AS SIRVE_B
		FROM GUSTA
		INNER JOIN SIRVE ON GUSTA.CERVEZA = SIRVE.CERVEZA
		GROUP BY GUSTA.PERSONA, SIRVE.BAR
		ORDER BY GUSTA.PERSONA, SIRVE.BAR, GUSTA.CERVEZA, SIRVE.CERVEZA ASC
	) AS Q1
	-- La union de ambos representa todos los bares que frecuenta y que a la vez sirven alguna cerveza que le gusta
	INNER JOIN(
		-- Devuelve los bares que frecuenta cada uno
		SELECT FRECUENTA.PERSONA AS FRECUENTA_P, FRECUENTA.BAR AS FRECUENTA_B
		FROM FRECUENTA
		ORDER BY FRECUENTA.PERSONA, FRECUENTA.BAR
	) AS Q2
	ON GUSTA_P = FRECUENTA_P AND SIRVE_B = FRECUENTA_B
	ORDER BY GUSTA_P
)
ORDER BY FRECUENTA.PERSONA;

-- Mostrar los nombres de las personas que frecuentan todos los bares (Asumir que todos los bares sirven al menos una cerveza)
SELECT Q1.PERSONA
FROM (
	-- Obtiene cuantos bares frecuenta cada uno
	SELECT FRECUENTA.PERSONA, COUNT(FRECUENTA.BAR) AS 'CANT'
	FROM FRECUENTA
	GROUP BY FRECUENTA.PERSONA
	ORDER BY FRECUENTA.PERSONA
) AS Q1
WHERE CANT = (
	SELECT COUNT(DISTINCT(FRECUENTA.BAR))
	FROM FRECUENTA
);