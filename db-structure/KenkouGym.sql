CREATE TABLE public.estiloalimenticio (
    id integer NOT NULL,
    nombre character VARYING   
);


ALTER TABLE public.estiloalimenticio ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.estiloalimenticio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

--
-- Name: fotografia; Type: TABLE; Schema: public; Owner: renemel
--

CREATE TABLE public.fotografia (
    id integer NOT NULL,
    foto character varying NOT NULL
);

--
-- Name: fotografia_id_seq; Type: SEQUENCE; Schema: public; Owner: renemel
--

ALTER TABLE public.fotografia ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.fotografia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

--
-- Name: fotografiaxreceta; Type: TABLE; Schema: public; Owner: renemel
--

CREATE TABLE public.fotografiaxreceta (
    id_receta integer NOT NULL,
    id_fotografia integer NOT NULL
);

--
-- Name: ingrediente; Type: TABLE; Schema: public; Owner: renemel
--

CREATE TABLE public.ingrediente (
    id integer NOT NULL,
    nombre_alimento character varying NOT NULL,
    calorias numeric NOT NULL,
    proteinas numeric NOT NULL,
    carbohidratos numeric NOT NULL,
    fibra numeric NOT NULL,
    grasas numeric not null
);

CREATE TABLE public.tablanutricional (
    id integer NOT NULL,
    fk_receta integer not null,
    calorias numeric NOT NULL,
    proteinas numeric NOT NULL,
    carbohidratos numeric NOT NULL,
    fibra numeric NOT NULL,
    grasas numeric not null
);

--
-- Name: ingrediente_id_seq; Type: SEQUENCE; Schema: public; Owner: renemel
--

ALTER TABLE public.ingrediente ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ingrediente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

--
-- Name: ingredientexreceta; Type: TABLE; Schema: public; Owner: renemel
--

CREATE TABLE public.ingredientexreceta (
    id_ingrediente integer NOT NULL,
    id_receta integer NOT NULL,
    gramos numeric NOT NULL,
    PRIMARY KEY(id_ingrediente, id_receta)
);

--
-- Name: objetivo; Type: TABLE; Schema: public; Owner: renemel
--

CREATE TABLE public.objetivo (
    id integer NOT NULL,
    nombre character varying NOT NULL
);

--
-- Name: objetivo_id_seq; Type: SEQUENCE; Schema: public; Owner: renemel
--

ALTER TABLE public.objetivo ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.objetivo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

--
-- Name: planalimenticio; Type: TABLE; Schema: public; Owner: renemel
--

CREATE TABLE public.planalimenticio (
    id integer NOT NULL,
    nombre character varying NOT NULL,
    estiloalimentacion integer NOT NULL
);

--
-- Name: planalimenticio_id_seq; Type: SEQUENCE; Schema: public; Owner: renemel
--

ALTER TABLE public.planalimenticio ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.planalimenticio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: planxreceta; Type: TABLE; Schema: public; Owner: renemel
--

CREATE TABLE public.planxreceta (
    id_receta integer NOT NULL,
    id_plan integer NOT NULL
);

--
-- Name: receta; Type: TABLE; Schema: public; Owner: renemel
--

CREATE TABLE public.receta (
    id integer PRIMARY KEY,
    nombre character varying NOT NULL,
    linkvideo character varying NOT NULL,
    instrucciones character varying NOT NULL,
    id_objetivo integer NOT NULL,
    tiempo_comida integer NOT NULL
);

--
-- Name: receta_id_seq; Type: SEQUENCE; Schema: public; Owner: renemel
--

ALTER TABLE public.receta ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.receta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

--
-- Name: tiempocomida; Type: TABLE; Schema: public; Owner: renemel
--

CREATE TABLE public.tiempocomida (
    id integer PRIMARY KEY,
    nombre character varying
);

--
-- Name: tiempocomida_id_seq; Type: SEQUENCE; Schema: public; Owner: renemel
--

ALTER TABLE public.tiempocomida ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tiempocomida_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

ALTER TABLE ONLY public.estiloalimenticio
    ADD CONSTRAINT estiloalimenticio_pkey PRIMARY KEY (id);


--
-- Name: fotografia fotografia_pkey; Type: CONSTRAINT; Schema: public; Owner: renemel
--

ALTER TABLE ONLY public.fotografia
    ADD CONSTRAINT fotografia_pkey PRIMARY KEY (id);


--
-- Name: ingrediente ingrediente_pkey; Type: CONSTRAINT; Schema: public; Owner: renemel
--

ALTER TABLE ONLY public.ingrediente
    ADD CONSTRAINT ingrediente_pkey PRIMARY KEY (id);


--
-- Name: objetivo objetivo_pkey; Type: CONSTRAINT; Schema: public; Owner: renemel
--

ALTER TABLE ONLY public.objetivo
    ADD CONSTRAINT objetivo_pkey PRIMARY KEY (id);


--
-- Name: planalimenticio planalimenticio_pkey; Type: CONSTRAINT; Schema: public; Owner: renemel
--

ALTER TABLE ONLY public.planalimenticio
    ADD CONSTRAINT planalimenticio_pkey PRIMARY KEY (id);


--
-- Name: receta receta_pkey; Type: CONSTRAINT; Schema: public; Owner: renemel
--

ALTER TABLE ONLY public.receta
    ADD CONSTRAINT receta_pkey PRIMARY KEY (id);


--
-- Name: tiempocomida tiempocomida_pkey; Type: CONSTRAINT; Schema: public; Owner: renemel
--

ALTER TABLE ONLY public.tiempocomida
    ADD CONSTRAINT tiempocomida_pkey PRIMARY KEY (id);


--
-- Name: planalimenticio fk_estilocomida; Type: FK CONSTRAINT; Schema: public; Owner: renemel
--

ALTER TABLE ONLY public.planalimenticio
    ADD CONSTRAINT fk_estilocomida FOREIGN KEY (estiloalimentacion) REFERENCES public.estiloalimenticio(id);


--
-- Name: fotografiaxreceta fk_fotoreceta; Type: FK CONSTRAINT; Schema: public; Owner: renemel
--

ALTER TABLE ONLY public.fotografiaxreceta
    ADD CONSTRAINT fk_fotoreceta FOREIGN KEY (id_fotografia) REFERENCES public.fotografia(id);


--
-- Name: ingredientexreceta fk_ingreceta; Type: FK CONSTRAINT; Schema: public; Owner: renemel
--

ALTER TABLE ONLY public.ingredientexreceta
    ADD CONSTRAINT fk_ingreceta FOREIGN KEY (id_ingrediente) REFERENCES public.ingrediente(id);
   

alter table only public.tablanutricional
	ADD CONSTRAINT fk_receta FOREIGN KEY (fk_receta) REFERENCES public.receta(id);


--
-- Name: receta fk_objetivo; Type: FK CONSTRAINT; Schema: public; Owner: renemel
--

ALTER TABLE ONLY public.receta
    ADD CONSTRAINT fk_objetivo FOREIGN KEY (id_objetivo) REFERENCES public.objetivo(id);


--
-- Name: planxreceta fk_planceceta; Type: FK CONSTRAINT; Schema: public; Owner: renemel
--

ALTER TABLE ONLY public.planxreceta
    ADD CONSTRAINT fk_planceceta FOREIGN KEY (id_plan) REFERENCES public.planalimenticio(id);


--
-- Name: fotografiaxreceta fk_recetafoto; Type: FK CONSTRAINT; Schema: public; Owner: renemel
--

ALTER TABLE ONLY public.fotografiaxreceta
    ADD CONSTRAINT fk_recetafoto FOREIGN KEY (id_receta) REFERENCES public.receta(id);


--
-- Name: ingredientexreceta fk_recetaing; Type: FK CONSTRAINT; Schema: public; Owner: renemel
--

ALTER TABLE ONLY public.ingredientexreceta
    ADD CONSTRAINT fk_recetaing FOREIGN KEY (id_receta) REFERENCES public.receta(id);


--
-- Name: planxreceta fk_recetaplan; Type: FK CONSTRAINT; Schema: public; Owner: renemel
--

ALTER TABLE ONLY public.planxreceta
    ADD CONSTRAINT fk_recetaplan FOREIGN KEY (id_receta) REFERENCES public.receta(id);


--
-- Name: receta fk_tiempo; Type: FK CONSTRAINT; Schema: public; Owner: renemel
--

ALTER TABLE ONLY public.receta
    ADD CONSTRAINT fk_tiempo FOREIGN KEY (tiempo_comida) REFERENCES public.tiempocomida(id);



--------------------------------------------------------------------------------------------------------------------------------

--
-- Name: Ejercicio; Type: TABLE; Schema: public; Owner: renemel
--
CREATE TABLE public.Ejercicio (
    idEjercicio integer NOT NULL,
	idImagenEjercicio integer,
    NombreEjercicio character VARYING NOT NULL
);


ALTER TABLE public.Ejercicio ALTER COLUMN idEjercicio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.Ejercicio_idEjercicio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

ALTER TABLE ONLY public.Ejercicio
    ADD CONSTRAINT Ejercicio_pkey PRIMARY KEY (idEjercicio);

ALTER TABLE ONLY public.Ejercicio
    ADD CONSTRAINT fk_ImagenEjercicio FOREIGN KEY (idImagenEjercicio) REFERENCES public.ImagenEjercicio(idImagenEjercicio);
	
--
-- Name: ImagenEjercicio; Type: TABLE; Schema: public; Owner: renemel
--
CREATE TABLE public.ImagenEjercicio (
    idImagenEjercicio integer NOT NULL,
    ImagenEjercicio character VARYING NOT NULL
);


ALTER TABLE public.ImagenEjercicio ALTER COLUMN idImagenEjercicio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ImagenEjercicio_idImagenEjercicio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

ALTER TABLE ONLY public.ImagenEjercicio
    ADD CONSTRAINT ImagenEjercicio_pkey PRIMARY KEY (idImagenEjercicio);
	
--
-- Name: Musculo; Type: TABLE; Schema: public; Owner: renemel
--
CREATE TABLE public.Musculo (
    idMusculo integer NOT NULL,
    NombreMusculo character VARYING NOT NULL
);


ALTER TABLE public.Musculo ALTER COLUMN idMusculo ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.Musculo_idMusculo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

ALTER TABLE ONLY public.Musculo
    ADD CONSTRAINT Musculo_pkey PRIMARY KEY (idMusculo);
	
--
-- Name: TipoRutina; Type: TABLE; Schema: public; Owner: renemel
--
CREATE TABLE public.TipoRutina (
    idTipoRutina integer NOT NULL,
    NombreTipoRutina character VARYING NOT NULL
);


ALTER TABLE public.TipoRutina ALTER COLUMN idTipoRutina ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.TipoRutina_idTipoRutina_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

ALTER TABLE ONLY public.TipoRutina
    ADD CONSTRAINT TipoRutina_pkey PRIMARY KEY (idTipoRutina);
	
--
-- Name: Rutina; Type: TABLE; Schema: public; Owner: renemel
--
CREATE TABLE public.Rutina (
    idRutina integer NOT NULL,
	idMusculo integer,
	idTipoRutina integer NOT NULL,
	idEjercicio integer NOT NULL,
	NombreRutina character VARYING NOT NULL,
    Series integer,
	Repeticiones integer,
	PesoRecomendado integer,
	TiempoRecomendado character VARYING,
	VecesPorSemana character VARYING NOT NULL
);


ALTER TABLE public.Rutina ALTER COLUMN idRutina ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.Rutina_idRutina_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

ALTER TABLE ONLY public.Rutina
    ADD CONSTRAINT Rutina_pkey PRIMARY KEY (idRutina);

ALTER TABLE ONLY public.Rutina
    ADD CONSTRAINT fk_Musculo FOREIGN KEY (idMusculo) REFERENCES public.Musculo(idMusculo);

ALTER TABLE ONLY public.Rutina
    ADD CONSTRAINT fk_TipoRutina FOREIGN KEY (idTipoRutina) REFERENCES public.TipoRutina(idTipoRutina);
	
ALTER TABLE ONLY public.Rutina
    ADD CONSTRAINT fk_Ejercicio FOREIGN KEY (idEjercicio) REFERENCES public.Ejercicio(idEjercicio);

create table kenkou_user(
	username varchar(30) primary key,
	email varchar(255) not null,
	first_name varchar(255) not null,
	last_name varchar(255) not null,
	password text not null,
	enabled boolean not null default true,
	locked boolean not null default false,
	credentials_expiration date not null default current_date + interval '6 months'
);

create table kenkou_role(
	role_code varchar(20) primary key,
	role_name varchar(100) not null
);

create table user_role(
	username varchar(30),
	role_code varchar(20),
	primary key(username, role_code)
);

alter table user_role add constraint FK_USER_ROLE_IS_KENKOU_ROLE
foreign key (role_code) references kenkou_role(role_code);
alter table user_role add constraint FK_USER_ROLE_IS_KENKOU_USER
foreign key (username) references kenkou_user(username);