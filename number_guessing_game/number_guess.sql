--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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
    number_of_guesses integer,
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
    username character varying(22)
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

INSERT INTO public.games VALUES (109, 42, 141);
INSERT INTO public.games VALUES (110, 949, 141);
INSERT INTO public.games VALUES (111, 861, 142);
INSERT INTO public.games VALUES (112, 114, 142);
INSERT INTO public.games VALUES (113, 381, 141);
INSERT INTO public.games VALUES (114, 508, 141);
INSERT INTO public.games VALUES (115, 811, 141);
INSERT INTO public.games VALUES (116, 560, 143);
INSERT INTO public.games VALUES (117, 392, 143);
INSERT INTO public.games VALUES (118, 863, 144);
INSERT INTO public.games VALUES (119, 266, 144);
INSERT INTO public.games VALUES (120, 594, 143);
INSERT INTO public.games VALUES (121, 188, 143);
INSERT INTO public.games VALUES (122, 911, 143);
INSERT INTO public.games VALUES (123, 681, 146);
INSERT INTO public.games VALUES (124, 881, 146);
INSERT INTO public.games VALUES (125, 159, 147);
INSERT INTO public.games VALUES (126, 920, 147);
INSERT INTO public.games VALUES (127, 692, 146);
INSERT INTO public.games VALUES (128, 513, 146);
INSERT INTO public.games VALUES (129, 634, 146);
INSERT INTO public.games VALUES (130, 679, 148);
INSERT INTO public.games VALUES (131, 299, 148);
INSERT INTO public.games VALUES (132, 450, 150);
INSERT INTO public.games VALUES (133, 701, 150);
INSERT INTO public.games VALUES (134, 948, 148);
INSERT INTO public.games VALUES (135, 135, 148);
INSERT INTO public.games VALUES (136, 436, 148);
INSERT INTO public.games VALUES (137, 1353, 155);
INSERT INTO public.games VALUES (138, 853, 155);
INSERT INTO public.games VALUES (139, 1417, 157);
INSERT INTO public.games VALUES (140, 1031, 157);
INSERT INTO public.games VALUES (141, 212, 155);
INSERT INTO public.games VALUES (142, 736, 155);
INSERT INTO public.games VALUES (143, 753, 155);
INSERT INTO public.games VALUES (144, 648, 162);
INSERT INTO public.games VALUES (145, 420, 162);
INSERT INTO public.games VALUES (146, 143, 164);
INSERT INTO public.games VALUES (147, 749, 164);
INSERT INTO public.games VALUES (148, 168, 162);
INSERT INTO public.games VALUES (149, 767, 162);
INSERT INTO public.games VALUES (150, 517, 162);
INSERT INTO public.games VALUES (151, 704, 169);
INSERT INTO public.games VALUES (152, 794, 169);
INSERT INTO public.games VALUES (153, 321, 170);
INSERT INTO public.games VALUES (154, 478, 170);
INSERT INTO public.games VALUES (155, 559, 169);
INSERT INTO public.games VALUES (156, 860, 169);
INSERT INTO public.games VALUES (157, 428, 169);
INSERT INTO public.games VALUES (158, 451, 171);
INSERT INTO public.games VALUES (159, 82, 171);
INSERT INTO public.games VALUES (160, 271, 172);
INSERT INTO public.games VALUES (161, 653, 172);
INSERT INTO public.games VALUES (162, 947, 171);
INSERT INTO public.games VALUES (163, 887, 171);
INSERT INTO public.games VALUES (164, 556, 171);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (141, 'user_1707817265930');
INSERT INTO public.users VALUES (142, 'user_1707817265929');
INSERT INTO public.users VALUES (143, 'user_1707817383338');
INSERT INTO public.users VALUES (144, 'user_1707817383337');
INSERT INTO public.users VALUES (145, 'Peter');
INSERT INTO public.users VALUES (146, 'user_1707817435303');
INSERT INTO public.users VALUES (147, 'user_1707817435302');
INSERT INTO public.users VALUES (148, 'user_1707817728267');
INSERT INTO public.users VALUES (150, 'user_1707817728266');
INSERT INTO public.users VALUES (155, 'user_1707817772554');
INSERT INTO public.users VALUES (157, 'user_1707817772553');
INSERT INTO public.users VALUES (162, 'user_1707817793249');
INSERT INTO public.users VALUES (164, 'user_1707817793248');
INSERT INTO public.users VALUES (169, 'user_1707817941845');
INSERT INTO public.users VALUES (170, 'user_1707817941844');
INSERT INTO public.users VALUES (171, 'user_1707817984806');
INSERT INTO public.users VALUES (172, 'user_1707817984805');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 164, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 172, true);


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

