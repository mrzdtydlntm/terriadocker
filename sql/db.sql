--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: 3dtiles_data; Type: TABLE; Schema: public; Owner: jicamap
--

CREATE TABLE public."3dtiles_data" (
    id bigint NOT NULL,
    type character varying(10) NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    url character varying(255) NOT NULL,
    options jsonb NOT NULL,
    rectangle jsonb
);


ALTER TABLE public."3dtiles_data" OWNER TO jicamap;

--
-- Name: 3dtiles_data_id_seq; Type: SEQUENCE; Schema: public; Owner: jicamap
--

CREATE SEQUENCE public."3dtiles_data_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."3dtiles_data_id_seq" OWNER TO jicamap;

--
-- Name: 3dtiles_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jicamap
--

ALTER SEQUENCE public."3dtiles_data_id_seq" OWNED BY public."3dtiles_data".id;


--
-- Name: czml_data; Type: TABLE; Schema: public; Owner: jicamap
--

CREATE TABLE public.czml_data (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    url character varying(255) NOT NULL,
    type character varying(10) NOT NULL
);


ALTER TABLE public.czml_data OWNER TO jicamap;

--
-- Name: czml_data_id_seq; Type: SEQUENCE; Schema: public; Owner: jicamap
--

CREATE SEQUENCE public.czml_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.czml_data_id_seq OWNER TO jicamap;

--
-- Name: czml_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jicamap
--

ALTER SEQUENCE public.czml_data_id_seq OWNED BY public.czml_data.id;


--
-- Name: gltf_data; Type: TABLE; Schema: public; Owner: jicamap
--

CREATE TABLE public.gltf_data (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(10) NOT NULL,
    url character varying(255) NOT NULL,
    description text NOT NULL,
    origin jsonb NOT NULL,
    "upAxis" character varying(2) NOT NULL,
    "forwardAxis" character varying(2) NOT NULL,
    "originalFile" character varying(255) NOT NULL
);


ALTER TABLE public.gltf_data OWNER TO jicamap;

--
-- Name: gltf_data_id_seq; Type: SEQUENCE; Schema: public; Owner: jicamap
--

CREATE SEQUENCE public.gltf_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gltf_data_id_seq OWNER TO jicamap;

--
-- Name: gltf_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jicamap
--

ALTER SEQUENCE public.gltf_data_id_seq OWNED BY public.gltf_data.id;


--
-- Name: jsoncsv_data; Type: TABLE; Schema: public; Owner: jicamap
--

CREATE TABLE public.jsoncsv_data (
    id bigint NOT NULL,
    type character varying(15) NOT NULL,
    name character varying(255) NOT NULL,
    url character varying(255) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.jsoncsv_data OWNER TO jicamap;

--
-- Name: jsoncsv_data_id_seq; Type: SEQUENCE; Schema: public; Owner: jicamap
--

CREATE SEQUENCE public.jsoncsv_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jsoncsv_data_id_seq OWNER TO jicamap;

--
-- Name: jsoncsv_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jicamap
--

ALTER SEQUENCE public.jsoncsv_data_id_seq OWNED BY public.jsoncsv_data.id;


--
-- Name: kml_data; Type: TABLE; Schema: public; Owner: jicamap
--

CREATE TABLE public.kml_data (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    url character varying(255) NOT NULL,
    type character varying(12) NOT NULL
);


ALTER TABLE public.kml_data OWNER TO jicamap;

--
-- Name: kml_data_id_seq; Type: SEQUENCE; Schema: public; Owner: jicamap
--

CREATE SEQUENCE public.kml_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kml_data_id_seq OWNER TO jicamap;

--
-- Name: kml_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jicamap
--

ALTER SEQUENCE public.kml_data_id_seq OWNED BY public.kml_data.id;


--
-- Name: shp_data; Type: TABLE; Schema: public; Owner: jicamap
--

CREATE TABLE public.shp_data (
    id bigint NOT NULL,
    type character varying(10) NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    url character varying(255) NOT NULL
);


ALTER TABLE public.shp_data OWNER TO jicamap;

--
-- Name: shp_data_id_seq; Type: SEQUENCE; Schema: public; Owner: jicamap
--

CREATE SEQUENCE public.shp_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shp_data_id_seq OWNER TO jicamap;

--
-- Name: shp_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jicamap
--

ALTER SEQUENCE public.shp_data_id_seq OWNED BY public.shp_data.id;


--
-- Name: wms_data; Type: TABLE; Schema: public; Owner: jicamap
--

CREATE TABLE public.wms_data (
    id bigint NOT NULL,
    type character varying(15) NOT NULL,
    name character varying(255) NOT NULL,
    url character varying(255) NOT NULL
);


ALTER TABLE public.wms_data OWNER TO jicamap;

--
-- Name: wms_data_id_seq; Type: SEQUENCE; Schema: public; Owner: jicamap
--

CREATE SEQUENCE public.wms_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wms_data_id_seq OWNER TO jicamap;

--
-- Name: wms_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jicamap
--

ALTER SEQUENCE public.wms_data_id_seq OWNED BY public.wms_data.id;


--
-- Name: 3dtiles_data id; Type: DEFAULT; Schema: public; Owner: jicamap
--

ALTER TABLE ONLY public."3dtiles_data" ALTER COLUMN id SET DEFAULT nextval('public."3dtiles_data_id_seq"'::regclass);


--
-- Name: czml_data id; Type: DEFAULT; Schema: public; Owner: jicamap
--

ALTER TABLE ONLY public.czml_data ALTER COLUMN id SET DEFAULT nextval('public.czml_data_id_seq'::regclass);


--
-- Name: gltf_data id; Type: DEFAULT; Schema: public; Owner: jicamap
--

ALTER TABLE ONLY public.gltf_data ALTER COLUMN id SET DEFAULT nextval('public.gltf_data_id_seq'::regclass);


--
-- Name: jsoncsv_data id; Type: DEFAULT; Schema: public; Owner: jicamap
--

ALTER TABLE ONLY public.jsoncsv_data ALTER COLUMN id SET DEFAULT nextval('public.jsoncsv_data_id_seq'::regclass);


--
-- Name: kml_data id; Type: DEFAULT; Schema: public; Owner: jicamap
--

ALTER TABLE ONLY public.kml_data ALTER COLUMN id SET DEFAULT nextval('public.kml_data_id_seq'::regclass);


--
-- Name: shp_data id; Type: DEFAULT; Schema: public; Owner: jicamap
--

ALTER TABLE ONLY public.shp_data ALTER COLUMN id SET DEFAULT nextval('public.shp_data_id_seq'::regclass);


--
-- Name: wms_data id; Type: DEFAULT; Schema: public; Owner: jicamap
--

ALTER TABLE ONLY public.wms_data ALTER COLUMN id SET DEFAULT nextval('public.wms_data_id_seq'::regclass);


--
-- Data for Name: 3dtiles_data; Type: TABLE DATA; Schema: public; Owner: jicamap
--

COPY public."3dtiles_data" (id, type, name, description, url, options, rectangle) FROM stdin;
\.


--
-- Data for Name: czml_data; Type: TABLE DATA; Schema: public; Owner: jicamap
--

COPY public.czml_data (id, name, description, url, type) FROM stdin;
\.


--
-- Data for Name: gltf_data; Type: TABLE DATA; Schema: public; Owner: jicamap
--

COPY public.gltf_data (id, name, type, url, description, origin, "upAxis", "forwardAxis", "originalFile") FROM stdin;
\.


--
-- Data for Name: jsoncsv_data; Type: TABLE DATA; Schema: public; Owner: jicamap
--

COPY public.jsoncsv_data (id, type, name, url, description) FROM stdin;
\.


--
-- Data for Name: kml_data; Type: TABLE DATA; Schema: public; Owner: jicamap
--

COPY public.kml_data (id, name, description, url, type) FROM stdin;
\.


--
-- Data for Name: shp_data; Type: TABLE DATA; Schema: public; Owner: jicamap
--

COPY public.shp_data (id, type, name, description, url) FROM stdin;
\.


--
-- Data for Name: wms_data; Type: TABLE DATA; Schema: public; Owner: jicamap
--

COPY public.wms_data (id, type, name, url) FROM stdin;
\.


--
-- Name: 3dtiles_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jicamap
--

SELECT pg_catalog.setval('public."3dtiles_data_id_seq"', 1, false);


--
-- Name: czml_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jicamap
--

SELECT pg_catalog.setval('public.czml_data_id_seq', 1, false);


--
-- Name: gltf_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jicamap
--

SELECT pg_catalog.setval('public.gltf_data_id_seq', 1, false);


--
-- Name: jsoncsv_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jicamap
--

SELECT pg_catalog.setval('public.jsoncsv_data_id_seq', 1, false);


--
-- Name: kml_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jicamap
--

SELECT pg_catalog.setval('public.kml_data_id_seq', 1, false);


--
-- Name: shp_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jicamap
--

SELECT pg_catalog.setval('public.shp_data_id_seq', 1, false);


--
-- Name: wms_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jicamap
--

SELECT pg_catalog.setval('public.wms_data_id_seq', 1, false);


--
-- Name: 3dtiles_data 3dtiles_data_pkey; Type: CONSTRAINT; Schema: public; Owner: jicamap
--

ALTER TABLE ONLY public."3dtiles_data"
    ADD CONSTRAINT "3dtiles_data_pkey" PRIMARY KEY (id);


--
-- Name: czml_data czml_data_pkey; Type: CONSTRAINT; Schema: public; Owner: jicamap
--

ALTER TABLE ONLY public.czml_data
    ADD CONSTRAINT czml_data_pkey PRIMARY KEY (id);


--
-- Name: gltf_data gltf_data_pkey; Type: CONSTRAINT; Schema: public; Owner: jicamap
--

ALTER TABLE ONLY public.gltf_data
    ADD CONSTRAINT gltf_data_pkey PRIMARY KEY (id);


--
-- Name: jsoncsv_data jsoncsv_data_pkey; Type: CONSTRAINT; Schema: public; Owner: jicamap
--

ALTER TABLE ONLY public.jsoncsv_data
    ADD CONSTRAINT jsoncsv_data_pkey PRIMARY KEY (id);


--
-- Name: kml_data kml_data_pkey; Type: CONSTRAINT; Schema: public; Owner: jicamap
--

ALTER TABLE ONLY public.kml_data
    ADD CONSTRAINT kml_data_pkey PRIMARY KEY (id);


--
-- Name: shp_data shp_data_pkey; Type: CONSTRAINT; Schema: public; Owner: jicamap
--

ALTER TABLE ONLY public.shp_data
    ADD CONSTRAINT shp_data_pkey PRIMARY KEY (id);


--
-- Name: wms_data wms_data_pkey; Type: CONSTRAINT; Schema: public; Owner: jicamap
--

ALTER TABLE ONLY public.wms_data
    ADD CONSTRAINT wms_data_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

