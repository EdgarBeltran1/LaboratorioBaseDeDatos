--Crear 5 SP, uno por cada reporte anterior 
create procedure EstudiantesAceptadosSP (@Tipo varchar(10))
AS BEGIN
	Select Estatus.ID, Estatus.Descripcion, Estudiante.Matricula, Estudiante.Nombre
	From Estatus inner join Estudiante ON Estatus.ID = Estudiante.Estatus_ID
	where Estatus.Nombre = @Tipo
END

exec [EstudiantesAceptadosSP] 'Aceptado'

create procedure MatematicaSP (@Area varchar(15))
AS BEGIN
	Select Nombre, Descripcion
	From Area
	Where Nombre = @Area
END

exec[MatematicaSP] 'Matemáticas'

create procedure ColoniaEstudiantesSP
AS BEGIN
	Select Matricula, Nombre, Apellido_Paterno, Apellido_Materno, Colonia
	From Estudiante
END

exec [ColoniaEstudiantesSP] 

create procedure UltimosAlumnosRegSP (@Matricula int)
AS BEGIN
	Select Matricula, Nombre, Apellido_Paterno, Apellido_Materno
	From Estudiante
	Where Matricula >= @Matricula
END

exec [UltimosAlumnosRegSP] 15020

create procedure AulasCapacidadPromSP
AS BEGIN
	Select AVG (Capacidad) AS Promedio
	From Aula	
END

exec [AulasCapacidadPromSP]

--Crear una funcion y usarla
create function PromedioCapacidad(@Aula1 int, @Aula2 int, @Aula3 int, @Aula4 int, @Aula5 int)
returns float
AS BEGIN
	Declare @promedio float
SET @promedio = (@Aula1 + @Aula2 + @Aula3 + @Aula4 + @Aula5) / 5
Return @Promedio
END

select dbo.PromedioCapacidad(20, 35, 40, 32, 10) AS "Promedio"

--Crear dos triggers
CREATE TRIGGER tr_insertar
ON dbo.Empleado
AFTER INSERT AS
	BEGIN
		SELECT * FROM INSERTED
END

CREATE TRIGGER tr_insertar2
ON dbo.Estatus
AFTER UPDATE AS
	BEGIN
		SELECT * FROM INSERTED
END

