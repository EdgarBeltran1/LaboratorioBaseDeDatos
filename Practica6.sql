--5 Reportes creando vistas, Cada uno es una vista, con los joins necesarios, al menos, al menos un view con funcion agregada
create view [AulasCapacidadProm] AS
Select AVG (Capacidad) AS Promedio
From Aula


Create view [UltimosAlumnosReg] AS
Select Matricula, Nombre, Apellido_Paterno, Apellido_Materno
From Estudiante
Where Matricula >=15090

Create view [EstudiantesAceptados] AS
Select Estatus.ID, Estatus.Descripcion, Estudiante.Matricula, Estudiante.Nombre
From Estatus inner join Estudiante ON Estatus.ID = Estudiante.Estatus_ID
Where Estatus.Nombre = 'Aceptado'

Create view [Matematica] AS
Select Nombre, Descripcion
From Area
Where Nombre = 'Matemáticas'

Create view [ColoniaEstudiantes] AS
Select Matricula, Nombre, Apellido_Paterno, Apellido_Materno, Colonia
From Estudiante

--Subconsulta con Parentesis
Select Numero
From Aula
Where Capacidad >= (Select AVG(capacidad) AS Promedio From Aula) 

--Subconsulta con With
With UltimosRegistrados AS
(Select Nombre, Apellido_Paterno, Apellido_Materno, Correo
From Estudiante
Where Matricula >= 15090)

Select Correo
From UltimosRegistrados

--Crear una tabla temporal y hacerle una consulta
Create Table #EmailsEstudiantes(Nombre varchar(70), Correo varchar(100))
INSERT INTO #EmailsEstudiantes SELECT Nombre, Correo
From Estudiante

Select * From #EmailsEstudiantes
