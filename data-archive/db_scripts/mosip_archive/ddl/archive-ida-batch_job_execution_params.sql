-- Table: mosip_ida_batch_job_execution_params

-- DROP TABLE archive.mosip_ida_batch_job_execution_params;

CREATE TABLE archive.mosip_ida_batch_job_execution_params  (
	JOB_EXECUTION_ID BIGINT NOT NULL ,
	TYPE_CD VARCHAR(6) NOT NULL ,
	KEY_NAME VARCHAR(100) NOT NULL ,
	STRING_VAL VARCHAR(250) ,
	DATE_VAL TIMESTAMP DEFAULT NULL ,
	LONG_VAL BIGINT ,
	DOUBLE_VAL DOUBLE PRECISION ,
	IDENTIFYING CHAR(1) NOT NULL
)
WITH (
    OIDS = FALSE
);
