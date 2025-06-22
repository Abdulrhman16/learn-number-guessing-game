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
    user_id integer NOT NULL,
    guesses integer NOT NULL,
    secret_number integer NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 562, 561);
INSERT INTO public.games VALUES (2, 1, 153, 152);
INSERT INTO public.games VALUES (3, 2, 656, 655);
INSERT INTO public.games VALUES (4, 2, 385, 384);
INSERT INTO public.games VALUES (5, 1, 419, 416);
INSERT INTO public.games VALUES (6, 1, 825, 824);
INSERT INTO public.games VALUES (7, 1, 703, 702);
INSERT INTO public.games VALUES (8, 3, 765, 764);
INSERT INTO public.games VALUES (9, 3, 324, 323);
INSERT INTO public.games VALUES (10, 4, 498, 497);
INSERT INTO public.games VALUES (11, 4, 72, 71);
INSERT INTO public.games VALUES (12, 3, 789, 786);
INSERT INTO public.games VALUES (13, 3, 562, 561);
INSERT INTO public.games VALUES (14, 3, 445, 444);
INSERT INTO public.games VALUES (15, 5, 157, 156);
INSERT INTO public.games VALUES (16, 5, 373, 372);
INSERT INTO public.games VALUES (17, 6, 162, 161);
INSERT INTO public.games VALUES (18, 6, 324, 323);
INSERT INTO public.games VALUES (19, 5, 743, 740);
INSERT INTO public.games VALUES (20, 5, 622, 621);
INSERT INTO public.games VALUES (21, 5, 574, 573);
INSERT INTO public.games VALUES (22, 7, 643, 642);
INSERT INTO public.games VALUES (23, 7, 247, 246);
INSERT INTO public.games VALUES (24, 8, 788, 787);
INSERT INTO public.games VALUES (25, 8, 644, 643);
INSERT INTO public.games VALUES (26, 7, 453, 450);
INSERT INTO public.games VALUES (27, 7, 751, 750);
INSERT INTO public.games VALUES (28, 7, 821, 820);
INSERT INTO public.games VALUES (29, 9, 320, 319);
INSERT INTO public.games VALUES (30, 9, 390, 389);
INSERT INTO public.games VALUES (31, 10, 465, 464);
INSERT INTO public.games VALUES (32, 10, 721, 720);
INSERT INTO public.games VALUES (33, 9, 397, 394);
INSERT INTO public.games VALUES (34, 9, 252, 251);
INSERT INTO public.games VALUES (35, 9, 873, 872);
INSERT INTO public.games VALUES (36, 11, 72, 71);
INSERT INTO public.games VALUES (37, 11, 828, 827);
INSERT INTO public.games VALUES (38, 12, 123, 122);
INSERT INTO public.games VALUES (39, 12, 768, 767);
INSERT INTO public.games VALUES (40, 11, 221, 218);
INSERT INTO public.games VALUES (41, 11, 680, 679);
INSERT INTO public.games VALUES (42, 11, 318, 317);
INSERT INTO public.games VALUES (43, 13, 748, 747);
INSERT INTO public.games VALUES (44, 13, 499, 498);
INSERT INTO public.games VALUES (45, 14, 265, 264);
INSERT INTO public.games VALUES (46, 14, 779, 778);
INSERT INTO public.games VALUES (47, 13, 623, 620);
INSERT INTO public.games VALUES (48, 13, 421, 420);
INSERT INTO public.games VALUES (49, 13, 24, 23);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1750554195171');
INSERT INTO public.users VALUES (2, 'user_1750554195170');
INSERT INTO public.users VALUES (3, 'user_1750554224111');
INSERT INTO public.users VALUES (4, 'user_1750554224110');
INSERT INTO public.users VALUES (5, 'user_1750554383710');
INSERT INTO public.users VALUES (6, 'user_1750554383709');
INSERT INTO public.users VALUES (7, 'user_1750554427492');
INSERT INTO public.users VALUES (8, 'user_1750554427491');
INSERT INTO public.users VALUES (9, 'user_1750554474643');
INSERT INTO public.users VALUES (10, 'user_1750554474642');
INSERT INTO public.users VALUES (11, 'user_1750555050844');
INSERT INTO public.users VALUES (12, 'user_1750555050843');
INSERT INTO public.users VALUES (13, 'user_1750555167418');
INSERT INTO public.users VALUES (14, 'user_1750555167417');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 49, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 14, true);


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

