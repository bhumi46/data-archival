-- -------------------------------------------------------------------------------------------------
-- Database Name: mosip_ida
-- Table Name 	: mosip_ida_anonymous_profile
-- Purpose    	: anonymous_profile: Anonymous profiling information for reporting purpose.
--           
-- Create By   	: Loganathan Sekar
-- Created Date	: 10-Sep-2021
-- 
-- Modified Date        Modified By         Comments / Remarks
-- ------------------------------------------------------------------------------------------
-- Sep-2021				Loganathan Sekar	    Created anonymous_profile table 
-- ------------------------------------------------------------------------------------------

-- object: archive.mosip_ida_anonymous_profile | type: TABLE --
-- DROP TABLE IF EXISTS archive.mosip_ida_anonymous_profile CASCADE;
CREATE TABLE archive.mosip_ida_anonymous_profile(
	id character varying(36) NOT NULL,
	profile character varying NOT NULL,
	cr_by character varying(256) NOT NULL,
	cr_dtimes timestamp NOT NULL,
	upd_by character varying(256),
	upd_dtimes timestamp,
	is_deleted boolean DEFAULT FALSE,
	del_dtimes timestamp,
	CONSTRAINT pk_profile PRIMARY KEY (id)
);
-- ddl-end --
COMMENT ON TABLE archive.mosip_ida_anonymous_profile IS 'anonymous_profile: Anonymous profiling information for reporting purpose.';
-- ddl-end --
COMMENT ON COLUMN archive.mosip_ida_anonymous_profile.id IS 'Reference ID: System generated id for references in the system.';
-- ddl-end --
COMMENT ON COLUMN archive.mosip_ida_anonymous_profile.profile IS 'Profile : Contains complete anonymous profile data generated by ID-Repository and stored in plain json text format.';
-- ddl-end --
COMMENT ON COLUMN archive.mosip_ida_anonymous_profile.cr_by IS 'Created By : ID or name of the user who create / insert record';
-- ddl-end --
COMMENT ON COLUMN archive.mosip_ida_anonymous_profile.cr_dtimes IS 'Created DateTimestamp : Date and Timestamp when the record is created/inserted';
-- ddl-end --
COMMENT ON COLUMN archive.mosip_ida_anonymous_profile.upd_by IS 'Updated By : ID or name of the user who update the record with new values';
-- ddl-end --
COMMENT ON COLUMN archive.mosip_ida_anonymous_profile.upd_dtimes IS 'Updated DateTimestamp : Date and Timestamp when any of the fields in the record is updated with new values.';
-- ddl-end --
COMMENT ON COLUMN archive.mosip_ida_anonymous_profile.is_deleted IS 'IS_Deleted : Flag to mark whether the record is Soft deleted.';
-- ddl-end --
COMMENT ON COLUMN archive.mosip_ida_anonymous_profile.del_dtimes IS 'Deleted DateTimestamp : Date and Timestamp when the record is soft deleted with is_deleted=TRUE';
-- ddl-end --
