--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    int_1 integer NOT NULL,
    int_2 integer,
    "numeric" numeric(2,1),
    text text,
    boolean_1 boolean,
    boolean_2 boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    int_1 integer NOT NULL,
    int_2 integer,
    "numeric" numeric(2,1),
    text text,
    boolean_1 boolean,
    boolean_2 boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    int_1 integer NOT NULL,
    int_2 integer,
    "numeric" numeric(2,1),
    text text,
    boolean_1 boolean,
    boolean_2 boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    int_1 integer NOT NULL,
    int_2 integer,
    "numeric" numeric(2,1),
    text text,
    boolean_1 boolean,
    boolean_2 boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: table5; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.table5 (
    table5_id integer NOT NULL,
    name character varying(20) NOT NULL,
    int_1 integer NOT NULL,
    int_2 integer,
    "numeric" numeric(2,1),
    text text,
    boolean_1 boolean,
    boolean_2 boolean
);


ALTER TABLE public.table5 OWNER TO freecodecamp;

--
-- Name: table5_table5_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.table5_table5_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table5_table5_id_seq OWNER TO freecodecamp;

--
-- Name: table5_table5_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.table5_table5_id_seq OWNED BY public.table5.table5_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: table5 table5_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5 ALTER COLUMN table5_id SET DEFAULT nextval('public.table5_table5_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy 1', 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxy 2', 2, 2, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxy 3', 3, 3, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy 4', 4, 4, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy 5', 5, 5, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy 6', 6, 6, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon_1_p1', 1, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'moon_2_p1', 2, 2, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, 'moon_3_p1', 3, 3, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (4, 'moon_4_p1', 4, 4, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (5, 'moon_5_p1', 5, 5, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (6, 'moon_6_p1', 6, 6, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (7, 'moon_7_p1', 7, 7, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (8, 'moon_8_p1', 8, 8, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (9, 'moon_9_p1', 9, 9, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (10, 'moon_10_p1', 10, 10, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (11, 'moon_11_p1', 11, 11, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (12, 'moon_12_p1', 12, 12, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (13, 'moon_13_p1', 13, 13, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (14, 'moon_14_p1', 14, 14, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (15, 'moon_15_p1', 15, 15, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (16, 'moon_16_p1', 16, 16, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (17, 'moon_17_p1', 17, 17, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (18, 'moon_18_p1', 18, 18, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (19, 'moon_19_p1', 19, 19, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (20, 'moon_20_p1', 20, 20, NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet_1_s1', 1, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'planet_2_s1', 2, 2, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'planet_3_s1', 3, 3, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'planet_4_s1', 4, 4, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'planet_5_s1', 5, 5, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'planet_6_s1', 6, 6, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'planet_7_s1', 7, 7, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'planet_8_s1', 8, 8, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'planet_9_s1', 9, 9, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'planet_10_s1', 10, 10, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'planet_11_s1', 11, 11, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'planet_12_s1', 12, 12, NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star_1_g1', 1, 1, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'star_2_g1', 2, 2, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'star_3_g1', 3, 3, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'star_4_g1', 4, 4, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'star_5_g1', 5, 5, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'star_6_g1', 6, 6, NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: table5; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.table5 VALUES (1, 'info_1', 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO public.table5 VALUES (2, 'info_2', 2, 2, NULL, NULL, NULL, NULL);
INSERT INTO public.table5 VALUES (3, 'info_3', 3, 3, NULL, NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: table5_table5_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.table5_table5_id_seq', 3, true);


--
-- Name: galaxy galaxy_int_2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_int_2_key UNIQUE (int_2);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_int_2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_int_2_key UNIQUE (int_2);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_int_2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_int_2_key UNIQUE (int_2);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_int_2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_int_2_key UNIQUE (int_2);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: table5 table5_int_2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5
    ADD CONSTRAINT table5_int_2_key UNIQUE (int_2);


--
-- Name: table5 table5_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5
    ADD CONSTRAINT table5_pkey PRIMARY KEY (table5_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

