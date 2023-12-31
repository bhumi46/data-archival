-- Table: archive.mosip_credential_batch_step_execution_context

-- DROP TABLE archive.mosip_credential_batch_step_execution_context;

CREATE TABLE archive.mosip_credential_batch_step_execution_context
(
    step_execution_id bigint NOT NULL,
    short_context character varying(2500) COLLATE pg_catalog."default" NOT NULL,
    serialized_context text COLLATE pg_catalog."default",
    CONSTRAINT mosip_credential_batch_step_execution_context_pkey PRIMARY KEY (step_execution_id)

)
WITH (
    OIDS = FALSE
);
