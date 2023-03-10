--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-03-10 15:45:02

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

--
-- TOC entry 5 (class 2615 OID 16400)
-- Name: film_list; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA film_list;


ALTER SCHEMA film_list OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 227 (class 1259 OID 16552)
-- Name: box_office; Type: TABLE; Schema: film_list; Owner: postgres
--

CREATE TABLE film_list.box_office (
    film_id integer NOT NULL,
    country_id integer NOT NULL,
    box_office integer NOT NULL
);


ALTER TABLE film_list.box_office OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16443)
-- Name: countries; Type: TABLE; Schema: film_list; Owner: postgres
--

CREATE TABLE film_list.countries (
    id integer NOT NULL,
    country_name text NOT NULL
);


ALTER TABLE film_list.countries OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16442)
-- Name: countries_id_seq; Type: SEQUENCE; Schema: film_list; Owner: postgres
--

CREATE SEQUENCE film_list.countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE film_list.countries_id_seq OWNER TO postgres;

--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 220
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: film_list; Owner: postgres
--

ALTER SEQUENCE film_list.countries_id_seq OWNED BY film_list.countries.id;


--
-- TOC entry 215 (class 1259 OID 16409)
-- Name: film; Type: TABLE; Schema: film_list; Owner: postgres
--

CREATE TABLE film_list.film (
    id integer NOT NULL,
    title text NOT NULL,
    year integer NOT NULL,
    country_id integer NOT NULL,
    director_id integer NOT NULL,
    screenwriter_id integer,
    producer_id integer,
    operator_id integer,
    composer_id integer,
    artist_id integer,
    editor_id integer,
    budget integer,
    marketing integer
);


ALTER TABLE film_list.film OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16467)
-- Name: film_genre; Type: TABLE; Schema: film_list; Owner: postgres
--

CREATE TABLE film_list.film_genre (
    film_id integer NOT NULL,
    genre_id integer NOT NULL
);


ALTER TABLE film_list.film_genre OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16408)
-- Name: film_id_seq; Type: SEQUENCE; Schema: film_list; Owner: postgres
--

CREATE SEQUENCE film_list.film_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE film_list.film_id_seq OWNER TO postgres;

--
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 214
-- Name: film_id_seq; Type: SEQUENCE OWNED BY; Schema: film_list; Owner: postgres
--

ALTER SEQUENCE film_list.film_id_seq OWNED BY film_list.film.id;


--
-- TOC entry 225 (class 1259 OID 16517)
-- Name: film_person; Type: TABLE; Schema: film_list; Owner: postgres
--

CREATE TABLE film_list.film_person (
    film_id integer NOT NULL,
    person_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE film_list.film_person OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16459)
-- Name: genre; Type: TABLE; Schema: film_list; Owner: postgres
--

CREATE TABLE film_list.genre (
    id integer NOT NULL,
    genre_name text NOT NULL
);


ALTER TABLE film_list.genre OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16458)
-- Name: genre_id_seq; Type: SEQUENCE; Schema: film_list; Owner: postgres
--

CREATE SEQUENCE film_list.genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE film_list.genre_id_seq OWNER TO postgres;

--
-- TOC entry 3403 (class 0 OID 0)
-- Dependencies: 222
-- Name: genre_id_seq; Type: SEQUENCE OWNED BY; Schema: film_list; Owner: postgres
--

ALTER SEQUENCE film_list.genre_id_seq OWNED BY film_list.genre.id;


--
-- TOC entry 219 (class 1259 OID 16427)
-- Name: person; Type: TABLE; Schema: film_list; Owner: postgres
--

CREATE TABLE film_list.person (
    id integer NOT NULL,
    person_name text NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE film_list.person OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16426)
-- Name: person_id_seq; Type: SEQUENCE; Schema: film_list; Owner: postgres
--

CREATE SEQUENCE film_list.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE film_list.person_id_seq OWNER TO postgres;

--
-- TOC entry 3404 (class 0 OID 0)
-- Dependencies: 218
-- Name: person_id_seq; Type: SEQUENCE OWNED BY; Schema: film_list; Owner: postgres
--

ALTER SEQUENCE film_list.person_id_seq OWNED BY film_list.person.id;


--
-- TOC entry 217 (class 1259 OID 16418)
-- Name: role; Type: TABLE; Schema: film_list; Owner: postgres
--

CREATE TABLE film_list.role (
    id integer NOT NULL,
    role text NOT NULL
);


ALTER TABLE film_list.role OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16417)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: film_list; Owner: postgres
--

CREATE SEQUENCE film_list.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE film_list.roles_id_seq OWNER TO postgres;

--
-- TOC entry 3405 (class 0 OID 0)
-- Dependencies: 216
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: film_list; Owner: postgres
--

ALTER SEQUENCE film_list.roles_id_seq OWNED BY film_list.role.id;


--
-- TOC entry 226 (class 1259 OID 16537)
-- Name: viewers; Type: TABLE; Schema: film_list; Owner: postgres
--

CREATE TABLE film_list.viewers (
    film_id integer NOT NULL,
    country_id integer NOT NULL,
    viewers_number integer NOT NULL
);


ALTER TABLE film_list.viewers OWNER TO postgres;

--
-- TOC entry 3212 (class 2604 OID 16446)
-- Name: countries id; Type: DEFAULT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.countries ALTER COLUMN id SET DEFAULT nextval('film_list.countries_id_seq'::regclass);


--
-- TOC entry 3209 (class 2604 OID 16412)
-- Name: film id; Type: DEFAULT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.film ALTER COLUMN id SET DEFAULT nextval('film_list.film_id_seq'::regclass);


--
-- TOC entry 3213 (class 2604 OID 16462)
-- Name: genre id; Type: DEFAULT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.genre ALTER COLUMN id SET DEFAULT nextval('film_list.genre_id_seq'::regclass);


--
-- TOC entry 3211 (class 2604 OID 16430)
-- Name: person id; Type: DEFAULT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.person ALTER COLUMN id SET DEFAULT nextval('film_list.person_id_seq'::regclass);


--
-- TOC entry 3210 (class 2604 OID 16421)
-- Name: role id; Type: DEFAULT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.role ALTER COLUMN id SET DEFAULT nextval('film_list.roles_id_seq'::regclass);


--
-- TOC entry 3235 (class 2606 OID 16556)
-- Name: box_office box_office_pkey; Type: CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.box_office
    ADD CONSTRAINT box_office_pkey PRIMARY KEY (film_id, country_id);


--
-- TOC entry 3223 (class 2606 OID 16452)
-- Name: countries countries_country_name_key; Type: CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.countries
    ADD CONSTRAINT countries_country_name_key UNIQUE (country_name);


--
-- TOC entry 3225 (class 2606 OID 16450)
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- TOC entry 3229 (class 2606 OID 16471)
-- Name: film_genre film_genre_pkey; Type: CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.film_genre
    ADD CONSTRAINT film_genre_pkey PRIMARY KEY (film_id, genre_id);


--
-- TOC entry 3231 (class 2606 OID 16521)
-- Name: film_person film_person_pkey; Type: CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.film_person
    ADD CONSTRAINT film_person_pkey PRIMARY KEY (film_id, person_id);


--
-- TOC entry 3215 (class 2606 OID 16416)
-- Name: film film_pkey; Type: CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.film
    ADD CONSTRAINT film_pkey PRIMARY KEY (id);


--
-- TOC entry 3227 (class 2606 OID 16466)
-- Name: genre genre_pkey; Type: CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id);


--
-- TOC entry 3221 (class 2606 OID 16434)
-- Name: person person_pkey; Type: CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);


--
-- TOC entry 3217 (class 2606 OID 16425)
-- Name: role roles_pkey; Type: CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.role
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3219 (class 2606 OID 16441)
-- Name: role unique_role; Type: CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.role
    ADD CONSTRAINT unique_role UNIQUE (role);


--
-- TOC entry 3233 (class 2606 OID 16541)
-- Name: viewers viewers_pkey; Type: CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.viewers
    ADD CONSTRAINT viewers_pkey PRIMARY KEY (film_id, country_id);


--
-- TOC entry 3252 (class 2606 OID 16562)
-- Name: box_office box_office_country_id_fkey; Type: FK CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.box_office
    ADD CONSTRAINT box_office_country_id_fkey FOREIGN KEY (country_id) REFERENCES film_list.countries(id);


--
-- TOC entry 3253 (class 2606 OID 16557)
-- Name: box_office box_office_film_id_fkey; Type: FK CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.box_office
    ADD CONSTRAINT box_office_film_id_fkey FOREIGN KEY (film_id) REFERENCES film_list.film(id);


--
-- TOC entry 3245 (class 2606 OID 16472)
-- Name: film_genre film_genre_film_id_fkey; Type: FK CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.film_genre
    ADD CONSTRAINT film_genre_film_id_fkey FOREIGN KEY (film_id) REFERENCES film_list.film(id);


--
-- TOC entry 3246 (class 2606 OID 16477)
-- Name: film_genre film_genre_genre_id_fkey; Type: FK CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.film_genre
    ADD CONSTRAINT film_genre_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES film_list.genre(id);


--
-- TOC entry 3247 (class 2606 OID 16522)
-- Name: film_person film_person_film_id_fkey; Type: FK CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.film_person
    ADD CONSTRAINT film_person_film_id_fkey FOREIGN KEY (film_id) REFERENCES film_list.film(id);


--
-- TOC entry 3248 (class 2606 OID 16527)
-- Name: film_person film_person_person_id_fkey; Type: FK CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.film_person
    ADD CONSTRAINT film_person_person_id_fkey FOREIGN KEY (person_id) REFERENCES film_list.person(id);


--
-- TOC entry 3236 (class 2606 OID 16482)
-- Name: film fk_artist_id; Type: FK CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.film
    ADD CONSTRAINT fk_artist_id FOREIGN KEY (artist_id) REFERENCES film_list.person(id);


--
-- TOC entry 3237 (class 2606 OID 16487)
-- Name: film fk_composer_id; Type: FK CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.film
    ADD CONSTRAINT fk_composer_id FOREIGN KEY (composer_id) REFERENCES film_list.person(id);


--
-- TOC entry 3238 (class 2606 OID 16453)
-- Name: film fk_country_id; Type: FK CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.film
    ADD CONSTRAINT fk_country_id FOREIGN KEY (country_id) REFERENCES film_list.countries(id);


--
-- TOC entry 3239 (class 2606 OID 16492)
-- Name: film fk_director_id; Type: FK CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.film
    ADD CONSTRAINT fk_director_id FOREIGN KEY (director_id) REFERENCES film_list.person(id);


--
-- TOC entry 3240 (class 2606 OID 16497)
-- Name: film fk_editor_id; Type: FK CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.film
    ADD CONSTRAINT fk_editor_id FOREIGN KEY (editor_id) REFERENCES film_list.person(id);


--
-- TOC entry 3241 (class 2606 OID 16502)
-- Name: film fk_operator_id; Type: FK CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.film
    ADD CONSTRAINT fk_operator_id FOREIGN KEY (operator_id) REFERENCES film_list.person(id);


--
-- TOC entry 3242 (class 2606 OID 16507)
-- Name: film fk_producer_id; Type: FK CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.film
    ADD CONSTRAINT fk_producer_id FOREIGN KEY (producer_id) REFERENCES film_list.person(id);


--
-- TOC entry 3249 (class 2606 OID 16567)
-- Name: film_person fk_role_id; Type: FK CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.film_person
    ADD CONSTRAINT fk_role_id FOREIGN KEY (role_id) REFERENCES film_list.role(id);


--
-- TOC entry 3243 (class 2606 OID 16512)
-- Name: film fk_screenwriter_id; Type: FK CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.film
    ADD CONSTRAINT fk_screenwriter_id FOREIGN KEY (screenwriter_id) REFERENCES film_list.person(id);


--
-- TOC entry 3244 (class 2606 OID 16435)
-- Name: person person_role_id_fkey; Type: FK CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.person
    ADD CONSTRAINT person_role_id_fkey FOREIGN KEY (role_id) REFERENCES film_list.role(id);


--
-- TOC entry 3250 (class 2606 OID 16547)
-- Name: viewers viewers_country_id_fkey; Type: FK CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.viewers
    ADD CONSTRAINT viewers_country_id_fkey FOREIGN KEY (country_id) REFERENCES film_list.countries(id);


--
-- TOC entry 3251 (class 2606 OID 16542)
-- Name: viewers viewers_film_id_fkey; Type: FK CONSTRAINT; Schema: film_list; Owner: postgres
--

ALTER TABLE ONLY film_list.viewers
    ADD CONSTRAINT viewers_film_id_fkey FOREIGN KEY (film_id) REFERENCES film_list.film(id);


-- Completed on 2023-03-10 15:45:02

--
-- PostgreSQL database dump complete
--

