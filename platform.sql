use cbdc;

CREATE TABLE rule_check (config_key text,config_value text,config_type text,created_at timestamp,updated_at timestamp,PRIMARY KEY (config_key, config_type));
insert into rule_check (config_key,config_value,config_type,created_at) values('0fb8b5a1-be7b-4fd3-948c-df3f63e6423c','eyJrZXkiOiAiRVhQSVJFQUZURVIiLCAidmFsdWUiOiIxMDAifQo=','RISK_RULE','2022-01-31T10:05:00+00:00');
insert into rule_check (config_key,config_value,config_type,created_at) values('415a444f-4367-403c-b796-a960726ae07d','eyJrZXkiOiAiTUlOQU1PVU5UIiwgInZhbHVlIjoiMTAifQo=','RISK_RULE','2022-01-31T15:35:00+05:30');

create table bank_info (
  bank_name text,
  nbin int,
  ifsc_code text,
  bank_address text,
  member_id int,
  limits text,
  rtsp_version text,
  rtsp_endpoints text,
  supported_apis text,
  rate_limit text,
  org_id int,
  msp_id text,
  signer_cert text,
  encrypter_cert text,
  ssl_cert text,
  PRIMARY KEY (member_id, ifsc_code)
);

create table pso_info (
  end_points text,
  member_id int,
  org_id int,
  signer_cert text,
  encrypter_cert text,
  ssl_cert text,
  PRIMARY KEY (org_id)
);

INSERT INTO user (id, username,email,password,reset_password,department,status) VALUES (1,'PLADMIN','admin@platform.com','$2b$10$9TwwKC59EwNHU3XIN.ytruagUL90M6IJWxwAM4zm3g9yJP6L.ajO.',false, 'platform','ACTIVE');

INSERT INTO permission (id,name,status,created_at,updated_at) VALUES (1,'CREATE_USER','ACTIVE','2021-08-12 17:42:33','2021-08-12 17:42:33');

INSERT INTO role (id, role_name, status,created_at,updated_at) VALUES (1,'Administrator','ACTIVE', '2021-08-12 17:42:33','2021-08-12 17:42:33');

INSERT INTO role_permission (role_id,permission_id,created_at,updated_at) VALUES (1,1,'2021-08-12 17:42:33','2021-08-12 17:42:33');

INSERT INTO user_role(user_id,role_id,created_at,updated_at) VALUES(1,1,'2021-08-12 17:42:33','2021-08-12 17:42:33');
