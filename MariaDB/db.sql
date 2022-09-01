CREATE DATABASE IF NOT EXISTS cbdc CHARACTER SET utf8;

USE cbdc;

CREATE TABLE IF NOT EXISTS cbdc.token_type (
    id int(11) PRIMARY KEY,
    creation_timestamp timestamp,
    status text,
    type text
);
CREATE TABLE IF NOT EXISTS cbdc.user_token (
    value decimal,
    id varchar(512),
    claimed_timestamp timestamp,
    creation_timestamp timestamp,
    currency text,
    doc_type text,
    expiration_timestamp timestamp,
    issuer_address text,
    issuer_signature text,
    maximum_count int(11),
    owner_address text,
    owner_vault_id text,
    serial_no text,
    status text,
    tag text,
    txn_id text,
    type text,
    updated_timestamp timestamp,
    usage_count int,
    isIssued boolean,
    meta text,
    PRIMARY KEY (value, id)
);

CREATE INDEX serialIndex on cbdc.user_token(serial_no);
CREATE INDEX tokenIdIndex on cbdc.user_token(id);
CREATE INDEX txnIdIndex on cbdc.user_token(txn_id);

CREATE TABLE IF NOT EXISTS cbdc.recall_request (
    id varchar(512) PRIMARY KEY,
    doc_type text,
    creation_timestamp timestamp,
    updated_timestamp timestamp,
    processed_count int,
    maker_remarks text,
    checker_remarks text,
    status text,
    filters text,
    total_count int,
    notify_rtsp boolean
);

CREATE TABLE IF NOT EXISTS cbdc.role (
    id int(11) PRIMARY KEY,
    created_at timestamp,
    role_name text,
    status text,
    updated_at timestamp
);

CREATE TABLE IF NOT EXISTS cbdc.permission (
    id int(11) PRIMARY KEY,
    created_at timestamp,
    name text,
    status text,
    updated_at timestamp
);

CREATE TABLE IF NOT EXISTS cbdc.role_permission (
    role_id int(11),
    permission_id int(11),
    created_at timestamp,
    updated_at timestamp,
    PRIMARY KEY (role_id, permission_id)
);

CREATE TABLE IF NOT EXISTS cbdc.user (
    username varchar(512) PRIMARY KEY,
    department text,
    email text,
    id int,
    password text,
    reset_password boolean,
    status text
);

CREATE TABLE IF NOT EXISTS cbdc.user_role (
    user_id int(11),
    role_id int(11),
    created_at timestamp,
    updated_at timestamp,
    PRIMARY KEY (user_id, role_id)
);
-- CREATE TABLE IF NOT EXISTS cbdc.general_config (
--     config_key text,
--     config_value text
--     config_type text
--     created_at timestamp,
--     updated_at timestamp,
--     PRIMARY KEY (config_key, config_type)
-- );
CREATE TABLE IF NOT EXISTS cbdc.transaction_token_mapping (
    txn_id varchar(512),
    request_type text,
    request_id text,
    debit_ref text,
    serial_no varchar(512),
    token_details text,
    PRIMARY KEY (txn_id, serial_no)
);

CREATE TABLE IF NOT EXISTS cbdc.org_users (
    user_id varchar(255),
    org varchar(255),
    password text,
    contact text,
    created_by text,
    created_at timestamp,
    PRIMARY KEY (user_id, org)
);

CREATE INDEX txnTokenMapIdIndex ON cbdc.transaction_token_mapping (request_id);
-- CREATE TABLE IF NOT EXISTS cbdc.notifications (
  --   request_id varchar(255),
   --  last_updated_timestamp timestamp,
   --  request_type text,
   --  status text,
    -- role text,
  --   meta text,
  --   PRIMARY KEY (request_id, last_updated_timestamp)
-- ) WITH CLUSTERING ORDER BY (last_updated_timestamp DESC);

CREATE TABLE IF NOT EXISTS cbdc.notifications (
    request_id varchar(255),
    last_updated_timestamp timestamp,
    request_type text,
    status text,
    role text,
    meta text,
    PRIMARY KEY (request_id, last_updated_timestamp)
);