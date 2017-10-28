--Select con Group By
select(Nombre) AS Estudiantes_con_inicial_A
from Estudiante
where Estudiante.Nombre Like 'A%'
Group by Nombre

--Selects con Funcion agregada
select Count (Matricula) AS Total_Alumnos
from Estudiante

select Sum (Cantidad) AS Suma_Pagos_hasta_10
from Pagos
where ID < 10

SELECT AVG(Capacidad) as Capacidad_Promedio
FROM Aula 

--Selects con where
select Count(Apellido_Paterno) AS Apellidos_terminacion_e
from Estudiante
where Estudiante.Apellido_Paterno Like '%e'
Group By Apellido_Paterno

select Count(Nombre) AS Estudiantes_EmpiezanA_TerminanE
from Estudiante
where Estudiante.Nombre Like 'A%E'
Group by Nombre

--Selects con having
select Count(ID)
From Estatus
Group by Estatus.ID
having(ID) < 1020

select Count(Nombre) AS Alumnos_Aceptados
From Estatus
Group by Estatus.Nombre
having(Nombre) = 'Aceptado'

--Select con TOP
select TOP 10(Numero)
from Estudiante
where Numero >= 5500
order by Numero



 