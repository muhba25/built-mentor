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
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: mentoruser
--

COPY public.users (id, email, password, type, phone, address, isadmin, name, emailtoken, verified, imageuser, phonecode, phoneverify) FROM stdin;
daed6ec547a88a5780ace966202b206e1610596014000	muhrezkiananda15@gmail.com	daed6ec547a88a5780ace966202b206e	personal	\N	\N	f	eki		t	default.png	\N	f
284004a82611b2ed63a00fda61fb3cf51612356664000	irzhanaveiro@gmail.com	25d55ad283aa400af464c76d713c07ad	personal	\N	\N	f	Kelompok4		t	default.png	\N	f
41db9a1d4dc07a89b43937f70b8df34a1612496176000	akmalflash@gmail.com	89421cedf4ccf148fca91c3102a3ecca	personal	\N	\N	f	Akmal		t	default.png	\N	f
d5130101a73bb3644975a52fc66892e11610696294000	kidkils5@gmail.com	01c3c766ce47082b1b130daedd347ffd	personal	\N	\N	f	Agus Purnawan		t	default.png	\N	f
1b65f1205b2f423e55f4066893c5af801611124966000	athariqfaj52@gmail.com	1bfa3d602c874969b3d3b7e48a8ca840	personal	\N	\N	f	ATHARIQ		t	default.png	\N	f
f9ed1b85323764d42475e591fa93e0f51600940534000	baso.adrian.25@gmail.com	e10adc3949ba59abbe56e057f20f883e	business	6281144404385	Jl. Hati Damai No.30	t	Muhammad Baso Adrian Ibrahim	\N	t	69b61ddb3ea2688b49db7ce9a2f4c3ff.png		t
ee11cbb19052e40b07aac0ca060c23ee1611385534000	mfauzan652.mfb@gmail.com	674436d2cc0aaa1ec6cb881cfab01669	personal	\N	\N	f	user		t	default.png	\N	f
4b178f51306a16d310beedf81782e3b71608881629000	dedidarwan1@gmail.com	e10adc3949ba59abbe56e057f20f883e	personal	6285156979254	Jalan-jalan	f	Dedi Darwan		t	0140065ba82b99005ebfee547c199e1a.png	51101	\N
02c4f2546f5af2a5cac6025d17a520da1611623517000	aryakedek@yopmail.com	02c4f2546f5af2a5cac6025d17a520da	personal	\N	\N	f	aryakedek	0efd66e6ba714c441a58a8f6600fe0c11611623517000	f	0efd66e6ba714c441a58a8f6600fe0c1.png	\N	f
4cfa4050fce60f3f760106798b60c3bb1611901286000	septianiarni27@gmail.com	25d55ad283aa400af464c76d713c07ad	personal	\N	\N	f	Arni Septiani		t	default.png	\N	f
22f80e6110fb4c6034e2d0a523960ccb1611902063000	asrulsaid313@gmail.com	c71c8821e219dfa33dd17f521660b398	personal	\N	\N	f	asrul said		t	default.png	\N	f
a5842de26c1c079522c3949091171f561611924945000	zulfianndarifm18@gmail.com	25d55ad283aa400af464c76d713c07ad	personal	\N	\N	f	Zulfianndari		t	default.png	\N	f
d536468fd4600c5244d0ee734299c7431611901790000	hendraa3005@gmail.com	9e0a8518f6cf3129d2bcd5d860dae8ea	personal	\N	\N	f	Hendra		t	default.png	\N	f
43138ed7fd5fdb297b7cfc66f8c549041611973097000	waodezalmawati.dokumen@gmail.com	25d55ad283aa400af464c76d713c07ad	personal	\N	\N	f	Wa Ode Zalmawati		t	default.png	\N	f
ce819d0d78226aaba301cc79229425be1609934900000	andi.fachrul99@gmail.com	66e049ae05de4f6b5723fa8a85d84514	personal	\N	\N	f	Fachrul		t	989e850fe800efb549af5ac0b99e246e.png	\N	f
b76f7db69377f69e694e53332e3fb1b61611988034000	saskialarissa2@gmail.com	815c1126587304b88191734e1427422f	personal	\N	\N	f	Saskia Larissa		t	default.png	\N	f
c0311d047f3d9f18910bd2def64c5fe31612142509000	muhikhsan111199@gmail.com	cfa8d8a258d39a5fc15571a52df5ebd7	personal	\N	\N	f	Muh Ali Ikhsan		t	f2fe8881748ee3e41f30d8550c750343.png	\N	f
648b155dcfc3459a7bdf39f485b369e21612276295000	sherlincan907@gmail.com	1bbd886460827015e5d605ed44252251	personal	\N	\N	f	Ppp		t	a3889d52fbe2f33550fdcb88e35af70c.png	\N	f
9602c4afa9b318d65e39d7d8dd236b431612278606000	andinurmaladarni@gmail.com	363b86111876c8a11cbeedea0f06cce7	personal	\N	\N	f	andinurmaladarni		t	default.png	\N	f
5f2d99a1cf9b31ac1041ea1e96cffb5e1612329394000	fadhilabrar77@gmail.com	1ac8443a520fca92439fa25bb9a5f685	personal	\N	\N	f	Fadhil Abrar		t	default.png	\N	f
63913650046620b34e7671201b11213f1612332542000	yusnoyuyus@gmail.com	c32155d5a3070ea306d6eee0634cd6ce	personal	\N	\N	f	yusno		t	default.png	\N	f
510288f184798ec6e215045f59ef4af11612335375000	eky.ean22@gmail.com	22bf04f2f573057ae80026d8e0a822d3	personal	\N	\N	f	Eky Arjayanto		t	default.png	\N	f
b45dd8239d859b12c214c2d0cc0d44391612792024000	se900start@gmail.com	25f9e794323b453885f5181f1b624d0b	personal	\N	\N	f	kasim		t	default.png	\N	f
7bed657a775c37c2570786d0cbeefd881616320631000	basoadr25@poliupg.ac.id	6def9c3ec38740a5cda1c56984494bca	personal	\N	\N	f	ij	200a299277ee6d9d2d13e0caf231fc511616321210000	f	default.png	\N	f
c1937b687795ce80be0ecf20e18114411600961429000	cobadrian12@gmail.com	e10adc3949ba59abbe56e057f20f883e	business	6285156979254	Jl. Jalan ok	f	Adrian Andi		t	c1cc241862f0fbad547924fe706e2c7d.png	62287	t
14a448c33b760e7ffbdacdeb531d89951616320250000	andrewreynoldz5@gmail.com	c1d2043aefe2e508fa6afd6f5825869d	personal	\N	\N	f	Kayu Bakar		t	default.png	\N	f
8389a5a16dd8ad092762cbe822c13b881618145963000	hafizh4532@gmail.com	25d55ad283aa400af464c76d713c07ad	personal	\N	\N	f	Ninda Ramadani		t	default.png	\N	f
a368a9ba66fc2876d2c6cab79a4be8891616320444000	tomgarfieldz5@gmail.com	c1d2043aefe2e508fa6afd6f5825869d	personal	\N	\N	f	Coklat Gosong		t	default.png	\N	f
\.


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

