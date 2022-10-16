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
('Claras de Huevo',141,12,0.75,0,9.7),
('Canela', 18, 0.26, 5.43, 3.7, .22),
('Stevia', 4, 0, 1, 0, 0),
('Extracto de vainilla', 12, 0, .53, 0, 0),
('Fresa', 32, .67, 7.68, 2, 0.3),
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
',1,1 );

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
values('https://www.google.com/url?sa=i&url=https%3A%2F%2Fcocinandojuntos.net%2Ftostadas-francesas-con-crema-y-fresas-facil-y-rico%2F&psig=AOvVaw34a3r8vrCSBgFUIkpWd8BX&ust=1666030820216000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCOC2ncuu5foCFQAAAAAdAAAAABAE');

insert into fotografiaxreceta (id_receta,id_fotografia)
values(1,1)


--receta2 tostadas francesas vegetarianas
INSERT INTO public.ingrediente
(nombre_alimento, calorias, proteinas, carbohidratos, fibra, grasas)
VALUES('Polvo de Goma Guar', 5, 0, 1, 1, 0);

--receta 
insert into public.receta
(nombre,linkvideo,instrucciones,id_objetivo,tiempo_comida)
values('Tostadas Francesas Vegetarianas de Fresa','https://youtu.be/06O5vtVQEOE','
## Preparación

En una licuadora agregar 2 rebanadas de pan, 2 copas de claras de huevo, 1 cucharada de goma guar en polvo, endulzante, extracto de vainilla y canela. 
Mezclar hasta que tenga una consistencia uniforme. 
Es recomendable degar reposar por 2 a 3 horas la mezcla para mejorar su consistencia pero esto es opcional.
Poner la sartén a una temperatura media, agregar aceite (de preferencia en spray),Y agregar la mezcla a la sarten, cocinar por 1-2 minutos. Luego agregarle las fresas partidas encima y cocinar el otro lado por uno a dos minutos. 
Ademas, se puede agregar un scoop de tu batido proteico preferido a la mezcla.

## Plato
Servir estas tostadas en un plato con sus diferentes complementos, en este caso se agregan fresas pero puede agregarse cualquier tipo de fruta y un Jarabe de baja calorías
',1,1 );


--tabla nutricional
insert into tablanutricional(id,fk_receta, calorias,proteinas,carbohidratos,fibra,grasas)
values(1,1,310,32,39,4,3);

--links ingredientes:
insert into ingredientexreceta (id_ingrediente,id_receta,gramos)
values
(1,2,50),
(2,2,50),
(3,2,50),
(4,2,50),
(5,2,50),
(6,2,50),
(7,2,50),
(8,2,50);

insert into fotografia (foto)
values('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pasionporelsabor.com%2Fes-sv%2Frecetas%2Fdulces-y-postres%2Fcalientes%2Ftostadas-a-la-francesa&psig=AOvVaw3TkMKN53DkxKCPOKhy9gz8&ust=1666017882618000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCNjisrL-5PoCFQAAAAAdAAAAABAD');

insert into fotografiaxreceta (id_receta,id_fotografia)
values(2,2)


---receta almuerzo


INSERT INTO public.ingrediente
(nombre_alimento, calorias, proteinas, carbohidratos, fibra, grasas)
VALUES('pechuga de pollo', 975, 147.5, 0, 0, 38.6),
('Gravy',25,1.7,5,0,0)
;

--receta 
insert into public.receta
(nombre,linkvideo,instrucciones,id_objetivo,tiempo_comida)
values('Hamburguesa de pechuga de pollo','https://youtu.be/06O5vtVQEOE','
## Preparación

1. Si es de su preferencia se recomienda marinar la pechuga de pollo en la noche con condimientos al gusto. 
2. Poner la sarten a fuego medio y colocarle spray de aceite
3. Agregar la pechuga de pollo y cocinarla hasta que este en punto medio (Esto se puede notar cuando cada lado este dorado o llegue a la temperatura interna  de 74 grados)
4. Poner la salsa en un deposito para calentar en el microondas
5. unir los panes, con vegetales al gusto y opcionalmente mostaza y salsa de tomate ketchup

Nota: Los macros estimados son descontando la cantidad de condimentos utilizados. 

## Plato
Servir en un plato, se puede acompañar con bebida natural al gusto. 
',1,2 );


--tabla nutricional
insert into tablanutricional(id,fk_receta, calorias,proteinas,carbohidratos,fibra,grasas)
values(4,3,660,76,52,12,14);

--links ingredientes:
insert into ingredientexreceta (id_ingrediente,id_receta,gramos)
values
(1,3,50),
(9,3,50),
(10,3,50)
;

insert into fotografia (foto)
values('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DX4C5QW7HCcA&psig=AOvVaw0exyQAFGVd-1E0nEME4Gqz&ust=1666044368313000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCIjrnofh5foCFQAAAAAdAAAAABAE');
insert into fotografiaxreceta (id_receta,id_fotografia)
values(3,3)



--- receta almuerzo 2

INSERT INTO public.ingrediente
(nombre_alimento, calorias, proteinas, carbohidratos, fibra, grasas)
VALUES('tomate', 18, .8, 3.9, 1.2, .2),
('Mayonesa',49,.12,1.2,0,5)
;



insert into public.receta
(nombre,linkvideo,instrucciones,id_objetivo,tiempo_comida)
values('Ensalada proteica balanceada','https://youtu.be/06O5vtVQEOE','
## Preparación

1.cortar el tomate en rebanadas
2.Preparar la sarten a calidad media colocar aceite en spray y cocinar la pechuga hasta termino medio
3.Agregar 25g de pechuga.
4. Agregar una cucharada de mayonesa light
5. Opcional se pueden agregar cebolla al gusto. 


',1,2 );


--tabla nutricional
insert into tablanutricional(id,fk_receta, calorias,proteinas,carbohidratos,fibra,grasas)
values(5,4,440,45,38,5,12);

--links ingredientes:
insert into ingredientexreceta (id_ingrediente,id_receta,gramos)
values
(13,4,50),
(10,4,50),
(12,4,50)
;

insert into fotografia (foto)
values('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pasionporelsabor.com%2Fes-sv%2Frecetas%2Fdulces-y-postres%2Fcalientes%2Ftostadas-a-la-francesa&psig=AOvVaw3TkMKN53DkxKCPOKhy9gz8&ust=1666017882618000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCNjisrL-5PoCFQAAAAAdAAAAABAD');

insert into fotografiaxreceta (id_receta,id_fotografia)
values(4,4)




----------------------------------------------------------------------------------------Cenas



INSERT INTO public.ingrediente
(nombre_alimento, calorias, proteinas, carbohidratos, fibra, grasas)
VALUES('Carne magra de res', 135, 21.91, 0, 0, 4.62),
('Salsa de tomate',15,0.26,3.76	,0,0.06),
('Fideos',210,7.22,40,1.9,3.3)
;



insert into public.receta
(nombre,linkvideo,instrucciones,id_objetivo,tiempo_comida)
values('Ensalada proteica balanceada','https://youtu.be/06O5vtVQEOE','
## Preparación

1. Calentar 4 cuartos de agua en fuego alto. Cuando el agua empiece a hervir debvemos reducir el fuego a fuego bajo.ejercicio 
2. Agregar un paquete de pasta por persona, utilizar las instrucciones del empaque y al terminar se debe filtrar y poner a un lado
3. En otro sarten se debe de poner a fuego medio y agregar aceite. 
4. Agregar Carne magra de res y cocinarlo hasta que ambos lados se encuentren bien cocinado. 
5. Calentar la salsa de tomate, para esto se puede utilizar el microondas.

## Plato
Servir con pasta, carne y salsa juntos. 


',1,3)


--tabla nutricional
insert into tablanutricional(id,fk_receta, calorias,proteinas,carbohidratos,fibra,grasas)
values(5,5,320,24,43,7,6);

--links ingredientes:
insert into ingredientexreceta (id_ingrediente,id_receta,gramos)
values
(13,5,50),
(14,5,50),
(15,5,50)
;

insert into fotografia (foto)
values('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.myfoodandfamily.com%2Fes-US%2Frecipe%2F171418%2Fsopa-seca-de-fideos-con-carne-de-cerdo-y-salsa-barbacoa&psig=AOvVaw25LooTb-updXEjF9X0vKtz&ust=1666044763135000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCJDFy8Pi5foCFQAAAAAdAAAAABAI');

insert into fotografiaxreceta (id_receta,id_fotografia)
values(5,5)


--receta 6


