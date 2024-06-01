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
    name character varying(55) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    galaxy_type integer
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
    name character varying(55) NOT NULL,
    description text,
    distance_from_earth numeric,
    is_spherical boolean,
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
    name character varying(55) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    has_life boolean,
    planet_type integer,
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
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(55) NOT NULL,
    has_life boolean
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_type_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    distance_from_earth character varying(55),
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
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The Milky Way is a large barred spiral galaxy.', 13600000000, 1);
INSERT INTO public.galaxy VALUES (8, 'Andromeda', 'The Andromeda Galaxy is a barred spiral galaxy and is the nearest major galaxy to the Milky Way.', 10100000000, 2);
INSERT INTO public.galaxy VALUES (9, 'Black Eye Galaxy', 'It is a spiral galaxy that is located at constellation called Coma Berenices', 13280000000, 1);
INSERT INTO public.galaxy VALUES (10, 'Bode''s Galaxy', 'One of the brightest galaxies in the night sky', 13310000000, 3);
INSERT INTO public.galaxy VALUES (11, 'Cartwheel Galaxy', 'A galaxy located about 500 million light-years away in the Sculptor constellation', 300000000, 4);
INSERT INTO public.galaxy VALUES (12, 'Cigar Galaxy', 'A starburst galaxy approximately 12 million light-years away in the constellation Ursa Major', 13300000000, 5);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth''s sole natural satellite and nearest large celestial body.', 384400, true, 1);
INSERT INTO public.moon VALUES (2, 'Deimos', 'The small moon Deimos, is gray and oblong and partially cast in shadow.', 77790000, false, 4);
INSERT INTO public.moon VALUES (3, 'Phobos', 'Phobos is the innermost and larger of the two natural satellites of Mars', 77790000, false, 4);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'The largest moon in our solar system.', 628300000, true, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', 'Jupiter''s second largest moon and the third largest moon in our solar system.', 628300000, true, 5);
INSERT INTO public.moon VALUES (6, 'Io', 'Is the innermost and second-smallest of the four Galilean moons of the planet Jupiter.', 628300000, true, 5);
INSERT INTO public.moon VALUES (7, 'Iapetus', 'Is the outermost of Saturn''s large moons.', 1272000000, true, 6);
INSERT INTO public.moon VALUES (8, 'Europa', 'Is the smallest of the four Galilean moons orbiting Jupiter,', 628300000, true, 5);
INSERT INTO public.moon VALUES (9, 'Miranda', 'Is the smallest and innermost of Uranus''s five round satellites', 2723000000, true, 7);
INSERT INTO public.moon VALUES (10, 'Rhea', 'Rhea is the second-largest moon of Saturn ', 1272000000, true, 6);
INSERT INTO public.moon VALUES (11, 'Oberon', 'Is the outermost and second-largest major moon of the planet Uranus', 500000, true, 7);
INSERT INTO public.moon VALUES (12, 'Titan', 'Largest moon of Saturn and the second-largest in the Solar System.', 1200000000, true, 6);
INSERT INTO public.moon VALUES (13, 'Cyllene', 'Is a natural satellite of Jupiter.', 628300000, true, 5);
INSERT INTO public.moon VALUES (14, 'Enceladus', 'Is the sixth-largest moon of Saturn and the 19th-largest in the Solar System.', 1272000000, true, 6);
INSERT INTO public.moon VALUES (15, 'Amalthea', 'Amalthea is a moon of Jupiter. It has the third-closest orbit around Jupiter among known moons', 628300000, false, 5);
INSERT INTO public.moon VALUES (16, 'Callirrhoe', 'Also known as Jupiter XVII, is one of Jupiter''s outer natural satellites.', 628300000, false, 5);
INSERT INTO public.moon VALUES (17, 'Iocaste', 'Also known as Jupiter XXIV, is a retrograde irregular satellite of Jupiter.', 628300000, false, 5);
INSERT INTO public.moon VALUES (18, 'Methone', 'Methone is a small, egg-shaped natural satellite of Saturn that orbits out past Saturn''s ring system,', 1272000000, false, 6);
INSERT INTO public.moon VALUES (19, 'Siarnaq', 'Also designated Saturn XXIX, is the second-largest irregular moon of Saturn.', 1272000000, false, 6);
INSERT INTO public.moon VALUES (20, 'Thebe', 'Thebe, also known as Jupiter XIV, is the fourth of Jupiter''s moons by distance from the planet.', 628300000, false, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'This is where we live! Earth is made of rock and is the only planet where water is liquid.', 45430000000, true, 1, 5);
INSERT INTO public.planet VALUES (2, 'Mercury', 'this is the closest planet to the Sun.', 45030000000, false, 1, 5);
INSERT INTO public.planet VALUES (3, 'Venus', 'Venus is the next planet from the Sun after Mercury.', 45030000000, false, 1, 5);
INSERT INTO public.planet VALUES (4, 'Mars', 'Mars is a little smaller than Earth, but a lot further out.', 45030000000, false, 1, 5);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter is the largest planet in the Solar System. You could fit 1,321 Earths inside Jupiter.', 46030000000, false, 3, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Saturn is famous for its rings.', 45030000000, false, 3, 5);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Uranus is another of the gas giants.', 45030000000, false, 4, 5);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Neptune is the farthest planet from the Sun.', 45030000000, false, 4, 5);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 'Is an exoplanet orbiting within the habitable zone of the Sun-like star Kepler-22', NULL, false, 2, 2);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 'An exoplanet orbiting within the habitable zone of the red dwarf star Proxima Centauri', NULL, false, 2, 3);
INSERT INTO public.planet VALUES (11, 'WASP-76b', 'The exoplanet that rains molten iron.', NULL, false, 3, 6);
INSERT INTO public.planet VALUES (12, '55 Cancri e', 'The most valuable exoplanet.', NULL, false, 2, 4);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, 'Terrestrial Planet', NULL);
INSERT INTO public.planet_type VALUES (2, 'Super Earth', NULL);
INSERT INTO public.planet_type VALUES (3, 'Gas Giant', NULL);
INSERT INTO public.planet_type VALUES (4, 'Ice Giant', NULL);
INSERT INTO public.planet_type VALUES (5, 'Lava planet', NULL);
INSERT INTO public.planet_type VALUES (6, 'Ocean planet', NULL);
INSERT INTO public.planet_type VALUES (7, 'Iron Planet', NULL);
INSERT INTO public.planet_type VALUES (8, 'Helium planet', NULL);
INSERT INTO public.planet_type VALUES (9, 'Chthonian planet', NULL);
INSERT INTO public.planet_type VALUES (10, 'Silicate Planet', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Antares', 'Antares is the brightest star in the constellation of Scorpius.', 11000000, '600 light-years', 1);
INSERT INTO public.star VALUES (2, 'Kepler 22', 'Is a Sun-like star in the northern constellation of Cygnus, the swan, that is orbited by a planet found to be unequivocally within the stars habitable zone.', 10010000, '700 light-years away', 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 'Is a red dwarf star with a mass about 12.5% of the Sun''s mass.', NULL, '4.246 light-years', 1);
INSERT INTO public.star VALUES (4, '55 Cancri A', 'Is a K-type star nearly the same size and mass as the Sun.', NULL, '40.12 light-years', 1);
INSERT INTO public.star VALUES (5, 'Sun', 'The Sun is the star at the center of the Solar System.', 4500000000, '151.66 million km', 1);
INSERT INTO public.star VALUES (6, 'WASP-76', 'A gas giant exoplanet that orbits an F-type star.', NULL, '637.0 light-years', 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_id_seq', 10, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


--
-- Name: planet_type planet_type_planet_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_planet_type_key UNIQUE (name);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

