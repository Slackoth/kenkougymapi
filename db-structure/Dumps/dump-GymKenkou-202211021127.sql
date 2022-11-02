--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2022-11-02 11:27:11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5 (class 2615 OID 25140)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO kenkougym;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 209 (class 1259 OID 25142)
-- Name: categoriaingrediente; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.categoriaingrediente (
    id integer NOT NULL,
    descripcion character varying(100) NOT NULL
);


ALTER TABLE public.categoriaingrediente OWNER TO kenkougym;

--
-- TOC entry 210 (class 1259 OID 25145)
-- Name: categoriaingrediente_id_seq; Type: SEQUENCE; Schema: public; Owner: kenkougym
--

ALTER TABLE public.categoriaingrediente ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.categoriaingrediente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 211 (class 1259 OID 25146)
-- Name: ejercicio; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.ejercicio (
    id integer NOT NULL,
    nombre character varying NOT NULL
);


ALTER TABLE public.ejercicio OWNER TO kenkougym;

--
-- TOC entry 212 (class 1259 OID 25151)
-- Name: ejercicio_id_seq; Type: SEQUENCE; Schema: public; Owner: kenkougym
--

ALTER TABLE public.ejercicio ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ejercicio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 213 (class 1259 OID 25152)
-- Name: ejercicio_x_musculo; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.ejercicio_x_musculo (
    id integer NOT NULL,
    idmusculo integer NOT NULL,
    idejercicio integer NOT NULL,
    idimagen integer NOT NULL,
    idtrutina integer NOT NULL,
    series integer,
    repeticiones integer,
    peso_recomendado integer,
    tiempo_recomendado character varying,
    veces_xsemana character varying,
    otras_indicaciones character varying,
    dificultad character varying,
    url character varying
);


ALTER TABLE public.ejercicio_x_musculo OWNER TO kenkougym;

--
-- TOC entry 214 (class 1259 OID 25157)
-- Name: ejercicio_x_musculo_id_seq; Type: SEQUENCE; Schema: public; Owner: kenkougym
--

ALTER TABLE public.ejercicio_x_musculo ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ejercicio_x_musculo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 215 (class 1259 OID 25158)
-- Name: ejercicio_x_rutina; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.ejercicio_x_rutina (
    idrutina integer NOT NULL,
    idemusculo integer NOT NULL,
    id_rutina integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.ejercicio_x_rutina OWNER TO kenkougym;

--
-- TOC entry 216 (class 1259 OID 25161)
-- Name: estiloalimenticio; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.estiloalimenticio (
    id integer NOT NULL,
    nombre character varying
);


ALTER TABLE public.estiloalimenticio OWNER TO kenkougym;

--
-- TOC entry 217 (class 1259 OID 25166)
-- Name: estiloalimenticio_id_seq; Type: SEQUENCE; Schema: public; Owner: kenkougym
--

ALTER TABLE public.estiloalimenticio ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.estiloalimenticio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 218 (class 1259 OID 25167)
-- Name: fotografia; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.fotografia (
    id integer NOT NULL,
    foto character varying NOT NULL
);


ALTER TABLE public.fotografia OWNER TO kenkougym;

--
-- TOC entry 219 (class 1259 OID 25172)
-- Name: fotografia_id_seq; Type: SEQUENCE; Schema: public; Owner: kenkougym
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
-- TOC entry 220 (class 1259 OID 25173)
-- Name: fotografiaxreceta; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.fotografiaxreceta (
    id_receta integer NOT NULL,
    id_fotografia integer NOT NULL
);


ALTER TABLE public.fotografiaxreceta OWNER TO kenkougym;

--
-- TOC entry 221 (class 1259 OID 25176)
-- Name: imagen_ejercicio; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.imagen_ejercicio (
    id integer NOT NULL,
    imagen character varying NOT NULL
);


ALTER TABLE public.imagen_ejercicio OWNER TO kenkougym;

--
-- TOC entry 222 (class 1259 OID 25181)
-- Name: imagen_ejercicio_id_seq; Type: SEQUENCE; Schema: public; Owner: kenkougym
--

ALTER TABLE public.imagen_ejercicio ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.imagen_ejercicio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 223 (class 1259 OID 25182)
-- Name: ingrediente; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.ingrediente (
    id integer NOT NULL,
    nombre_alimento character varying NOT NULL,
    calorias numeric DEFAULT 0 NOT NULL,
    proteinas numeric DEFAULT 0 NOT NULL,
    carbohidratos numeric DEFAULT 0 NOT NULL,
    fibra numeric DEFAULT 0 NOT NULL,
    grasasaturada numeric DEFAULT 0 NOT NULL,
    categoria integer DEFAULT 0 NOT NULL,
    categoria_id integer,
    vitamina_a real,
    vitamina_b1 real,
    vitamina_b12 real,
    vitamina_b2 real,
    vitamina_b9 real,
    vitamina_c real,
    vitamina_d real,
    vitamina_e real,
    vitamina_k real
);


ALTER TABLE public.ingrediente OWNER TO kenkougym;

--
-- TOC entry 224 (class 1259 OID 25193)
-- Name: ingrediente_id_seq; Type: SEQUENCE; Schema: public; Owner: kenkougym
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
-- TOC entry 225 (class 1259 OID 25194)
-- Name: ingredientexreceta; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.ingredientexreceta (
    id_ingrediente integer NOT NULL,
    id_receta integer NOT NULL,
    gramos numeric NOT NULL
);


ALTER TABLE public.ingredientexreceta OWNER TO kenkougym;

--
-- TOC entry 226 (class 1259 OID 25199)
-- Name: kenkou_role; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.kenkou_role (
    role_code character varying(20) NOT NULL,
    role_name character varying(100) NOT NULL
);


ALTER TABLE public.kenkou_role OWNER TO kenkougym;

--
-- TOC entry 227 (class 1259 OID 25202)
-- Name: kenkou_user; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.kenkou_user (
    username character varying(30) NOT NULL,
    email character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    password text NOT NULL,
    enabled boolean DEFAULT true NOT NULL,
    locked boolean DEFAULT false NOT NULL,
    credentials_expiration date DEFAULT (CURRENT_DATE + '6 mons'::interval) NOT NULL,
    credentials_ex character varying(255),
    medida_altura double precision DEFAULT 0 NOT NULL,
    sexo character varying(1) DEFAULT 'F'::character varying NOT NULL
);


ALTER TABLE public.kenkou_user OWNER TO kenkougym;

--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 227
-- Name: COLUMN kenkou_user.medida_altura; Type: COMMENT; Schema: public; Owner: kenkougym
--

COMMENT ON COLUMN public.kenkou_user.medida_altura IS 'Medida en cm';


--
-- TOC entry 228 (class 1259 OID 25210)
-- Name: musculo; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.musculo (
    id integer NOT NULL,
    nombre character varying NOT NULL
);


ALTER TABLE public.musculo OWNER TO kenkougym;

--
-- TOC entry 229 (class 1259 OID 25215)
-- Name: musculo_id_seq; Type: SEQUENCE; Schema: public; Owner: kenkougym
--

ALTER TABLE public.musculo ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.musculo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 230 (class 1259 OID 25216)
-- Name: objetivo; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.objetivo (
    id integer NOT NULL,
    nombre character varying NOT NULL
);


ALTER TABLE public.objetivo OWNER TO kenkougym;

--
-- TOC entry 231 (class 1259 OID 25221)
-- Name: objetivo_id_seq; Type: SEQUENCE; Schema: public; Owner: kenkougym
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
-- TOC entry 232 (class 1259 OID 25222)
-- Name: planalimenticio; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.planalimenticio (
    id integer NOT NULL,
    nombre character varying NOT NULL,
    estiloalimentacion integer NOT NULL,
    objetivo integer NOT NULL,
    estilo_alimentacion_id integer
);


ALTER TABLE public.planalimenticio OWNER TO kenkougym;

--
-- TOC entry 233 (class 1259 OID 25227)
-- Name: planalimenticio_id_seq; Type: SEQUENCE; Schema: public; Owner: kenkougym
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
-- TOC entry 234 (class 1259 OID 25228)
-- Name: planalimenticio_recetas; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.planalimenticio_recetas (
    plan_alimenticio_id integer NOT NULL,
    recetas_id integer NOT NULL
);


ALTER TABLE public.planalimenticio_recetas OWNER TO kenkougym;

--
-- TOC entry 235 (class 1259 OID 25231)
-- Name: planxreceta; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.planxreceta (
    id_receta integer NOT NULL,
    id_plan integer NOT NULL
);


ALTER TABLE public.planxreceta OWNER TO kenkougym;

--
-- TOC entry 236 (class 1259 OID 25234)
-- Name: progreso; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.progreso (
    id_progreso integer NOT NULL,
    username character varying NOT NULL,
    peso double precision NOT NULL,
    medida_pecho double precision NOT NULL,
    medida_brazo_der double precision NOT NULL,
    medida_pierna_der double precision NOT NULL,
    diametro_cintura double precision NOT NULL,
    fecha date NOT NULL,
    porcentaje_grasa double precision DEFAULT 0 NOT NULL,
    medida_cuello double precision DEFAULT 0 NOT NULL,
    diametro_caderas double precision DEFAULT 0 NOT NULL,
    medida_brazo_izq double precision DEFAULT 0 NOT NULL,
    medida_pierna_izq double precision DEFAULT 0 NOT NULL
);


ALTER TABLE public.progreso OWNER TO kenkougym;

--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 236
-- Name: COLUMN progreso.peso; Type: COMMENT; Schema: public; Owner: kenkougym
--

COMMENT ON COLUMN public.progreso.peso IS 'Medida en kg';


--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 236
-- Name: COLUMN progreso.medida_pecho; Type: COMMENT; Schema: public; Owner: kenkougym
--

COMMENT ON COLUMN public.progreso.medida_pecho IS 'Medida en cm';


--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 236
-- Name: COLUMN progreso.medida_brazo_der; Type: COMMENT; Schema: public; Owner: kenkougym
--

COMMENT ON COLUMN public.progreso.medida_brazo_der IS 'Medida en cm';


--
-- TOC entry 3575 (class 0 OID 0)
-- Dependencies: 236
-- Name: COLUMN progreso.medida_pierna_der; Type: COMMENT; Schema: public; Owner: kenkougym
--

COMMENT ON COLUMN public.progreso.medida_pierna_der IS 'Medida en cm';


--
-- TOC entry 3576 (class 0 OID 0)
-- Dependencies: 236
-- Name: COLUMN progreso.diametro_cintura; Type: COMMENT; Schema: public; Owner: kenkougym
--

COMMENT ON COLUMN public.progreso.diametro_cintura IS 'Medida en cm';


--
-- TOC entry 3577 (class 0 OID 0)
-- Dependencies: 236
-- Name: COLUMN progreso.porcentaje_grasa; Type: COMMENT; Schema: public; Owner: kenkougym
--

COMMENT ON COLUMN public.progreso.porcentaje_grasa IS 'Medida en decimal';


--
-- TOC entry 3578 (class 0 OID 0)
-- Dependencies: 236
-- Name: COLUMN progreso.medida_cuello; Type: COMMENT; Schema: public; Owner: kenkougym
--

COMMENT ON COLUMN public.progreso.medida_cuello IS 'Medida en cm';


--
-- TOC entry 3579 (class 0 OID 0)
-- Dependencies: 236
-- Name: COLUMN progreso.diametro_caderas; Type: COMMENT; Schema: public; Owner: kenkougym
--

COMMENT ON COLUMN public.progreso.diametro_caderas IS 'Medida en cm';


--
-- TOC entry 237 (class 1259 OID 25239)
-- Name: progreso_id_progreso_seq; Type: SEQUENCE; Schema: public; Owner: kenkougym
--

ALTER TABLE public.progreso ALTER COLUMN id_progreso ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.progreso_id_progreso_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 238 (class 1259 OID 25240)
-- Name: receta; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.receta (
    id integer NOT NULL,
    nombre character varying NOT NULL,
    linkvideo character varying NOT NULL,
    instrucciones character varying NOT NULL,
    id_objetivo integer NOT NULL,
    tiempo_comida integer NOT NULL,
    objetivo_id integer,
    tiempo_comida_id integer,
    tablanutrionalid integer
);


ALTER TABLE public.receta OWNER TO kenkougym;

--
-- TOC entry 239 (class 1259 OID 25245)
-- Name: receta_id_seq; Type: SEQUENCE; Schema: public; Owner: kenkougym
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
-- TOC entry 240 (class 1259 OID 25246)
-- Name: rutina; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.rutina (
    id integer NOT NULL,
    nombre character varying NOT NULL
);


ALTER TABLE public.rutina OWNER TO kenkougym;

--
-- TOC entry 241 (class 1259 OID 25251)
-- Name: rutina_id_seq; Type: SEQUENCE; Schema: public; Owner: kenkougym
--

ALTER TABLE public.rutina ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.rutina_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 242 (class 1259 OID 25252)
-- Name: tablanutricional; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.tablanutricional (
    id integer NOT NULL,
    calorias numeric NOT NULL,
    proteinas numeric NOT NULL,
    carbohidratos numeric NOT NULL,
    fibra numeric NOT NULL,
    grasas numeric NOT NULL
);


ALTER TABLE public.tablanutricional OWNER TO kenkougym;

--
-- TOC entry 243 (class 1259 OID 25257)
-- Name: tablanutricional_id_seq; Type: SEQUENCE; Schema: public; Owner: kenkougym
--

ALTER TABLE public.tablanutricional ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tablanutricional_id_seq
    START WITH 10
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 244 (class 1259 OID 25258)
-- Name: tiempocomida; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.tiempocomida (
    id integer NOT NULL,
    nombre character varying
);


ALTER TABLE public.tiempocomida OWNER TO kenkougym;

--
-- TOC entry 245 (class 1259 OID 25263)
-- Name: tiempocomida_id_seq; Type: SEQUENCE; Schema: public; Owner: kenkougym
--

ALTER TABLE public.tiempocomida ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tiempocomida_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 246 (class 1259 OID 25264)
-- Name: tipo_rutina; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.tipo_rutina (
    id integer NOT NULL,
    nombre character varying NOT NULL
);


ALTER TABLE public.tipo_rutina OWNER TO kenkougym;

--
-- TOC entry 247 (class 1259 OID 25269)
-- Name: tipo_rutina_id_seq; Type: SEQUENCE; Schema: public; Owner: kenkougym
--

ALTER TABLE public.tipo_rutina ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tipo_rutina_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 248 (class 1259 OID 25270)
-- Name: user_role; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.user_role (
    username character varying(30) NOT NULL,
    role_code character varying(20) NOT NULL
);


ALTER TABLE public.user_role OWNER TO kenkougym;

--
-- TOC entry 249 (class 1259 OID 25273)
-- Name: userxdieta; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.userxdieta (
    id_planalimenticio integer NOT NULL,
    username character varying NOT NULL,
    estado boolean NOT NULL
);


ALTER TABLE public.userxdieta OWNER TO kenkougym;

--
-- TOC entry 250 (class 1259 OID 25278)
-- Name: userxrutina; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.userxrutina (
    id_rutina integer NOT NULL,
    username character varying NOT NULL,
    estado boolean NOT NULL
);


ALTER TABLE public.userxrutina OWNER TO kenkougym;

--
-- TOC entry 251 (class 1259 OID 25501)
-- Name: usuario_objetivo; Type: TABLE; Schema: public; Owner: kenkougym
--

CREATE TABLE public.usuario_objetivo (
    username character varying(30) NOT NULL,
    objetivo_id integer NOT NULL,
    activo boolean NOT NULL
);


ALTER TABLE public.usuario_objetivo OWNER TO kenkougym;

--
-- TOC entry 3522 (class 0 OID 25142)
-- Dependencies: 209
-- Data for Name: categoriaingrediente; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.categoriaingrediente (id, descripcion) FROM stdin;
1	VERDURAS Y HORTALIZAS
2	FRUTAS
3	FRUTOS SECOS
4	LACTEOS Y DERIVADOS
5	CARNES, CAZA Y EMBUTIDOS
6	PESCADOS, CRUSTÁCEOS Y MARISCOS
7	AZUCARES Y DULCES
8	CEREALES Y DERIVADOS
9	LEGUMBRES
10	HUEVOS
11	PASTELERÍA
12	BEBIDAS
13	ACEITES Y GRASAS
14	SALSAS Y CONDIMENTOS
\.


--
-- TOC entry 3524 (class 0 OID 25146)
-- Dependencies: 211
-- Data for Name: ejercicio; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.ejercicio (id, nombre) FROM stdin;
1	DOMINADAS
2	SENTADILLAS CON PESO
3	FLEXION DE PECHO
4	FONDOS EN PARALELAS
5	JUMPING JACKS
6	SENTADILLA ISOMETRICAS
7	SALTAR CUERDA
8	PLANCHA
9	SENTADILLA
10	ZANCADA CON PESO
11	DEADBUG
12	ELEVACION DE CADERA
13	FROG JUMPS
\.


--
-- TOC entry 3526 (class 0 OID 25152)
-- Dependencies: 213
-- Data for Name: ejercicio_x_musculo; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.ejercicio_x_musculo (id, idmusculo, idejercicio, idimagen, idtrutina, series, repeticiones, peso_recomendado, tiempo_recomendado, veces_xsemana, otras_indicaciones, dificultad, url) FROM stdin;
1	1	1	1	1	5	10	10	2 minutos	3 veces	No descansar mas de 1 minuto	Intermedio	https://www.youtube.com/watch?v=-oqAU5VxFWs
2	2	2	2	2	4	8	10	2 minutos	3 veces	No descansar mas de 1 minuto	Intermedio	https://www.youtube.com/watch?v=-oqAU5VxFWs
\.


--
-- TOC entry 3528 (class 0 OID 25158)
-- Dependencies: 215
-- Data for Name: ejercicio_x_rutina; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.ejercicio_x_rutina (idrutina, idemusculo, id_rutina, id) FROM stdin;
\.


--
-- TOC entry 3529 (class 0 OID 25161)
-- Dependencies: 216
-- Data for Name: estiloalimenticio; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.estiloalimenticio (id, nombre) FROM stdin;
2	VEGETARIANO
3	VEGANO
1	CARNIVORO
\.


--
-- TOC entry 3531 (class 0 OID 25167)
-- Dependencies: 218
-- Data for Name: fotografia; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.fotografia (id, foto) FROM stdin;
1	..\\kenkougymapp\\src\\componentes\\recipes\\imagenes\\tostadasfrancesas1.jpg
2	..\\kenkougymapp\\src\\componentes\\recipes\\imagenes\\francesasveg.jpeg
3	..\\kenkougymapp\\src\\componentes\\recipes\\imagenes\\Grilled-chicken-burgers2-500x375.jpg
4	..\\kenkougymapp\\src\\componentes\\recipes\\imagenes\\ensaladas-ricas-en-proteina_bbcfc08b_900x900.jpg
5	..\\kenkougymapp\\src\\componentes\\recipes\\imagenes\\espagueti_con_carne_molida_51623_orig.jpg
6	..\\kenkougymapp\\src\\componentes\\recipes\\imagenes\\fettuciniconpollo.jpeg
7	..\\kenkougymapp\\src\\componentes\\recipes\\imagenes\\protein-pizza-3-web.jpg
8	..\\kenkougymapp\\src\\componentes\\recipes\\imagenes\\1.jpg
9	..\\kenkougymapp\\src\\componentes\\recipes\\imagenes\\1.jpg
\.


--
-- TOC entry 3533 (class 0 OID 25173)
-- Dependencies: 220
-- Data for Name: fotografiaxreceta; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.fotografiaxreceta (id_receta, id_fotografia) FROM stdin;
1	1
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	9
\.


--
-- TOC entry 3534 (class 0 OID 25176)
-- Dependencies: 221
-- Data for Name: imagen_ejercicio; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.imagen_ejercicio (id, imagen) FROM stdin;
1	../imagenes/rutines/piernas.jpg
2	../imagenes/rutines/predicador.jpg
3	../imagenes/rutines/espalda.jpg
4	../imagenes/rutines/hombros.jpg
5	../imagenes/rutines/pectorales.jpg
6	../imagenes/rutines/rutina_brazos.jpg
7	../imagenes/rutines/rutina_brazos.jpg
8	../imagenes/rutines/rutina_espalda.jpg
9	../imagenes/rutines/rutina_hombros.jpg
10	../imagenes/rutines/rutina_pectorales.jpg
\.


--
-- TOC entry 3536 (class 0 OID 25182)
-- Dependencies: 223
-- Data for Name: ingrediente; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.ingrediente (id, nombre_alimento, calorias, proteinas, carbohidratos, fibra, grasasaturada, categoria, categoria_id, vitamina_a, vitamina_b1, vitamina_b12, vitamina_b2, vitamina_b9, vitamina_c, vitamina_d, vitamina_e, vitamina_k) FROM stdin;
1	Pan integral	69	2.72	12.91	1.9	1.1	8	8	\N	\N	\N	\N	\N	\N	\N	\N	\N
2	Claras de Huevo	141	12	0.75	0	9.7	10	10	\N	\N	\N	\N	\N	\N	\N	\N	\N
3	Canela	18	0.26	5.43	3.7	0.22	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
4	Stevia	4	0	1	0	0	7	7	\N	\N	\N	\N	\N	\N	\N	\N	\N
5	Extracto de vainilla	12	0	0.53	0	0	14	14	\N	\N	\N	\N	\N	\N	\N	\N	\N
6	Fresa	32	0.67	7.68	2	0.3	2	2	\N	\N	\N	\N	\N	\N	\N	\N	\N
7	Jarabe bajo en calorias	15	0	1	0	0	7	7	\N	\N	\N	\N	\N	\N	\N	\N	\N
8	Polvo de Goma Guar	5	0	1	1	0	7	7	\N	\N	\N	\N	\N	\N	\N	\N	\N
9	Pechuga de pollo	975	147.5	0	0	38.6	5	5	\N	\N	\N	\N	\N	\N	\N	\N	\N
10	Gravy	25	1.7	5	0	0	14	14	\N	\N	\N	\N	\N	\N	\N	\N	\N
11	Tomate	18	0.8	3.9	1.2	0.2	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
12	Mayonesa	49	0.12	1.2	0	5	14	14	\N	\N	\N	\N	\N	\N	\N	\N	\N
13	Carne magra de res	135	21.91	0	0	4.62	5	5	\N	\N	\N	\N	\N	\N	\N	\N	\N
14	Salsa de tomate	15	0.26	3.76	0	0.06	14	14	\N	\N	\N	\N	\N	\N	\N	\N	\N
15	Fideos	210	7.22	40	1.9	3.3	8	8	\N	\N	\N	\N	\N	\N	\N	\N	\N
16	Brocoli	31	2.57	6.0	2.4	0.34	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
17	Crema Light 	30	0.5	1	0	2.6	4	4	\N	\N	\N	\N	\N	\N	\N	\N	\N
18	Fetuccini	220	8	42.95	2.5	1.29	8	8	\N	\N	\N	\N	\N	\N	\N	\N	\N
19	Queso Bajo en calorias	173	24.5	1.91	0	7	4	4	\N	\N	\N	\N	\N	\N	\N	\N	\N
20	Salsa de pizza light	15	0.2	3.7	0	0.06	14	14	\N	\N	\N	\N	\N	\N	\N	\N	\N
21	Tortilla integral	122	3.3	21	2.8	2.9	8	8	\N	\N	\N	\N	\N	\N	\N	\N	\N
22	Queso Cottage	72	12	2.72	0	1	4	4	\N	\N	\N	\N	\N	\N	\N	\N	\N
23	Leche de almendras	40	1.51	1.4	0.8	3.58	4	4	\N	\N	\N	\N	\N	\N	\N	\N	\N
24	Gelatina baja en calorias	10	0.82	4.13	0	0	11	11	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- TOC entry 3538 (class 0 OID 25194)
-- Dependencies: 225
-- Data for Name: ingredientexreceta; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.ingredientexreceta (id_ingrediente, id_receta, gramos) FROM stdin;
1	1	50
2	1	50
3	1	50
4	1	50
5	1	50
6	1	50
7	1	50
1	2	50
2	2	50
3	2	50
4	2	50
5	2	50
6	2	50
7	2	50
8	2	50
1	3	50
9	3	50
10	3	50
13	4	50
10	4	50
12	4	50
13	5	50
14	5	50
15	5	50
9	6	50
16	6	50
17	6	50
18	6	50
19	7	50
20	7	50
21	7	50
22	8	50
23	8	50
8	8	50
22	9	50
23	9	50
8	9	50
\.


--
-- TOC entry 3539 (class 0 OID 25199)
-- Dependencies: 226
-- Data for Name: kenkou_role; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.kenkou_role (role_code, role_name) FROM stdin;
ROLE_ADMIN	User administrator
ROLE_USER	User
\.


--
-- TOC entry 3540 (class 0 OID 25202)
-- Dependencies: 227
-- Data for Name: kenkou_user; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.kenkou_user (username, email, first_name, last_name, password, enabled, locked, credentials_expiration, credentials_ex, medida_altura, sexo) FROM stdin;
00082318	00082318@uca.edu.sv	Luis	Calderon	$2a$12$psRd3h4EdFEO.b9QwYiRveTsxq4jrd1zFVTQNOkIG5Hx8i3LdPyE.	t	f	2023-02-21	\N	168	M
\.


--
-- TOC entry 3541 (class 0 OID 25210)
-- Dependencies: 228
-- Data for Name: musculo; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.musculo (id, nombre) FROM stdin;
1	BICEPS
2	TRICEPS
3	HOMBROS
4	ISQUIOS
5	GLUTEOS
6	ABDOMINALES
7	PECTORAL
8	DORSAL
9	CUADRICEPS
10	MUSCULO DEL ANTEBRAZO
11	MUSCULO DEL CUELLO
12	GEMELOS
\.


--
-- TOC entry 3543 (class 0 OID 25216)
-- Dependencies: 230
-- Data for Name: objetivo; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.objetivo (id, nombre) FROM stdin;
1	BAJAR DE PESO
2	AUMENTAR MASA MUSCULAR
3	TONIFICAR
\.


--
-- TOC entry 3545 (class 0 OID 25222)
-- Dependencies: 232
-- Data for Name: planalimenticio; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.planalimenticio (id, nombre, estiloalimentacion, objetivo, estilo_alimentacion_id) FROM stdin;
1	Plan A	1	1	\N
\.


--
-- TOC entry 3547 (class 0 OID 25228)
-- Dependencies: 234
-- Data for Name: planalimenticio_recetas; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.planalimenticio_recetas (plan_alimenticio_id, recetas_id) FROM stdin;
\.


--
-- TOC entry 3548 (class 0 OID 25231)
-- Dependencies: 235
-- Data for Name: planxreceta; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.planxreceta (id_receta, id_plan) FROM stdin;
4	1
\.


--
-- TOC entry 3549 (class 0 OID 25234)
-- Dependencies: 236
-- Data for Name: progreso; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.progreso (id_progreso, username, peso, medida_pecho, medida_brazo_der, medida_pierna_der, diametro_cintura, fecha, porcentaje_grasa, medida_cuello, diametro_caderas, medida_brazo_izq, medida_pierna_izq) FROM stdin;
1	00082318	185	30	10	15	60	2022-05-05	0	37	0	10	15
2	00082318	183	31.2	11.2	17	60	2022-06-06	0	37	0	11.2	17
3	00082318	184	31.7	12	17.2	58	2022-07-07	0	36.8	0	12	17.2
4	00082318	181	31.7	12.5	17.5	56	2022-08-08	0	36.8	0	12.5	17.5
5	00082318	181	31.7	12.7	17.9	55	2022-09-09	0	36.7	0	12.7	17.9
\.


--
-- TOC entry 3551 (class 0 OID 25240)
-- Dependencies: 238
-- Data for Name: receta; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.receta (id, nombre, linkvideo, instrucciones, id_objetivo, tiempo_comida, objetivo_id, tiempo_comida_id, tablanutrionalid) FROM stdin;
1	Tostadas Francesas Anabolicas	https://youtu.be/06O5vtVQEOE	\r\n## Preparación\r\n\r\nEn un deposito agregar 2 huevos, una cucharada de canela y una cucharada de extracto de vainilla y mezclarlo bien. \r\nPreparar el sarten en fuego medio y aplicar aceite (de preferencia mediante spray)\r\nMojar las rebanadas de pan en la mezcla y poner cada uno de ellas en el sarten, 3 a 4 minutos por lado. \r\n\r\nAdemas, se puede agregar un scoop de tu batido proteico preferido a la mezcla.\r\n\r\n## Plato\r\nServir estas tostadas en un plato con sus diferentes complementos, en este caso se agregan fresas pero puede agregarse cualquier tipo de fruta y un Jarabe de baja calorías\r\n	1	1	\N	\N	1
2	Tostadas Francesas Vegetarianas de Fresa	https://youtu.be/06O5vtVQEOE	\r\n## Preparación\r\n\r\nEn una licuadora agregar 2 rebanadas de pan, 2 copas de claras de huevo, 1 cucharada de goma guar en polvo, endulzante, extracto de vainilla y canela. \r\nMezclar hasta que tenga una consistencia uniforme. \r\nEs recomendable degar reposar por 2 a 3 horas la mezcla para mejorar su consistencia pero esto es opcional.\r\nPoner la sartén a una temperatura media, agregar aceite (de preferencia en spray),Y agregar la mezcla a la sarten, cocinar por 1-2 minutos. Luego agregarle las fresas partidas encima y cocinar el otro lado por uno a dos minutos. \r\nAdemas, se puede agregar un scoop de tu batido proteico preferido a la mezcla.\r\n\r\n## Plato\r\nServir estas tostadas en un plato con sus diferentes complementos, en este caso se agregan fresas pero puede agregarse cualquier tipo de fruta y un Jarabe de baja calorías\r\n	1	1	\N	\N	2
3	Hamburguesa de pechuga de pollo	https://youtu.be/06O5vtVQEOE	\r\n## Preparación\r\n\r\n1. Si es de su preferencia se recomienda marinar la pechuga de pollo en la noche con condimientos al gusto. \r\n2. Poner la sarten a fuego medio y colocarle spray de aceite\r\n3. Agregar la pechuga de pollo y cocinarla hasta que este en punto medio (Esto se puede notar cuando cada lado este dorado o llegue a la temperatura interna  de 74 grados)\r\n4. Poner la salsa en un deposito para calentar en el microondas\r\n5. unir los panes, con vegetales al gusto y opcionalmente mostaza y salsa de tomate ketchup\r\n\r\nNota: Los macros estimados son descontando la cantidad de condimentos utilizados. \r\n\r\n## Plato\r\nServir en un plato, se puede acompañar con bebida natural al gusto. \r\n	1	2	\N	\N	3
4	Ensalada proteica balanceada	https://youtu.be/06O5vtVQEOE	\r\n## Preparación\r\n\r\n1.cortar el tomate en rebanadas\r\n2.Preparar la sarten a calidad media colocar aceite en spray y cocinar la pechuga hasta termino medio\r\n3.Agregar 25g de pechuga.\r\n4. Agregar una cucharada de mayonesa light\r\n5. Opcional se pueden agregar cebolla al gusto. \r\n\r\n\r\n	1	2	\N	\N	4
5	Fideos con carne magra	https://youtu.be/06O5vtVQEOE	\r\n## Preparación\r\n\r\n1. Calentar 4 cuartos de agua en fuego alto. Cuando el agua empiece a hervir debemos reducir el fuego a fuego bajo.ejercicio \r\n2. Agregar un paquete de pasta por persona, utilizar las instrucciones del empaque y al terminar se debe filtrar y poner a un lado\r\n3. En otro sarten se debe de poner a fuego medio y agregar aceite. \r\n4. Agregar Carne magra de res y cocinarlo hasta que ambos lados se encuentren bien cocinado. \r\n5. Calentar la salsa de tomate, para esto se puede utilizar el microondas.\r\n\r\n## Plato\r\nServir con pasta, carne y salsa juntos. \r\n\r\n\r\n	1	3	\N	\N	5
6	Fettuccini de pechuga de pollo	https://youtu.be/06O5vtVQEOE	\r\n<h3> Preparación</h3>\r\n\r\n<ol>\r\n\t<li> Calentar 4 cuartos de agua en fuego alto. Cuando el agua empiece a hervir debvemos reducir el fuego a fuego bajo.ejercicio </li>\r\n\t<li> Agregar un paquete de fideos fettucini por persona, utilizar las instrucciones del empaque y al terminar se debe filtrar y poner a un lado </li>\r\n\t<li> En otro sarten se debe de poner a fuego medio y agregar aceite. </li>\r\n\t<li> Agregar pechuga en tiras y cocinarlo hasta que ambos lados se encuentren bien cocinado.</li>\r\n\t<li> Agregar chile verde al gusto para agregar sabor y color al plato. </li> \r\n\t<li> Hervir brocoli en agua por 5 minutos. </li>\r\n\t<li> Se puede agregar una chucharada de crema baja en calorías para mehjorrar su cremosidad </li> \r\n</ol>\r\n\r\n<h3> Plato </h3>\r\n\r\n<p>Servir con Fetuccini, Agregar carne de res y chile verde. En otro plato se puenden poner los brocolis si es encesario</p> \r\n\r\n\r\n	1	3	\N	\N	6
7	Pizza Proteica	https://youtu.be/06O5vtVQEOE	\r\n<h3> Preparación</h3>\r\n\r\n<ol>\r\n\t<li> Calentar una sarten en fuego medio para poder saltear cebollas con un poco de aceite</li>\r\n\t<li> Al llegar al pundo de caramelizarlas dejarlas en un lado</li>\r\n\t<li> En el horno tostar la tortilla baja en calorías de su preferencia por 3 minutos a temperatura media. </li>\r\n\t<li> Agregar todos los ingredientes en la tortilla, agregar rebanadas finas de queso</li>\r\n\t<li> Luego hornear nuevamente la tortilla por otros tres minutos en la misma temperatura</li> \r\n\t<li> (Opcional) se puede agregar cualquier topping preferido </li> \r\n</ol>\r\n\r\n<p><u>Nota: Valores nutriciales no incluyen toppings extras agregados.</u></p>\r\n\r\n \r\n\r\n\r\n	1	3	\N	\N	7
8	Buddin proteico de queso con chocolate	https://youtu.be/06O5vtVQEOE	\r\n<h3> Preparación</h3>\r\n\r\n<ol>\r\n\t<li>Poner 2 tazas de queso cottage, 4.5 tazas de leche de almednras, 2 cucharadas de gelatina, una cucharada de guar, Endulzante al gusto</li>\r\n\t<li> Agregar todos los ingredientes a una licuadora y licuiar por tres minutos a velocidad media-alta</li>\r\n\t<li> (Opcional)Agregar Polvo de batido de proteina basado en caseina de preferencia</li>\r\n\t<li> Colocar la mezcla en un deposito y colocarla en un regrigerador por 10 minutos </li>\r\n\t<li> Se puede agregar cualquier tipo de topping al gusto</li> \r\n</ol>\r\n\r\n<p><u>Nota: Valores nutriciales no incluyen toppings extras agregados.</u></p>\r\n\r\n \r\n\r\n\r\n	1	4	\N	\N	8
9	Buddin proteico de queso con chocolate	https://youtu.be/06O5vtVQEOE	\r\n<h3> Preparación</h3>\r\n\r\n<ol>\r\n\t<li>Poner 2 tazas de queso cottage, 4.5 tazas de leche de almednras, 2 cucharadas de gelatina, una cucharada de guar, Endulzante al gusto</li>\r\n\t<li> Agregar todos los ingredientes a una licuadora y licuiar por tres minutos a velocidad media-alta</li>\r\n\t<li> (Opcional)Agregar Polvo de batido de proteina basado en caseina de preferencia</li>\r\n\t<li> Colocar la mezcla en un deposito y colocarla en un regrigerador por 10 minutos </li>\r\n\t<li> Se puede agregar cualquier tipo de topping al gusto</li> \r\n</ol>\r\n\r\n<p><u>Nota: Valores nutriciales no incluyen toppings extras agregados.</u></p>\r\n\r\n \r\n\r\n\r\n	1	4	\N	\N	9
\.


--
-- TOC entry 3553 (class 0 OID 25246)
-- Dependencies: 240
-- Data for Name: rutina; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.rutina (id, nombre) FROM stdin;
\.


--
-- TOC entry 3555 (class 0 OID 25252)
-- Dependencies: 242
-- Data for Name: tablanutricional; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.tablanutricional (id, calorias, proteinas, carbohidratos, fibra, grasas) FROM stdin;
1	250	19	36	2.5	3
2	310	32	39	4	3
3	660	76	52	12	14
4	440	45	38	5	12
5	320	24	43	7	6
6	260	25	26	12	5
7	625	41	49	10	17
8	99	8	14	2	1
9	103	7	12	0	1
\.


--
-- TOC entry 3557 (class 0 OID 25258)
-- Dependencies: 244
-- Data for Name: tiempocomida; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.tiempocomida (id, nombre) FROM stdin;
1	DESAYUNO
2	ALMUERZO
3	MERIENDA
4	CENA
\.


--
-- TOC entry 3559 (class 0 OID 25264)
-- Dependencies: 246
-- Data for Name: tipo_rutina; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.tipo_rutina (id, nombre) FROM stdin;
1	BAJAR DE PESO
2	AUMENTAR MASA MUSCULAR
3	TONIFICAR
\.


--
-- TOC entry 3561 (class 0 OID 25270)
-- Dependencies: 248
-- Data for Name: user_role; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.user_role (username, role_code) FROM stdin;
00082318	ROLE_ADMIN
\.


--
-- TOC entry 3562 (class 0 OID 25273)
-- Dependencies: 249
-- Data for Name: userxdieta; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.userxdieta (id_planalimenticio, username, estado) FROM stdin;
\.


--
-- TOC entry 3563 (class 0 OID 25278)
-- Dependencies: 250
-- Data for Name: userxrutina; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.userxrutina (id_rutina, username, estado) FROM stdin;
\.


--
-- TOC entry 3564 (class 0 OID 25501)
-- Dependencies: 251
-- Data for Name: usuario_objetivo; Type: TABLE DATA; Schema: public; Owner: kenkougym
--

COPY public.usuario_objetivo (username, objetivo_id, activo) FROM stdin;
00082318	1	f
00082318	2	t
00082318	3	f
\.


--
-- TOC entry 3580 (class 0 OID 0)
-- Dependencies: 210
-- Name: categoriaingrediente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kenkougym
--

SELECT pg_catalog.setval('public.categoriaingrediente_id_seq', 28, true);


--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 212
-- Name: ejercicio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kenkougym
--

SELECT pg_catalog.setval('public.ejercicio_id_seq', 13, true);


--
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 214
-- Name: ejercicio_x_musculo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kenkougym
--

SELECT pg_catalog.setval('public.ejercicio_x_musculo_id_seq', 1, false);


--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 217
-- Name: estiloalimenticio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kenkougym
--

SELECT pg_catalog.setval('public.estiloalimenticio_id_seq', 3, true);


--
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 219
-- Name: fotografia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kenkougym
--

SELECT pg_catalog.setval('public.fotografia_id_seq', 9, true);


--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 222
-- Name: imagen_ejercicio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kenkougym
--

SELECT pg_catalog.setval('public.imagen_ejercicio_id_seq', 1, false);


--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 224
-- Name: ingrediente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kenkougym
--

SELECT pg_catalog.setval('public.ingrediente_id_seq', 24, true);


--
-- TOC entry 3587 (class 0 OID 0)
-- Dependencies: 229
-- Name: musculo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kenkougym
--

SELECT pg_catalog.setval('public.musculo_id_seq', 12, true);


--
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 231
-- Name: objetivo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kenkougym
--

SELECT pg_catalog.setval('public.objetivo_id_seq', 3, true);


--
-- TOC entry 3589 (class 0 OID 0)
-- Dependencies: 233
-- Name: planalimenticio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kenkougym
--

SELECT pg_catalog.setval('public.planalimenticio_id_seq', 1, true);


--
-- TOC entry 3590 (class 0 OID 0)
-- Dependencies: 237
-- Name: progreso_id_progreso_seq; Type: SEQUENCE SET; Schema: public; Owner: kenkougym
--

SELECT pg_catalog.setval('public.progreso_id_progreso_seq', 6, true);


--
-- TOC entry 3591 (class 0 OID 0)
-- Dependencies: 239
-- Name: receta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kenkougym
--

SELECT pg_catalog.setval('public.receta_id_seq', 9, true);


--
-- TOC entry 3592 (class 0 OID 0)
-- Dependencies: 241
-- Name: rutina_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kenkougym
--

SELECT pg_catalog.setval('public.rutina_id_seq', 1, false);


--
-- TOC entry 3593 (class 0 OID 0)
-- Dependencies: 243
-- Name: tablanutricional_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kenkougym
--

SELECT pg_catalog.setval('public.tablanutricional_id_seq', 9, true);


--
-- TOC entry 3594 (class 0 OID 0)
-- Dependencies: 245
-- Name: tiempocomida_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kenkougym
--

SELECT pg_catalog.setval('public.tiempocomida_id_seq', 4, true);


--
-- TOC entry 3595 (class 0 OID 0)
-- Dependencies: 247
-- Name: tipo_rutina_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kenkougym
--

SELECT pg_catalog.setval('public.tipo_rutina_id_seq', 3, true);


--
-- TOC entry 3300 (class 2606 OID 25284)
-- Name: categoriaingrediente categoriaingrediente_pk; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.categoriaingrediente
    ADD CONSTRAINT categoriaingrediente_pk PRIMARY KEY (id);


--
-- TOC entry 3302 (class 2606 OID 25286)
-- Name: ejercicio ejercicio_pkey; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.ejercicio
    ADD CONSTRAINT ejercicio_pkey PRIMARY KEY (id);


--
-- TOC entry 3304 (class 2606 OID 25288)
-- Name: ejercicio_x_musculo ejercicio_x_musculo_pkey; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.ejercicio_x_musculo
    ADD CONSTRAINT ejercicio_x_musculo_pkey PRIMARY KEY (id);


--
-- TOC entry 3306 (class 2606 OID 25290)
-- Name: ejercicio_x_rutina ejercicio_x_rutina_pkey; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.ejercicio_x_rutina
    ADD CONSTRAINT ejercicio_x_rutina_pkey PRIMARY KEY (idrutina, idemusculo);


--
-- TOC entry 3308 (class 2606 OID 25292)
-- Name: estiloalimenticio estiloalimenticio_pk; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.estiloalimenticio
    ADD CONSTRAINT estiloalimenticio_pk PRIMARY KEY (id);


--
-- TOC entry 3310 (class 2606 OID 25294)
-- Name: fotografia fotografia_pk; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.fotografia
    ADD CONSTRAINT fotografia_pk PRIMARY KEY (id);


--
-- TOC entry 3312 (class 2606 OID 25296)
-- Name: fotografiaxreceta fotografiaxreceta_pk; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.fotografiaxreceta
    ADD CONSTRAINT fotografiaxreceta_pk PRIMARY KEY (id_receta, id_fotografia);


--
-- TOC entry 3314 (class 2606 OID 25298)
-- Name: imagen_ejercicio imagen_ejercicio_pkey; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.imagen_ejercicio
    ADD CONSTRAINT imagen_ejercicio_pkey PRIMARY KEY (id);


--
-- TOC entry 3316 (class 2606 OID 25300)
-- Name: ingrediente ingrediente_pk; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.ingrediente
    ADD CONSTRAINT ingrediente_pk PRIMARY KEY (id);


--
-- TOC entry 3318 (class 2606 OID 25302)
-- Name: ingredientexreceta ingredientexreceta_pkey; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.ingredientexreceta
    ADD CONSTRAINT ingredientexreceta_pkey PRIMARY KEY (id_ingrediente, id_receta);


--
-- TOC entry 3320 (class 2606 OID 25304)
-- Name: kenkou_role kenkou_role_pkey; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.kenkou_role
    ADD CONSTRAINT kenkou_role_pkey PRIMARY KEY (role_code);


--
-- TOC entry 3322 (class 2606 OID 25306)
-- Name: kenkou_user kenkou_user_pkey; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.kenkou_user
    ADD CONSTRAINT kenkou_user_pkey PRIMARY KEY (username);


--
-- TOC entry 3324 (class 2606 OID 25308)
-- Name: musculo musculo_pkey; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.musculo
    ADD CONSTRAINT musculo_pkey PRIMARY KEY (id);


--
-- TOC entry 3326 (class 2606 OID 25310)
-- Name: objetivo objetivo_pk; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.objetivo
    ADD CONSTRAINT objetivo_pk PRIMARY KEY (id);


--
-- TOC entry 3328 (class 2606 OID 25312)
-- Name: planalimenticio planalimenticio_pk; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.planalimenticio
    ADD CONSTRAINT planalimenticio_pk PRIMARY KEY (id);


--
-- TOC entry 3330 (class 2606 OID 25314)
-- Name: planxreceta planxreceta_pkey; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.planxreceta
    ADD CONSTRAINT planxreceta_pkey PRIMARY KEY (id_receta, id_plan);


--
-- TOC entry 3332 (class 2606 OID 25531)
-- Name: progreso progreso_pk; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.progreso
    ADD CONSTRAINT progreso_pk PRIMARY KEY (id_progreso);


--
-- TOC entry 3334 (class 2606 OID 25316)
-- Name: receta receta_pkey; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.receta
    ADD CONSTRAINT receta_pkey PRIMARY KEY (id);


--
-- TOC entry 3336 (class 2606 OID 25318)
-- Name: rutina rutina_pkey; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.rutina
    ADD CONSTRAINT rutina_pkey PRIMARY KEY (id);


--
-- TOC entry 3338 (class 2606 OID 25320)
-- Name: tablanutricional tablanutricional_pkey; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.tablanutricional
    ADD CONSTRAINT tablanutricional_pkey PRIMARY KEY (id);


--
-- TOC entry 3340 (class 2606 OID 25322)
-- Name: tiempocomida tiempocomida_pkey; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.tiempocomida
    ADD CONSTRAINT tiempocomida_pkey PRIMARY KEY (id);


--
-- TOC entry 3342 (class 2606 OID 25324)
-- Name: tipo_rutina tipo_rutina_pkey; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.tipo_rutina
    ADD CONSTRAINT tipo_rutina_pkey PRIMARY KEY (id);


--
-- TOC entry 3344 (class 2606 OID 25326)
-- Name: user_role user_role_pkey; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (username, role_code);


--
-- TOC entry 3346 (class 2606 OID 25515)
-- Name: usuario_objetivo usuario_objetivo_pk; Type: CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.usuario_objetivo
    ADD CONSTRAINT usuario_objetivo_pk PRIMARY KEY (username, objetivo_id);


--
-- TOC entry 3377 (class 2606 OID 25327)
-- Name: userxdieta dietaxusername_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.userxdieta
    ADD CONSTRAINT dietaxusername_fkey FOREIGN KEY (username) REFERENCES public.kenkou_user(username);


--
-- TOC entry 3347 (class 2606 OID 25332)
-- Name: ejercicio_x_musculo ejercicio_x_musculo_ejercicio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.ejercicio_x_musculo
    ADD CONSTRAINT ejercicio_x_musculo_ejercicio_fkey FOREIGN KEY (idejercicio) REFERENCES public.ejercicio(id);


--
-- TOC entry 3348 (class 2606 OID 25337)
-- Name: ejercicio_x_musculo ejercicio_x_musculo_imagen_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.ejercicio_x_musculo
    ADD CONSTRAINT ejercicio_x_musculo_imagen_fkey FOREIGN KEY (idimagen) REFERENCES public.imagen_ejercicio(id);


--
-- TOC entry 3349 (class 2606 OID 25342)
-- Name: ejercicio_x_musculo ejercicio_x_musculo_musculo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.ejercicio_x_musculo
    ADD CONSTRAINT ejercicio_x_musculo_musculo_fkey FOREIGN KEY (idmusculo) REFERENCES public.musculo(id);


--
-- TOC entry 3351 (class 2606 OID 25472)
-- Name: ejercicio_x_musculo ejercicio_x_musculo_trutina_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.ejercicio_x_musculo
    ADD CONSTRAINT ejercicio_x_musculo_trutina_fkey FOREIGN KEY (idtrutina) REFERENCES public.tipo_rutina(id);


--
-- TOC entry 3352 (class 2606 OID 25347)
-- Name: ejercicio_x_rutina ejercicio_x_rutina_emusculo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.ejercicio_x_rutina
    ADD CONSTRAINT ejercicio_x_rutina_emusculo_fkey FOREIGN KEY (idemusculo) REFERENCES public.ejercicio_x_musculo(id);


--
-- TOC entry 3353 (class 2606 OID 25352)
-- Name: ejercicio_x_rutina ejercicio_x_rutina_rutina_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.ejercicio_x_rutina
    ADD CONSTRAINT ejercicio_x_rutina_rutina_fkey FOREIGN KEY (idrutina) REFERENCES public.rutina(id);


--
-- TOC entry 3350 (class 2606 OID 25357)
-- Name: ejercicio_x_musculo fk1f9a0imekuinhgvib42qc7r3i; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.ejercicio_x_musculo
    ADD CONSTRAINT fk1f9a0imekuinhgvib42qc7r3i FOREIGN KEY (id) REFERENCES public.ejercicio(id);


--
-- TOC entry 3364 (class 2606 OID 25362)
-- Name: planalimenticio_recetas fk2tcy4cdoyxhsxnrn45irt5tk9; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.planalimenticio_recetas
    ADD CONSTRAINT fk2tcy4cdoyxhsxnrn45irt5tk9 FOREIGN KEY (plan_alimenticio_id) REFERENCES public.planalimenticio(id);


--
-- TOC entry 3361 (class 2606 OID 25367)
-- Name: planalimenticio fk4d5tf1d9pa1fg0da4hics1hhu; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.planalimenticio
    ADD CONSTRAINT fk4d5tf1d9pa1fg0da4hics1hhu FOREIGN KEY (estilo_alimentacion_id) REFERENCES public.estiloalimenticio(id);


--
-- TOC entry 3357 (class 2606 OID 25372)
-- Name: ingrediente fk54o8bu6etdkc299lx2pl89n3; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.ingrediente
    ADD CONSTRAINT fk54o8bu6etdkc299lx2pl89n3 FOREIGN KEY (categoria_id) REFERENCES public.categoriaingrediente(id);


--
-- TOC entry 3365 (class 2606 OID 25377)
-- Name: planalimenticio_recetas fk6ib278gui26ricdraptreqx7w; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.planalimenticio_recetas
    ADD CONSTRAINT fk6ib278gui26ricdraptreqx7w FOREIGN KEY (recetas_id) REFERENCES public.receta(id);


--
-- TOC entry 3354 (class 2606 OID 25382)
-- Name: ejercicio_x_rutina fk9khj3yxac4vr5pfk9ex4altch; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.ejercicio_x_rutina
    ADD CONSTRAINT fk9khj3yxac4vr5pfk9ex4altch FOREIGN KEY (id) REFERENCES public.ejercicio_x_musculo(id);


--
-- TOC entry 3358 (class 2606 OID 25387)
-- Name: ingrediente fk_categoria; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.ingrediente
    ADD CONSTRAINT fk_categoria FOREIGN KEY (categoria) REFERENCES public.categoriaingrediente(id);


--
-- TOC entry 3362 (class 2606 OID 25392)
-- Name: planalimenticio fk_estilo_alimenticio_to_plan_alimenticio; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.planalimenticio
    ADD CONSTRAINT fk_estilo_alimenticio_to_plan_alimenticio FOREIGN KEY (estiloalimentacion) REFERENCES public.estiloalimenticio(id);


--
-- TOC entry 3355 (class 2606 OID 25397)
-- Name: fotografiaxreceta fk_fotografia_is_receta; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.fotografiaxreceta
    ADD CONSTRAINT fk_fotografia_is_receta FOREIGN KEY (id_fotografia) REFERENCES public.fotografia(id);


--
-- TOC entry 3359 (class 2606 OID 25402)
-- Name: ingredientexreceta fk_ingrediente_is_receta; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.ingredientexreceta
    ADD CONSTRAINT fk_ingrediente_is_receta FOREIGN KEY (id_ingrediente) REFERENCES public.ingrediente(id);


--
-- TOC entry 3363 (class 2606 OID 25407)
-- Name: planalimenticio fk_objetivo_to_plan_alimenticio; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.planalimenticio
    ADD CONSTRAINT fk_objetivo_to_plan_alimenticio FOREIGN KEY (objetivo) REFERENCES public.objetivo(id);


--
-- TOC entry 3369 (class 2606 OID 25412)
-- Name: receta fk_objetivo_to_receta; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.receta
    ADD CONSTRAINT fk_objetivo_to_receta FOREIGN KEY (id_objetivo) REFERENCES public.objetivo(id);


--
-- TOC entry 3366 (class 2606 OID 25417)
-- Name: planxreceta fk_plan_receta_is_plan_alimenticio; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.planxreceta
    ADD CONSTRAINT fk_plan_receta_is_plan_alimenticio FOREIGN KEY (id_plan) REFERENCES public.planalimenticio(id);


--
-- TOC entry 3356 (class 2606 OID 25422)
-- Name: fotografiaxreceta fk_receta_is_fotografia; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.fotografiaxreceta
    ADD CONSTRAINT fk_receta_is_fotografia FOREIGN KEY (id_receta) REFERENCES public.receta(id);


--
-- TOC entry 3360 (class 2606 OID 25427)
-- Name: ingredientexreceta fk_receta_is_ingrediente; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.ingredientexreceta
    ADD CONSTRAINT fk_receta_is_ingrediente FOREIGN KEY (id_receta) REFERENCES public.receta(id);


--
-- TOC entry 3370 (class 2606 OID 25432)
-- Name: receta fk_tiempo_comida_to_receta; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.receta
    ADD CONSTRAINT fk_tiempo_comida_to_receta FOREIGN KEY (tiempo_comida) REFERENCES public.tiempocomida(id);


--
-- TOC entry 3367 (class 2606 OID 25437)
-- Name: planxreceta fkce2ytwu8vatqvl6qnqo0vw75v; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.planxreceta
    ADD CONSTRAINT fkce2ytwu8vatqvl6qnqo0vw75v FOREIGN KEY (id_receta) REFERENCES public.receta(id);


--
-- TOC entry 3375 (class 2606 OID 25442)
-- Name: user_role fkew2qns4jcn609401m7csiqo6a; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fkew2qns4jcn609401m7csiqo6a FOREIGN KEY (role_code) REFERENCES public.kenkou_role(role_code) ON UPDATE CASCADE;


--
-- TOC entry 3376 (class 2606 OID 25447)
-- Name: user_role fkhey51w9yb0uuwffhvrofely4i; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fkhey51w9yb0uuwffhvrofely4i FOREIGN KEY (username) REFERENCES public.kenkou_user(username) ON UPDATE CASCADE;


--
-- TOC entry 3371 (class 2606 OID 25452)
-- Name: receta fkii8xflwupkxy2k1bwe676ayjk; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.receta
    ADD CONSTRAINT fkii8xflwupkxy2k1bwe676ayjk FOREIGN KEY (tiempo_comida_id) REFERENCES public.tiempocomida(id);


--
-- TOC entry 3372 (class 2606 OID 25457)
-- Name: receta fkkafyqolfk4dv35l8mm7homds4; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.receta
    ADD CONSTRAINT fkkafyqolfk4dv35l8mm7homds4 FOREIGN KEY (objetivo_id) REFERENCES public.objetivo(id);


--
-- TOC entry 3374 (class 2606 OID 25462)
-- Name: rutina fkleqmkne6ka04mt310ue5pj22o; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.rutina
    ADD CONSTRAINT fkleqmkne6ka04mt310ue5pj22o FOREIGN KEY (id) REFERENCES public.tipo_rutina(id);


--
-- TOC entry 3368 (class 2606 OID 25467)
-- Name: progreso progreso_fk; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.progreso
    ADD CONSTRAINT progreso_fk FOREIGN KEY (username) REFERENCES public.kenkou_user(username);


--
-- TOC entry 3379 (class 2606 OID 25477)
-- Name: userxrutina rutinaxusername_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.userxrutina
    ADD CONSTRAINT rutinaxusername_fkey FOREIGN KEY (username) REFERENCES public.kenkou_user(username);


--
-- TOC entry 3373 (class 2606 OID 25482)
-- Name: receta tablafk; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.receta
    ADD CONSTRAINT tablafk FOREIGN KEY (tablanutrionalid) REFERENCES public.tablanutricional(id);


--
-- TOC entry 3378 (class 2606 OID 25487)
-- Name: userxdieta usernamexdieta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.userxdieta
    ADD CONSTRAINT usernamexdieta_fkey FOREIGN KEY (id_planalimenticio) REFERENCES public.planalimenticio(id);


--
-- TOC entry 3380 (class 2606 OID 25492)
-- Name: userxrutina usernamexrutina_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.userxrutina
    ADD CONSTRAINT usernamexrutina_fkey FOREIGN KEY (id_rutina) REFERENCES public.rutina(id);


--
-- TOC entry 3381 (class 2606 OID 25516)
-- Name: usuario_objetivo usuario_objetivo_fk; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.usuario_objetivo
    ADD CONSTRAINT usuario_objetivo_fk FOREIGN KEY (username) REFERENCES public.kenkou_user(username);


--
-- TOC entry 3382 (class 2606 OID 25521)
-- Name: usuario_objetivo usuario_objetivo_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: kenkougym
--

ALTER TABLE ONLY public.usuario_objetivo
    ADD CONSTRAINT usuario_objetivo_fk_1 FOREIGN KEY (objetivo_id) REFERENCES public.objetivo(id);


--
-- TOC entry 3570 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA public TO kenkougym;


-- Completed on 2022-11-02 11:27:12

--
-- PostgreSQL database dump complete
--

