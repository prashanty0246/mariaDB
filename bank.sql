use cbdc;

CREATE TABLE liquidity_management (
    denomination text PRIMARY KEY,
    min_threshhold int,
    max_threshhold int,
    batch_size int,
);

CREATE TABLE system_tokens (
    tokenId text PRIMARY KEY,
    status text
);

INSERT INTO liquidity_management(denomination,min_threshhold,max_threshhold,batch_size) VALUES ('2000',100,1000,200);
INSERT INTO liquidity_management(denomination,min_threshhold,max_threshhold,batch_size) VALUES ('500',100,1000,200);
INSERT INTO liquidity_management(denomination,min_threshhold,max_threshhold,batch_size) VALUES ('200',100,1000,200);
INSERT INTO liquidity_management(denomination,min_threshhold,max_threshhold,batch_size) VALUES ('100',100,1000,200);
INSERT INTO liquidity_management(denomination,min_threshhold,max_threshhold,batch_size) VALUES ('50',100,1000,200);
INSERT INTO liquidity_management(denomination,min_threshhold,max_threshhold,batch_size) VALUES ('20',100,1000,200);
INSERT INTO liquidity_management(denomination,min_threshhold,max_threshhold,batch_size) VALUES ('10',100,1000,200);
INSERT INTO liquidity_management(denomination,min_threshhold,max_threshhold,batch_size) VALUES ('5',100,1000,200);
INSERT INTO liquidity_management(denomination,min_threshhold,max_threshhold,batch_size) VALUES ('2',100,1000,200);
INSERT INTO liquidity_management(denomination,min_threshhold,max_threshhold,batch_size) VALUES ('1',100,1000,200);
INSERT INTO liquidity_management(denomination,min_threshhold,max_threshhold,batch_size) VALUES ('0.5',100,1000,200);

INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (1,'CREATE_USER','ACTIVE',1628770353688,1628770353688);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (2,'VIEW_USER','ACTIVE',1628770353688,1628770353688);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (12,'VIEW_ROLES','ACTIVE',1628770354024,1628770354024);

INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (3,'CREATE_VAULT','ACTIVE',1628770353688,1628770353688);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (4,'VIEW_VAULT','ACTIVE',1628770353688,1628770353688);

INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (7,'REQUEST_ISSUANCE','ACTIVE',1628770353688,1628770353688);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (8,'VIEW_ISSUANCE_REQUEST','ACTIVE',1628770353688,1628770353688);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (17,'APPROVE_REJECT','ACTIVE',1628770354024,1628770354024);

INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (5,'VIEW_BALANCE','ACTIVE',1628770354024,1628770354024);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (6,'VIEW_TRANSACTIONS_LIST','ACTIVE',1628770354024,1628770354024);

INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (9,'VIEW_TOKENS_LIST','ACTIVE',1628770354024,1628770354024);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (10,'VIEW_TOKEN_DETAILS','ACTIVE',1628770354024,1628770354024);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (11,'VIEW_ID_DASHBOARD','ACTIVE',1628770354024,1628770354024);

INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (13,'REQUEST_TRANSFER','ACTIVE',1628770354024,1628770354024);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (14,'REDEEM_TOKEN','ACTIVE',1628770354024,1628770354024);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (15,'VIEW_REDEEM_REQUEST','ACTIVE',1628770354024,1628770354024);
INSERT INTO PERMISSION (id,name,status,created_at,updated_at) VALUES (16,'VIEW_TRANSFER_REQUEST','ACTIVE',1628770354024,1628770354024);



INSERT INTO ROLE (id, role_name, status,created_at,updated_at) VALUES (1,'ADMINISTRATOR','ACTIVE', 1628770353688,1628770353688);
INSERT INTO ROLE (id, role_name, status,created_at,updated_at) VALUES (2,'ISSUANCE-MAKER','ACTIVE', 1628770353688,1628770353688);
INSERT INTO ROLE (id, role_name, status,created_at,updated_at) VALUES (3,'ISSUANCE-CHECKER','ACTIVE', 1628770353688,1628770353688);
INSERT INTO ROLE (id, role_name, status,created_at,updated_at) VALUES (4,'REDEEM-MAKER','ACTIVE', 1628770353688,1628770353688);
INSERT INTO ROLE (id, role_name, status,created_at,updated_at) VALUES (5,'REDEEM-CHECKER','ACTIVE', 1628770353688,1628770353688);
INSERT INTO ROLE (id, role_name, status,created_at,updated_at) VALUES (6,'TRANSFER-MAKER','ACTIVE', 1628770353688,1628770353688);
INSERT INTO ROLE (id, role_name, status,created_at,updated_at) VALUES (7,'TRANSFER-CHECKER','ACTIVE', 1628770353688,1628770353688);

INSERT INTO USER (id, username,password,email,reset_password,department,status) VALUES (1,'TSPADMIN','$2b$10$9TwwKC59EwNHU3XIN.ytruagUL90M6IJWxwAM4zm3g9yJP6L.ajO.','Tspadmin@123.com',True, 'sbi', 'ACTIVE');
INSERT INTO USER (id, username,password,email,reset_password,department,status) VALUES (2,'ISSUANCE-MAKER','$2b$10$9TwwKC59EwNHU3XIN.ytruagUL90M6IJWxwAM4zm3g9yJP6L.ajO.','issmaker@123.com',True, 'sbi', 'ACTIVE');
INSERT INTO USER (id, username,password,email,reset_password,department,status) VALUES (3,'ISSUANCE-CHECKER','$2b$10$9TwwKC59EwNHU3XIN.ytruagUL90M6IJWxwAM4zm3g9yJP6L.ajO.','issChecker@123.com',True, 'sbi', 'ACTIVE');
INSERT INTO USER (id, username,password,email,reset_password,department,status) VALUES (4,'REDEEM-MAKER','$2b$10$9TwwKC59EwNHU3XIN.ytruagUL90M6IJWxwAM4zm3g9yJP6L.ajO.','redmaker@123.com',True, 'sbi', 'ACTIVE');
INSERT INTO USER (id, username,password,email,reset_password,department,status) VALUES (5,'REDEEM-CHECKER','$2b$10$9TwwKC59EwNHU3XIN.ytruagUL90M6IJWxwAM4zm3g9yJP6L.ajO.','redChecker@123.com',True, 'sbi', 'ACTIVE');
INSERT INTO USER (id, username,password,email,reset_password,department,status) VALUES (6,'TRANSFER-MAKER','$2b$10$9TwwKC59EwNHU3XIN.ytruagUL90M6IJWxwAM4zm3g9yJP6L.ajO.','transMaker@123.com',True, 'sbi', 'ACTIVE');
INSERT INTO USER (id, username,password,email,reset_password,department,status) VALUES (7,'TRANSFER-CHECKER','$2b$10$9TwwKC59EwNHU3XIN.ytruagUL90M6IJWxwAM4zm3g9yJP6L.ajO.','transChecker@123.com',True, 'sbi', 'ACTIVE');


INSERT INTO USER_ROLE(user_id,role_id,created_at,updated_at) VALUES(1,1,1628770353688,1628770353688);
INSERT INTO USER_ROLE(user_id,role_id,created_at,updated_at) VALUES(2,2,1628770353688,1628770353688);
INSERT INTO USER_ROLE(user_id,role_id,created_at,updated_at) VALUES(3,3,1628770353688,1628770353688);
INSERT INTO USER_ROLE(user_id,role_id,created_at,updated_at) VALUES(4,4,1628770353688,1628770353688);
INSERT INTO USER_ROLE(user_id,role_id,created_at,updated_at) VALUES(5,5,1628770353688,1628770353688);
INSERT INTO USER_ROLE(user_id,role_id,created_at,updated_at) VALUES(6,6,1628770353688,1628770353688);
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
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,11,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,12,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,13,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,14,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,15,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,16,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (1,17,1628770353688,1628770353688);


INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (2,5,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (2,7,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (2,8,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (2,6,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (2,9,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (2,10,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (2,11,1628770353688,1628770353688);

INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (3,8,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (3,5,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (3,6,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (3,9,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (3,10,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (3,11,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (3,17,1628770353688,1628770353688);


INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (4,5,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (4,14,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (4,15,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (4,6,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (4,9,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (4,10,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (4,11,1628770353688,1628770353688);

INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (5,5,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (5,15,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (5,6,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (5,9,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (5,10,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (5,11,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (5,17,1628770353688,1628770353688);


INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (6,5,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (6,13,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (6,16,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (6,6,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (6,9,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (6,10,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (6,11,1628770353688,1628770353688);

INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (7,5,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (7,16,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (7,6,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (7,9,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (7,10,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (7,11,1628770353688,1628770353688);
INSERT INTO ROLE_PERMISSION (role_id,permission_id,created_at,updated_at) VALUES (7,17,1628770353688,1628770353688);

