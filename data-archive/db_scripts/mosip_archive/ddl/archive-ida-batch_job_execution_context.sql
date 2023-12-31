-- Table: archive.mosip_ida_batch_job_execution_context

-- DROP TABLE archive.mosip_ida_batch_job_execution_context;

CREATE TABLE archive.mosip_ida_batch_job_execution_context
(
    job_execution_id bigint NOT NULL,
    short_context character varying(2500) COLLATE pg_catalog."default" NOT NULL,
    serialized_context text COLLATE pg_catalog."default",
    CONSTRAINT batch_job_execution_context_pkey PRIMARY KEY (job_execution_id)
)
WITH (
    OIDS = FALSE
);
