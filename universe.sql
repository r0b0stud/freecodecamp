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
    name character varying(60),
    description text,
    galaxy_type integer NOT NULL,
    number_of_stars integer,
    master_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_description character varying(50),
    name character varying(50) NOT NULL,
    galaxy_type_id integer NOT NULL,
    master_id integer
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60),
    description text,
    number_of_craters integer,
    has_life boolean,
    planet_id integer NOT NULL,
    master_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60),
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_type integer,
    star_id integer NOT NULL,
    master_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_description character varying(50),
    name character varying(50) NOT NULL,
    planet_type_id integer NOT NULL,
    master_id integer
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60),
    description text,
    distance_from_earth numeric(10,4),
    age_in_milion_of_year integer,
    galaxy_id integer NOT NULL,
    master_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g001', 'galaxy001', 1, 1000, NULL);
INSERT INTO public.galaxy VALUES (2, 'g002', 'galaxy002', 2, 2000, NULL);
INSERT INTO public.galaxy VALUES (3, 'g003', 'galaxy003', 3, 3000, NULL);
INSERT INTO public.galaxy VALUES (4, 'g004', 'galaxy004', 1, 4000, NULL);
INSERT INTO public.galaxy VALUES (5, 'g005', 'galaxy005', 2, 5000, NULL);
INSERT INTO public.galaxy VALUES (6, 'g006', 'galaxy006', 3, 5000, NULL);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES ('spiral galaxy', 'spiral', 1, NULL);
INSERT INTO public.galaxy_type VALUES ('peculiar galaxy', 'peculiar', 2, NULL);
INSERT INTO public.galaxy_type VALUES ('elliptical galaxy', 'elliptical', 3, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm001', 'moon001', 100, false, 1, NULL);
INSERT INTO public.moon VALUES (2, 'm002', 'moon002', 200, false, 2, NULL);
INSERT INTO public.moon VALUES (3, 'm003', 'moon003', 300, false, 3, NULL);
INSERT INTO public.moon VALUES (4, 'm004', 'moon004', 400, false, 4, NULL);
INSERT INTO public.moon VALUES (5, 'm005', 'moon005', 500, false, 5, NULL);
INSERT INTO public.moon VALUES (6, 'm006', 'moon006', 600, false, 6, NULL);
INSERT INTO public.moon VALUES (7, 'm007', 'moon007', 700, false, 7, NULL);
INSERT INTO public.moon VALUES (8, 'm008', 'moon008', 800, false, 8, NULL);
INSERT INTO public.moon VALUES (9, 'm009', 'moon009', 900, true, 9, NULL);
INSERT INTO public.moon VALUES (10, 'm009', 'moon009', 900, true, 9, NULL);
INSERT INTO public.moon VALUES (11, 'm011', 'moon011', 1100, true, 10, NULL);
INSERT INTO public.moon VALUES (12, 'm011', 'moon011', 1100, true, 10, NULL);
INSERT INTO public.moon VALUES (13, 'm011', 'moon011', 1100, true, 10, NULL);
INSERT INTO public.moon VALUES (14, 'm011', 'moon011', 1100, true, 10, NULL);
INSERT INTO public.moon VALUES (15, 'm011', 'moon011', 1100, true, 10, NULL);
INSERT INTO public.moon VALUES (16, 'm011', 'moon011', 1100, true, 10, NULL);
INSERT INTO public.moon VALUES (17, 'm011', 'moon011', 1100, true, 10, NULL);
INSERT INTO public.moon VALUES (18, 'm011', 'moon011', 1100, true, 10, NULL);
INSERT INTO public.moon VALUES (19, 'm011', 'moon011', 1100, true, 10, NULL);
INSERT INTO public.moon VALUES (20, 'm011', 'moon011', 1100, true, 10, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p001', 'planet001', false, true, 1, 1, NULL);
INSERT INTO public.planet VALUES (2, 'p002', 'planet002', false, true, 2, 2, NULL);
INSERT INTO public.planet VALUES (3, 'p003', 'planet003', false, true, 2, 3, NULL);
INSERT INTO public.planet VALUES (4, 'p004', 'planet004', false, true, 2, 4, NULL);
INSERT INTO public.planet VALUES (5, 'p005', 'planet005', false, true, 3, 1, NULL);
INSERT INTO public.planet VALUES (6, 'p006', 'planet006', false, true, 3, 1, NULL);
INSERT INTO public.planet VALUES (7, 'p007', 'planet007', true, true, 1, 5, NULL);
INSERT INTO public.planet VALUES (8, 'p008', 'planet008', false, false, 1, 6, NULL);
INSERT INTO public.planet VALUES (9, 'p009', 'planet009', false, true, 1, 6, NULL);
INSERT INTO public.planet VALUES (10, 'p010', 'planet010', false, true, 3, 6, NULL);
INSERT INTO public.planet VALUES (11, 'p011', 'planet011', false, true, 1, 4, NULL);
INSERT INTO public.planet VALUES (12, 'p012', 'planet012', false, true, 1, 1, NULL);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES ('sub-earth planet', 'sub-earth', 1, NULL);
INSERT INTO public.planet_type VALUES ('ice giant planet', 'ice giant', 2, NULL);
INSERT INTO public.planet_type VALUES ('giant planet', 'giant', 3, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 's001', 'star001', 100.2000, 1, 1, NULL);
INSERT INTO public.star VALUES (2, 's002', 'star002', 200.2000, 2, 1, NULL);
INSERT INTO public.star VALUES (3, 's003', 'star003', 300.2000, 3, 1, NULL);
INSERT INTO public.star VALUES (4, 's004', 'star004', 400.2000, 3, 2, NULL);
INSERT INTO public.star VALUES (5, 's005', 'star005', 450.2000, 1, 3, NULL);
INSERT INTO public.star VALUES (6, 's006', 'star006', 750.5000, 9, 2, NULL);


--
-- Name: galaxy galaxy_master_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_master_id_key UNIQUE (master_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_type galaxy_type_master_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_master_id_key UNIQUE (master_id);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


--
-- Name: moon moon_master_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_master_id_key UNIQUE (master_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_master_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_master_id_key UNIQUE (master_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_type planet_type_master_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_master_id_key UNIQUE (master_id);


--
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


--
-- Name: star star_master_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_master_id_key UNIQUE (master_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey1 FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

