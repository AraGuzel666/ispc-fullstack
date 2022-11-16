
-- Consultas:
-- Insert --

insert into mascotillas.usuario(idUsuario,usuario,contraseña,Tienda_idProducto) values ('1', 'Carlos', 'carlos123','13');

insert into mascotillas.fichadetienda(idFichaTienda,fecha,precio,tipo_mascota,productos) values ('2','2022-5-15','1000.00','Gato','Shampoo');

insert into mascotillas.adopcion(idAdopcion,fecha,tamaño,caracter,sexo,salud,requerimientosAdopcion) values ('3', '2022-05-15','Grande','Docil','Hembra','Sano','Necesita de espacios amplios para su mayor comodidad');

insert into mascotillas.fichadeservicios(idfichaDeServicios,fecha,nombre_dueño, telefono_dueño, direccion_dueño,nombre_mascota,edad_mascota,tipo_mascota,precio) 
values ('1','2022-11-15','Exequiel',243424907,'9 de Julio 75','Seru','2','Gato','2000');
insert into mascotillas.fichadeservicios(idfichaDeServicios,fecha,nombre_dueño, telefono_dueño, direccion_dueño,nombre_mascota,edad_mascota,tipo_mascota,precio) 
values ('2','2022-11-15','Hector',24346765,'1 de Mayo 99','Cosmo','3','Perro','1500');

insert into mascotillas.servicios (idServicios, tipoDeServicio, precio, fichadeServicios_idfichaDeServicios) 
values ('1', 'Corte de uñas', '2000', '1' );

insert into mascotillas.servicios (idServicios, tipoDeServicio, precio, fichadeServicios_idfichaDeServicios) 
values ('2', 'Vacunas desparasitaria', '1500', '2' );

-- Select:
-- Select * from
select * from usuario;
select * from fichadetienda;

-- Select from where
select salud,requerimientosAdopcion from adopcion;


-- Update:
update usuario set contraseña = 'Carlos1994' where contraseña = 'carlos123';
select contraseña from usuario;

-- Rename:
-- rename table fichadeservicios to fichadeservicios;
-- select * from fichadeservicios;


-- Inner Join:
SELECT FICHA.idfichaDeServicios, FICHA.nombre_dueño, SV.tipoDeServicio FROM fichadeservicios FICHA INNER JOIN servicios SV ON FICHA.idfichaDeServicios = SV.fichaDeServicios_idfichaDeServicios;

-- Drop:
drop schema mascotillas;