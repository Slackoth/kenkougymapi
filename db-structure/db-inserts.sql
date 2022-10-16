insert into kenkou_gym_db.public.kenkou_role values('ROLE_ADMIN', 'User administrator');
insert into kenkou_gym_db.public.kenkou_role values('ROLE_USER', 'User');

insert into kenkou_gym_db.public.kenkou_user 
values('00082318', '00082318@uca.edu.sv', 'Luis', 'Calderon', '$2a$12$psRd3h4EdFEO.b9QwYiRveTsxq4jrd1zFVTQNOkIG5Hx8i3LdPyE.');

insert into kenkou_gym_db.public.user_role 
values('00082318', 'ADMIN');




--inserts para recetas 1
--objetivos:
insert into public.objetivo (nombre)
values('Aumentar masa muscular'), ('Disminuir grasa corporal'),('Bajar de peso');

--tipo de tiempo
insert into tiempocomida (nombre)
values('Desayuno'),('Almuerzo'),('Cena'),('Refrigerio');




--ingredientes

INSERT INTO public.ingrediente
(nombre_alimento, calorias, proteinas, carbohidratos, fibra, grasas)
VALUES('Pan integral', 69, 2.72, 12.91, 1.9, 1.1),
('Huevo',141,12,0.75,0,9.7),
('Canela', 18, 0.26, 5.43, 3.7, .22),
('Stevia', 4, 0, 1, 0, 0),
('Extracto de vainilla', 12, 0, .53, 0, 0),
('Extracto de vainilla', 32, .67, 7.68, 2, 0.3),
('Jarabe bajo en calorias', 15, 0, 1, 0, 0)

--receta 
insert into public.receta
(nombre,linkvideo,instrucciones,id_objetivo,tiempo_comida)
values('Tostadas Francesas Anabolicas','https://youtu.be/06O5vtVQEOE','
## Preparación

En un deposito agregar 2 huevos, una cucharada de canela y una cucharada de extracto de vainilla y mezclarlo bien. 
Preparar el sarten en fuego medio y aplicar aceite (de preferencia mediante spray)
Mojar las rebanadas de pan en la mezcla y poner cada uno de ellas en el sarten, 3 a 4 minutos por lado. 

Ademas, se puede agregar un scoop de tu batido proteico preferido a la mezcla.

## Plato
Servir estas tostadas en un plato con sus diferentes complementos, en este caso se agregan fresas pero puede agregarse cualquier tipo de fruta y un Jarabe de baja calorías
',1,1 )

--tabla nutricional
insert into tablanutricional(id,fk_receta, calorias,proteinas,carbohidratos,fibra,grasas)
values(1,1,250,19,36,2.5,3);

--links ingredientes:
insert into ingredientexreceta (id_ingrediente,id_receta,gramos)
values
(1,1,50),
(2,1,50),
(3,1,50),
(4,1,50),
(5,1,50),
(6,1,50),
(7,1,50);

insert into fotografia (foto)
values('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pasionporelsabor.com%2Fes-sv%2Frecetas%2Fdulces-y-postres%2Fcalientes%2Ftostadas-a-la-francesa&psig=AOvVaw3TkMKN53DkxKCPOKhy9gz8&ust=1666017882618000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCNjisrL-5PoCFQAAAAAdAAAAABAD');

insert into fotografiaxreceta (id_receta,id_fotografia)
values(1,1)

