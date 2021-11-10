-- Database: Project2

-- DROP DATABASE "Project2";

CREATE DATABASE "Meat_Mortality"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

COMMENT ON DATABASE "Meat_Mortality"
    IS 'This database will house the schemas for Project 2';
