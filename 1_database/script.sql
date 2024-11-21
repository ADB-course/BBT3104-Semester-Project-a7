-- Write your SQL code here
-- Database: cjs
-- DROP DATABASE IF EXISTS cjs;
CREATE DATABASE cjs WITH
OWNER = postgres
TEMPLATE = template0
ENCODING = 'UTF8'
CONNECTION LIMIT = 10;

-- SCHEMA: cjs_schema
-- DROP SCHEMA IF EXISTS cjs_schema;
CREATE SCHEMA cjs_schema
    AUTHORIZATION postgres;
COMMENT ON SCHEMA cjs_schema
    IS 'CJs schema as used by Advanced Databases group A7 (2024)';
GRANT USAGE ON SCHEMA cjs_schema TO postgres;
GRANT ALL ON SCHEMA cjs_schema TO postgres;