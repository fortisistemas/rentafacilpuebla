--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: rs_property; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rs_property (
    id integer NOT NULL,
    area integer,
    balcony character varying(255),
    bathrooms real,
    bedrooms integer,
    cable_tv character varying(255),
    city_centre character varying(255),
    city_state_zip character varying(255),
    cluster character varying(255),
    description text,
    eco character varying(255),
    furniture character varying(255),
    garage character varying(255),
    garage_size integer,
    internet character varying(255),
    kitchen character varying(255),
    lat character varying(255),
    lift character varying(255),
    lng character varying(255),
    neighborghood character varying(255),
    patio character varying(255),
    price integer,
    roof_terrace character varying(255),
    security character varying(255),
    street character varying(255),
    swimming_pool character varying(255),
    terrace character varying(255),
    transaction character varying(255),
    type character varying(255)
);


ALTER TABLE public.rs_property OWNER TO postgres;

--
-- Name: rs_property_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rs_property_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rs_property_id_seq OWNER TO postgres;

--
-- Name: rs_property_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rs_property_id_seq OWNED BY public.rs_property.id;


--
-- Name: rs_property id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rs_property ALTER COLUMN id SET DEFAULT nextval('public.rs_property_id_seq'::regclass);


--
-- Data for Name: rs_property; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rs_property (id, area, balcony, bathrooms, bedrooms, cable_tv, city_centre, city_state_zip, cluster, description, eco, furniture, garage, garage_size, internet, kitchen, lat, lift, lng, neighborghood, patio, price, roof_terrace, security, street, swimming_pool, terrace, transaction, type) FROM stdin;
1	150	\N	3	3	on	\N	amozoc puebla 21453	\N	Casas nuevas económicas en Manzanillo colima Son una casa arriba otra abajo La zona es la salida a chiandiablo Fracc Lomas del carmen Para entrega inmediata Todos los Creditos Diferentes precios ya que puedes elegir con o sin piso Precios Con piso y con proteccio	\N	\N	on	2	on	on	19.043665804037275	\N	-98.09007667301637	\N	\N	15000	on	\N	pinos 14	\N	\N	En Renta	Departamento
2	120	on	3	4	\N	on	amozoc amozoc puebla 21453	on		\N	\N	on	3	\N	\N	19.0343215	\N	-98.035054	\N	\N	555000	\N	\N	gardenias 13	\N	\N	En Venta	Casa
3	160	on	2	2	on	on	amozoc puebla 21453	on	Con un diseño contemporáneo el desarrollo de 16 casas en condominio ofrece exclusividad y seguridad para quienes buscan lujo y discreción Casas de tres niveles con calefacción hidrónica (bajo piso) PB: área de uso familiar para eventos con salida a jardín P1 estancia, amplia cocina integral con acabados de lujo , sala y comedor con doble plafón y luz indirecta P2 tres recámaras con vestidor y baño propios P3 área de lavado, cuarto de servicio con baño completo Estacionamientos 4 (2 techados) 	\N	\N	\N	1	on	\N	19.0502124	\N	-98.05101689999998	\N	on	10500	\N	\N	privada 13 nte	on	on	En Renta	Casa
4	120	on	1	2	\N	\N		\N	**Sujeto a cambio sin previo aviso**\r\n\r\nDescripción De La Propiedad\r\n\r\n\r\n\r\nPrototipo: SERRA 3 niveles\r\n\r\nConstrucción 183.584\r\n\r\n\r\n\r\nPlanta baja\r\n\r\nSala\r\n\r\nComedor\r\n\r\nCocina\r\n	\N	on	on	1	\N	on	19.047708	\N	-98.03673600000002	\N	\N	8600	\N	\N	jardin 4 sur #12	\N	\N	En Renta	Casa
5	200	\N	2	3	on	\N	amozoc puebla 21453	on	**Precio sujeto a cambio sin previo aviso**\r\n\r\nDescripción De La Propiedad\r\n\r\n\r\n\r\nPrototipo: SERRA 2 niveles\r\n\r\n\r\n\r\nPlanta baja\r\n\r\nSala\r\n\r\nComedor\r\n\r\nCocina\r\n\r\nLavandería techada\r\n\r\nCochera doble techada\r\n\r\n2.5 baños\r\n\r\nCuarto multiusos\r\n\r\nPatio\r\n\r\nPasillo\r\n\r\nPlanta alta\r\n\r\n3 recámaras (la principal con baño y vestidor)\r\n\r\nEstancia familiar\r\n\r\n\r\n\r\nAlvento Residencial es un desarrollo privado, ubicado en la mejor zona de Apodaca. Cuenta con viviendas de 2 y 3 niveles con amplios espacios bien distribuidos, tiene un área social con casa club climatizada, terraza, asadores, hermosas áreas verdes, andadores, juegos infantiles y cancha de pasto sintético.\r\n\r\nAlvento Residencial es el lugar ideal para que tu familia viva con comodidad y tranquilidad\r\nAnuncio 194967378\r\n	\N	on	\N	2	\N	on	19.04752049999999	on	-98.03342479999998	\N	on	20000	\N	\N	zaragoza 15	\N	\N	En Renta	Casa
6	120	\N	3	3	\N	\N	amozoc puebla 21453	\N	l oriente de la capital del país, este desarrollo con acceso controlado ofrece amplias casas de 2, 3 y 4 recámaras, además de servicios educativos, áreas comerciales y espacios para el deporte y recreación de las familias. Amplia y cómoda casa que brinda la comodidad e independencia que demandan las familias. • Sala • Comedor • Cocina • 4 Recámaras con espacio para closet • 2 1/2 baños completos • Patio de servicio • Cajón de estacionamiento	\N	\N	\N	2	\N	\N	19.0449158	\N	-98.06944449999997	\N	\N	154015	\N	\N	calle 6 ote.12	\N	\N	En Renta	Casa
7	150	\N	2	3	on	on	amozoc puebla 21453	\N	Descripción Esta hermosa casa de 91 metros cuadrados de construcción cuenta con una sala-comedor, cocina, 3 recámaras, 2baños , patio de servicio y un lugar de estacionamiento. ¿Qué esperas para venir por la tuya? Contacto :(55) 8526-6873 Especificaciones 3 Recámaras 1 Lugar(es) de estacionamiento 91 m2 Área de Terreno 	\N	on	\N	3	on	on	19.0426196	\N	-98.08293789999999	\N	\N	30000	\N	\N	pirul 12 	on	\N	En Venta	Casa
8	90	on	2	2	\N	\N	amozoc puebla 21453	\N	VENTA DE CASAS EN ZONA RESIDENCIAL CHOLUL 7\r\n\r\nEs un desarrollo residencial de 7 casas que ofrece gran comodidad y plusvalía.\r\n\r\nSuperficie\r\n\r\nTerreno desde: 285.57 m2\r\nConstrucción: 139.08 m2\r\n\r\nDescripción \r\n	\N	\N	\N	1	\N	on	19.0421121	\N	-98.07356170000003	\N	on	6000	on	on	lirio 12	on	\N	En Renta	Departamento
9	100	\N	3	3	\N	\N	amozoc puebla 21453	\N	l oriente de la capital del país, este desarrollo con acceso controlado ofrece amplias casas de 2, 3 y 4 recámaras, además de servicios educativos, áreas comerciales y espacios para el deporte y recreación de las familias. Amplia y cómoda casa que brinda la comodidad e independencia que demandan las familias. • Sala • Comedor • Cocina • 4 Recámaras con espacio para closet • 2 1/2 baños completos • Patio de servicio • Cajón de estacionamiento	\N	on	\N	2	on	on	19.04316859999999	\N	-98.09481549999998	\N	\N	10000	on	on	calle 9 ote 12	\N	\N	En Renta	Departamento
10	120	on	2	3	\N	\N	amozoc puebla 21453	on	 **Precio sujeto a cambio sin previo aviso**\r\n\r\nDescripción De La Propiedad\r\n\r\n\r\n\r\nPrototipo: SERRA 2 niveles\r\n\r\n\r\n\r\nPlanta baja\r\n\r\nSala\r\n\r\nComedor\r\n\r\nCocina\r\n\r\nLavandería techada\r\n\r\nCochera doble techada\r\n\r\n2.5 baños\r\n\r\nCuarto multiusos\r\n\r\nPatio\r\n\r\nPasillo\r\n\r\nPlanta alta\r\n\r\n3 recámaras (la principal con baño y vestidor)\r\n\r\nEstancia familiar\r\n\r\n\r\n\r\nAlvento Residencial es un desarrollo privado, ubicado en la mejor zona de Apodaca. Cuenta con viviendas de 2 y 3 niveles con amplios espacios bien distribuidos, tiene un área social con casa club climatizada, terraza, asadores, hermosas áreas verdes, andadores, juegos infantiles y cancha de pasto sintético.\r\n\r\nAlvento Residencial es el lugar ideal para que tu familia viva con comodidad y tranquilidad\r\nAnuncio 194967378\r\n	\N	\N	on	2	on	on	19.0428225	\N	-98.09466259999999	\N	\N	15000	on	\N	calle 11 ote	\N	\N	En Renta	Departamento
11	95	\N	2	2	on	\N	amozoc puebla 21453	\N	Desarrollo Residencial, con excelentes ofertas!! Incluye cocina Equipada, Cisterna, Tanque de gas estacionario.\r\nLlámanos y agenda tu cita!!\r\nCasas de 2 Niveles, 3 Recamaras, 2 y ½ Baños\r\nEstacionamiento: 2\r\nConstrucción: 114.5 m2\r\nTerreno: 90m2 \r\n.........Descripción.........\r\nPLANTA BAJA: 	\N	on	on	0	on	on	19.0400473	\N	-98.09867689999999	\N	\N	7500	\N	\N	E.zapata12	on	\N	En Renta	Departamento
12	140	\N	2	3	on	\N	amozoc puebla 21453	on	l oriente de la capital del país, este desarrollo con acceso controlado ofrece amplias casas de 2, 3 y 4 recámaras, además de servicios educativos, áreas comerciales y espacios para el deporte y recreación de las familias. Amplia y cómoda casa que brinda la comodidad e independencia que demandan las familias. • Sala • Comedor • Cocina • 4 Recámaras con espacio para closet • 2 1/2 baños completos • Patio de servicio • Cajón de estacionamiento	\N	\N	\N	2	\N	on	19.0481414	on	-98.09172799999999	\N	\N	14000	on	on	calle 6 sur 12	\N	\N	En Renta	Departamento
13	150	on	3	3	\N	on	amozoc puebla 21453	\N	Descripción Esta hermosa casa de 91 metros cuadrados de construcción cuenta con una sala-comedor, cocina, 3 recámaras, 2baños , patio de servicio y un lugar de estacionamiento. ¿Qué esperas para venir por la tuya? Contacto :(55) 8526-6873 Especificaciones 3 Recámaras 1 Lugar(es) de estacionamiento 91 m2 Área de Terreno 	\N	\N	\N	2	on	\N	19.04104035455516	\N	-98.08822488836057	\N	\N	350000	\N	\N	nogal25	on	\N	En Renta	Departamento
14	90	on	1	2	on	\N	 Tepalcayuca, Amozoc puebla 21453	\N	\r\n    Recibidor\r\n    Baño completo: estando a desnivel de la casa.\r\n    Cocina: dentro de ella esta una puerta que te lleva al patio de servicio.\r\n    Sala y Comedor: tienen dos ventanales, y entre ambos se encuentra una pequeña jardinera.\r\n\r\nMi casa es un lugar muy agradable, de buen tamaño y cuenta con espacios adecuados.\r\n\r\nLa casa esta pintada en el exterior de color café con algunos detalles verdes, y el interior es crema con café.\r\n\r\nTiene una cochera con espacio para dos carros.\r\n\r\nPlanta Alta:\r\n\r\n    Cuenta con 3 habitaciones: una, siendo la recamara principal de color verde con crema, otra pintada de blanco con rojo y la ultima crema con rosa,\r\n    Baño completo\r\n    Cuarto de televisi	\N	on	on	1	on	on	19.0412867	\N	-98.03595310000003	\N	on	84120	\N	\N	calle 5 ote 	\N	\N	En Renta	Departamento
15	130	on	3	3	on	\N	amozo,tapeaca,puebla20143	on	 • TIPO: CASAS EN PRIVADA RESIDENCIAL, EN CONDOMINIO • ID: EB-BK4628 • ANTIGÜEDAD: A ESTRENAR • MEDIOS BAÑOS: 1 • LARGO DEL TERRENO: 22 M • FRENTE DEL TERRENO: 12 M 	\N	\N	\N	2	on	on	18.9747975	\N	-97.9013347	\N	on	100000	on	on	tepeaca 12	\N	\N	En Renta	Casa
16	120	on	2	2	on	on	amozoc puebla 21453	on	Bonitas Casas en Venta en Fraccionamiento Residencial de 10 Casas con extraordinario acceso por el Periférico Ecológico, a 10 Minutos de la Zona de Angelopolis y con Centros Comerciales y de Servicios a la mano. Fraccionamiento BEQAA, un lugar exclusivo para tu Familia y una inversión inmejorable. Residencial BEQAA es una propuesta inmobiliaria que combina el estilo moderno y práctico, un desarrollo horizontal de 10 casas en conjunto, caseta de vigilancia, jardín de juegos y áreas verdes que crean un ambiente confortable y familiar. 	\N	on	on	1	\N	on	19.0396236	\N	-98.09878509999999	\N	on	95000	on	\N	del capulin 10	\N	\N	En Renta	Departamento
17	120	\N	3	3	on	\N	amozoc puebla 21453	\N	Privada Campocielo, un desarrollo habitacional cuenta con vigilancia, amplias avenidas, áreas verdes, jardines con juegos infantiles, áreas de esparcimiento. Ubicado a 2 cuadras de carretera a progreso a la altura de temozon, creca de las principales universidades como UVM, Marista, Mayab. Centros comerciales como The Harbor, Plaza Galerías, Chedraui Select, Costco. Comodo enganche 25% pagar 50,000.00 y el resto del enganche se divide en 18 meses y el saldo contra entrega en julio 2020. Cuentan con agua potable Descripción: 	\N	on	on	2	on	on	19.03983334057148	\N	-98.09802004655762	\N	on	15000	on	\N	capulin12	\N	\N	En Renta	Departamento
18	140	\N	2	3	\N	\N	casa blanca,ouebla	\N		\N	\N	\N	2	\N	\N	19.0404318	\N	-98.12097819999997	\N	\N	14000	\N	\N	m.hidalgo15	\N	\N	En Renta	Casa
19	120	on	3	3	on	on	casa blanca,puebla	on	VALLE DE LAS FUENTES ES UN DESARROLLO EXCLUSIVO, DONDE NUESTROS CLIENTES ENCONTRARÁN TODAS LA COMODIDADES NO PIERDAS LA OPORTUNIDAD DE CONOCERLO!! SOMOS LA MEJOR OPCIÓN DE LA ZONA. 	\N	on	on	2	\N	on	19.0404318	\N	-98.12097819999997	\N	on	14000	\N	\N	m.hidalgo15	\N	\N	En Renta	Departamento
20	150	\N	3	3	on	on	 Casa Blanca, Puebla56314	\N	Al oriente de la capital del país, este desarrollo con acceso controlado ofrece amplias casas de 2, 3 y 4 recámaras, además de servicios educativos, áreas comerciales y espacios para el deporte y recreación de las familias. Amplia y cómoda casa que brinda la comodidad e independencia que demandan las familias. • Sala • Comedor • Cocina • 4 Recámaras con espacio para closet  • 2 1/2 baños completos •  Patio de servicio • Cajón de estacionamiento\r\n	\N	on	\N	3	\N	on	19.0432722	\N	-98.1123675	\N	on	450000	on	on	juan de la  barrera 19	\N	\N	En Venta	Casa
21	100	\N	2	2	on	on	Casa Blanca, Puebla56314	\N	Privada Campocielo, un desarrollo habitacional cuenta con vigilancia, amplias avenidas, áreas verdes, jardines con juegos infantiles, áreas de esparcimiento. Ubicado a 2 cuadras de carretera a progreso a la altura de temozon, creca de las principales universidades como UVM, Marista, Mayab. Centros comerciales como The Harbor, Plaza Galerías, Chedraui Select, Costco. Comodo enganche 25% pagar 50,000.00 y el resto del enganche se divide en 18 meses y el saldo contra entrega en julio 2020. Cuentan con agua potable Descripción: 	\N	\N	on	1	\N	on	19.0432886	\N	-98.10829369999999	\N	on	8500	on	\N	reforma 13	\N	\N	En Renta	Departamento
\.


--
-- Name: rs_property_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rs_property_id_seq', 21, true);


--
-- Name: rs_property rs_property_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rs_property
    ADD CONSTRAINT rs_property_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

