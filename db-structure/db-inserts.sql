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
values('Fideos con carne magra','https://youtu.be/06O5vtVQEOE','
## Preparación

1. Calentar 4 cuartos de agua en fuego alto. Cuando el agua empiece a hervir debemos reducir el fuego a fuego bajo.ejercicio 
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

--html

INSERT INTO public.ingrediente
(nombre_alimento, calorias, proteinas, carbohidratos, fibra, grasas)
values
('Brocoli',31,2.57,6.0,2.4,0.34),
('Crema Light ',30,0.5,1,0,2.6),
('Fetuccini',220,8,42.95,2.5,1.29)
;




insert into public.receta
(nombre,linkvideo,instrucciones,id_objetivo,tiempo_comida)
values('Fettuccini de pechuga de pollo','https://youtu.be/06O5vtVQEOE','
<h3> Preparación</h3>

<ol>
	<li> Calentar 4 cuartos de agua en fuego alto. Cuando el agua empiece a hervir debvemos reducir el fuego a fuego bajo.ejercicio </li>
	<li> Agregar un paquete de fideos fettucini por persona, utilizar las instrucciones del empaque y al terminar se debe filtrar y poner a un lado </li>
	<li> En otro sarten se debe de poner a fuego medio y agregar aceite. </li>
	<li> Agregar pechuga en tiras y cocinarlo hasta que ambos lados se encuentren bien cocinado.</li>
	<li> Agregar chile verde al gusto para agregar sabor y color al plato. </li> 
	<li> Hervir brocoli en agua por 5 minutos. </li>
	<li> Se puede agregar una chucharada de crema baja en calorías para mehjorrar su cremosidad </li> 
</ol>

<h3> Plato </h3>

<p>Servir con Fetuccini, Agregar carne de res y chile verde. En otro plato se puenden poner los brocolis si es encesario</p> 


',1,3)


--tabla nutricional
insert into tablanutricional(id,fk_receta, calorias,proteinas,carbohidratos,fibra,grasas)
values(6,6,260,25,26,12,5);

--links ingredientes:
insert into ingredientexreceta (id_ingrediente,id_receta,gramos)
values
(9,6,50),
(16,6,50),
(17,6,50),
(18,6,50)
;

insert into fotografia (foto)
values('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DMQWTWrNZNiw&psig=AOvVaw2u0XNII5S3m0M9U_xeQhJC&ust=1666046213834000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCLi3m_fn5foCFQAAAAAdAAAAABAI');

insert into fotografiaxreceta (id_receta,id_fotografia)
values(6,6);


--receta 7


INSERT INTO public.ingrediente
(nombre_alimento, calorias, proteinas, carbohidratos, fibra, grasas)
values
('Queso Bajo en calorias',173,24.5,1.91,0,7),
('Salsa de pizza light',15,0.2,3.7,0,0.06),
('Tortilla integral',122,3.3,21,2.8,2.9)
;




insert into public.receta
(nombre,linkvideo,instrucciones,id_objetivo,tiempo_comida)
values('Pizza Proteica','https://youtu.be/06O5vtVQEOE','
<h3> Preparación</h3>

<ol>
	<li> Calentar una sarten en fuego medio para poder saltear cebollas con un poco de aceite</li>
	<li> Al llegar al pundo de caramelizarlas dejarlas en un lado</li>
	<li> En el horno tostar la tortilla baja en calorías de su preferencia por 3 minutos a temperatura media. </li>
	<li> Agregar todos los ingredientes en la tortilla, agregar rebanadas finas de queso</li>
	<li> Luego hornear nuevamente la tortilla por otros tres minutos en la misma temperatura</li> 
	<li> (Opcional) se puede agregar cualquier topping preferido </li> 
</ol>

<p><u>Nota: Valores nutriciales no incluyen toppings extras agregados.</u></p>

 


',1,3);


--tabla nutricional
insert into tablanutricional(id,fk_receta, calorias,proteinas,carbohidratos,fibra,grasas)
values(7,7,625,41,49,10,17);

--links ingredientes:
insert into ingredientexreceta (id_ingrediente,id_receta,gramos)
values
(19,7,50),
(20,7,50),
(21,7,50)
;

insert into fotografia (foto)
values('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F319333429804008748%2F&psig=AOvVaw3FTsfcp62k9V6XMnkWOxSS&ust=1666048386938000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCOikrYPw5foCFQAAAAAdAAAAABAE');

insert into fotografiaxreceta (id_receta,id_fotografia)
values(7,7);



--receta 8. postres/refrigerios



INSERT INTO public.ingrediente
(nombre_alimento, calorias, proteinas, carbohidratos, fibra, grasas)
values
('Queso Cottage',72,12,2.72,0,1),
('Leche de almendras',40,1.51,1.4,0.8,3.58),
('Gelatina baja en calorias',10,0.82,4.13,0,0)
;




insert into public.receta
(nombre,linkvideo,instrucciones,id_objetivo,tiempo_comida)
values('Buddin proteico de queso con chocolate','https://youtu.be/06O5vtVQEOE','
<h3> Preparación</h3>

<ol>
	<li>Poner 2 tazas de queso cottage, 4.5 tazas de leche de almednras, 2 cucharadas de gelatina, una cucharada de guar, Endulzante al gusto</li>
	<li> Agregar todos los ingredientes a una licuadora y licuiar por tres minutos a velocidad media-alta</li>
	<li> (Opcional)Agregar Polvo de batido de proteina basado en caseina de preferencia</li>
	<li> Colocar la mezcla en un deposito y colocarla en un regrigerador por 10 minutos </li>
	<li> Se puede agregar cualquier tipo de topping al gusto</li> 
</ol>

<p><u>Nota: Valores nutriciales no incluyen toppings extras agregados.</u></p>

 


',1,4);


--tabla nutricional
insert into tablanutricional(id,fk_receta, calorias,proteinas,carbohidratos,fibra,grasas)
values(8,8,99,8,14,2,1);

--links ingredientes:
insert into ingredientexreceta (id_ingrediente,id_receta,gramos)
values
(22,8,50),
(23,8,50),
(8,8,50)
;

insert into fotografia (foto)
values('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F319333429804008748%2F&psig=AOvVaw3FTsfcp62k9V6XMnkWOxSS&ust=1666048386938000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCOikrYPw5foCFQAAAAAdAAAAABAE');

insert into fotografiaxreceta (id_receta,id_fotografia)
values(8,8);




--receta 9

INSERT INTO public.ingrediente
(nombre_alimento, calorias, proteinas, carbohidratos, fibra, grasas)
values
('Queso Cottage',72,12,2.72,0,1),
('Leche de almendras',40,1.51,1.4,0.8,3.58),
('Gelatina baja en calorias',10,0.82,4.13,0,0)
;




insert into public.receta
(nombre,linkvideo,instrucciones,id_objetivo,tiempo_comida)
values('Buddin proteico de queso con chocolate','https://youtu.be/06O5vtVQEOE','
<h3> Preparación</h3>

<ol>
	<li>Poner 2 tazas de queso cottage, 4.5 tazas de leche de almednras, 2 cucharadas de gelatina, una cucharada de guar, Endulzante al gusto</li>
	<li> Agregar todos los ingredientes a una licuadora y licuiar por tres minutos a velocidad media-alta</li>
	<li> (Opcional)Agregar Polvo de batido de proteina basado en caseina de preferencia</li>
	<li> Colocar la mezcla en un deposito y colocarla en un regrigerador por 10 minutos </li>
	<li> Se puede agregar cualquier tipo de topping al gusto</li> 
</ol>

<p><u>Nota: Valores nutriciales no incluyen toppings extras agregados.</u></p>

 


',1,4);


--tabla nutricional
insert into tablanutricional(id,fk_receta, calorias,proteinas,carbohidratos,fibra,grasas)
values(9,9,99,8,14,2,1);

--links ingredientes:
insert into ingredientexreceta (id_ingrediente,id_receta,gramos)
values
(22,9,50),
(23,9,50),
(8,9,50)
;

insert into fotografia (foto)
values('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F319333429804008748%2F&psig=AOvVaw3FTsfcp62k9V6XMnkWOxSS&ust=1666048386938000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCOikrYPw5foCFQAAAAAdAAAAABAE');

insert into fotografiaxreceta (id_receta,id_fotografia)
values(9,9);




