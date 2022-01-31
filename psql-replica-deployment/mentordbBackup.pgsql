--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4 (Debian 10.4-2.pgdg90+1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: users; Type: TABLE; Schema: public; Owner: mentoruser
--

CREATE TABLE public.users (
    id character varying(255) NOT NULL,
    email character varying(255),
    password character varying(255),
    type character varying(50) DEFAULT 'personal'::character varying,
    phone character varying(20),
    address text,
    isadmin boolean DEFAULT false,
    name character varying(255),
    emailtoken character varying(255),
    verified boolean DEFAULT false,
    imageuser text DEFAULT 'default.png'::text,
    phonecode character varying(10),
    phoneverify boolean DEFAULT false
);


ALTER TABLE public.users OWNER TO mentoruser;

--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: mentoruser
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: mentoruser
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

