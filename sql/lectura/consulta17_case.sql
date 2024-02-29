SELECT *,
CASE
	WHEN age >25 THEN 'Es mayor de edad'
    WHEN age= 24 THEN 'tiene 24'
    ELSE 'Es menor de edad'
END AS 'CONFIRMACION'
FROM users;

SELECT *,
CASE
	WHEN age >25 THEN TRUE
    ELSE FALSE
END AS 'CONFIRMACION'
FROM users;