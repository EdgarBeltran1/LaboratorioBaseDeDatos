USE Proyecto
GO

select * 
from Empleado

select *
from Estatus

select *
from Area

select *
from Profesor

select *
from Cuenta_profesor

select *
from Telefono_empleado

select *
from Materia

select *
from Aula

insert into Empleado(No_empleado, Nombre, Apellido_Paterno, Apellido_Materno, Fecha_Ingreso, Calle, Numero, Colonia, Fecha_nacimiento)
values (1575621, 'Juan', 'Perez', 'Garc�a', '2016-08-04', 'Riveras del Rio', 3523, 'Los Fierros', '1998-09-03')

insert into Empleado(No_empleado, Nombre, Apellido_Paterno, Apellido_Materno, Fecha_Ingreso, Calle, Numero, Colonia, Fecha_nacimiento)
values (1633212, 'Jose', 'Ramirez', 'L�pez', '2016-08-04', 'Rincon de la Sierra', 3975, 'Santa Mar�a', '1999-12-05')

insert into Empleado(No_empleado, Nombre, Apellido_Paterno, Apellido_Materno, Fecha_Ingreso, Calle, Numero, Colonia, Fecha_nacimiento)
values (1721333, 'Pedro', 'Rodr�guez', 'Torres', '2016-08-04', 'Rosales', 1055, 'ExHacienda', '1997-09-27')



insert into Profesor(Estatus_ID, Area_ID, Empleado_No_empleado, Titulo)
values (1555555, 1234567, 1575621, 'Licenciado en Matem�ticas')

insert into Profesor(Estatus_ID, Area_ID, Empleado_No_empleado, Titulo)
values (1689884, 1122334, 1633212, 'Licenciado en Educaci�n Primaria' )

insert into Profesor(Estatus_ID, Area_ID, Empleado_No_empleado, Titulo)
values (1987654, 1234123, 1721333, 'Licenciado en Biolog�a')



insert into Cuenta_profesor(contrasena, Profesor_Empleado_No_empleado)
values ('ProfeMatematicas', 1575621)

insert into Cuenta_profesor(contrasena, Profesor_Empleado_No_empleado)
values ('ProfeHistoria', 1633212)

insert into Cuenta_profesor(contrasena, Profesor_Empleado_No_empleado)
values ('ProfeCiencias', 1721333)



insert into Area(ID, Nombre, Descripcion)
values (1234567,'Matem�ticas','Encargados de impartir cualquier materia matem�tica')

insert into Area(ID, Nombre, Descripcion)
values (1122334,'Historia','Encargados de impartir cualquier materia historica')

insert into Area(ID, Nombre, Descripcion)
values (1234123,'Ciencias','Encargados de impartir cualquiera de las ciencias')



insert into Estatus(ID, Nombre, Descripcion, Tipo)
values (1555555, 'Aceptado', 'El estatus del usuario es Aceptado', 'Finalizado')

insert into Estatus(ID, Nombre, Descripcion, Tipo)
values (1689884,'Pendiente', 'El estatus del usuario est� en proceso', 'En proceso' )

insert into Estatus(ID, Nombre, Descripcion, Tipo)
values (1755665,'Rechazado', 'El estatus del usuario es Rechazado', 'Finalizado' )

insert into Estatus(ID, Nombre, Descripcion, Tipo)
values (1987654, 'Aceptado', 'El estatus del usuario es Aceptado', 'Finalizado')



insert into Telefono_empleado(Numero, Empleado_No_empleado, Tipo)
values(81234567, 1575621, 'Celular')

insert into Telefono_empleado(Numero, Empleado_No_empleado, Tipo)
values(10927654, 1633212, 'Domicilio')

insert into Telefono_empleado(Numero, Empleado_No_empleado, Tipo)
values(81123456, 1721333, 'Celular')


insert into Materia(Clave, Hora_semanal, Semestre, Creditos, Area_ID)
values(12, 5, 1, 7, 1234567)

insert into Materia(Clave, Hora_semanal, Semestre, Creditos, Area_ID)
values(22, 5, 2, 8, 1234567)

insert into Materia(Clave, Hora_semanal, Semestre, Creditos, Area_ID)
values(32, 3, 2, 5, 1122334)

insert into Materia(Clave, Hora_semanal, Semestre, Creditos, Area_ID)
values(42, 3, 3, 3, 1234123)


insert into Aula(Numero, Capacidad, Tipo)
values(401, 50, 'Sal�n de Clases')

insert into Aula(Numero, Capacidad, Tipo)
values (301, 20, 'Laboratorio')

insert into Aula(Numero, Capacidad, Tipo)
values (201, 40, 'Sal�n de Clases')

insert into Aula(Numero, Capacidad,Tipo)
values (202, 20, 'Laboratorio')


update Empleado
Set Nombre='John', Apellido_Paterno='Garza'
where No_empleado=1575621


update Empleado
Set Nombre='Jos�', Apellido_Paterno='Ram�rez', Calle='Rinc�n de la Sierra'
where No_empleado=1633212

update Estatus
Set Nombre='Aceptado' ,Descripcion= 'El estatus del usuario es Aceptado', Tipo='Finalizado'
where ID=1689884

update Cuenta_profesor
Set contrasena='ProfesorDeCienciasNaturales'
where Profesor_Empleado_No_empleado=1721333

update Telefono_empleado
Set Numero=81123444
where Empleado_No_empleado=1721333

delete from Cuenta_profesor
where contrasena='ProfeCiencias'

delete from Telefono_empleado
where Empleado_No_empleado=1575621

delete from Estatus
where ID=1755665

delete from Materia
where clave=12

delete from Aula
where Numero=202

