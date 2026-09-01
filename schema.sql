--
-- PostgreSQL database dump
--

\restrict eyNenNXVjcMcQyRQhVkePNYE9ueixn3h6EyfRnui2fDomu1HBlE9emYNcjVGSXB

-- Dumped from database version 16.15 (Debian 16.15-1.pgdg13+2)
-- Dumped by pg_dump version 16.15 (Debian 16.15-1.pgdg13+2)

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
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    customer_id character varying(50),
    customer_name character varying(100),
    segment character varying(50)
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: geo_ids; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.geo_ids (
    geo_id bigint,
    country character varying(50),
    state character varying(50),
    city character varying(50)
);


ALTER TABLE public.geo_ids OWNER TO postgres;

--
-- Name: products_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_type (
    prod_type_id bigint,
    category character varying(50),
    sub_category character varying(50)
);


ALTER TABLE public.products_type OWNER TO postgres;

--
-- Name: res; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.res (
    row_id integer,
    customer_id character varying(50),
    geo_id bigint,
    prod_type_id bigint,
    sales numeric(10,4)
);


ALTER TABLE public.res OWNER TO postgres;

--
-- Name: staging_orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.staging_orders (
    row_id integer,
    order_id character varying(50),
    order_date text,
    ship_date text,
    ship_mode character varying(50),
    customer_id character varying(50),
    customer_name character varying(100),
    segment character varying(50),
    country character varying(50),
    city character varying(50),
    state character varying(50),
    postal_code character varying(20),
    region character varying(50),
    product_id character varying(50),
    category character varying(50),
    sub_category character varying(50),
    product_name text,
    sales numeric(10,4)
);


ALTER TABLE public.staging_orders OWNER TO postgres;

--
-- PostgreSQL database dump complete
--

\unrestrict eyNenNXVjcMcQyRQhVkePNYE9ueixn3h6EyfRnui2fDomu1HBlE9emYNcjVGSXB

