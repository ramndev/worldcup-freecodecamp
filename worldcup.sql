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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(60) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (129, 2018, 'Final', 155, 152, 4, 2);
INSERT INTO public.games VALUES (130, 2018, 'Third Place', 147, 154, 2, 0);
INSERT INTO public.games VALUES (131, 2018, 'Semi-Final', 152, 154, 2, 1);
INSERT INTO public.games VALUES (132, 2018, 'Semi-Final', 155, 147, 1, 0);
INSERT INTO public.games VALUES (133, 2018, 'Quarter-Final', 152, 163, 3, 2);
INSERT INTO public.games VALUES (134, 2018, 'Quarter-Final', 154, 165, 2, 0);
INSERT INTO public.games VALUES (135, 2018, 'Quarter-Final', 147, 148, 2, 1);
INSERT INTO public.games VALUES (136, 2018, 'Quarter-Final', 155, 168, 2, 0);
INSERT INTO public.games VALUES (137, 2018, 'Eighth-Final', 154, 150, 2, 1);
INSERT INTO public.games VALUES (138, 2018, 'Eighth-Final', 165, 166, 1, 0);
INSERT INTO public.games VALUES (139, 2018, 'Eighth-Final', 147, 158, 3, 2);
INSERT INTO public.games VALUES (140, 2018, 'Eighth-Final', 148, 159, 2, 0);
INSERT INTO public.games VALUES (141, 2018, 'Eighth-Final', 152, 153, 2, 1);
INSERT INTO public.games VALUES (142, 2018, 'Eighth-Final', 163, 164, 2, 1);
INSERT INTO public.games VALUES (143, 2018, 'Eighth-Final', 168, 162, 2, 1);
INSERT INTO public.games VALUES (144, 2018, 'Eighth-Final', 155, 146, 4, 3);
INSERT INTO public.games VALUES (145, 2014, 'Final', 156, 146, 1, 0);
INSERT INTO public.games VALUES (146, 2014, 'Third Place', 160, 148, 3, 0);
INSERT INTO public.games VALUES (147, 2014, 'Semi-Final', 146, 160, 1, 0);
INSERT INTO public.games VALUES (148, 2014, 'Semi-Final', 156, 148, 7, 1);
INSERT INTO public.games VALUES (149, 2014, 'Quarter-Final', 160, 151, 1, 0);
INSERT INTO public.games VALUES (150, 2014, 'Quarter-Final', 146, 147, 1, 0);
INSERT INTO public.games VALUES (151, 2014, 'Quarter-Final', 148, 150, 2, 1);
INSERT INTO public.games VALUES (152, 2014, 'Quarter-Final', 156, 155, 1, 0);
INSERT INTO public.games VALUES (153, 2014, 'Eighth-Final', 148, 149, 2, 1);
INSERT INTO public.games VALUES (154, 2014, 'Eighth-Final', 150, 168, 2, 0);
INSERT INTO public.games VALUES (155, 2014, 'Eighth-Final', 155, 161, 2, 0);
INSERT INTO public.games VALUES (156, 2014, 'Eighth-Final', 156, 145, 2, 1);
INSERT INTO public.games VALUES (157, 2014, 'Eighth-Final', 160, 159, 2, 1);
INSERT INTO public.games VALUES (158, 2014, 'Eighth-Final', 151, 157, 2, 1);
INSERT INTO public.games VALUES (159, 2014, 'Eighth-Final', 146, 166, 1, 0);
INSERT INTO public.games VALUES (160, 2014, 'Eighth-Final', 147, 167, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (145, 'Algeria');
INSERT INTO public.teams VALUES (146, 'Argentina');
INSERT INTO public.teams VALUES (147, 'Belgium');
INSERT INTO public.teams VALUES (148, 'Brazil');
INSERT INTO public.teams VALUES (149, 'Chile');
INSERT INTO public.teams VALUES (150, 'Colombia');
INSERT INTO public.teams VALUES (151, 'Costa Rica');
INSERT INTO public.teams VALUES (152, 'Croatia');
INSERT INTO public.teams VALUES (153, 'Denmark');
INSERT INTO public.teams VALUES (154, 'England');
INSERT INTO public.teams VALUES (155, 'France');
INSERT INTO public.teams VALUES (156, 'Germany');
INSERT INTO public.teams VALUES (157, 'Greece');
INSERT INTO public.teams VALUES (158, 'Japan');
INSERT INTO public.teams VALUES (159, 'Mexico');
INSERT INTO public.teams VALUES (160, 'Netherlands');
INSERT INTO public.teams VALUES (161, 'Nigeria');
INSERT INTO public.teams VALUES (162, 'Portugal');
INSERT INTO public.teams VALUES (163, 'Russia');
INSERT INTO public.teams VALUES (164, 'Spain');
INSERT INTO public.teams VALUES (165, 'Sweden');
INSERT INTO public.teams VALUES (166, 'Switzerland');
INSERT INTO public.teams VALUES (167, 'United States');
INSERT INTO public.teams VALUES (168, 'Uruguay');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 160, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 168, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fkey_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fkey_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fkey_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fkey_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

