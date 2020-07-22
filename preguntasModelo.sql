
--pregunta 1--
SELECT c.NOMBRE,COUNT(e.EVALUACION_ID ) AS total_evaluciones
FROM CURSO c 
INNER JOIN ALUMNO a ON a.CURSO_CURSO_ID = c.CURSO_ID 
LEFT JOIN EVALUACION e ON e.ALUMNO_ALUMNO_ID = a.ALUMNO_ID 
GROUP BY c.NOMBRE 

--pregunta2--
SELECT c.NOMBRE,COUNT(e.EVALUACION_ID ) AS total_evaluciones
FROM CURSO c 
INNER JOIN ALUMNO a ON a.CURSO_CURSO_ID = c.CURSO_ID 
LEFT JOIN EVALUACION e ON e.ALUMNO_ALUMNO_ID = a.ALUMNO_ID
GROUP BY c.NOMBRE 
HAVING COUNT(e.EVALUACION_ID ) =0

--pregunta 4 --
SELECT COUNT(CURSO_ID)
FROM CURSO 
INNER JOIN ALUMNO 
ON Alumno.CURSO_CURSO_ID = CURSO.CURSO_ID 