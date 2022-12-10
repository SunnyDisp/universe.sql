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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    meaning character varying(30) NOT NULL
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    visibility boolean NOT NULL,
    constellation_id integer
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
    name character varying(30) NOT NULL,
    year_discovered integer,
    discovered_by character varying(30),
    orbit_distance integer,
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
    name character varying(30) NOT NULL,
    radius_miles numeric,
    count_moons integer,
    has_life boolean NOT NULL,
    star_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    bayern_designation character varying(30),
    designation character varying(30),
    galaxy_id integer NOT NULL
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (2, 'Andromeda', 'Princess of Ethiopia');
INSERT INTO public.constellation VALUES (3, 'Cassiopeia', 'Cassiopeia');
INSERT INTO public.constellation VALUES (4, 'Centaurus', 'The Centaur');
INSERT INTO public.constellation VALUES (5, 'Coma Berenices', 'Berenices Hair');
INSERT INTO public.constellation VALUES (6, 'Orion', 'Orion');
INSERT INTO public.constellation VALUES (7, 'Sagittarius', 'The Archer');
INSERT INTO public.constellation VALUES (8, 'Scorpius', 'The Scorpion');
INSERT INTO public.constellation VALUES (9, 'Sextans', 'Sextant');
INSERT INTO public.constellation VALUES (10, 'Ursa Major', 'The Great Bear/Dipper');
INSERT INTO public.constellation VALUES (11, 'Ursa Minor', 'The Little Bear/Dipper');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'In mythology, Andromeda is the daughter of the kings of Ethiopia and is said to be more beautiful than the Nereids. She becomes queen of Greece when she married Perseus.', true, 2);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'Our own galaxy. It is said to look like a band of light.', true, 7);
INSERT INTO public.galaxy VALUES (3, 'Black Eye', 'It looks like an eye with a dark stripe underneath.', true, 5);
INSERT INTO public.galaxy VALUES (4, 'Cosmos Redshift 7', 'It is the brightest of the distant galaxies. It contains some of the oldest stars we know of.', true, 9);
INSERT INTO public.galaxy VALUES (5, 'centaurus A', 'Named because it is located in the Centaurus constellation.', true, 4);
INSERT INTO public.galaxy VALUES (6, 'Bodes Galaxy', 'Named after the astromer who discovered it, Johann Elert Bode.', true, 10);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, 238855, 3);
INSERT INTO public.moon VALUES (2, 'Deimos', 1877, 'A. Hall', 14576, 4);
INSERT INTO public.moon VALUES (3, 'Phobos', 1877, 'A. Hall', 5826, 4);
INSERT INTO public.moon VALUES (4, 'Adrastea', 1979, 'D. Hewitt and others', 80157, 5);
INSERT INTO public.moon VALUES (5, 'Aitne', 1979, 'Scott S. Sheppard and others', 14487269, 5);
INSERT INTO public.moon VALUES (6, 'Amalthea', 1892, 'Edward Emerson Barnard', 112717, 5);
INSERT INTO public.moon VALUES (7, 'Ananke', 1951, 'Seth Barnes Nicholson', 13220293, 5);
INSERT INTO public.moon VALUES (8, 'Aoede', 2003, 'Scott S. Sheppard and others', 14893646, 5);
INSERT INTO public.moon VALUES (9, 'Arche', 2002, 'Scott S. Sheppard', 14512124, 5);
INSERT INTO public.moon VALUES (10, 'Autonoe', 2001, 'Scott S. Sheppard and others', 14933414, 5);
INSERT INTO public.moon VALUES (11, 'Callirhoe', 1999, 'Jim V. Scotti and others', 14976288, 5);
INSERT INTO public.moon VALUES (12, 'Callisto', 1610, 'Galileo Galilei', 1169856, 5);
INSERT INTO public.moon VALUES (13, 'Carme', 1938, 'Seth Barnes Nicholson', 14542571, 5);
INSERT INTO public.moon VALUES (14, 'Carpo', 2003, 'Scott S. Sheppard', 10611777, 5);
INSERT INTO public.moon VALUES (15, 'Chaldene', 2000, 'Scott S. Sheppard and others', 14402763, 5);
INSERT INTO public.moon VALUES (16, 'Cyllene', 2003, 'Scott S. Sheppard', 14780557, 5);
INSERT INTO public.moon VALUES (17, 'Dia', 2000, 'Scott S. Sheppard and others', 7801315, 5);
INSERT INTO public.moon VALUES (18, 'Elara', 1905, 'Charles Dillon Perrine', 7295519, 5);
INSERT INTO public.moon VALUES (19, 'Erinome', 2000, 'Scott S. Sheppard and others', 14467385, 5);
INSERT INTO public.moon VALUES (20, 'Euanthe', 2001, 'Scott S. Sheppard and others', 13072407, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1516, 0, false, 2);
INSERT INTO public.planet VALUES (2, 'Venus', 3760.4, 0, false, 2);
INSERT INTO public.planet VALUES (4, 'Mars', 3958.8, 2, false, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 43440.7, 79, false, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', 36183.7, 82, false, 2);
INSERT INTO public.planet VALUES (7, 'Uranus', 15759.2, 27, false, 2);
INSERT INTO public.planet VALUES (8, 'Neptune', 15299.4, 14, false, 2);
INSERT INTO public.planet VALUES (9, 'Pluto', 715.2, 5, false, 2);
INSERT INTO public.planet VALUES (10, 'Ceres', 295.9, 0, false, 2);
INSERT INTO public.planet VALUES (11, 'Makemake', 444, 0, false, 2);
INSERT INTO public.planet VALUES (12, 'Haumea', 385, 2, false, 2);
INSERT INTO public.planet VALUES (13, 'Eris', 722, 1, false, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 2106.1, 1, true, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Mirach', 'Beta Andromedae', 'HR 337', 1);
INSERT INTO public.star VALUES (2, 'Sol', 'None', 'None', 2);
INSERT INTO public.star VALUES (3, 'Alpheratz', 'Alpha Andromedae', 'HR 15', 1);
INSERT INTO public.star VALUES (4, 'Sirius', 'Alpha Canis Majoris A', 'HR 2491', 2);
INSERT INTO public.star VALUES (5, 'Vega', 'Alpha Lyrae', 'HR 7001', 2);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 'Alpha Orionis Aa', 'HR 2061', 2);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 11, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constellation constellation_constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (name);


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
-- Name: moon moon_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unq UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_constellation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellation_id_fkey FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


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

