--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30),
    size integer,
    type character varying(20) NOT NULL,
    mass integer NOT NULL
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
    planet_id integer NOT NULL,
    name character varying(30),
    has_life boolean,
    type character varying(20) NOT NULL,
    mass integer NOT NULL
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
-- Name: owner; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.owner (
    owner_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    year integer NOT NULL
);


ALTER TABLE public.owner OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean,
    type character varying(20) NOT NULL,
    mass integer NOT NULL
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
    galaxy_id integer,
    name character varying(30),
    size integer,
    age numeric,
    type character varying(20) NOT NULL,
    mass integer NOT NULL
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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 10, 'galaxy', 10);
INSERT INTO public.galaxy VALUES (2, 'Candy Way', 20, 'galaxy', 11);
INSERT INTO public.galaxy VALUES (3, 'Chocolate Way', 30, 'galaxy', 12);
INSERT INTO public.galaxy VALUES (4, 'Vanilla Way', 40, 'galaxy', 13);
INSERT INTO public.galaxy VALUES (5, 'Rocky Way', 50, 'galaxy', 14);
INSERT INTO public.galaxy VALUES (6, 'Caramel Way', 60, 'galaxy', 15);
INSERT INTO public.galaxy VALUES (7, 'Candy Way', 60, 'galaxy', 15);
INSERT INTO public.galaxy VALUES (8, 'Oyster Way', 60, 'galaxy', 15);
INSERT INTO public.galaxy VALUES (9, 'My Way', 60, 'galaxy', 15);
INSERT INTO public.galaxy VALUES (10, 'Your Way', 60, 'galaxy', 15);
INSERT INTO public.galaxy VALUES (11, 'Flower Way', 60, 'galaxy', 15);
INSERT INTO public.galaxy VALUES (12, 'Chip Way', 60, 'galaxy', 15);
INSERT INTO public.galaxy VALUES (13, 'Chip Way', 60, 'galaxy', 15);
INSERT INTO public.galaxy VALUES (14, 'Chip Way', 60, 'galaxy', 15);
INSERT INTO public.galaxy VALUES (15, 'Chip Way', 60, 'galaxy', 15);
INSERT INTO public.galaxy VALUES (16, 'Chip Way', 60, 'galaxy', 15);
INSERT INTO public.galaxy VALUES (17, 'Chip Way', 60, 'galaxy', 15);
INSERT INTO public.galaxy VALUES (18, 'Chip Way', 60, 'galaxy', 15);
INSERT INTO public.galaxy VALUES (19, 'Chip Way', 60, 'galaxy', 15);
INSERT INTO public.galaxy VALUES (20, 'Chip Way', 60, 'galaxy', 15);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'A', true, 'grey', 100);
INSERT INTO public.moon VALUES (2, 2, 'B', true, 'black', 150);
INSERT INTO public.moon VALUES (3, 3, 'C', true, 'green', 200);
INSERT INTO public.moon VALUES (4, 4, 'D', true, 'blue', 250);
INSERT INTO public.moon VALUES (5, 5, 'E', true, 'red', 300);
INSERT INTO public.moon VALUES (6, 6, 'F', true, 'purple', 100);
INSERT INTO public.moon VALUES (7, 7, 'G', true, 'yellow', 150);
INSERT INTO public.moon VALUES (8, 8, 'H', true, 'pink', 200);
INSERT INTO public.moon VALUES (9, 9, 'I', true, 'red', 250);
INSERT INTO public.moon VALUES (10, 10, 'J', true, 'grey', 300);
INSERT INTO public.moon VALUES (11, 11, 'K', true, 'orange', 100);
INSERT INTO public.moon VALUES (12, 12, 'L', true, 'grey', 200);
INSERT INTO public.moon VALUES (13, 13, 'L', true, 'grey', 200);
INSERT INTO public.moon VALUES (14, 14, 'L', true, 'grey', 200);
INSERT INTO public.moon VALUES (15, 15, 'L', true, 'grey', 200);
INSERT INTO public.moon VALUES (16, 16, 'L', true, 'grey', 200);
INSERT INTO public.moon VALUES (17, 17, 'L', true, 'grey', 200);
INSERT INTO public.moon VALUES (18, 18, 'L', true, 'grey', 200);
INSERT INTO public.moon VALUES (19, 19, 'L', true, 'grey', 200);
INSERT INTO public.moon VALUES (20, 20, 'L', true, 'grey', 200);


--
-- Data for Name: owner; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.owner VALUES (1, 'Tracy', 33, 1990);
INSERT INTO public.owner VALUES (2, 'Macy', 44, 2000);
INSERT INTO public.owner VALUES (3, 'Lacy', 55, 1980);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Earth', 'Green', true, 'Grass', 100);
INSERT INTO public.planet VALUES (2, 2, 'Venus', 'Blue', true, 'Water', 150);
INSERT INTO public.planet VALUES (3, 3, 'Mercury', 'Orange', true, 'Lava', 200);
INSERT INTO public.planet VALUES (4, 4, 'Pluto', 'Purple', true, 'Shake', 250);
INSERT INTO public.planet VALUES (5, 5, 'Saturn', 'Dark Blue', true, 'Ice', 300);
INSERT INTO public.planet VALUES (6, 6, 'Mars', 'Red', true, 'Sand', 100);
INSERT INTO public.planet VALUES (7, 7, 'Venus', 'Orange', true, 'Fire', 100);
INSERT INTO public.planet VALUES (8, 8, 'Neptune', 'Blue', true, 'Water', 200);
INSERT INTO public.planet VALUES (9, 9, 'Jupiter', 'Red', true, 'Desert', 300);
INSERT INTO public.planet VALUES (10, 10, 'Eris', 'Yellow', true, 'Sand', 250);
INSERT INTO public.planet VALUES (11, 11, 'Ceres', 'Green', true, 'Moss', 150);
INSERT INTO public.planet VALUES (12, 12, 'Uranus', 'White', true, 'Ice', 100);
INSERT INTO public.planet VALUES (13, 13, 'Uranus', 'White', true, 'Ice', 100);
INSERT INTO public.planet VALUES (14, 14, 'Uranus', 'White', true, 'Ice', 100);
INSERT INTO public.planet VALUES (15, 15, 'Uranus', 'White', true, 'Ice', 100);
INSERT INTO public.planet VALUES (16, 16, 'Uranus', 'White', true, 'Ice', 100);
INSERT INTO public.planet VALUES (17, 17, 'Uranus', 'White', true, 'Ice', 100);
INSERT INTO public.planet VALUES (18, 18, 'Uranus', 'White', true, 'Ice', 100);
INSERT INTO public.planet VALUES (19, 19, 'Uranus', 'White', true, 'Ice', 100);
INSERT INTO public.planet VALUES (20, 20, 'Uranus', 'White', true, 'Ice', 100);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Libra', 100, 300, 'Gas', 300);
INSERT INTO public.star VALUES (2, 2, 'Leo', 150, 300, 'Gas', 250);
INSERT INTO public.star VALUES (3, 3, 'Cancer', 200, 300, 'Gas', 200);
INSERT INTO public.star VALUES (4, 4, 'Taurus', 250, 300, 'Gas', 150);
INSERT INTO public.star VALUES (5, 5, 'Capricorn', 300, 300, 'Gas', 100);
INSERT INTO public.star VALUES (6, 6, 'Scorpio', 350, 300, 'Gas', 50);
INSERT INTO public.star VALUES (7, 7, 'Aquarius', 350, 300, 'Gas', 100);
INSERT INTO public.star VALUES (8, 8, 'Pisces', 350, 300, 'Gas', 100);
INSERT INTO public.star VALUES (9, 9, 'Sag', 350, 300, 'Gas', 100);
INSERT INTO public.star VALUES (10, 10, 'Aries', 350, 300, 'Gas', 100);
INSERT INTO public.star VALUES (11, 11, 'Gemini', 350, 300, 'Gas', 100);
INSERT INTO public.star VALUES (12, 12, 'Virgo', 350, 300, 'Gas', 100);
INSERT INTO public.star VALUES (13, 13, 'Cheetos', 350, 300, 'Gas', 100);
INSERT INTO public.star VALUES (14, 14, 'Lays', 350, 300, 'Gas', 100);
INSERT INTO public.star VALUES (15, 15, 'BBQ', 350, 300, 'Gas', 100);
INSERT INTO public.star VALUES (16, 16, 'Flamin', 350, 300, 'Gas', 100);
INSERT INTO public.star VALUES (17, 17, 'Sour Cream', 350, 300, 'Gas', 100);
INSERT INTO public.star VALUES (18, 18, 'Cheesy', 350, 300, 'Gas', 100);
INSERT INTO public.star VALUES (19, 19, 'Flamas', 350, 300, 'Gas', 100);
INSERT INTO public.star VALUES (20, 20, 'Onion', 350, 300, 'Gas', 100);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: owner owner_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.owner
    ADD CONSTRAINT owner_pkey PRIMARY KEY (owner_id);


--
-- Name: owner owner_year_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.owner
    ADD CONSTRAINT owner_year_key UNIQUE (year);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--
