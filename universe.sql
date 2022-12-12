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
    size integer,
    rad integer,
    radius integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    size integer,
    rad integer,
    radius integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: multiverse; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.multiverse (
    multiverse_id integer NOT NULL,
    name character varying(20) NOT NULL,
    size integer,
    radius integer,
    rad integer
);


ALTER TABLE public.multiverse OWNER TO freecodecamp;

--
-- Name: multiverse_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.multiverse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.multiverse_id_seq OWNER TO freecodecamp;

--
-- Name: multiverse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.multiverse_id_seq OWNED BY public.multiverse.multiverse_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    size integer,
    distance numeric(6,1),
    description text,
    visible boolean,
    atm_pressure integer,
    dark_matter_majority boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer,
    size integer,
    radius integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: multiverse multiverse_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.multiverse ALTER COLUMN multiverse_id SET DEFAULT nextval('public.multiverse_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'ae', 9, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'aa', 4, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'ad', 9, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'aj', 8, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'awt', 91, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'aet', 9, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'aat', 4, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'adt', 9, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'ajt', 8, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'awtt', 91, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'e', 9, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'a', 4, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'd', 9, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'j', 8, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'w', 91, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'ee', 9, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'ae', 4, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'de', 9, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'je', 8, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'we', 91, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'eew', 9, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'aew', 4, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'dew', 9, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'jew', 8, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'wew', 91, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'ew', 9, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'aw', 4, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'dw', 9, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'jw', 8, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'ww', 91, NULL, NULL);


--
-- Data for Name: multiverse; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.multiverse VALUES (1, 'aet', 9, NULL, NULL);
INSERT INTO public.multiverse VALUES (2, 'aat', 4, NULL, NULL);
INSERT INTO public.multiverse VALUES (3, 'adt', 9, NULL, NULL);
INSERT INTO public.multiverse VALUES (4, 'ajt', 8, NULL, NULL);
INSERT INTO public.multiverse VALUES (5, 'awtt', 91, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'ew', 9, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'aw', 4, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'dw', 9, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'jw', 8, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'ww', 91, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'ewq', 9, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'awq', 4, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'dwq', 9, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'jwq', 8, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'wwq', 91, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'eq', 9, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'aq', 4, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'dq', 9, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'jq', 8, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'wq', 91, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'eq', NULL, 9, NULL);
INSERT INTO public.star VALUES (2, 'aq', NULL, 4, NULL);
INSERT INTO public.star VALUES (3, 'dq', NULL, 9, NULL);
INSERT INTO public.star VALUES (4, 'jq', NULL, 8, NULL);
INSERT INTO public.star VALUES (5, 'wq', NULL, 91, NULL);
INSERT INTO public.star VALUES (6, 'e', NULL, 9, NULL);
INSERT INTO public.star VALUES (7, 'a', NULL, 4, NULL);
INSERT INTO public.star VALUES (8, 'd', NULL, 9, NULL);
INSERT INTO public.star VALUES (9, 'j', NULL, 8, NULL);
INSERT INTO public.star VALUES (10, 'w', NULL, 91, NULL);
INSERT INTO public.star VALUES (11, 'ae', NULL, 9, NULL);
INSERT INTO public.star VALUES (12, 'aa', NULL, 4, NULL);
INSERT INTO public.star VALUES (13, 'ad', NULL, 9, NULL);
INSERT INTO public.star VALUES (14, 'aj', NULL, 8, NULL);
INSERT INTO public.star VALUES (15, 'aw', NULL, 91, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 10, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 22, true);


--
-- Name: multiverse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.multiverse_id_seq', 6, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 15, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 16, true);


--
-- Name: planet const_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT const_unique_name UNIQUE (name);


--
-- Name: galaxy const_unique_name_g; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT const_unique_name_g UNIQUE (name);


--
-- Name: multiverse const_unique_name_ml; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.multiverse
    ADD CONSTRAINT const_unique_name_ml UNIQUE (name);


--
-- Name: moon const_unique_name_mo; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT const_unique_name_mo UNIQUE (name);


--
-- Name: star const_unique_name_s; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT const_unique_name_s UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: multiverse multiverse_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.multiverse
    ADD CONSTRAINT multiverse_pkey PRIMARY KEY (multiverse_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet planet_revolves_around_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_revolves_around_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_residing_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_residing_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

