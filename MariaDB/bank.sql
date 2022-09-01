CREATE DATABASE  IF NOT EXISTS cbdc CHARACTER SET utf8;

use cbdc;

CREATE TABLE IF NOT EXISTS  liquidity_management (
    denomination varchar(255),
    min_threshhold int,
    max_threshhold int,
    batch_size int,
    PRIMARY KEY (denomination)
);

CREATE TABLE IF NOT EXISTS  system_tokens (
    tokenId varchar(255) PRIMARY KEY,
    status text
);


CREATE TABLE IF NOT EXISTS cbdc.permission (
    id int(11) PRIMARY KEY,
    created_at timestamp,
    name text,
    status text,
    updated_at timestamp
);

CREATE TABLE IF NOT EXISTS cbdc.role (
    id int(11) PRIMARY KEY,
    created_at timestamp,
    role_name text,
    status text,
    updated_at timestamp
);

CREATE TABLE  IF NOT EXISTS  cbdc.user_role (
    user_id int(11),
    role_id int(11),
    created_at timestamp,
    updated_at timestamp,
    PRIMARY KEY (user_id, role_id)
);

CREATE TABLE  IF NOT EXISTS  cbdc.user (
    username varchar(512) PRIMARY KEY,
    department text,
    email text,
    id int,
    password text,
    reset_password boolean,
    status text
);

CREATE TABLE IF NOT EXISTS cbdc.role_permission (
    role_id int(11),
    permission_id int(11),
    created_at timestamp,
    updated_at timestamp,
    PRIMARY KEY (role_id, permission_id)
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


INSERT INTO permission (id,name,status,created_at,updated_at) VALUES (1,'CREATE_USER','ACTIVE','2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO permission (id,name,status,created_at,updated_at) VALUES (2,'VIEW_USER','ACTIVE','2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO permission (id,name,status,created_at,updated_at) VALUES (12,'VIEW_ROLES','ACTIVE','2021-08-12 17:42:34','2021-08-12 17:42:34');

INSERT INTO permission (id,name,status,created_at,updated_at) VALUES (3,'CREATE_VAULT','ACTIVE','2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO permission (id,name,status,created_at,updated_at) VALUES (4,'VIEW_VAULT','ACTIVE','2021-08-12 17:42:33','2021-08-12 17:42:33');

INSERT INTO permission (id,name,status,created_at,updated_at) VALUES (7,'REQUEST_ISSUANCE','ACTIVE','2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO permission (id,name,status,created_at,updated_at) VALUES (8,'VIEW_ISSUANCE_REQUEST','ACTIVE','2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO permission (id,name,status,created_at,updated_at) VALUES (17,'APPROVE_REJECT','ACTIVE','2021-08-12 17:42:34','2021-08-12 17:42:34');

INSERT INTO permission (id,name,status,created_at,updated_at) VALUES (5,'VIEW_BALANCE','ACTIVE','2021-08-12 17:42:34','2021-08-12 17:42:34');
INSERT INTO permission (id,name,status,created_at,updated_at) VALUES (6,'VIEW_TRANSACTIONS_LIST','ACTIVE','2021-08-12 17:42:34','2021-08-12 17:42:34');

INSERT INTO permission (id,name,status,created_at,updated_at) VALUES (9,'VIEW_TOKENS_LIST','ACTIVE','2021-08-12 17:42:34','2021-08-12 17:42:34');
INSERT INTO permission (id,name,status,created_at,updated_at) VALUES (10,'VIEW_TOKEN_DETAILS','ACTIVE','2021-08-12 17:42:34','2021-08-12 17:42:34');
INSERT INTO permission (id,name,status,created_at,updated_at) VALUES (11,'VIEW_ID_DASHBOARD','ACTIVE','2021-08-12 17:42:34','2021-08-12 17:42:34');

INSERT INTO permission (id,name,status,created_at,updated_at) VALUES (13,'REQUEST_TRANSFER','ACTIVE','2021-08-12 17:42:34','2021-08-12 17:42:34');
INSERT INTO permission (id,name,status,created_at,updated_at) VALUES (14,'REDEEM_TOKEN','ACTIVE','2021-08-12 17:42:34','2021-08-12 17:42:34');
INSERT INTO permission (id,name,status,created_at,updated_at) VALUES (15,'VIEW_REDEEM_REQUEST','ACTIVE','2021-08-12 17:42:34','2021-08-12 17:42:34');
INSERT INTO permission (id,name,status,created_at,updated_at) VALUES (16,'VIEW_TRANSFER_REQUEST','ACTIVE','2021-08-12 17:42:34','2021-08-12 17:42:34');



INSERT INTO role (id, role_name, status,created_at,updated_at) VALUES (1,'ADMINISTRATOR','ACTIVE', '2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role (id, role_name, status,created_at,updated_at) VALUES (2,'ISSUANCE-MAKER','ACTIVE', '2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role (id, role_name, status,created_at,updated_at) VALUES (3,'ISSUANCE-CHECKER','ACTIVE', '2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role (id, role_name, status,created_at,updated_at) VALUES (4,'REDEEM-MAKER','ACTIVE', '2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role (id, role_name, status,created_at,updated_at) VALUES (5,'REDEEM-CHECKER','ACTIVE', '2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role (id, role_name, status,created_at,updated_at) VALUES (6,'TRANSFER-MAKER','ACTIVE', '2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role (id, role_name, status,created_at,updated_at) VALUES (7,'TRANSFER-CHECKER','ACTIVE', '2021-08-12 17:42:33','2021-08-12 17:42:33');

INSERT INTO user (id, username,password,email,reset_password,department,status) VALUES (1,'TSPADMIN','$2b$10$9TwwKC59EwNHU3XIN.ytruagUL90M6IJWxwAM4zm3g9yJP6L.ajO.','Tspadmin@123.com',True, 'sbi', 'ACTIVE');
INSERT INTO user (id, username,password,email,reset_password,department,status) VALUES (2,'ISSUANCE-MAKER','$2b$10$9TwwKC59EwNHU3XIN.ytruagUL90M6IJWxwAM4zm3g9yJP6L.ajO.','issmaker@123.com',True, 'sbi', 'ACTIVE');
INSERT INTO user (id, username,password,email,reset_password,department,status) VALUES (3,'ISSUANCE-CHECKER','$2b$10$9TwwKC59EwNHU3XIN.ytruagUL90M6IJWxwAM4zm3g9yJP6L.ajO.','issChecker@123.com',True, 'sbi', 'ACTIVE');
INSERT INTO user (id, username,password,email,reset_password,department,status) VALUES (4,'REDEEM-MAKER','$2b$10$9TwwKC59EwNHU3XIN.ytruagUL90M6IJWxwAM4zm3g9yJP6L.ajO.','redmaker@123.com',True, 'sbi', 'ACTIVE');
INSERT INTO user (id, username,password,email,reset_password,department,status) VALUES (5,'REDEEM-CHECKER','$2b$10$9TwwKC59EwNHU3XIN.ytruagUL90M6IJWxwAM4zm3g9yJP6L.ajO.','redChecker@123.com',True, 'sbi', 'ACTIVE');
INSERT INTO user (id, username,password,email,reset_password,department,status) VALUES (6,'TRANSFER-MAKER','$2b$10$9TwwKC59EwNHU3XIN.ytruagUL90M6IJWxwAM4zm3g9yJP6L.ajO.','transMaker@123.com',True, 'sbi', 'ACTIVE');
INSERT INTO user (id, username,password,email,reset_password,department,status) VALUES (7,'TRANSFER-CHECKER','$2b$10$9TwwKC59EwNHU3XIN.ytruagUL90M6IJWxwAM4zm3g9yJP6L.ajO.','transChecker@123.com',True, 'sbi', 'ACTIVE');


INSERT INTO user_role(user_id,role_id,created_at,updated_at) VALUES(1,1,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO user_role(user_id,role_id,created_at,updated_at) VALUES(2,2,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO user_role(user_id,role_id,created_at,updated_at) VALUES(3,3,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO user_role(user_id,role_id,created_at,updated_at) VALUES(4,4,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO user_role(user_id,role_id,created_at,updated_at) VALUES(5,5,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO user_role(user_id,role_id,created_at,updated_at) VALUES(6,6,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO user_role(user_id,role_id,created_at,updated_at) VALUES(7,7,'2021-08-12 17:42:33','2021-08-12 17:42:33');

INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (1,1,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (1,2,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (1,3,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (1,4,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (1,5,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (1,6,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (1,7,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (1,8,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (1,9,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (1,10,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (1,11,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (1,12,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (1,13,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (1,14,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (1,15,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (1,16,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (1,17,'2021-08-12 17:42:33','2021-08-12 17:42:33');


INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (2,5,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (2,7,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (2,8,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (2,6,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (2,9,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (2,10,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (2,11,'2021-08-12 17:42:33','2021-08-12 17:42:33');

INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (3,8,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (3,5,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (3,6,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (3,9,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (3,10,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (3,11,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (3,17,'2021-08-12 17:42:33','2021-08-12 17:42:33');


INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (4,5,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (4,14,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (4,15,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (4,6,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (4,9,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (4,10,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (4,11,'2021-08-12 17:42:33','2021-08-12 17:42:33');

INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (5,5,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (5,15,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (5,6,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (5,9,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (5,10,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (5,11,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (5,17,'2021-08-12 17:42:33','2021-08-12 17:42:33');


INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (6,5,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (6,13,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (6,16,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (6,6,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (6,9,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (6,10,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (6,11,'2021-08-12 17:42:33','2021-08-12 17:42:33');

INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (7,5,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (7,16,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (7,6,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (7,9,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (7,10,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (7,11,'2021-08-12 17:42:33','2021-08-12 17:42:33');
INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (7,17,'2021-08-12 17:42:33','2021-08-12 17:42:33');