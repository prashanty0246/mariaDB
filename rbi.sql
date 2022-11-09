CREATE TABLE IF NOT EXISTS cbdc.transaction_token_mapping (
    txn_id varchar(100),
    request_type text,
    request_id text,
    debit_ref text,
    serial_no varchar(100),
    token_details text,
    CONSTRAINT txn_id_serial_no_pk PRIMARY KEY (txn_id, serial_no)
);
