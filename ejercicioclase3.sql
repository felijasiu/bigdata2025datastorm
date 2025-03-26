--Ejercicio1
SELECT DISTINCT nombre
from Alumno;

--Ejercicio2
SELECT DISTINCT ciudad
from Docente;

--Ejercicio3
SELECT DISTINCT nombre
from Materia
WHERE codigo>102;

--Ejercico4
SELECT nombre
from Alumno a
WHERE ciudad = 'Córdoba';

--Ejercicio5
SELECT Materia.nombre, Cursa.nota
FROM Cursa
JOIN Materia ON Cursa.codigo = Materia.codigo
WHERE Cursa.legajo = 2;

--Ejercicio6
SELECT Alumno.nombre, Materia.nombre
FROM Cursa
JOIN Alumno ON Cursa.legajo = Alumno.legajo
JOIN Materia ON Cursa.codigo = Materia.codigo;

--Ejercicio7
SELECT Alumno.nombre
From Cursa
JOIN Alumno ON Cursa.legajo = Alumno.legajo
WHERE Cursa.nota = 10;

--Ejercicio8
SELECT DISTINCT Docente.nombre
FROM Docente
JOIN Alumno ON Docente.ciudad = Alumno.ciudad;

--Ejercicio9
SELECT DISTINCT Docente.nombre, Docente.ciudad
FROM Docente
LEFT JOIN Dicta ON Docente.legajo = Dicta.legajo
WHERE Dicta.codigo IS NULL OR Dicta.codigo <> 102;

--Ejercicio10
SELECT *
FROM Alumno
WHERE nombre LIKE 'L%';

--Ejercicio11
SELECT DISTINCT Materia.nombre
FROM Materia
WHERE Materia.codigo NOT IN (
    SELECT DISTINCT Dicta.codigo
    FROM Dicta
    WHERE Dicta.legajo IN (2, 4)
);

--Ejercicio12
SELECT nombre
FROM Alumno
WHERE ciudad = 'Rosario' AND legajo > 2;

--Ejercicio13
SELECT Alumno.nombre, Cursa.nota
FROM Cursa
JOIN Alumno ON Cursa.legajo = Alumno.legajo
WHERE Cursa.codigo = 103 AND Cursa.nota BETWEEN 6 AND 8;

--Ejercicio14
SELECT Alumno.nombre
FROM Alumno
WHERE ciudad = 'Mar del Plata'
AND nombre NOT LIKE '%a%'
AND nombre NOT LIKE '%A%';

--Ejercicio15
SELECT Alumno.nombre, materia.codigo, cursa.nota 
FROM Alumno 
JOIN  Cursa ON Alumno.legajo = Cursa.legajo
JOIN Materia ON Cursa.codigo = Materia.codigo
WHERE materia.codigo IN (101, 105)
AND cursa.nota < 7;









