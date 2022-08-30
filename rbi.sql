use cbdc;

CREATE TABLE cbdc.created_tokens (
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
    indent_id text,
    PRIMARY KEY (value, serial_no)
);

CREATE TABLE cbdc.qcym_transaction (
    txn_id text,
    request_id text,
    request_type text,
    account_number text,
    wallet_address text,
    amount decimal,
    timestamp timestamp,
    date_of_payment text,
    txn_status text,
    response_code text,
    PRIMARY KEY (request_id, txn_id)
);

INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (1,'CREATE_USER','ACTIVE',1628770353688,1628770353688);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (2,'VIEW_USER','ACTIVE',1628770353788,1628770353788);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (18,'VIEW_ROLES','ACTIVE',1628770354024,1628770354024);


INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (3,'CREATE_INDENT','ACTIVE',1628770353888,1628770353888);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (6,'VIEW_INDENT','ACTIVE',1628770354020,1628770354020);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (7,'APPROVE_REJECT','ACTIVE',1628770354021,1628770354021);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (10,'VIEW_APPROVE_INDENT','ACTIVE',1628770354024,1628770354024);

INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (4,'CREATE_VAULT','ACTIVE',1628770353988,1628770353988);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (5,'VIEW_VAULT','ACTIVE',1628770354018,1628770354018);

INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (8,'VIEW_ISSUANCE_REQUEST','ACTIVE',1628770354024,1628770354024);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (17,'APPROVE_REJECT_ISSUANCE_REQ','ACTIVE',1628770354024,1628770354024);

INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (9,'VIEW_TRANSACTIONS_LIST','ACTIVE',1628770354024,1628770354024);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (12,'VIEW_BALANCE','ACTIVE',1628770353688,1628770353688);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (13,'VIEW_ID_DASHBOARD','ACTIVE',1628770354024,1628770354024);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (14,'VIEW_TOKENS_LIST','ACTIVE',1628770354024,1628770354024);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (15,'VIEW_TOKEN_DETAILS','ACTIVE',1628770354024,1628770354024);

INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (16,'TRANSFER_TOKENS','ACTIVE',1628770354024,1628770354024);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (21,'REDEEM_TOKEN','ACTIVE',1628770354024,1628770354024);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (22,'VIEW_REDEEM_REQUEST','ACTIVE',1628770354024,1628770354024);


INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (19,'RECALL_TOKEN','ACTIVE',1628770354024,1628770354024);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (20,'VIEW_RECALL','ACTIVE',1628770354024,1628770354024);


INSERT INTO ROLE (id, role_name, status,created_at,updated_at) VALUES (1,'ADMINISTRATOR','ACTIVE', 1628770353688,1628770353688);
INSERT INTO ROLE (id, role_name, status,created_at,updated_at) VALUES (5,'INDENT-MAKER','ACTIVE', 1628770353688,1628770353688);
INSERT INTO ROLE (id, role_name, status,created_at,updated_at) VALUES (6,'INDENT-CHECKER','ACTIVE', 1628770353688,1628770353688);
INSERT INTO ROLE (id, role_name, status,created_at,updated_at) VALUES (7,'ISSUANCE-APPROVER','ACTIVE', 1628770353688,1628770353688);
INSERT INTO ROLE (id, role_name, status,created_at,updated_at) VALUES (9,'RECALL-MAKER','ACTIVE', 1628770353688,1628770353688);
INSERT INTO ROLE (id, role_name, status,created_at,updated_at) VALUES (11,'RECALL-CHECKER','ACTIVE', 1628770353688,1628770353688);
INSERT INTO ROLE (id, role_name, status,created_at,updated_at) VALUES (13,'REDEEM-APPROVER','ACTIVE', 1628770353688,1628770353688);

INSERT INTO USER (id, username,password,email,reset_password,department,status) VALUES (1,'RBIADMIN','$2b$10$9TwwKC59EwNHU3XIN.ytruagUL90M6IJWxwAM4zm3g9yJP6L.ajO.','RbiAdmin@123.com',false, 'rbi','ACTIVE');
INSERT INTO USER (id, username,password,email,reset_password,department,status) VALUES (2,'INDENT-MAKER','$2b$10$9TwwKC59EwNHU3XIN.ytruagUL90M6IJWxwAM4zm3g9yJP6L.ajO.','IndentMaker@123.com',false, 'rbi','ACTIVE');
INSERT INTO USER (id, username,password,email,reset_password,department,status) VALUES (3,'INDENT-CHECKER','$2b$10$9TwwKC59EwNHU3XIN.ytruagUL90M6IJWxwAM4zm3g9yJP6L.ajO.','IndentChecker@123.com',false, 'rbi','ACTIVE');
INSERT INTO USER (id, username,password,email,reset_password,department,status) VALUES (4,'RECALL-MAKER','$2b$10$9TwwKC59EwNHU3XIN.ytruagUL90M6IJWxwAM4zm3g9yJP6L.ajO.','IndentChecker@123.com',false, 'rbi','ACTIVE');
INSERT INTO USER (id, username,password,email,reset_password,department,status) VALUES (5,'RECALL-CHECKER','$2b$10$9TwwKC59EwNHU3XIN.ytruagUL90M6IJWxwAM4zm3g9yJP6L.ajO.','IndentChecker@123.com',false, 'rbi','ACTIVE');
INSERT INTO USER (id, username,password,email,reset_password,department,status) VALUES (6,'REDEEM-APPROVER','$2b$10$9TwwKC59EwNHU3XIN.ytruagUL90M6IJWxwAM4zm3g9yJP6L.ajO.','IndentChecker@123.com',false, 'rbi','ACTIVE');
INSERT INTO USER (id, username,password,email,reset_password,department,status) VALUES (7,'ISSUANCE-APPROVER','$2b$10$9TwwKC59EwNHU3XIN.ytruagUL90M6IJWxwAM4zm3g9yJP6L.ajO.','IndentChecker@123.com',false, 'rbi','ACTIVE');


INSERT INTO USER_ROLE(user_id,role_id,created_at,updated_at) VALUES(1,1,1628770353688,1628770353688);
INSERT INTO USER_ROLE(user_id,role_id,created_at,updated_at) VALUES(2,5,1628770353688,1628770353688);
INSERT INTO USER_ROLE(user_id,role_id,created_at,updated_at) VALUES(3,6,1628770353688,1628770353688);
INSERT INTO USER_ROLE(user_id,role_id,created_at,updated_at) VALUES(4,9,1628770353688,1628770353688);
INSERT INTO USER_ROLE(user_id,role_id,created_at,updated_at) VALUES(5,11,1628770353688,1628770353688);
INSERT INTO USER_ROLE(user_id,role_id,created_at,updated_at) VALUES(6,13,1628770353688,1628770353688);
INSERT INTO USER_ROLE(user_id,role_id,created_at,updated_at) VALUES(7,7,1628770353688,1628770353688);


INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,1,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,2,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,3,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,4,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,5,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,6,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,7,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,8,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,9,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,10,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,12,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,13,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,14,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,15,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,16,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,17,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,18,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,19,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,20,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,21,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,22,1628770354033,1628770354033);

INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (5,3,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (5,6,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (5,9,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (5,12,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (5,13,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (5,14,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (5,15,1628770354033,1628770354033);


INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (6,6,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (6,7,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (6,9,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (6,10,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (6,12,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (6,13,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (6,14,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (6,15,1628770354033,1628770354033);

INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (7,8,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (7,7,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (7,9,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (7,12,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (7,13,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (7,14,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (7,15,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (7,17,1628770354033,1628770354033);

INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (9,9,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (9,12,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (9,15,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (9,13,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (9,14,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (9,19,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (9,20,1628770354033,1628770354033);

INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (11,7,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (11,9,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (11,12,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (11,15,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (11,13,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (11,14,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (11,20,1628770354033,1628770354033);

INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (13,7,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (13,9,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (13,12,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (13,15,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (13,13,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (13,14,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (13,21,1628770354033,1628770354033);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (13,22,1628770354033,1628770354033);