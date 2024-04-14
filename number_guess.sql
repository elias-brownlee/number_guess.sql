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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 788, 1);
INSERT INTO public.games VALUES (2, 768, 1);
INSERT INTO public.games VALUES (3, 292, 2);
INSERT INTO public.games VALUES (4, 960, 2);
INSERT INTO public.games VALUES (5, 70, 1);
INSERT INTO public.games VALUES (6, 853, 1);
INSERT INTO public.games VALUES (7, 895, 1);
INSERT INTO public.games VALUES (8, 589, 3);
INSERT INTO public.games VALUES (9, 295, 3);
INSERT INTO public.games VALUES (10, 26, 4);
INSERT INTO public.games VALUES (11, 977, 4);
INSERT INTO public.games VALUES (12, 735, 3);
INSERT INTO public.games VALUES (13, 56, 3);
INSERT INTO public.games VALUES (14, 952, 3);
INSERT INTO public.games VALUES (15, 601, 5);
INSERT INTO public.games VALUES (16, 883, 5);
INSERT INTO public.games VALUES (17, 752, 6);
INSERT INTO public.games VALUES (18, 820, 6);
INSERT INTO public.games VALUES (19, 764, 5);
INSERT INTO public.games VALUES (20, 633, 5);
INSERT INTO public.games VALUES (21, 992, 5);
INSERT INTO public.games VALUES (22, 915, 7);
INSERT INTO public.games VALUES (23, 634, 7);
INSERT INTO public.games VALUES (24, 777, 8);
INSERT INTO public.games VALUES (25, 632, 8);
INSERT INTO public.games VALUES (26, 853, 7);
INSERT INTO public.games VALUES (27, 423, 7);
INSERT INTO public.games VALUES (28, 229, 7);
INSERT INTO public.games VALUES (29, 578, 9);
INSERT INTO public.games VALUES (30, 78, 9);
INSERT INTO public.games VALUES (31, 469, 10);
INSERT INTO public.games VALUES (32, 460, 10);
INSERT INTO public.games VALUES (33, 454, 9);
INSERT INTO public.games VALUES (34, 700, 9);
INSERT INTO public.games VALUES (35, 76, 9);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1713061302669');
INSERT INTO public.users VALUES (2, 'user_1713061302668');
INSERT INTO public.users VALUES (3, 'user_1713061405554');
INSERT INTO public.users VALUES (4, 'user_1713061405553');
INSERT INTO public.users VALUES (5, 'user_1713061419953');
INSERT INTO public.users VALUES (6, 'user_1713061419952');
INSERT INTO public.users VALUES (7, 'user_1713061444806');
INSERT INTO public.users VALUES (8, 'user_1713061444805');
INSERT INTO public.users VALUES (9, 'user_1713061501274');
INSERT INTO public.users VALUES (10, 'user_1713061501273');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 35, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 10, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

