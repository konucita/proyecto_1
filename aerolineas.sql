--
-- PostgreSQL database dump
--

-- Dumped from database version 17.3
-- Dumped by pg_dump version 17.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: aerolineas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aerolineas (
    id_aerolinea integer NOT NULL,
    nombre character varying(100) NOT NULL,
    pais_origen character varying(100) NOT NULL,
    rating integer NOT NULL,
    activa boolean NOT NULL
);


ALTER TABLE public.aerolineas OWNER TO postgres;

--
-- Name: aerolineas_id_aerolinea_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.aerolineas_id_aerolinea_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.aerolineas_id_aerolinea_seq OWNER TO postgres;

--
-- Name: aerolineas_id_aerolinea_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.aerolineas_id_aerolinea_seq OWNED BY public.aerolineas.id_aerolinea;


--
-- Name: aeropuertos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aeropuertos (
    id_aeropuerto integer NOT NULL,
    nombre character varying(100) NOT NULL,
    pais character varying(100) NOT NULL,
    ciudad character varying(100) NOT NULL
);


ALTER TABLE public.aeropuertos OWNER TO postgres;

--
-- Name: aeropuertos_id_aeropuerto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.aeropuertos_id_aeropuerto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.aeropuertos_id_aeropuerto_seq OWNER TO postgres;

--
-- Name: aeropuertos_id_aeropuerto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.aeropuertos_id_aeropuerto_seq OWNED BY public.aeropuertos.id_aeropuerto;


--
-- Name: aviones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aviones (
    id_avion integer NOT NULL,
    id_modelo integer NOT NULL,
    id_aerolinea integer NOT NULL,
    matricula character varying(15) NOT NULL,
    fecha_compra timestamp without time zone,
    estado character varying(15) NOT NULL
);


ALTER TABLE public.aviones OWNER TO postgres;

--
-- Name: aviones_id_avion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.aviones_id_avion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.aviones_id_avion_seq OWNER TO postgres;

--
-- Name: aviones_id_avion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.aviones_id_avion_seq OWNED BY public.aviones.id_avion;


--
-- Name: mascotas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mascotas (
    id_mascota integer NOT NULL,
    id_pasajero integer NOT NULL,
    id_reserva integer NOT NULL,
    nombre character varying(100) NOT NULL,
    raza character varying(100) NOT NULL,
    tipo character varying(25) NOT NULL,
    peso numeric(5,2) NOT NULL,
    fecha_registro timestamp without time zone NOT NULL
);


ALTER TABLE public.mascotas OWNER TO postgres;

--
-- Name: mascotas_id_mascota_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mascotas_id_mascota_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mascotas_id_mascota_seq OWNER TO postgres;

--
-- Name: mascotas_id_mascota_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mascotas_id_mascota_seq OWNED BY public.mascotas.id_mascota;


--
-- Name: modelos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.modelos (
    id_modelo integer NOT NULL,
    nombre character varying(100) NOT NULL,
    proveedor character varying(100) NOT NULL,
    capacidad_personas integer NOT NULL,
    capacidad_kg numeric(10,2) NOT NULL,
    combustible_ltrs numeric(8,2) NOT NULL,
    tipo character varying(50) NOT NULL,
    anio_lanzamiento date NOT NULL
);


ALTER TABLE public.modelos OWNER TO postgres;

--
-- Name: modelos_id_modelo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.modelos_id_modelo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.modelos_id_modelo_seq OWNER TO postgres;

--
-- Name: modelos_id_modelo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.modelos_id_modelo_seq OWNED BY public.modelos.id_modelo;


--
-- Name: pasajeros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pasajeros (
    id_pasajero integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    email character varying(255) NOT NULL,
    telefono character varying(15) NOT NULL,
    nacionalidad character varying(50) NOT NULL,
    fecha_registro timestamp without time zone NOT NULL
);


ALTER TABLE public.pasajeros OWNER TO postgres;

--
-- Name: pasajeros_id_pasajero_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pasajeros_id_pasajero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pasajeros_id_pasajero_seq OWNER TO postgres;

--
-- Name: pasajeros_id_pasajero_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pasajeros_id_pasajero_seq OWNED BY public.pasajeros.id_pasajero;


--
-- Name: reservas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reservas (
    id_reserva integer NOT NULL,
    id_pasajero integer NOT NULL,
    id_vuelo integer NOT NULL,
    cancelado boolean NOT NULL,
    fecha_reserva timestamp without time zone NOT NULL
);


ALTER TABLE public.reservas OWNER TO postgres;

--
-- Name: reservas_id_reserva_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reservas_id_reserva_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reservas_id_reserva_seq OWNER TO postgres;

--
-- Name: reservas_id_reserva_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reservas_id_reserva_seq OWNED BY public.reservas.id_reserva;


--
-- Name: rutas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rutas (
    id_ruta integer NOT NULL,
    aeropuerto_origen integer NOT NULL,
    aeropuerto_destino integer NOT NULL,
    descripcion text NOT NULL,
    distancia_km numeric(10,2) NOT NULL,
    tiempo_min integer NOT NULL
);


ALTER TABLE public.rutas OWNER TO postgres;

--
-- Name: rutas_id_ruta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rutas_id_ruta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rutas_id_ruta_seq OWNER TO postgres;

--
-- Name: rutas_id_ruta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rutas_id_ruta_seq OWNED BY public.rutas.id_ruta;


--
-- Name: tripulacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tripulacion (
    id_tripulacion integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    email character varying(255) NOT NULL,
    telefono character varying(15) NOT NULL,
    cargo character varying(50) NOT NULL,
    fecha_registro timestamp without time zone NOT NULL
);


ALTER TABLE public.tripulacion OWNER TO postgres;

--
-- Name: tripulacion_id_tripulacion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tripulacion_id_tripulacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tripulacion_id_tripulacion_seq OWNER TO postgres;

--
-- Name: tripulacion_id_tripulacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tripulacion_id_tripulacion_seq OWNED BY public.tripulacion.id_tripulacion;


--
-- Name: vuelos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vuelos (
    id_vuelo integer NOT NULL,
    id_aerolinea integer NOT NULL,
    id_avion integer NOT NULL,
    id_tripulacion integer NOT NULL,
    id_ruta integer NOT NULL,
    fecha_hora_salida timestamp without time zone NOT NULL,
    fecha_hora_llegada timestamp without time zone NOT NULL
);


ALTER TABLE public.vuelos OWNER TO postgres;

--
-- Name: vuelos_id_vuelo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vuelos_id_vuelo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vuelos_id_vuelo_seq OWNER TO postgres;

--
-- Name: vuelos_id_vuelo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vuelos_id_vuelo_seq OWNED BY public.vuelos.id_vuelo;


--
-- Name: aerolineas id_aerolinea; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aerolineas ALTER COLUMN id_aerolinea SET DEFAULT nextval('public.aerolineas_id_aerolinea_seq'::regclass);


--
-- Name: aeropuertos id_aeropuerto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aeropuertos ALTER COLUMN id_aeropuerto SET DEFAULT nextval('public.aeropuertos_id_aeropuerto_seq'::regclass);


--
-- Name: aviones id_avion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aviones ALTER COLUMN id_avion SET DEFAULT nextval('public.aviones_id_avion_seq'::regclass);


--
-- Name: mascotas id_mascota; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mascotas ALTER COLUMN id_mascota SET DEFAULT nextval('public.mascotas_id_mascota_seq'::regclass);


--
-- Name: modelos id_modelo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.modelos ALTER COLUMN id_modelo SET DEFAULT nextval('public.modelos_id_modelo_seq'::regclass);


--
-- Name: pasajeros id_pasajero; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasajeros ALTER COLUMN id_pasajero SET DEFAULT nextval('public.pasajeros_id_pasajero_seq'::regclass);


--
-- Name: reservas id_reserva; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservas ALTER COLUMN id_reserva SET DEFAULT nextval('public.reservas_id_reserva_seq'::regclass);


--
-- Name: rutas id_ruta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rutas ALTER COLUMN id_ruta SET DEFAULT nextval('public.rutas_id_ruta_seq'::regclass);


--
-- Name: tripulacion id_tripulacion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tripulacion ALTER COLUMN id_tripulacion SET DEFAULT nextval('public.tripulacion_id_tripulacion_seq'::regclass);


--
-- Name: vuelos id_vuelo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vuelos ALTER COLUMN id_vuelo SET DEFAULT nextval('public.vuelos_id_vuelo_seq'::regclass);


--
-- Data for Name: aerolineas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aerolineas (id_aerolinea, nombre, pais_origen, rating, activa) FROM stdin;
5	canelita	venezuela	5	t
1	alba	venezuela	5	t
\.


--
-- Data for Name: aeropuertos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aeropuertos (id_aeropuerto, nombre, pais, ciudad) FROM stdin;
\.


--
-- Data for Name: aviones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aviones (id_avion, id_modelo, id_aerolinea, matricula, fecha_compra, estado) FROM stdin;
\.


--
-- Data for Name: mascotas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mascotas (id_mascota, id_pasajero, id_reserva, nombre, raza, tipo, peso, fecha_registro) FROM stdin;
\.


--
-- Data for Name: modelos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.modelos (id_modelo, nombre, proveedor, capacidad_personas, capacidad_kg, combustible_ltrs, tipo, anio_lanzamiento) FROM stdin;
\.


--
-- Data for Name: pasajeros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pasajeros (id_pasajero, nombre, apellido, email, telefono, nacionalidad, fecha_registro) FROM stdin;
\.


--
-- Data for Name: reservas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reservas (id_reserva, id_pasajero, id_vuelo, cancelado, fecha_reserva) FROM stdin;
\.


--
-- Data for Name: rutas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rutas (id_ruta, aeropuerto_origen, aeropuerto_destino, descripcion, distancia_km, tiempo_min) FROM stdin;
\.


--
-- Data for Name: tripulacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tripulacion (id_tripulacion, nombre, apellido, email, telefono, cargo, fecha_registro) FROM stdin;
\.


--
-- Data for Name: vuelos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vuelos (id_vuelo, id_aerolinea, id_avion, id_tripulacion, id_ruta, fecha_hora_salida, fecha_hora_llegada) FROM stdin;
\.


--
-- Name: aerolineas_id_aerolinea_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.aerolineas_id_aerolinea_seq', 5, true);


--
-- Name: aeropuertos_id_aeropuerto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.aeropuertos_id_aeropuerto_seq', 1, false);


--
-- Name: aviones_id_avion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.aviones_id_avion_seq', 1, false);


--
-- Name: mascotas_id_mascota_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mascotas_id_mascota_seq', 1, false);


--
-- Name: modelos_id_modelo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.modelos_id_modelo_seq', 1, false);


--
-- Name: pasajeros_id_pasajero_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pasajeros_id_pasajero_seq', 1, false);


--
-- Name: reservas_id_reserva_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reservas_id_reserva_seq', 1, false);


--
-- Name: rutas_id_ruta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rutas_id_ruta_seq', 1, false);


--
-- Name: tripulacion_id_tripulacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tripulacion_id_tripulacion_seq', 1, false);


--
-- Name: vuelos_id_vuelo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vuelos_id_vuelo_seq', 1, false);


--
-- Name: aerolineas aerolineas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aerolineas
    ADD CONSTRAINT aerolineas_pkey PRIMARY KEY (id_aerolinea);


--
-- Name: aeropuertos aeropuertos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aeropuertos
    ADD CONSTRAINT aeropuertos_pkey PRIMARY KEY (id_aeropuerto);


--
-- Name: aviones aviones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aviones
    ADD CONSTRAINT aviones_pkey PRIMARY KEY (id_avion);


--
-- Name: mascotas mascotas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mascotas
    ADD CONSTRAINT mascotas_pkey PRIMARY KEY (id_mascota);


--
-- Name: modelos modelos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.modelos
    ADD CONSTRAINT modelos_pkey PRIMARY KEY (id_modelo);


--
-- Name: pasajeros pasajeros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasajeros
    ADD CONSTRAINT pasajeros_pkey PRIMARY KEY (id_pasajero);


--
-- Name: reservas reservas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservas
    ADD CONSTRAINT reservas_pkey PRIMARY KEY (id_reserva);


--
-- Name: rutas rutas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rutas
    ADD CONSTRAINT rutas_pkey PRIMARY KEY (id_ruta);


--
-- Name: tripulacion tripulacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tripulacion
    ADD CONSTRAINT tripulacion_pkey PRIMARY KEY (id_tripulacion);


--
-- Name: vuelos vuelos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vuelos
    ADD CONSTRAINT vuelos_pkey PRIMARY KEY (id_vuelo);


--
-- Name: ix_aerolineas_id_aerolinea; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_aerolineas_id_aerolinea ON public.aerolineas USING btree (id_aerolinea);


--
-- Name: ix_aeropuertos_id_aeropuerto; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_aeropuertos_id_aeropuerto ON public.aeropuertos USING btree (id_aeropuerto);


--
-- Name: ix_aviones_id_avion; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_aviones_id_avion ON public.aviones USING btree (id_avion);


--
-- Name: ix_mascotas_id_mascota; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_mascotas_id_mascota ON public.mascotas USING btree (id_mascota);


--
-- Name: ix_modelos_id_modelo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_modelos_id_modelo ON public.modelos USING btree (id_modelo);


--
-- Name: ix_pasajeros_id_pasajero; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_pasajeros_id_pasajero ON public.pasajeros USING btree (id_pasajero);


--
-- Name: ix_reservas_id_reserva; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_reservas_id_reserva ON public.reservas USING btree (id_reserva);


--
-- Name: ix_rutas_id_ruta; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_rutas_id_ruta ON public.rutas USING btree (id_ruta);


--
-- Name: ix_tripulacion_id_tripulacion; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_tripulacion_id_tripulacion ON public.tripulacion USING btree (id_tripulacion);


--
-- Name: ix_vuelos_id_vuelo; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_vuelos_id_vuelo ON public.vuelos USING btree (id_vuelo);


--
-- Name: aviones aviones_id_aerolinea_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aviones
    ADD CONSTRAINT aviones_id_aerolinea_fkey FOREIGN KEY (id_aerolinea) REFERENCES public.aerolineas(id_aerolinea);


--
-- Name: aviones aviones_id_modelo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aviones
    ADD CONSTRAINT aviones_id_modelo_fkey FOREIGN KEY (id_modelo) REFERENCES public.modelos(id_modelo);


--
-- Name: mascotas mascotas_id_pasajero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mascotas
    ADD CONSTRAINT mascotas_id_pasajero_fkey FOREIGN KEY (id_pasajero) REFERENCES public.pasajeros(id_pasajero);


--
-- Name: mascotas mascotas_id_reserva_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mascotas
    ADD CONSTRAINT mascotas_id_reserva_fkey FOREIGN KEY (id_reserva) REFERENCES public.reservas(id_reserva);


--
-- Name: reservas reservas_id_pasajero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservas
    ADD CONSTRAINT reservas_id_pasajero_fkey FOREIGN KEY (id_pasajero) REFERENCES public.pasajeros(id_pasajero);


--
-- Name: reservas reservas_id_vuelo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservas
    ADD CONSTRAINT reservas_id_vuelo_fkey FOREIGN KEY (id_vuelo) REFERENCES public.vuelos(id_vuelo);


--
-- Name: rutas rutas_aeropuerto_destino_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rutas
    ADD CONSTRAINT rutas_aeropuerto_destino_fkey FOREIGN KEY (aeropuerto_destino) REFERENCES public.aeropuertos(id_aeropuerto);


--
-- Name: rutas rutas_aeropuerto_origen_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rutas
    ADD CONSTRAINT rutas_aeropuerto_origen_fkey FOREIGN KEY (aeropuerto_origen) REFERENCES public.aeropuertos(id_aeropuerto);


--
-- Name: vuelos vuelos_id_aerolinea_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vuelos
    ADD CONSTRAINT vuelos_id_aerolinea_fkey FOREIGN KEY (id_aerolinea) REFERENCES public.aerolineas(id_aerolinea);


--
-- Name: vuelos vuelos_id_avion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vuelos
    ADD CONSTRAINT vuelos_id_avion_fkey FOREIGN KEY (id_avion) REFERENCES public.aviones(id_avion);


--
-- Name: vuelos vuelos_id_ruta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vuelos
    ADD CONSTRAINT vuelos_id_ruta_fkey FOREIGN KEY (id_ruta) REFERENCES public.rutas(id_ruta);


--
-- Name: vuelos vuelos_id_tripulacion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vuelos
    ADD CONSTRAINT vuelos_id_tripulacion_fkey FOREIGN KEY (id_tripulacion) REFERENCES public.tripulacion(id_tripulacion);


--
-- PostgreSQL database dump complete
--

