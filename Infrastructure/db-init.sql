--
-- PostgreSQL database cluster dump
--

-- Started on 2022-12-03 05:37:38 MSK

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE gamestoreuserr;
ALTER ROLE gamestoreuserr WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:YBy8eAvCHFBTH+Zc8M1rfg==$gvl9zX7HuXsnk1ri6a2FTZ9D9LqJFBCP/XDedSnsasc=:n5NRBbGkqZf1RNj659mVUqi+4+1191ITika6JJf2Oss=';

--
-- User Configurations
--






--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Debian 14.5-1.pgdg110+1)
-- Dumped by pg_dump version 15.0

-- Started on 2022-12-03 05:37:38 MSK

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: gamestoreuserr
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO gamestoreuserr;

--
-- TOC entry 3306 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: gamestoreuserr
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2022-12-03 05:37:38 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "cartdb" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Debian 14.5-1.pgdg110+1)
-- Dumped by pg_dump version 15.0

-- Started on 2022-12-03 05:37:38 MSK

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
-- TOC entry 3306 (class 1262 OID 16388)
-- Name: cartdb; Type: DATABASE; Schema: -; Owner: gamestoreuserr
--

CREATE DATABASE cartdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE cartdb OWNER TO gamestoreuserr;

\connect cartdb

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: gamestoreuserr
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO gamestoreuserr;

--
-- TOC entry 3307 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: gamestoreuserr
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2022-12-03 05:37:38 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "gamestoreuserr" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Debian 14.5-1.pgdg110+1)
-- Dumped by pg_dump version 15.0

-- Started on 2022-12-03 05:37:38 MSK

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
-- TOC entry 3306 (class 1262 OID 16384)
-- Name: gamestoreuserr; Type: DATABASE; Schema: -; Owner: gamestoreuserr
--

CREATE DATABASE gamestoreuserr WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE gamestoreuserr OWNER TO gamestoreuserr;

\connect gamestoreuserr

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: gamestoreuserr
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO gamestoreuserr;

--
-- TOC entry 3307 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: gamestoreuserr
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2022-12-03 05:37:39 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "orderdb" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Debian 14.5-1.pgdg110+1)
-- Dumped by pg_dump version 15.0

-- Started on 2022-12-03 05:37:39 MSK

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
-- TOC entry 3306 (class 1262 OID 16389)
-- Name: orderdb; Type: DATABASE; Schema: -; Owner: gamestoreuserr
--

CREATE DATABASE orderdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE orderdb OWNER TO gamestoreuserr;

\connect orderdb

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: gamestoreuserr
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO gamestoreuserr;

--
-- TOC entry 3307 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: gamestoreuserr
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2022-12-03 05:37:39 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Debian 14.5-1.pgdg110+1)
-- Dumped by pg_dump version 15.0

-- Started on 2022-12-03 05:37:39 MSK

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: gamestoreuserr
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO gamestoreuserr;

--
-- TOC entry 3306 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: gamestoreuserr
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2022-12-03 05:37:39 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "productdb" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Debian 14.5-1.pgdg110+1)
-- Dumped by pg_dump version 15.0

-- Started on 2022-12-03 05:37:39 MSK

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
-- TOC entry 3379 (class 1262 OID 16385)
-- Name: productdb; Type: DATABASE; Schema: -; Owner: gamestoreuserr
--

CREATE DATABASE productdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE productdb OWNER TO gamestoreuserr;

\connect productdb

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: gamestoreuserr
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO gamestoreuserr;

--
-- TOC entry 209 (class 1259 OID 16667)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: gamestoreuserr
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO gamestoreuserr;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 210 (class 1259 OID 16668)
-- Name: multimedia; Type: TABLE; Schema: public; Owner: gamestoreuserr
--

CREATE TABLE public.multimedia (
                                   id bigint NOT NULL,
                                   height integer NOT NULL,
                                   multimedia_type character varying(255) NOT NULL,
                                   src character varying(255) NOT NULL,
                                   width integer NOT NULL,
                                   product_id bigint NOT NULL
);


ALTER TABLE public.multimedia OWNER TO gamestoreuserr;

--
-- TOC entry 211 (class 1259 OID 16675)
-- Name: price_calendar; Type: TABLE; Schema: public; Owner: gamestoreuserr
--

CREATE TABLE public.price_calendar (
                                       id bigint NOT NULL,
                                       active_from timestamp without time zone NOT NULL,
                                       active_until timestamp without time zone,
                                       price numeric(19,2) NOT NULL,
                                       product_id bigint NOT NULL
);


ALTER TABLE public.price_calendar OWNER TO gamestoreuserr;

--
-- TOC entry 212 (class 1259 OID 16680)
-- Name: product; Type: TABLE; Schema: public; Owner: gamestoreuserr
--

CREATE TABLE public.product (
                                id bigint NOT NULL,
                                description character varying(5000) NOT NULL,
                                is_free_to_play boolean NOT NULL,
                                price numeric(19,2) NOT NULL,
                                publisher character varying(255) NOT NULL,
                                release_date timestamp without time zone,
                                title character varying(255) NOT NULL
);


ALTER TABLE public.product OWNER TO gamestoreuserr;

--
-- TOC entry 213 (class 1259 OID 16687)
-- Name: product_sale_join; Type: TABLE; Schema: public; Owner: gamestoreuserr
--

CREATE TABLE public.product_sale_join (
                                          product_model_id bigint NOT NULL,
                                          sale_models_id bigint NOT NULL
);


ALTER TABLE public.product_sale_join OWNER TO gamestoreuserr;

--
-- TOC entry 214 (class 1259 OID 16690)
-- Name: sale; Type: TABLE; Schema: public; Owner: gamestoreuserr
--

CREATE TABLE public.sale (
                             id bigint NOT NULL,
                             active_from timestamp without time zone,
                             active_until timestamp without time zone,
                             sale_status character varying(255),
                             value integer NOT NULL
);


ALTER TABLE public.sale OWNER TO gamestoreuserr;

--
-- TOC entry 215 (class 1259 OID 16695)
-- Name: system_requirements; Type: TABLE; Schema: public; Owner: gamestoreuserr
--

CREATE TABLE public.system_requirements (
                                            id bigint NOT NULL,
                                            graphics character varying(255) NOT NULL,
                                            memory character varying(255) NOT NULL,
                                            processor character varying(255) NOT NULL,
                                            requirements_type character varying(255) NOT NULL,
                                            storage character varying(255) NOT NULL,
                                            system character varying(255) NOT NULL,
                                            product_id bigint NOT NULL
);


ALTER TABLE public.system_requirements OWNER TO gamestoreuserr;

--
-- TOC entry 216 (class 1259 OID 16702)
-- Name: tag; Type: TABLE; Schema: public; Owner: gamestoreuserr
--

CREATE TABLE public.tag (
                            id bigint NOT NULL,
                            name character varying(255) NOT NULL,
                            tag_section_id bigint
);


ALTER TABLE public.tag OWNER TO gamestoreuserr;

--
-- TOC entry 217 (class 1259 OID 16707)
-- Name: tag_product_join; Type: TABLE; Schema: public; Owner: gamestoreuserr
--

CREATE TABLE public.tag_product_join (
                                         tag_id bigint NOT NULL,
                                         product_id bigint NOT NULL
);


ALTER TABLE public.tag_product_join OWNER TO gamestoreuserr;

--
-- TOC entry 218 (class 1259 OID 16710)
-- Name: tag_section; Type: TABLE; Schema: public; Owner: gamestoreuserr
--

CREATE TABLE public.tag_section (
                                    id bigint NOT NULL,
                                    name character varying(255) NOT NULL
);


ALTER TABLE public.tag_section OWNER TO gamestoreuserr;

--
-- TOC entry 3365 (class 0 OID 16668)
-- Dependencies: 210
-- Data for Name: multimedia; Type: TABLE DATA; Schema: public; Owner: gamestoreuserr
--



--
-- TOC entry 3366 (class 0 OID 16675)
-- Dependencies: 211
-- Data for Name: price_calendar; Type: TABLE DATA; Schema: public; Owner: gamestoreuserr
--

INSERT INTO public.price_calendar VALUES (0, '2020-12-01 06:07:44', '2024-12-01 06:07:47', 0.99, 0);


--
-- TOC entry 3367 (class 0 OID 16680)
-- Dependencies: 212
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: gamestoreuserr
--

INSERT INTO public.product VALUES (0, 'game about cyber punk', false, 59.99, 'cd project read', NULL, 'cyberpunk 2077');
INSERT INTO public.product VALUES (1, 'game about creating your own civilization', false, 12.99, 'sid maiyer', NULL, 'civilization 5');
INSERT INTO public.product VALUES (2, 'tool for photo editing', false, 9.99, 'adobe', NULL, 'photoshop');
INSERT INTO public.product VALUES (3, 'shooter game', false, 59.99, 'activision', NULL, 'call of duty');


--
-- TOC entry 3368 (class 0 OID 16687)
-- Dependencies: 213
-- Data for Name: product_sale_join; Type: TABLE DATA; Schema: public; Owner: gamestoreuserr
--



--
-- TOC entry 3369 (class 0 OID 16690)
-- Dependencies: 214
-- Data for Name: sale; Type: TABLE DATA; Schema: public; Owner: gamestoreuserr
--



--
-- TOC entry 3370 (class 0 OID 16695)
-- Dependencies: 215
-- Data for Name: system_requirements; Type: TABLE DATA; Schema: public; Owner: gamestoreuserr
--



--
-- TOC entry 3371 (class 0 OID 16702)
-- Dependencies: 216
-- Data for Name: tag; Type: TABLE DATA; Schema: public; Owner: gamestoreuserr
--

INSERT INTO public.tag VALUES (0, 'action', 0);
INSERT INTO public.tag VALUES (1, 'strategy', 0);
INSERT INTO public.tag VALUES (2, 'racing', 0);
INSERT INTO public.tag VALUES (3, 'photo', 1);
INSERT INTO public.tag VALUES (4, 'video', 1);
INSERT INTO public.tag VALUES (5, 'windows', 2);
INSERT INTO public.tag VALUES (6, 'cyberpunk', 0);
INSERT INTO public.tag VALUES (7, 'shooter', 0);


--
-- TOC entry 3372 (class 0 OID 16707)
-- Dependencies: 217
-- Data for Name: tag_product_join; Type: TABLE DATA; Schema: public; Owner: gamestoreuserr
--

INSERT INTO public.tag_product_join VALUES (0, 0);
INSERT INTO public.tag_product_join VALUES (1, 1);
INSERT INTO public.tag_product_join VALUES (3, 2);
INSERT INTO public.tag_product_join VALUES (5, 0);
INSERT INTO public.tag_product_join VALUES (6, 0);
INSERT INTO public.tag_product_join VALUES (7, 0);
INSERT INTO public.tag_product_join VALUES (7, 3);


--
-- TOC entry 3373 (class 0 OID 16710)
-- Dependencies: 218
-- Data for Name: tag_section; Type: TABLE DATA; Schema: public; Owner: gamestoreuserr
--

INSERT INTO public.tag_section VALUES (1, 'program');
INSERT INTO public.tag_section VALUES (2, 'platform');
INSERT INTO public.tag_section VALUES (0, 'genre');


--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 209
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: gamestoreuserr
--

SELECT pg_catalog.setval('public.hibernate_sequence', 1, false);


--
-- TOC entry 3200 (class 2606 OID 16674)
-- Name: multimedia multimedia_pkey; Type: CONSTRAINT; Schema: public; Owner: gamestoreuserr
--

ALTER TABLE ONLY public.multimedia
    ADD CONSTRAINT multimedia_pkey PRIMARY KEY (id);


--
-- TOC entry 3202 (class 2606 OID 16679)
-- Name: price_calendar price_calendar_pkey; Type: CONSTRAINT; Schema: public; Owner: gamestoreuserr
--

ALTER TABLE ONLY public.price_calendar
    ADD CONSTRAINT price_calendar_pkey PRIMARY KEY (id);


--
-- TOC entry 3204 (class 2606 OID 16686)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: gamestoreuserr
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- TOC entry 3206 (class 2606 OID 16694)
-- Name: sale sale_pkey; Type: CONSTRAINT; Schema: public; Owner: gamestoreuserr
--

ALTER TABLE ONLY public.sale
    ADD CONSTRAINT sale_pkey PRIMARY KEY (id);


--
-- TOC entry 3208 (class 2606 OID 16701)
-- Name: system_requirements system_requirements_pkey; Type: CONSTRAINT; Schema: public; Owner: gamestoreuserr
--

ALTER TABLE ONLY public.system_requirements
    ADD CONSTRAINT system_requirements_pkey PRIMARY KEY (id);


--
-- TOC entry 3210 (class 2606 OID 16706)
-- Name: tag tag_pkey; Type: CONSTRAINT; Schema: public; Owner: gamestoreuserr
--

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (id);


--
-- TOC entry 3214 (class 2606 OID 16714)
-- Name: tag_section tag_section_pkey; Type: CONSTRAINT; Schema: public; Owner: gamestoreuserr
--

ALTER TABLE ONLY public.tag_section
    ADD CONSTRAINT tag_section_pkey PRIMARY KEY (id);


--
-- TOC entry 3212 (class 2606 OID 16716)
-- Name: tag uk_1wdpsed5kna2y38hnbgrnhi5b; Type: CONSTRAINT; Schema: public; Owner: gamestoreuserr
--

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT uk_1wdpsed5kna2y38hnbgrnhi5b UNIQUE (name);


--
-- TOC entry 3216 (class 2606 OID 16718)
-- Name: tag_section uk_fmh55nu7wbk38685221p7bhrr; Type: CONSTRAINT; Schema: public; Owner: gamestoreuserr
--

ALTER TABLE ONLY public.tag_section
    ADD CONSTRAINT uk_fmh55nu7wbk38685221p7bhrr UNIQUE (name);


--
-- TOC entry 3218 (class 2606 OID 16724)
-- Name: price_calendar fk214xdowo1wfqgw9eb64xn1kgb; Type: FK CONSTRAINT; Schema: public; Owner: gamestoreuserr
--

ALTER TABLE ONLY public.price_calendar
    ADD CONSTRAINT fk214xdowo1wfqgw9eb64xn1kgb FOREIGN KEY (product_id) REFERENCES public.product(id);


--
-- TOC entry 3217 (class 2606 OID 16719)
-- Name: multimedia fk6dil65320g53v2nn7kcdghhfe; Type: FK CONSTRAINT; Schema: public; Owner: gamestoreuserr
--

ALTER TABLE ONLY public.multimedia
    ADD CONSTRAINT fk6dil65320g53v2nn7kcdghhfe FOREIGN KEY (product_id) REFERENCES public.product(id);


--
-- TOC entry 3219 (class 2606 OID 16734)
-- Name: product_sale_join fk896o2a6urfngjc99xayd7c3k8; Type: FK CONSTRAINT; Schema: public; Owner: gamestoreuserr
--

ALTER TABLE ONLY public.product_sale_join
    ADD CONSTRAINT fk896o2a6urfngjc99xayd7c3k8 FOREIGN KEY (product_model_id) REFERENCES public.product(id);


--
-- TOC entry 3221 (class 2606 OID 16739)
-- Name: system_requirements fkk4xgi0c3assk99stxd51h88ks; Type: FK CONSTRAINT; Schema: public; Owner: gamestoreuserr
--

ALTER TABLE ONLY public.system_requirements
    ADD CONSTRAINT fkk4xgi0c3assk99stxd51h88ks FOREIGN KEY (product_id) REFERENCES public.product(id);


--
-- TOC entry 3222 (class 2606 OID 16744)
-- Name: tag fknx2l31w457k1slw0a8m2j9f1k; Type: FK CONSTRAINT; Schema: public; Owner: gamestoreuserr
--

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT fknx2l31w457k1slw0a8m2j9f1k FOREIGN KEY (tag_section_id) REFERENCES public.tag_section(id);


--
-- TOC entry 3223 (class 2606 OID 16754)
-- Name: tag_product_join fkoy7sjf0c1p158e33qheb338qt; Type: FK CONSTRAINT; Schema: public; Owner: gamestoreuserr
--

ALTER TABLE ONLY public.tag_product_join
    ADD CONSTRAINT fkoy7sjf0c1p158e33qheb338qt FOREIGN KEY (tag_id) REFERENCES public.tag(id);


--
-- TOC entry 3224 (class 2606 OID 16749)
-- Name: tag_product_join fkqddqu09bxclfs333l6hr8oil2; Type: FK CONSTRAINT; Schema: public; Owner: gamestoreuserr
--

ALTER TABLE ONLY public.tag_product_join
    ADD CONSTRAINT fkqddqu09bxclfs333l6hr8oil2 FOREIGN KEY (product_id) REFERENCES public.product(id);


--
-- TOC entry 3220 (class 2606 OID 16729)
-- Name: product_sale_join fkr479a99pdi8c5lhwb8876jyhp; Type: FK CONSTRAINT; Schema: public; Owner: gamestoreuserr
--

ALTER TABLE ONLY public.product_sale_join
    ADD CONSTRAINT fkr479a99pdi8c5lhwb8876jyhp FOREIGN KEY (sale_models_id) REFERENCES public.sale(id);


--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: gamestoreuserr
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2022-12-03 05:37:39 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "promotiondb" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Debian 14.5-1.pgdg110+1)
-- Dumped by pg_dump version 15.0

-- Started on 2022-12-03 05:37:39 MSK

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
-- TOC entry 3306 (class 1262 OID 16386)
-- Name: promotiondb; Type: DATABASE; Schema: -; Owner: gamestoreuserr
--

CREATE DATABASE promotiondb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE promotiondb OWNER TO gamestoreuserr;

\connect promotiondb

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: gamestoreuserr
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO gamestoreuserr;

--
-- TOC entry 3307 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: gamestoreuserr
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2022-12-03 05:37:39 MSK

--
-- PostgreSQL database dump complete
--

--
-- Database "userdb" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Debian 14.5-1.pgdg110+1)
-- Dumped by pg_dump version 15.0

-- Started on 2022-12-03 05:37:39 MSK

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
-- TOC entry 3306 (class 1262 OID 16387)
-- Name: userdb; Type: DATABASE; Schema: -; Owner: gamestoreuserr
--

CREATE DATABASE userdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE userdb OWNER TO gamestoreuserr;

\connect userdb

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: gamestoreuserr
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO gamestoreuserr;

--
-- TOC entry 3307 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: gamestoreuserr
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2022-12-03 05:37:40 MSK

--
-- PostgreSQL database dump complete
--

-- Completed on 2022-12-03 05:37:40 MSK

--
-- PostgreSQL database cluster dump complete
--