CREATE TABLE archive.mosip_master_machine_master_h(
    id character varying(10) NOT NULL,
    name character varying(64) NOT NULL,
    mac_address character varying(64),
    serial_num character varying(64),
    ip_address character varying(17),
    validity_end_dtimes timestamp,
    mspec_id character varying(36) NOT NULL,
    public_key character varying(1024),
    key_index character varying(128),
    sign_public_key character varying(1024),
    sign_key_index character varying(128),
    zone_code character varying(36) NOT NULL,
    regcntr_id character varying(10),
    lang_code character varying(3) ,
    is_active boolean NOT NULL,
    cr_by character varying(256) NOT NULL,
    cr_dtimes timestamp NOT NULL,
    upd_by character varying(256),
    upd_dtimes timestamp,
    is_deleted boolean DEFAULT FALSE,
    del_dtimes timestamp,
    eff_dtimes timestamp NOT NULL,
    CONSTRAINT pk_machm_h_id PRIMARY KEY (id,eff_dtimes)
);
COMMENT ON TABLE archive.mosip_master_machine_master_h IS 'Machine Master History : This to track changes to master record whenever there is an INSERT/UPDATE/DELETE ( soft delete ), Effective DateTimestamp is used for identifying latest or point in time information. Refer master.machine_master table description for details.   ';
COMMENT ON COLUMN archive.mosip_master_machine_master_h.id IS 'Machine ID : Unique ID generated / assigned for machine';
COMMENT ON COLUMN archive.mosip_master_machine_master_h.name IS 'Name : Machine name';
COMMENT ON COLUMN archive.mosip_master_machine_master_h.mac_address IS 'Mac Address: Mac address of the machine';
COMMENT ON COLUMN archive.mosip_master_machine_master_h.serial_num IS 'Serial Number: Serial number of the machine';
COMMENT ON COLUMN archive.mosip_master_machine_master_h.ip_address IS 'IP Address: IP address of the machine';
COMMENT ON COLUMN archive.mosip_master_machine_master_h.validity_end_dtimes IS 'Validity End Datetime: Machine validity expiry date';
COMMENT ON COLUMN archive.mosip_master_machine_master_h.mspec_id IS 'Machine Specification ID : Machince specification id refers to master.machine_spec.id';
COMMENT ON COLUMN archive.mosip_master_machine_master_h.public_key IS 'Public Key: Public key of the machine,  This will be Machine Identification TPM Endorsement key';
COMMENT ON COLUMN archive.mosip_master_machine_master_h.key_index IS 'Key Index: Fingerprint[Unique Hash ]  for the TPM public key';
COMMENT ON COLUMN archive.mosip_master_machine_master_h.sign_public_key IS 'Signed Public Key: Field for signature verification publicKey';
COMMENT ON COLUMN archive.mosip_master_machine_master_h.sign_key_index IS 'Signed Key Index: Field for signature verification public key fingerprint';
COMMENT ON COLUMN archive.mosip_master_machine_master_h.zone_code IS 'Zone Code : Unique zone code generated or entered by admin while creating zones, It is referred to master.zone.code. ';
COMMENT ON COLUMN archive.mosip_master_machine_master_h.regcntr_id IS 'Registration Center ID : registration center id refers to master.registration_center.id';
COMMENT ON COLUMN archive.mosip_master_machine_master_h.lang_code IS 'Language Code : For multilanguage implementation this attribute Refers master.language.code. The value of some of the attributes in current record is stored in this respective language. ';
COMMENT ON COLUMN archive.mosip_master_machine_master_h.is_active IS 'IS_Active : Flag to mark whether the record is Active or In-active';
COMMENT ON COLUMN archive.mosip_master_machine_master_h.cr_by IS 'Created By : ID or name of the user who create / insert record';
COMMENT ON COLUMN archive.mosip_master_machine_master_h.cr_dtimes IS 'Created DateTimestamp : Date and Timestamp when the record is created/inserted';
COMMENT ON COLUMN archive.mosip_master_machine_master_h.upd_by IS 'Updated By : ID or name of the user who update the record with new values';
COMMENT ON COLUMN archive.mosip_master_machine_master_h.upd_dtimes IS 'Updated DateTimestamp : Date and Timestamp when any of the fields in the record is updated with new values.';
COMMENT ON COLUMN archive.mosip_master_machine_master_h.is_deleted IS 'IS_Deleted : Flag to mark whether the record is Soft deleted.';
COMMENT ON COLUMN archive.mosip_master_machine_master_h.del_dtimes IS 'Deleted DateTimestamp : Date and Timestamp when the record is soft deleted with is_deleted=TRUE';
COMMENT ON COLUMN archive.mosip_master_machine_master_h.eff_dtimes IS 'Effective Date Timestamp : This to track master record whenever there is an INSERT/UPDATE/DELETE ( soft delete ).  The current record is effective from this date-time. ';
