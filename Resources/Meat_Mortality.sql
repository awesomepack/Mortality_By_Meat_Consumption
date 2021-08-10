-- Table: public.Meat_Mortality

-- DROP TABLE public."Meat_Mortality";

CREATE TABLE public."Meat_Mortality"
(
    "Entry_ID" integer NOT NULL,
    "Date" date,
    "Location" "varchar(30)",
    "Consumption" real,
    "Mortality" real,
    CONSTRAINT "Meat_Mortality_pkey" PRIMARY KEY ("Entry_ID")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Meat_Mortality"
    OWNER to postgres;

COMMENT ON TABLE public."Meat_Mortality"
    IS 'Contains columns on location , meat consumption (KG/CAP) , Date , Mortality per 100, 000';