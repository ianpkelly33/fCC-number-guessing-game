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
    secret_number integer,
    number_of_guesses integer,
    user_id integer,
    game_id integer NOT NULL
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    username character varying(22),
    user_id integer NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_user_id_seq OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_user_id_seq OWNED BY public.players.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN user_id SET DEFAULT nextval('public.players_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (444, 445, 1, 1);
INSERT INTO public.games VALUES (997, 998, 2, 2);
INSERT INTO public.games VALUES (421, 422, 1, 3);
INSERT INTO public.games VALUES (769, 770, 1, 4);
INSERT INTO public.games VALUES (337, 338, 1, 5);
INSERT INTO public.games VALUES (608, 609, 3, 6);
INSERT INTO public.games VALUES (938, 939, 4, 7);
INSERT INTO public.games VALUES (596, 597, 3, 8);
INSERT INTO public.games VALUES (167, 168, 3, 9);
INSERT INTO public.games VALUES (985, 986, 3, 10);
INSERT INTO public.games VALUES (638, 639, 6, 11);
INSERT INTO public.games VALUES (564, 565, 7, 12);
INSERT INTO public.games VALUES (90, 91, 6, 13);
INSERT INTO public.games VALUES (978, 979, 6, 14);
INSERT INTO public.games VALUES (210, 211, 6, 15);
INSERT INTO public.games VALUES (176, 177, 8, 16);
INSERT INTO public.games VALUES (819, 820, 9, 17);
INSERT INTO public.games VALUES (592, 593, 8, 18);
INSERT INTO public.games VALUES (708, 709, 8, 19);
INSERT INTO public.games VALUES (47, 48, 8, 20);
INSERT INTO public.games VALUES (798, 799, 12, 21);
INSERT INTO public.games VALUES (201, 202, 13, 22);
INSERT INTO public.games VALUES (231, 232, 12, 23);
INSERT INTO public.games VALUES (157, 158, 12, 24);
INSERT INTO public.games VALUES (760, 761, 12, 25);
INSERT INTO public.games VALUES (702, 703, 14, 26);
INSERT INTO public.games VALUES (394, 395, 15, 27);
INSERT INTO public.games VALUES (46, 47, 14, 28);
INSERT INTO public.games VALUES (163, 164, 14, 29);
INSERT INTO public.games VALUES (576, 577, 14, 30);
INSERT INTO public.games VALUES (761, 762, 16, 31);
INSERT INTO public.games VALUES (519, 520, 17, 32);
INSERT INTO public.games VALUES (784, 785, 16, 33);
INSERT INTO public.games VALUES (854, 855, 16, 34);
INSERT INTO public.games VALUES (791, 792, 16, 35);
INSERT INTO public.games VALUES (928, 929, 18, 36);
INSERT INTO public.games VALUES (858, 859, 20, 37);
INSERT INTO public.games VALUES (456, 457, 25, 38);
INSERT INTO public.games VALUES (22, 23, 26, 39);
INSERT INTO public.games VALUES (999, 1000, 25, 40);
INSERT INTO public.games VALUES (257, 258, 25, 41);
INSERT INTO public.games VALUES (958, 959, 25, 42);
INSERT INTO public.games VALUES (61, 62, 27, 43);
INSERT INTO public.games VALUES (81, 82, 29, 44);
INSERT INTO public.games VALUES (918, 919, 34, 45);
INSERT INTO public.games VALUES (857, 858, 35, 46);
INSERT INTO public.games VALUES (373, 374, 34, 47);
INSERT INTO public.games VALUES (780, 781, 34, 48);
INSERT INTO public.games VALUES (755, 756, 34, 49);
INSERT INTO public.games VALUES (3, 4, 38, 50);
INSERT INTO public.games VALUES (5, 6, 39, 51);
INSERT INTO public.games VALUES (4, 5, 38, 52);
INSERT INTO public.games VALUES (7, 8, 38, 53);
INSERT INTO public.games VALUES (8, 9, 38, 54);
INSERT INTO public.games VALUES (441, 442, 40, 55);
INSERT INTO public.games VALUES (978, 979, 41, 56);
INSERT INTO public.games VALUES (159, 160, 40, 57);
INSERT INTO public.games VALUES (268, 269, 40, 58);
INSERT INTO public.games VALUES (750, 751, 40, 59);
INSERT INTO public.games VALUES (801, 802, 44, 60);
INSERT INTO public.games VALUES (654, 655, 45, 61);
INSERT INTO public.games VALUES (852, 853, 44, 62);
INSERT INTO public.games VALUES (668, 669, 44, 63);
INSERT INTO public.games VALUES (464, 465, 44, 64);
INSERT INTO public.games VALUES (464, 465, 46, 65);
INSERT INTO public.games VALUES (398, 399, 47, 66);
INSERT INTO public.games VALUES (470, 471, 46, 67);
INSERT INTO public.games VALUES (789, 790, 46, 68);
INSERT INTO public.games VALUES (100, 101, 46, 69);
INSERT INTO public.games VALUES (622, 623, 48, 70);
INSERT INTO public.games VALUES (901, 902, 49, 71);
INSERT INTO public.games VALUES (840, 841, 48, 72);
INSERT INTO public.games VALUES (921, 922, 48, 73);
INSERT INTO public.games VALUES (526, 527, 48, 74);
INSERT INTO public.games VALUES (348, 349, 50, 75);
INSERT INTO public.games VALUES (732, 733, 50, 76);
INSERT INTO public.games VALUES (654, 655, 51, 77);
INSERT INTO public.games VALUES (82, 83, 51, 78);
INSERT INTO public.games VALUES (910, 911, 50, 79);
INSERT INTO public.games VALUES (409, 410, 50, 80);
INSERT INTO public.games VALUES (313, 314, 50, 81);
INSERT INTO public.games VALUES (491, 492, 52, 82);
INSERT INTO public.games VALUES (870, 871, 52, 83);
INSERT INTO public.games VALUES (922, 923, 53, 84);
INSERT INTO public.games VALUES (844, 845, 53, 85);
INSERT INTO public.games VALUES (543, 544, 52, 86);
INSERT INTO public.games VALUES (541, 542, 52, 87);
INSERT INTO public.games VALUES (731, 732, 52, 88);
INSERT INTO public.games VALUES (658, 659, 54, 89);
INSERT INTO public.games VALUES (165, 166, 54, 90);
INSERT INTO public.games VALUES (113, 114, 55, 91);
INSERT INTO public.games VALUES (20, 21, 55, 92);
INSERT INTO public.games VALUES (403, 404, 54, 93);
INSERT INTO public.games VALUES (736, 737, 54, 94);
INSERT INTO public.games VALUES (412, 413, 54, 95);
INSERT INTO public.games VALUES (244, 245, 56, 96);
INSERT INTO public.games VALUES (782, 783, 56, 97);
INSERT INTO public.games VALUES (799, 800, 57, 98);
INSERT INTO public.games VALUES (281, 282, 57, 99);
INSERT INTO public.games VALUES (509, 510, 56, 100);
INSERT INTO public.games VALUES (579, 580, 56, 101);
INSERT INTO public.games VALUES (523, 524, 56, 102);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES ('user_1721105767265', 1);
INSERT INTO public.players VALUES ('user_1721105767264', 2);
INSERT INTO public.players VALUES ('user_1721105843352', 3);
INSERT INTO public.players VALUES ('user_1721105843351', 4);
INSERT INTO public.players VALUES ('ian', 5);
INSERT INTO public.players VALUES ('user_1721106268973', 6);
INSERT INTO public.players VALUES ('user_1721106268972', 7);
INSERT INTO public.players VALUES ('user_1721106439867', 8);
INSERT INTO public.players VALUES ('user_1721106439866', 9);
INSERT INTO public.players VALUES ('user_1721106500307', 10);
INSERT INTO public.players VALUES ('user_1721106500306', 11);
INSERT INTO public.players VALUES ('user_1721106509422', 12);
INSERT INTO public.players VALUES ('user_1721106509421', 13);
INSERT INTO public.players VALUES ('user_1721106950893', 14);
INSERT INTO public.players VALUES ('user_1721106950892', 15);
INSERT INTO public.players VALUES ('user_1721107049969', 16);
INSERT INTO public.players VALUES ('user_1721107049968', 17);
INSERT INTO public.players VALUES ('user_1721107085675', 18);
INSERT INTO public.players VALUES ('user_1721107085675', 19);
INSERT INTO public.players VALUES ('user_1721107085674', 20);
INSERT INTO public.players VALUES ('user_1721107085674', 21);
INSERT INTO public.players VALUES ('user_1721107085675', 22);
INSERT INTO public.players VALUES ('user_1721107085675', 23);
INSERT INTO public.players VALUES ('user_1721107085675', 24);
INSERT INTO public.players VALUES ('user_1721107114270', 25);
INSERT INTO public.players VALUES ('user_1721107114269', 26);
INSERT INTO public.players VALUES ('user_1721107134214', 27);
INSERT INTO public.players VALUES ('user_1721107134214', 28);
INSERT INTO public.players VALUES ('user_1721107134213', 29);
INSERT INTO public.players VALUES ('user_1721107134213', 30);
INSERT INTO public.players VALUES ('user_1721107134214', 31);
INSERT INTO public.players VALUES ('user_1721107134214', 32);
INSERT INTO public.players VALUES ('user_1721107134214', 33);
INSERT INTO public.players VALUES ('user_1721107195121', 34);
INSERT INTO public.players VALUES ('user_1721107195120', 35);
INSERT INTO public.players VALUES ('not ian', 36);
INSERT INTO public.players VALUES ('not ian again', 37);
INSERT INTO public.players VALUES ('user_1721107522500', 38);
INSERT INTO public.players VALUES ('user_1721107522499', 39);
INSERT INTO public.players VALUES ('user_1721107531735', 40);
INSERT INTO public.players VALUES ('user_1721107531734', 41);
INSERT INTO public.players VALUES ('user_1721107618206', 42);
INSERT INTO public.players VALUES ('user_1721107618205', 43);
INSERT INTO public.players VALUES ('user_1721107640463', 44);
INSERT INTO public.players VALUES ('user_1721107640462', 45);
INSERT INTO public.players VALUES ('user_1721107703662', 46);
INSERT INTO public.players VALUES ('user_1721107703661', 47);
INSERT INTO public.players VALUES ('user_1721107710347', 48);
INSERT INTO public.players VALUES ('user_1721107710346', 49);
INSERT INTO public.players VALUES ('user_1721108339599', 50);
INSERT INTO public.players VALUES ('user_1721108339598', 51);
INSERT INTO public.players VALUES ('user_1721108391837', 52);
INSERT INTO public.players VALUES ('user_1721108391836', 53);
INSERT INTO public.players VALUES ('user_1721108486777', 54);
INSERT INTO public.players VALUES ('user_1721108486776', 55);
INSERT INTO public.players VALUES ('user_1721108661365', 56);
INSERT INTO public.players VALUES ('user_1721108661364', 57);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 102, true);


--
-- Name: players_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_user_id_seq', 57, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.players(user_id);


--
-- PostgreSQL database dump complete
--

