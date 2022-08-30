CREATE KEYSPACE IF NOT EXISTS cbdc WITH REPLICATION = { 'class' : 'NetworkTopologyStrategy','DC1' : 1};

CREATE TABLE cbdc.batch_detail (
    indent_id text,
    id text,
    count int,
    start_serial_no text,
    end_serial_no text,
    date_of_issuance timestamp,
    denomination decimal,
    doc_type text,
    expiration_timestamp timestamp,
    max_count int,
    rules text,
    signature text,
    status text,
    token_type text,
    PRIMARY KEY (indent_id, id)
);

CREATE TABLE cbdc.audit_trail (
    id text,
    creation_timestamp text,
    doc_type text,
    audit_trail text,
    PRIMARY KEY(id,creation_timestamp)
);

CREATE TABLE cbdc.indent_request (
    id text PRIMARY KEY,
    bank_id text,
    creation_timestamp timestamp,
    expiration_timestamp timestamp,
    max_count int,
    processed_count int,
    maker_name text,
    maker_remarks text,
    checker_name text,
    checker_remarks text,
    status text,
    token_type text,
    tokens_requested text,
    total_amount decimal,
    total_count int,
    meta text
);

CREATE MATERIALIZED VIEW cbdc.indent_by_status AS
        SELECT id, creation_timestamp, status, total_amount FROM cbdc.indent_request
        WHERE status IS NOT NULL AND
        id IS NOT NULL
        PRIMARY KEY(status, id);

CREATE TABLE cbdc.transaction (
    transaction_id text,
    creation_timestamp timestamp,
    amount decimal,
    id text,
    receiver_address text,
    receiver_organization text,
    remark text,
    sender_address text,
    sender_organization text,
    status text,
    type text,
    PRIMARY KEY (transaction_id, creation_timestamp)
);

CREATE INDEX txnReqIdIndex on cbdc.transaction(id);

CREATE TABLE cbdc.token_request (
    doc_type text,
    id text,
    created_at timestamp,
    receiver_address text,
    receiver_organization text,
    maker_name text,
    maker_remarks text,
    checker_name text,
    checker_remarks text,
    checked_at timestamp,
    approver_name text,
    approver_remarks text,
    approved_at timestamp,
    sender_address text,
    sender_organization text,
    status text,
    tokens_requested text,
    total_amount decimal,
    updated_at timestamp,
    txn_ref_no text,
    sub_type text,
    req_msg_id text,
    recall_id text,
    PRIMARY KEY (doc_type, id)
);

CREATE MATERIALIZED VIEW cbdc.token_request_by_status AS
        SELECT * FROM cbdc.token_request
        WHERE doc_type IS NOT NULL AND
        status IS NOT NULL AND
        id IS NOT NULL
        PRIMARY KEY(doc_type, status, id);

CREATE TABLE cbdc.wallet (
    address text PRIMARY KEY,
    currency text,
    ownerid text,
    vpaaddress text,
    walletid text
);
CREATE INDEX walletOwneridIndex on cbdc.wallet(ownerid);

CREATE TABLE cbdc.token_type (
    id int PRIMARY KEY,
    creation_timestamp timestamp,
    status text,
    type text
);

CREATE TABLE cbdc.user_token (
    value decimal,
    id text,
    claimed_timestamp timestamp,
    creation_timestamp timestamp,
    currency text,
    doc_type text,
    expiration_timestamp timestamp,
    issuer_address text,
    issuer_signature text,
    maximum_count int,
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

CREATE TABLE cbdc.recall_request (
    id text PRIMARY KEY,
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

CREATE TABLE cbdc.role (
    id int PRIMARY KEY,
    created_at timestamp,
    role_name text,
    status text,
    updated_at timestamp
);

CREATE TABLE cbdc.permission (
    id int PRIMARY KEY,
    created_at timestamp,
    name text,
    status text,
    updated_at timestamp
);

CREATE TABLE cbdc.role_permission (
    role_id int,
    permission_id int,
    created_at timestamp,
    updated_at timestamp,
    PRIMARY KEY (role_id, permission_id)
);

CREATE TABLE cbdc.user (
    username text PRIMARY KEY,
    department text,
    email text,
    id int,
    password text,
    reset_password boolean,
    status text
);

CREATE TABLE cbdc.user_role (
    user_id int,
    role_id int,
    created_at timestamp,
    updated_at timestamp,
    PRIMARY KEY (user_id, role_id)
);

-- CREATE TABLE cbdc.general_config (
--     config_key text,
--     config_value text
--     config_type text
--     created_at timestamp,
--     updated_at timestamp,
--     PRIMARY KEY (config_key, config_type)
-- );

CREATE TABLE cbdc.transaction_token_mapping (
    txn_id text,
    request_type text,
    request_id text,
    debit_ref text,
    serial_no text,
    token_details text,
    PRIMARY KEY (txn_id, serial_no)
);

CREATE TABLE cbdc.org_users (
    user_id text,
    org text,
    password text,
    contact text,
    created_by text,
    created_at timestamp,
    PRIMARY KEY (user_id, org)
);

CREATE INDEX txnTokenMapIdIndex ON cbdc.transaction_token_mapping (request_id);


CREATE TABLE cbdc.notifications (
    request_id text,
    last_updated_timestamp timestamp,
    request_type text,
    status text,
    role text,
    meta text,
    PRIMARY KEY (request_id, last_updated_timestamp)
) WITH CLUSTERING ORDER BY (last_updated_timestamp DESC);