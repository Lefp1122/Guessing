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
    guesses integer NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 5);
INSERT INTO public.games VALUES (2, 1, 2);
INSERT INTO public.games VALUES (3, 1, 5);
INSERT INTO public.games VALUES (4, 1, 4);
INSERT INTO public.games VALUES (5, 1, 3);
INSERT INTO public.games VALUES (6, 1, 4);
INSERT INTO public.games VALUES (7, 1, 1);
INSERT INTO public.games VALUES (8, 7, 0);
INSERT INTO public.games VALUES (9, 7, 316);
INSERT INTO public.games VALUES (10, 8, 748);
INSERT INTO public.games VALUES (11, 8, 520);
INSERT INTO public.games VALUES (12, 7, 648);
INSERT INTO public.games VALUES (13, 7, 939);
INSERT INTO public.games VALUES (14, 7, 642);
INSERT INTO public.games VALUES (15, 9, 337);
INSERT INTO public.games VALUES (16, 9, 611);
INSERT INTO public.games VALUES (17, 10, 0);
INSERT INTO public.games VALUES (18, 10, 733);
INSERT INTO public.games VALUES (19, 9, 369);
INSERT INTO public.games VALUES (20, 9, 517);
INSERT INTO public.games VALUES (21, 9, 458);
INSERT INTO public.games VALUES (22, 11, 0);
INSERT INTO public.games VALUES (23, 11, 530);
INSERT INTO public.games VALUES (24, 12, 0);
INSERT INTO public.games VALUES (25, 12, 456);
INSERT INTO public.games VALUES (26, 11, 828);
INSERT INTO public.games VALUES (27, 11, 297);
INSERT INTO public.games VALUES (28, 11, 659);
INSERT INTO public.games VALUES (29, 1, 0);
INSERT INTO public.games VALUES (30, 13, 4);
INSERT INTO public.games VALUES (31, 14, 2);
INSERT INTO public.games VALUES (32, 14, 24);
INSERT INTO public.games VALUES (33, 15, 922);
INSERT INTO public.games VALUES (34, 15, 541);
INSERT INTO public.games VALUES (35, 14, 233);
INSERT INTO public.games VALUES (36, 14, 488);
INSERT INTO public.games VALUES (37, 14, 295);
INSERT INTO public.games VALUES (38, 16, 0);
INSERT INTO public.games VALUES (39, 1, 0);
INSERT INTO public.games VALUES (40, 17, 848);
INSERT INTO public.games VALUES (41, 17, 853);
INSERT INTO public.games VALUES (42, 18, 709);
INSERT INTO public.games VALUES (43, 18, 924);
INSERT INTO public.games VALUES (44, 17, 102);
INSERT INTO public.games VALUES (45, 17, 533);
INSERT INTO public.games VALUES (46, 17, 596);
INSERT INTO public.games VALUES (47, 19, 0);
INSERT INTO public.games VALUES (48, 19, 329);
INSERT INTO public.games VALUES (49, 20, 441);
INSERT INTO public.games VALUES (50, 20, 814);
INSERT INTO public.games VALUES (51, 19, 722);
INSERT INTO public.games VALUES (52, 19, 703);
INSERT INTO public.games VALUES (53, 19, 483);
INSERT INTO public.games VALUES (54, 21, 611);
INSERT INTO public.games VALUES (55, 21, 635);
INSERT INTO public.games VALUES (56, 22, 607);
INSERT INTO public.games VALUES (57, 22, 929);
INSERT INTO public.games VALUES (58, 21, 946);
INSERT INTO public.games VALUES (59, 21, 488);
INSERT INTO public.games VALUES (60, 21, 369);
INSERT INTO public.games VALUES (61, 23, 0);
INSERT INTO public.games VALUES (62, 23, 377);
INSERT INTO public.games VALUES (63, 24, 834);
INSERT INTO public.games VALUES (64, 24, 381);
INSERT INTO public.games VALUES (65, 23, 645);
INSERT INTO public.games VALUES (66, 23, 710);
INSERT INTO public.games VALUES (67, 23, 660);
INSERT INTO public.games VALUES (68, 25, 0);
INSERT INTO public.games VALUES (69, 25, 188);
INSERT INTO public.games VALUES (70, 26, 473);
INSERT INTO public.games VALUES (71, 26, 538);
INSERT INTO public.games VALUES (72, 25, 29);
INSERT INTO public.games VALUES (73, 25, 585);
INSERT INTO public.games VALUES (74, 25, 378);
INSERT INTO public.games VALUES (75, 27, 0);
INSERT INTO public.games VALUES (76, 27, 621);
INSERT INTO public.games VALUES (77, 28, 0);
INSERT INTO public.games VALUES (78, 28, 433);
INSERT INTO public.games VALUES (79, 27, 752);
INSERT INTO public.games VALUES (80, 27, 535);
INSERT INTO public.games VALUES (81, 27, 192);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Lporta');
INSERT INTO public.users VALUES (2, 'Hello');
INSERT INTO public.users VALUES (3, 'user_1684193058184');
INSERT INTO public.users VALUES (4, 'user_1684193058183');
INSERT INTO public.users VALUES (5, 'user_1684194233473');
INSERT INTO public.users VALUES (6, 'user_1684194233472');
INSERT INTO public.users VALUES (7, 'user_1684199723482');
INSERT INTO public.users VALUES (8, 'user_1684199723481');
INSERT INTO public.users VALUES (9, 'user_1684207288813');
INSERT INTO public.users VALUES (10, 'user_1684207288812');
INSERT INTO public.users VALUES (11, 'user_1684207670676');
INSERT INTO public.users VALUES (12, 'user_1684207670675');
INSERT INTO public.users VALUES (13, 'mane');
INSERT INTO public.users VALUES (14, 'user_1684207920506');
INSERT INTO public.users VALUES (15, 'user_1684207920505');
INSERT INTO public.users VALUES (16, '');
INSERT INTO public.users VALUES (17, 'user_1684208603475');
INSERT INTO public.users VALUES (18, 'user_1684208603474');
INSERT INTO public.users VALUES (19, 'user_1684208863056');
INSERT INTO public.users VALUES (20, 'user_1684208863055');
INSERT INTO public.users VALUES (21, 'user_1684208899136');
INSERT INTO public.users VALUES (22, 'user_1684208899135');
INSERT INTO public.users VALUES (23, 'user_1684208948794');
INSERT INTO public.users VALUES (24, 'user_1684208948793');
INSERT INTO public.users VALUES (25, 'user_1684209351087');
INSERT INTO public.users VALUES (26, 'user_1684209351086');
INSERT INTO public.users VALUES (27, 'user_1684209390280');
INSERT INTO public.users VALUES (28, 'user_1684209390279');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 81, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 28, true);


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

