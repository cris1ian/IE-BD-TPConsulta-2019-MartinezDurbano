-- Mostrar los bares que sirven alguna cerveza que le guste a Jorge

SELECT * 
FROM SIRVE
WHERE SIRVE.BAR IN (
	SELECT BAR FROM FRECUENTA
	WHERE FRECUENTA.PERSONA = "JORGE"
)AND SIRVE.CERVEZA IN (
	SELECT GUSTA.CERVEZA FROM GUSTA
	WHERE GUSTA.PERSONA = "JORGE"
);

-- Mostrar los nombres de las personas que frecuentan al menos un bar que sirven alguna cerveza que les guste
-- Corregir que a Emilio no le gusta ninguna cerveza

SELECT DISTINCT(FRECUENTA.PERSONA) 
FROM FRECUENTA
INNER JOIN GUSTA ON FRECUENTA.PERSONA = GUSTA.PERSONA
INNER JOIN SIRVE ON (GUSTA.CERVEZA = SIRVE.CERVEZA AND FRECUENTA.BAR = SIRVE.BAR)
ORDER BY FRECUENTA.PERSONA ASC;

-- Mostrar los nombres de las personas que sólo frecuentan bares que sirven alguna cerveza que les guste. (Asumir que a cada persona le gusta al menos una cerveza y frecuenta al menos un bar)
-- Agustín  frecuenta HOXON que no sirve ninguna cerveza que le guste
-- Cristian frecuenta NITRO que no sirve ninguna cerveza que le guste

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
SELECT FRECUENTA.PERSONA
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