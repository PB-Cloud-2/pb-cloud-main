--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

--SET statement_timeout = 0;
--SET lock_timeout = 0;
--SET idle_in_transaction_session_timeout = 0;
--SET client_encoding = 'UTF8';
--SET standard_conforming_strings = on;
--SELECT pg_catalog.set_config('search_path', '', false);
--SET check_function_bodies = false;
--SET client_min_messages = warning;
--SET row_security = off;

--
-- Data for Name: usercredential; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE merk ALTER COLUMN systemid SET DEFAULT merk_systemid_seq.nextval ;

INSERT INTO public.usercredential (systemid, username, pwd, isenable, expiredate, notes, sys_create_ip, sys_last_login, socialmedia_type, registration_token) VALUES (7, 'JohnFon', '$2a$10$uPGOFHC4SZa5wZMwp7kHZ.LQhR1x9v6dqTH6Lo9OEdjp10/jJlYmC', false, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential (systemid, username, pwd, isenable, expiredate, notes, sys_create_ip, sys_last_login, socialmedia_type, registration_token) VALUES (9, 'Dhios', '$2a$10$YLQx9aWduBQK/LIdTXy69.BslYlD5r2PhRBHj5KyCHF05aeTOBlEK', false, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential (systemid, username, pwd, isenable, expiredate, notes, sys_create_ip, sys_last_login, socialmedia_type, registration_token) VALUES (11,'Jenny', '$2a$10$me7fq9ediIvgdD/bNwXApux2fa12TKZv2ZX5jZ5fZy/62.QYESi9a', false, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential (systemid, username, pwd, isenable, expiredate, notes, sys_create_ip, sys_last_login, socialmedia_type, registration_token) VALUES (14,'hitman', '$2a$10$2ENRbgVqthlBweoZAD//bunKXAABcw/asKsqkVk89zM.iRj7hn6Py', false, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential (systemid, username, pwd, isenable, expiredate, notes, sys_create_ip, sys_last_login, socialmedia_type, registration_token) VALUES (12,'super', '$2a$10$zo.wzl4VZO2Ab7d87c0b5eCz6Dj7J81sH8jHbJtFl2ET2BCeRwMZe', false, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential (systemid, username, pwd, isenable, expiredate, notes, sys_create_ip, sys_last_login, socialmedia_type, registration_token) VALUES (16,'bossman', '$2a$10$vLWsVHssQpQXHR.neA6FkuqQn3DiYeXqs3E5HCW/xv4C2Yn4Ob/uu', false, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential (systemid, username, pwd, isenable, expiredate, notes, sys_create_ip, sys_last_login, socialmedia_type, registration_token) VALUES (17,'reno', '$2a$10$T7TEORabObFtbf3jz1hpyu0iaTEkkiIHXM.RSFk32zmcbUEugC1jO', false, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential (systemid, username, pwd, isenable, expiredate, notes, sys_create_ip, sys_last_login, socialmedia_type, registration_token) VALUES (18,'json', '$2a$10$e0Z6dV2WxBzaovGCfQjprO0tixZR.65rxIoNfJq0dv7QWuTzhVa.G', false, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential (systemid, username, pwd, isenable, expiredate, notes, sys_create_ip, sys_last_login, socialmedia_type, registration_token) VALUES (20,'norak', '$2a$10$4E7pwzhsuKMzK7icauWG1.AqnM.V.hAdThFmUIJabBbko1AP6mBAG', false, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential (systemid, username, pwd, isenable, expiredate, notes, sys_create_ip, sys_last_login, socialmedia_type, registration_token) VALUES (22,'yamko', '$2a$10$m6WuyxDa9DS/EW0R0K4w..sWFtVC9CD4W4S.C5huD1ioA7vbKmuxe', false, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential (systemid, username, pwd, isenable, expiredate, notes, sys_create_ip, sys_last_login, socialmedia_type, registration_token) VALUES (23,'kaiho', '$2a$10$L0.gHAlrd06YzPUAQze7Pe9ZfN./K4DPq2Bt2PhJRf8hMxbTBXqrq', false, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential (systemid, username, pwd, isenable, expiredate, notes, sys_create_ip, sys_last_login, socialmedia_type, registration_token) VALUES (25,'Rikku', '$2a$10$pvGYbDdBSC/rOqfwBXQG2eFdNg.9TA1EoZCMwE5LxBtQipwC8gzVe', false, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential (systemid, username, pwd, isenable, expiredate, notes, sys_create_ip, sys_last_login, socialmedia_type, registration_token) VALUES (27,'kiho', '$2a$10$9w6TMBIKNzpIMIP0ANKZUO1r0inoEd53vXKuVwoNKTDbOtgsmkrN2', false, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential (systemid, username, pwd, isenable, expiredate, notes, sys_create_ip, sys_last_login, socialmedia_type, registration_token) VALUES (1,'admin', '$2a$10$m6WuyxDa9DS/EW0R0K4w..sWFtVC9CD4W4S.C5huD1ioA7vbKmuxe', true, NULL, 'Default', NULL, NULL, NULL, NULL);


--
-- Data for Name: contact; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.contact (systemid, usercred_id, firstname, lastname, email, phone, birthdate, citizenid, citizenid_type, type) VALUES (7, 7, 'Johny', 'Fonny', 'wacksack@com', NULL, NULL, NULL, 0, 'TYPE CUSTOMER');
INSERT INTO public.contact (systemid, usercred_id, firstname, lastname, email, phone, birthdate, citizenid, citizenid_type, type) VALUES (9, 9, 'Dhios', 'Chandra', 'dhas@fff.com', NULL, NULL, NULL, 0, 'TYPE SALES OFFICER');
INSERT INTO public.contact (systemid, usercred_id, firstname, lastname, email, phone, birthdate, citizenid, citizenid_type, type) VALUES (11, 11, 'Jenny', 'Fahra', 'wacksack@com', NULL, NULL, NULL, 0, 'TYPE CUSTOMER');
INSERT INTO public.contact (systemid, usercred_id, firstname, lastname, email, phone, birthdate, citizenid, citizenid_type, type) VALUES (14, 14, 'Bret', 'Hart', 'hitman@com', NULL, NULL, NULL, 0, 'TYPE CUSTOMER');
INSERT INTO public.contact (systemid, usercred_id, firstname, lastname, email, phone, birthdate, citizenid, citizenid_type, type) VALUES (12, 12, 'Suppa', 'Duppa', 'supadupa@fff.com', NULL, NULL, NULL, 0, 'TYPE SALES OFFICER');
INSERT INTO public.contact (systemid, usercred_id, firstname, lastname, email, phone, birthdate, citizenid, citizenid_type, type) VALUES (16, 16, 'Boss', 'Man', 'bossman@fff.com', NULL, NULL, NULL, 0, 'TYPE SALES OFFICER');
INSERT INTO public.contact (systemid, usercred_id, firstname, lastname, email, phone, birthdate, citizenid, citizenid_type, type) VALUES (17, 17, 'Jean', 'Reno', 'jeanreno@com', NULL, NULL, NULL, 0, 'TYPE CUSTOMER');
INSERT INTO public.contact (systemid, usercred_id, firstname, lastname, email, phone, birthdate, citizenid, citizenid_type, type) VALUES (18, 18, 'Jay', 'Son', 'jayson@com', NULL, NULL, NULL, 0, 'TYPE CUSTOMER');
INSERT INTO public.contact (systemid, usercred_id, firstname, lastname, email, phone, birthdate, citizenid, citizenid_type, type) VALUES (20, 20, 'Nong', 'Jing', 'nojing@fff.com', NULL, NULL, NULL, 0, 'TYPE SALES OFFICER');
INSERT INTO public.contact (systemid, usercred_id, firstname, lastname, email, phone, birthdate, citizenid, citizenid_type, type) VALUES (22, 22, 'Yam', 'Ko', 'yamko@com', NULL, NULL, NULL, 0, 'TYPE CUSTOMER');
INSERT INTO public.contact (systemid, usercred_id, firstname, lastname, email, phone, birthdate, citizenid, citizenid_type, type) VALUES (23, 23, 'Kal', 'Be', 'kalbe@com', NULL, NULL, NULL, 0, 'TYPE CUSTOMER');
INSERT INTO public.contact (systemid, usercred_id, firstname, lastname, email, phone, birthdate, citizenid, citizenid_type, type) VALUES (25, 25, 'Reku', 'Seku', 'rikusiku@fff.com', NULL, NULL, NULL, 0, 'TYPE SALES OFFICER');
INSERT INTO public.contact (systemid, usercred_id, firstname, lastname, email, phone, birthdate, citizenid, citizenid_type, type) VALUES (27, 27, 'Ki', 'Ho', 'taiho@com', NULL, NULL, NULL, 0, 'TYPE CUSTOMER');
INSERT INTO public.contact (systemid, usercred_id, firstname, lastname, email, phone, birthdate, citizenid, citizenid_type, type) VALUES (1, 1, 'Admin', NULL, 'admin@yahoo.com', '087878787878', NULL, NULL, 0, 'TYPE ADMIN');


--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.admin (systemid) VALUES (1);


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.customer (systemid, timezone) VALUES (7, 0);
INSERT INTO public.customer (systemid, timezone) VALUES (11, 0);
INSERT INTO public.customer (systemid, timezone) VALUES (14, 0);
INSERT INTO public.customer (systemid, timezone) VALUES (17, 0);
INSERT INTO public.customer (systemid, timezone) VALUES (18, 0);
INSERT INTO public.customer (systemid, timezone) VALUES (22, 0);
INSERT INTO public.customer (systemid, timezone) VALUES (23, 0);
INSERT INTO public.customer (systemid, timezone) VALUES (27, 0);


--
-- Data for Name: merk; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.merk (systemid, name, manufacturer, memo) VALUES (1, 'Bintang', '', '');
INSERT INTO public.merk (systemid, name, manufacturer, memo) VALUES (3, 'Raja', 'RAM', NULL);


--
-- Data for Name: metrics; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.metrics (name_s50, units, memo, metric_rinci) VALUES ('Pcs', 1, '', NULL);


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.product (systemid, name, memo, active, last_sync) VALUES (2, 'Koda', '', true, '2018-04-27 15:35:09.148');
INSERT INTO public.product (systemid, name, memo, active, last_sync) VALUES (6, 'TDA', '', true, '2018-04-27 15:46:23.967');
INSERT INTO public.product (systemid, name, memo, active, last_sync) VALUES (7, 'Merah', '', true, '2018-04-27 15:47:36.22');
INSERT INTO public.product (systemid, name, memo, active, last_sync) VALUES (18, 'Tong', '', true, '2018-05-02 12:14:10.97');
INSERT INTO public.product (systemid, name, memo, active, last_sync) VALUES (20, 'Mon', '', true, '2018-05-11 10:48:15.7');
INSERT INTO public.product (systemid, name, memo, active, last_sync) VALUES (23, 'Topeng', '', true, '2018-05-14 10:09:03.461');
INSERT INTO public.product (systemid, name, memo, active, last_sync) VALUES (24, 'Koka Kola', '', true, '2018-05-14 10:09:34.322');


--
-- Data for Name: item; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.item (systemid, name_s50_inv, id_merk, code_item_s50, min_stock, sku, imagebytes) VALUES (2, 'Pcs', 1, 'KDA', NULL, '', NULL);
INSERT INTO public.item (systemid, name_s50_inv, id_merk, code_item_s50, min_stock, sku, imagebytes) VALUES (6, 'Pcs', 1, 'TAD', NULL, '', NULL);
INSERT INTO public.item (systemid, name_s50_inv, id_merk, code_item_s50, min_stock, sku, imagebytes) VALUES (7, 'Pcs', 1, 'MRH', NULL, '', NULL);
INSERT INTO public.item (systemid, name_s50_inv, id_merk, code_item_s50, min_stock, sku, imagebytes) VALUES (18, 'Pcs', 1, 'TON', NULL, '', NULL);
INSERT INTO public.item (systemid, name_s50_inv, id_merk, code_item_s50, min_stock, sku, imagebytes) VALUES (20, 'Pcs', 1, 'sss', NULL, '', NULL);
INSERT INTO public.item (systemid, name_s50_inv, id_merk, code_item_s50, min_stock, sku, imagebytes) VALUES (23, 'Pcs', 1, 'tph', NULL, '', NULL);
INSERT INTO public.item (systemid, name_s50_inv, id_merk, code_item_s50, min_stock, sku, imagebytes) VALUES (24, 'Pcs', 1, 'ccc', NULL, '', NULL);


--
-- Data for Name: cartdetail; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.cartdetail (cust, item, qty, reqnote) VALUES (11, 6, 200, 'None');
INSERT INTO public.cartdetail (cust, item, qty, reqnote) VALUES (11, 7, 44, 'None');
INSERT INTO public.cartdetail (cust, item, qty, reqnote) VALUES (14, 7, 444, 'Iyah');


--
-- Data for Name: clientdetails; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: construction; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.country (iso_code_s2, name) VALUES ('AD', 'Andorra');
INSERT INTO public.country (iso_code_s2, name) VALUES ('AE', 'United Arab Emirates');
INSERT INTO public.country (iso_code_s2, name) VALUES ('AF', 'Afghanistan');
INSERT INTO public.country (iso_code_s2, name) VALUES ('AG', 'Antigua And Barbuda');
INSERT INTO public.country (iso_code_s2, name) VALUES ('AI', 'Anguilla');
INSERT INTO public.country (iso_code_s2, name) VALUES ('AL', 'Albania');
INSERT INTO public.country (iso_code_s2, name) VALUES ('AM', 'Armenia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('AN', 'Netherlands Antilles');
INSERT INTO public.country (iso_code_s2, name) VALUES ('AO', 'Angola');
INSERT INTO public.country (iso_code_s2, name) VALUES ('AQ', 'Antarctica');
INSERT INTO public.country (iso_code_s2, name) VALUES ('AR', 'Argentina');
INSERT INTO public.country (iso_code_s2, name) VALUES ('AS', 'American Samoa');
INSERT INTO public.country (iso_code_s2, name) VALUES ('AT', 'Austria');
INSERT INTO public.country (iso_code_s2, name) VALUES ('AU', 'Australia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('AW', 'Aruba');
INSERT INTO public.country (iso_code_s2, name) VALUES ('AZ', 'Azerbaijan');
INSERT INTO public.country (iso_code_s2, name) VALUES ('BA', 'Bosnia Hercegovenia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('BB', 'Barbados');
INSERT INTO public.country (iso_code_s2, name) VALUES ('BD', 'Bangladesh');
INSERT INTO public.country (iso_code_s2, name) VALUES ('BE', 'Belgium');
INSERT INTO public.country (iso_code_s2, name) VALUES ('BF', 'Burkina Faso');
INSERT INTO public.country (iso_code_s2, name) VALUES ('BG', 'Bulgaria');
INSERT INTO public.country (iso_code_s2, name) VALUES ('BH', 'Bahrain');
INSERT INTO public.country (iso_code_s2, name) VALUES ('BI', 'Burundi');
INSERT INTO public.country (iso_code_s2, name) VALUES ('BJ', 'Benin');
INSERT INTO public.country (iso_code_s2, name) VALUES ('BM', 'Bermuda');
INSERT INTO public.country (iso_code_s2, name) VALUES ('BN', 'Brunei Darussalam');
INSERT INTO public.country (iso_code_s2, name) VALUES ('BO', 'Bolivia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('BR', 'Brazil');
INSERT INTO public.country (iso_code_s2, name) VALUES ('BS', 'Bahamas');
INSERT INTO public.country (iso_code_s2, name) VALUES ('BT', 'Bhutan');
INSERT INTO public.country (iso_code_s2, name) VALUES ('BV', 'Bouvet Island');
INSERT INTO public.country (iso_code_s2, name) VALUES ('BW', 'Botswana');
INSERT INTO public.country (iso_code_s2, name) VALUES ('BY', 'Belarus');
INSERT INTO public.country (iso_code_s2, name) VALUES ('BZ', 'Belize');
INSERT INTO public.country (iso_code_s2, name) VALUES ('CA', 'Canada');
INSERT INTO public.country (iso_code_s2, name) VALUES ('CC', 'Cocos (Keeling) Islands');
INSERT INTO public.country (iso_code_s2, name) VALUES ('CD', 'Congo');
INSERT INTO public.country (iso_code_s2, name) VALUES ('CF', 'Central African Republic');
INSERT INTO public.country (iso_code_s2, name) VALUES ('CG', 'Congo');
INSERT INTO public.country (iso_code_s2, name) VALUES ('CH', 'Switzerland');
INSERT INTO public.country (iso_code_s2, name) VALUES ('CI', 'Cote D''Ivoire');
INSERT INTO public.country (iso_code_s2, name) VALUES ('CK', 'Cook Islands');
INSERT INTO public.country (iso_code_s2, name) VALUES ('CL', 'Chile');
INSERT INTO public.country (iso_code_s2, name) VALUES ('CM', 'Cameroon');
INSERT INTO public.country (iso_code_s2, name) VALUES ('CN', 'PEOPLES REPUBLIC OF CHINA');
INSERT INTO public.country (iso_code_s2, name) VALUES ('CO', 'Colombia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('CR', 'Costa Rica');
INSERT INTO public.country (iso_code_s2, name) VALUES ('CU', 'Cuba');
INSERT INTO public.country (iso_code_s2, name) VALUES ('CV', 'Cape Verde');
INSERT INTO public.country (iso_code_s2, name) VALUES ('CX', 'Christmas Island');
INSERT INTO public.country (iso_code_s2, name) VALUES ('CY', 'Cyprus');
INSERT INTO public.country (iso_code_s2, name) VALUES ('CZ', 'Czech Republic');
INSERT INTO public.country (iso_code_s2, name) VALUES ('DE', 'Germany');
INSERT INTO public.country (iso_code_s2, name) VALUES ('DJ', 'Djibouti');
INSERT INTO public.country (iso_code_s2, name) VALUES ('DK', 'Denmark');
INSERT INTO public.country (iso_code_s2, name) VALUES ('DM', 'Dominica');
INSERT INTO public.country (iso_code_s2, name) VALUES ('DO', 'Dominican Republic');
INSERT INTO public.country (iso_code_s2, name) VALUES ('DZ', 'Algeria');
INSERT INTO public.country (iso_code_s2, name) VALUES ('EC', 'Ecuador');
INSERT INTO public.country (iso_code_s2, name) VALUES ('EE', 'Estonia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('EG', 'Egypt');
INSERT INTO public.country (iso_code_s2, name) VALUES ('EH', 'Western Sahara');
INSERT INTO public.country (iso_code_s2, name) VALUES ('ER', 'Eritrea');
INSERT INTO public.country (iso_code_s2, name) VALUES ('ES', 'Spain');
INSERT INTO public.country (iso_code_s2, name) VALUES ('ET', 'Ethiopia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('EU', 'Europe Comunity');
INSERT INTO public.country (iso_code_s2, name) VALUES ('FI', 'Finland');
INSERT INTO public.country (iso_code_s2, name) VALUES ('FJ', 'Fiji');
INSERT INTO public.country (iso_code_s2, name) VALUES ('FK', 'Falkland Islands (Malvinas)');
INSERT INTO public.country (iso_code_s2, name) VALUES ('FM', 'Micronesia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('FO', 'Faeroe Islands');
INSERT INTO public.country (iso_code_s2, name) VALUES ('FR', 'France');
INSERT INTO public.country (iso_code_s2, name) VALUES ('GA', 'Gabon');
INSERT INTO public.country (iso_code_s2, name) VALUES ('GB', 'United Kingdom');
INSERT INTO public.country (iso_code_s2, name) VALUES ('GD', 'Grenada');
INSERT INTO public.country (iso_code_s2, name) VALUES ('GE', 'Georgia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('GF', 'French Guiana');
INSERT INTO public.country (iso_code_s2, name) VALUES ('GH', 'Ghana');
INSERT INTO public.country (iso_code_s2, name) VALUES ('GI', 'Gibraltar');
INSERT INTO public.country (iso_code_s2, name) VALUES ('GL', 'Greenland');
INSERT INTO public.country (iso_code_s2, name) VALUES ('GM', 'Gambia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('GN', 'Guinea');
INSERT INTO public.country (iso_code_s2, name) VALUES ('GP', 'Guadeloupe');
INSERT INTO public.country (iso_code_s2, name) VALUES ('GQ', 'Equatorial Guinea');
INSERT INTO public.country (iso_code_s2, name) VALUES ('GR', 'Greece');
INSERT INTO public.country (iso_code_s2, name) VALUES ('GS', 'S.georgia & S.sandwich Islands');
INSERT INTO public.country (iso_code_s2, name) VALUES ('GT', 'Guatemala');
INSERT INTO public.country (iso_code_s2, name) VALUES ('GU', 'Guam');
INSERT INTO public.country (iso_code_s2, name) VALUES ('GW', 'Guinea-Bissau');
INSERT INTO public.country (iso_code_s2, name) VALUES ('GY', 'Guyana');
INSERT INTO public.country (iso_code_s2, name) VALUES ('HK', 'Hong Kong');
INSERT INTO public.country (iso_code_s2, name) VALUES ('HM', 'Heard And Mcdonald Islands');
INSERT INTO public.country (iso_code_s2, name) VALUES ('HN', 'Honduras');
INSERT INTO public.country (iso_code_s2, name) VALUES ('HR', 'Croatia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('HT', 'Haiti');
INSERT INTO public.country (iso_code_s2, name) VALUES ('HU', 'Hungary');
INSERT INTO public.country (iso_code_s2, name) VALUES ('ID', 'Indonesia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('IE', 'Ireland');
INSERT INTO public.country (iso_code_s2, name) VALUES ('IL', 'Israel');
INSERT INTO public.country (iso_code_s2, name) VALUES ('IN', 'India');
INSERT INTO public.country (iso_code_s2, name) VALUES ('IO', 'British Indian Ocean Teritory');
INSERT INTO public.country (iso_code_s2, name) VALUES ('IQ', 'Iraq');
INSERT INTO public.country (iso_code_s2, name) VALUES ('IR', 'Iran (Islamic Republic Of)');
INSERT INTO public.country (iso_code_s2, name) VALUES ('IS', 'Iceland');
INSERT INTO public.country (iso_code_s2, name) VALUES ('IT', 'Italy');
INSERT INTO public.country (iso_code_s2, name) VALUES ('IW', 'India Water Feedering');
INSERT INTO public.country (iso_code_s2, name) VALUES ('JM', 'Jamaica');
INSERT INTO public.country (iso_code_s2, name) VALUES ('JO', 'Jordan');
INSERT INTO public.country (iso_code_s2, name) VALUES ('JP', 'Japan');
INSERT INTO public.country (iso_code_s2, name) VALUES ('KE', 'Kenya');
INSERT INTO public.country (iso_code_s2, name) VALUES ('KG', 'Kyrgyzstan');
INSERT INTO public.country (iso_code_s2, name) VALUES ('KH', 'Cambodia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('KI', 'Kiribati');
INSERT INTO public.country (iso_code_s2, name) VALUES ('KM', 'Comoros');
INSERT INTO public.country (iso_code_s2, name) VALUES ('KN', 'Saint Kitts And Nevis');
INSERT INTO public.country (iso_code_s2, name) VALUES ('KP', 'Korea');
INSERT INTO public.country (iso_code_s2, name) VALUES ('KR', 'Korea');
INSERT INTO public.country (iso_code_s2, name) VALUES ('KW', 'Kuwait');
INSERT INTO public.country (iso_code_s2, name) VALUES ('KY', 'Cayman Islands');
INSERT INTO public.country (iso_code_s2, name) VALUES ('KZ', 'Kazakhstan');
INSERT INTO public.country (iso_code_s2, name) VALUES ('LA', 'Lao People''s Democratic Republic');
INSERT INTO public.country (iso_code_s2, name) VALUES ('LB', 'Lebanon');
INSERT INTO public.country (iso_code_s2, name) VALUES ('LC', 'Saint Lucia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('LI', 'Liechtenstein');
INSERT INTO public.country (iso_code_s2, name) VALUES ('LK', 'Sri Lanka');
INSERT INTO public.country (iso_code_s2, name) VALUES ('LR', 'Liberia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('LS', 'Lesotho');
INSERT INTO public.country (iso_code_s2, name) VALUES ('LT', 'Lithuania');
INSERT INTO public.country (iso_code_s2, name) VALUES ('LU', 'Luxembourg');
INSERT INTO public.country (iso_code_s2, name) VALUES ('LV', 'Latvia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('LY', 'Libyan Arab Jamahiriya');
INSERT INTO public.country (iso_code_s2, name) VALUES ('MA', 'Morocco');
INSERT INTO public.country (iso_code_s2, name) VALUES ('MC', 'Monaco');
INSERT INTO public.country (iso_code_s2, name) VALUES ('MD', 'Moldova');
INSERT INTO public.country (iso_code_s2, name) VALUES ('MG', 'Madagascar');
INSERT INTO public.country (iso_code_s2, name) VALUES ('MH', 'Marshall Islands');
INSERT INTO public.country (iso_code_s2, name) VALUES ('MK', 'Macedonia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('ML', 'Mali');
INSERT INTO public.country (iso_code_s2, name) VALUES ('MN', 'Mongolia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('MO', 'Macau');
INSERT INTO public.country (iso_code_s2, name) VALUES ('MP', 'Northern Mariana Islands');
INSERT INTO public.country (iso_code_s2, name) VALUES ('MQ', 'Martinique');
INSERT INTO public.country (iso_code_s2, name) VALUES ('MR', 'Mauritania');
INSERT INTO public.country (iso_code_s2, name) VALUES ('MS', 'Montserrat');
INSERT INTO public.country (iso_code_s2, name) VALUES ('MT', 'Malta');
INSERT INTO public.country (iso_code_s2, name) VALUES ('MU', 'Mauritius');
INSERT INTO public.country (iso_code_s2, name) VALUES ('MV', 'Maldives');
INSERT INTO public.country (iso_code_s2, name) VALUES ('MW', 'Malawi');
INSERT INTO public.country (iso_code_s2, name) VALUES ('MX', 'Mexico');
INSERT INTO public.country (iso_code_s2, name) VALUES ('MY', 'Malaysia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('MZ', 'Mozambique');
INSERT INTO public.country (iso_code_s2, name) VALUES ('NA', 'Namibia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('NC', 'New Caledonia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('NE', 'Niger');
INSERT INTO public.country (iso_code_s2, name) VALUES ('NF', 'Norfolk Island');
INSERT INTO public.country (iso_code_s2, name) VALUES ('NG', 'Nigeria');
INSERT INTO public.country (iso_code_s2, name) VALUES ('NI', 'Nicaragua');
INSERT INTO public.country (iso_code_s2, name) VALUES ('NL', 'Netherlands');
INSERT INTO public.country (iso_code_s2, name) VALUES ('NO', 'Norway');
INSERT INTO public.country (iso_code_s2, name) VALUES ('NP', 'Nepal');
INSERT INTO public.country (iso_code_s2, name) VALUES ('NR', 'Nauru');
INSERT INTO public.country (iso_code_s2, name) VALUES ('NT', 'Neutral Zone');
INSERT INTO public.country (iso_code_s2, name) VALUES ('NU', 'Niue');
INSERT INTO public.country (iso_code_s2, name) VALUES ('NZ', 'New Zealand');
INSERT INTO public.country (iso_code_s2, name) VALUES ('OM', 'Oman');
INSERT INTO public.country (iso_code_s2, name) VALUES ('PA', 'Panama');
INSERT INTO public.country (iso_code_s2, name) VALUES ('PE', 'Peru');
INSERT INTO public.country (iso_code_s2, name) VALUES ('PF', 'French Polynesia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('PG', 'Papua New Guinea');
INSERT INTO public.country (iso_code_s2, name) VALUES ('PH', 'Philippines');
INSERT INTO public.country (iso_code_s2, name) VALUES ('PK', 'Pakistan');
INSERT INTO public.country (iso_code_s2, name) VALUES ('PL', 'Poland');
INSERT INTO public.country (iso_code_s2, name) VALUES ('PM', 'Saint Pierre And Miquelon');
INSERT INTO public.country (iso_code_s2, name) VALUES ('PN', 'Pitcairn');
INSERT INTO public.country (iso_code_s2, name) VALUES ('PR', 'Puerto Rico');
INSERT INTO public.country (iso_code_s2, name) VALUES ('PT', 'Portugal');
INSERT INTO public.country (iso_code_s2, name) VALUES ('PW', 'Palau');
INSERT INTO public.country (iso_code_s2, name) VALUES ('PY', 'Paraguay');
INSERT INTO public.country (iso_code_s2, name) VALUES ('QA', 'Qatar');
INSERT INTO public.country (iso_code_s2, name) VALUES ('RE', 'Reunion');
INSERT INTO public.country (iso_code_s2, name) VALUES ('RO', 'Romania');
INSERT INTO public.country (iso_code_s2, name) VALUES ('RU', 'Russian Federation');
INSERT INTO public.country (iso_code_s2, name) VALUES ('RW', 'Rwanda');
INSERT INTO public.country (iso_code_s2, name) VALUES ('SA', 'Saudi Arabia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('SB', 'Solomon Islands');
INSERT INTO public.country (iso_code_s2, name) VALUES ('SC', 'Seychelles');
INSERT INTO public.country (iso_code_s2, name) VALUES ('SD', 'Sudan');
INSERT INTO public.country (iso_code_s2, name) VALUES ('SE', 'Sweden');
INSERT INTO public.country (iso_code_s2, name) VALUES ('SG', 'Singapore');
INSERT INTO public.country (iso_code_s2, name) VALUES ('SH', 'Saint Helena');
INSERT INTO public.country (iso_code_s2, name) VALUES ('SI', 'Slovenia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('SJ', 'Svalbard And Jan Mayen Islands');
INSERT INTO public.country (iso_code_s2, name) VALUES ('SK', 'Slovakia Republic');
INSERT INTO public.country (iso_code_s2, name) VALUES ('SL', 'Sierra Leone');
INSERT INTO public.country (iso_code_s2, name) VALUES ('SM', 'San Marino');
INSERT INTO public.country (iso_code_s2, name) VALUES ('SN', 'Senegal');
INSERT INTO public.country (iso_code_s2, name) VALUES ('SO', 'Somalia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('SR', 'Suriname');
INSERT INTO public.country (iso_code_s2, name) VALUES ('ST', 'Sao Tome And Principe');
INSERT INTO public.country (iso_code_s2, name) VALUES ('SV', 'El Salvador');
INSERT INTO public.country (iso_code_s2, name) VALUES ('SY', 'Syrian Arab Republic');
INSERT INTO public.country (iso_code_s2, name) VALUES ('SZ', 'Swaziland');
INSERT INTO public.country (iso_code_s2, name) VALUES ('TC', 'Turks And Caicos Islands');
INSERT INTO public.country (iso_code_s2, name) VALUES ('TD', 'Chad');
INSERT INTO public.country (iso_code_s2, name) VALUES ('TF', 'French Southern Territories');
INSERT INTO public.country (iso_code_s2, name) VALUES ('TG', 'Togo');
INSERT INTO public.country (iso_code_s2, name) VALUES ('TH', 'Thailand');
INSERT INTO public.country (iso_code_s2, name) VALUES ('TJ', 'Tajikistan');
INSERT INTO public.country (iso_code_s2, name) VALUES ('TK', 'Tokelau');
INSERT INTO public.country (iso_code_s2, name) VALUES ('TM', 'Turkmenistan');
INSERT INTO public.country (iso_code_s2, name) VALUES ('TN', 'Tunisia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('TO', 'Tonga');
INSERT INTO public.country (iso_code_s2, name) VALUES ('TP', 'East Timor');
INSERT INTO public.country (iso_code_s2, name) VALUES ('TR', 'Turkey');
INSERT INTO public.country (iso_code_s2, name) VALUES ('TT', 'Trinidad And Tobago');
INSERT INTO public.country (iso_code_s2, name) VALUES ('TV', 'Tuvalu');
INSERT INTO public.country (iso_code_s2, name) VALUES ('TW', 'Taiwan');
INSERT INTO public.country (iso_code_s2, name) VALUES ('TZ', 'Tanzania');
INSERT INTO public.country (iso_code_s2, name) VALUES ('UA', 'Ukraine');
INSERT INTO public.country (iso_code_s2, name) VALUES ('UG', 'Uganda');
INSERT INTO public.country (iso_code_s2, name) VALUES ('UM', 'United States Minor Outlying Isl.');
INSERT INTO public.country (iso_code_s2, name) VALUES ('US', 'United States');
INSERT INTO public.country (iso_code_s2, name) VALUES ('UY', 'Uruguay');
INSERT INTO public.country (iso_code_s2, name) VALUES ('UZ', 'Uzbekistan');
INSERT INTO public.country (iso_code_s2, name) VALUES ('VA', 'Vatican City State (Holy See)');
INSERT INTO public.country (iso_code_s2, name) VALUES ('VC', 'Saint Vincent And The Grenadines');
INSERT INTO public.country (iso_code_s2, name) VALUES ('VE', 'Venezuela');
INSERT INTO public.country (iso_code_s2, name) VALUES ('VG', 'Virgin Islands (British)');
INSERT INTO public.country (iso_code_s2, name) VALUES ('VI', 'Virgin Islands (U.S.)');
INSERT INTO public.country (iso_code_s2, name) VALUES ('VN', 'Vietnam');
INSERT INTO public.country (iso_code_s2, name) VALUES ('VU', 'Vanuatu (New Hebrides)');
INSERT INTO public.country (iso_code_s2, name) VALUES ('WF', 'Wallis And Futuna Islands');
INSERT INTO public.country (iso_code_s2, name) VALUES ('WS', 'Samoa');
INSERT INTO public.country (iso_code_s2, name) VALUES ('YE', 'Yemen');
INSERT INTO public.country (iso_code_s2, name) VALUES ('YT', 'Mayotte');
INSERT INTO public.country (iso_code_s2, name) VALUES ('YU', 'Yugoslavia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('ZA', 'South Africa');
INSERT INTO public.country (iso_code_s2, name) VALUES ('ZM', 'Zambia');
INSERT INTO public.country (iso_code_s2, name) VALUES ('ZR', 'Zaire (Please Use Cd)');
INSERT INTO public.country (iso_code_s2, name) VALUES ('ZW', 'Zimbabwe');
INSERT INTO public.country (iso_code_s2, name) VALUES ('MM', 'Myanmar');


--
-- Data for Name: province; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.province (systemid, name, country_code) VALUES (1, 'Nanggroe Aceh Darusalam', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (2, 'Sumatera Utara', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (3, 'Sumatera Barat', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (4, 'Riau', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (5, 'Jambi', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (6, 'Sumatera Selatan', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (7, 'Bengkulu', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (8, 'Lampung', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (9, 'Kepulauan Bangka Belitung', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (10, 'Kepulauan Riau', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (11, 'DKI Jakarta', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (12, 'Jawa Barat', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (13, 'Jawa Tengah', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (14, 'Banten', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (15, 'Jawa Timur', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (16, 'Dl Yogyakarta', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (17, 'Bali', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (18, 'Nusa Tenggara Barat', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (19, 'Nusa Tenggara Timur', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (20, 'Kalimantan Barat', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (21, 'Kalimantan Tengah', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (22, 'Kalimantan Selatan', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (23, 'Kalimantan Timur', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (24, 'Kalimantan Utara', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (25, 'Sulawesi Utara', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (26, 'Sulawesi Tengah', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (27, 'Sulawesi Selatan', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (28, 'Sulawesi Tenggara', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (29, 'Gorontalo', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (30, 'Sulawesi Barat', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (31, 'Maluku', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (32, 'Maluku Utara', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (33, 'Papua', 'ID');
INSERT INTO public.province (systemid, name, country_code) VALUES (34, 'Papua Barat', 'ID');


--
-- Data for Name: regency; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.regency (systemid, name, prov_id) VALUES (2, 'Kab. Aceh Barat', 1);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (3, 'Kab. Aceh Barat Daya', 1);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (4, 'Kab. Aceh Besar', 1);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (5, 'Kab. Aceh Jaya', 1);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (6, 'Kab. Aceh Selatan', 1);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (7, 'Kab. Aceh Singkil', 1);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (8, 'Kab Aceh Tamiang', 1);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (9, 'Kab. Aceh Tengah', 1);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (10, 'Kab. Aceh Tenggara', 1);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (11, 'Kab. Aceh Timur', 1);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (12, 'Kab. Aceh Utara', 1);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (13, 'Kab. Bener Meriah', 1);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (14, 'Kab. Bireun', 1);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (15, 'Kab. Gayo Lues', 1);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (16, 'Kab. Nagan Raya', 1);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (17, 'Kab. Pidie', 1);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (18, 'Kab. Pidie Jaya', 1);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (19, 'Kab. Simeulue', 1);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (20, 'Kab. Asahan', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (21, 'Kab. Batubara', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (22, 'Kab. Dairi', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (23, 'Kab. Deliserdang', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (24, 'Kab. Humban Hasundutan', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (25, 'Kab. Karo', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (26, 'Kab. Labuhanbatu', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (27, 'Kab. Langkat', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (28, 'Kab. Mandating Natal', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (29, 'Kab. Nias', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (30, 'Kab. Nias Selatan', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (31, 'Kab. PakakBharat', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (32, 'Kab. Samosir', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (33, 'Kab. Serdan Bedagai', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (34, 'Kab. Simalungun', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (35, 'Kab. Tapanuli Selatan', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (36, 'Kab. Tapanuli Tengah', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (37, 'Kab. Tapanuli Utara', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (38, 'Kab. Toba Samosir', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (39, 'Kab. Padang Lawas Utara', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (40, 'Kab. Padan Lawas', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (41, 'Kab. Labuhanbatu Utara', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (42, 'Kab. Labuhanbatu Selatan', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (43, 'Kab. Nias Barat', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (44, 'Kab. Nias Utara', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (45, 'Kab. Agam', 3);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (46, 'Kab. Dharmasraya', 3);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (47, 'Kab. Limapuluhkota', 3);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (48, 'Kab. Kep. Mentawai', 3);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (49, 'Kab. Padang Pariaman', 3);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (50, 'Kab. Pasaman', 3);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (51, 'Kab. Pasaman Barat', 3);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (52, 'Kab. Pesisir Selatan', 3);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (53, 'Kab. Sawahlunto Sijunjung', 3);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (54, 'Kab. Solok', 3);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (55, 'Kab. Solok Selatan', 3);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (56, 'Kab. Tanah Datar', 3);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (57, 'Kab. Bengkalis', 4);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (58, 'Kab. Indragiri Hilir', 4);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (59, 'Kab. Indragiri Hulu', 4);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (60, 'Kab. Kampar', 4);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (61, 'Kab. Kuantan Singingi', 4);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (62, 'Kab. Pelalawan', 4);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (63, 'Kab. Rokan Hulu', 4);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (64, 'Kab. Rokan Hilir', 4);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (65, 'Kab. Siak', 4);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (66, 'Kab. Kep. Meranti', 4);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (67, 'Kab. Batanghari', 5);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (68, 'Kab. Bungo', 5);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (69, 'Kab. Kerinci', 5);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (70, 'Kab. Merangin', 5);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (71, 'Kab. Muaro Jambi', 5);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (72, 'Kab. Sarolangun', 5);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (73, 'Kab. Tanjung Jabung Barat', 5);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (74, 'Kab. Tanjung Jabung Timur', 5);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (75, 'Kab. Tebo', 5);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (76, 'Kab. Banyuasin', 6);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (77, 'Kab. Lahat', 6);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (78, 'Kab. Empat Lawang', 6);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (79, 'Kab. Muara Enim', 6);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (80, 'Kab. Musi Banyuasin', 6);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (81, 'Kab. Musi Rawas', 6);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (82, 'Kab. Ogan Ilir', 6);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (83, 'Kab. Ogan Komering Ilir', 6);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (84, 'Kab. Ogan Komering Ulu', 6);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (85, 'Kab. OKU Selatan', 6);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (86, 'Kab. OKU Timur', 6);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (87, 'Kab. Penukal Abab Lematang Ilir', 6);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (88, 'Kab. Bengkulu Selatan', 7);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (89, 'Kab. Bengkulu Utara', 7);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (90, 'Kab. Kaur', 7);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (91, 'Kab. Kepahiang', 7);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (92, 'Kab. Lebong', 7);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (93, 'Kab. Muko-Muko', 7);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (94, 'Kab. Rejang Lebong', 7);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (95, 'Kab. Seluma', 7);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (96, 'Kab. Bengkulu Tengah', 7);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (97, 'Kab. Lampung Barat', 8);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (98, 'Kab. Lampung Selatan', 8);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (99, 'Kab. Lampung Tengah', 8);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (100, 'Kab. Lampung Timur', 8);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (101, 'Kab. Lampung Utara', 8);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (102, 'Kab. Tanggamus', 8);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (103, 'Kab. Tulang Bawang', 8);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (104, 'Kab. Way Kanan', 8);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (105, 'Kab. Pesawaran', 8);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (106, 'Kab. Pringsewu', 8);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (107, 'Kab. Mesuji', 8);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (108, 'Kab. Tulang Bawang Barat', 8);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (109, 'Kab. Pesisir Barat', 8);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (110, 'Kab. Bangka', 9);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (111, 'Kab. Bangka Barat', 9);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (112, 'Kab. Bangka Selatan', 9);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (113, 'Kab. Bangka Tengah', 9);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (114, 'Kab. Belitung', 9);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (115, 'Kab. Belitung Timur', 9);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (116, 'Kab. Karimun', 10);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (117, 'Kab. Bintan (Kep. Riau)', 10);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (118, 'Kab. Lingga', 10);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (119, 'Kab. Natuna', 10);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (120, 'Kab. Kep. Anambas', 10);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (121, 'Kab. Kepulauan Seribu', 11);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (122, 'Kab. Bandung', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (123, 'Kab. Bandung Barat', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (124, 'Kab. Bekasi', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (125, 'Kab. Bogor', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (126, 'Kab. Ciamis', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (127, 'Kab. Cianjur', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (128, 'Kab. Cirebon', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (129, 'Kab. Garut', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (130, 'Kab. Indramayu', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (131, 'Kab. Karawang', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (132, 'Kab. Kuningan', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (133, 'Kab. Majalengka', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (134, 'Kab. Purwakarta', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (135, 'Kab. Subang', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (136, 'Kab. Sukabumi', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (137, 'Kab. Sumedang', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (138, 'Kab. Tasikmalaya', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (139, 'Kab. Pangandaran', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (140, 'Kab. Banjarnegara', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (141, 'Kab. Banyumas', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (142, 'Kab. Batang', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (143, 'Kab. Blora', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (144, 'Kab. Boyolali', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (145, 'Kab. Brebes', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (146, 'Kab. Cilacap', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (147, 'Kab. Demak', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (148, 'Kab. Grobogan', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (149, 'Kab. Jepara', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (150, 'Kab. Karanganyar', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (151, 'Kab. Kebumen', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (152, 'Kab. Kendal', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (153, 'Kab. Klaten', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (154, 'Kab. Kudus', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (155, 'Kab. Magelang', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (156, 'Kab. Pati', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (157, 'Kab. Pekalongan', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (158, 'Kab. Pemalang', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (159, 'Kab. Purbalingga', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (160, 'Kab. Purworejo', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (161, 'Kab. Rembang', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (162, 'Kab. Semarang', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (163, 'Kab. Sragen', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (164, 'Kab. Sukoharjo', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (165, 'Kab. Tegal', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (166, 'Kab. Temanggung', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (167, 'Kab. Wonogiri', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (168, 'Kab. Wonosobo', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (169, 'Kab. Lebak', 14);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (170, 'Kab. Pandeglang', 14);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (171, 'Kab. Serang', 14);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (172, 'Kab. Tangerang', 14);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (173, 'Kab. Bangkalan', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (174, 'Kab. Banyuwangi', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (175, 'Kab. Blitar', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (176, 'Kab. Bojonegoro', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (177, 'Kab. Bondowoso', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (178, 'Kab. Gresik', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (179, 'Kab. Jember', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (180, 'Kab. Jombang', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (181, 'Kab. Kediri', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (182, 'Kab. Lamongan', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (183, 'Kab. Lumajang', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (184, 'Kab. Madiun', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (185, 'Kab. Magetan', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (186, 'Kab. Malang', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (187, 'Kab. Mojokerto', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (188, 'Kab. Nganjuk', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (189, 'Kab. Ngawi', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (190, 'Kab. Pacitan', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (191, 'Kab. Pamekasan', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (193, 'Kab. Ponorogo', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (194, 'Kab. Probolinggo', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (195, 'Kab. Sampang', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (196, 'Kab. Sidoarjo', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (197, 'Kab. Situbondo', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (198, 'Kab. Sumenep', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (199, 'Kab. Trenggalek', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (200, 'Kab. Tulungagung', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (201, 'Kab. Tuban', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (202, 'Kab. Bantul', 16);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (203, 'Kab. Gunung Kidul', 16);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (204, 'Kab. Kulon Progo', 16);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (205, 'Kab. Sleman', 16);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (206, 'Kab. Badung', 17);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (207, 'Kab. Bangli', 17);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (208, 'Kab. Buleleng', 17);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (209, 'Kab. Gianyar', 17);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (210, 'Kab. Jembrana', 17);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (211, 'Kab. Karang Asem', 17);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (212, 'Kab. Klungkung', 17);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (213, 'Kab. Tabanan', 17);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (214, 'Kab. Bima', 18);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (215, 'Kab. Dompu', 18);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (216, 'Kab. Lombok Barat', 18);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (217, 'Kab. Lombok Tengah', 18);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (218, 'Kab. Lombok Timur', 18);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (219, 'Kab. Sumbawa', 18);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (220, 'Kab. Sumbawa Barat', 18);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (221, 'Kab. Lombok Utara', 18);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (222, 'Kab. Alor', 19);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (223, 'Kab. Belu', 19);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (224, 'Kab. Ende', 19);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (225, 'Kab. Flores Timur', 19);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (226, 'Kab. Kupang', 19);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (227, 'Kab. Lembata', 19);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (228, 'Kab. Manggarai', 19);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (229, 'Kab. Manggarai Barat', 19);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (230, 'Kab. Ngada', 19);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (231, 'Kab. Nagekeo', 19);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (232, 'Kab. Rote Ndao', 19);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (233, 'Kab. Slkka', 19);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (234, 'Kab. Sumba Barat', 19);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (235, 'Kab. Sumba Barat Daya', 19);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (236, 'Kab. Sumba Tengah', 19);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (237, 'Kab. Manggarai Timur', 19);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (238, 'Kab. Sumba Timur', 19);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (239, 'Kab. Timor Tengah Selatan', 19);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (240, 'Kab. Timor Tengah Utara', 19);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (241, 'Kab. Sabu Raijua', 19);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (242, 'Kab. Malaka', 19);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (243, 'Kab. Bengkayang', 20);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (244, 'Kab. Kapuas Hulu', 20);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (245, 'Kab. Ketapang', 20);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (246, 'Kab. Kayong Utara', 20);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (247, 'Kab. Kubu Raya', 20);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (248, 'Kab. Landak', 20);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (249, 'Kab. Melawi', 20);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (250, 'Kab. Pontianak', 20);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (251, 'Kab. Sambas', 20);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (252, 'Kab. Sanggau', 20);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (253, 'Kab. Sintang', 20);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (254, 'Kab. Sekadau', 20);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (255, 'Kab. Barito Selatan', 21);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (256, 'Kab. Barito Timur', 21);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (257, 'Kab. Barito Utara', 21);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (258, 'Kab. Gunung Mas', 21);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (259, 'Kab. Kapuas', 21);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (260, 'Kab. Katingan', 21);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (261, 'Kab. Kotawaringin Barat', 21);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (262, 'Kab. Kotawaringin Timur', 21);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (263, 'Kab. Lamandau', 21);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (264, 'Kab. Murung Raya', 21);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (265, 'Kab. Pulang Pisau', 21);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (266, 'Kab. Seruyan', 21);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (267, 'Kab. Sukamara', 21);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (268, 'Kab. Balangan', 22);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (269, 'Kab. Banjar', 22);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (270, 'Kab. Barito Kuala', 22);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (271, 'Kab. Hulu Sungai Selatan', 22);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (272, 'Kab. Hulu Sungai Tengah', 22);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (273, 'Kab. Hulu Sungai Utara', 22);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (274, 'Kab. Kotabaru', 22);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (275, 'Kab. Tabalong', 22);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (276, 'Kab. Tanah Bumbu', 22);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (277, 'Kab. Tanah Laut', 22);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (278, 'Kab. Tapin', 22);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (279, 'Kab. Berau', 23);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (280, 'Kab. Bulungan', 23);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (281, 'Kab. Kutai Barat', 23);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (282, 'Kab. Kutai Kertanegara', 23);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (283, 'Kab. Kutai Timur', 23);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (284, 'Kab. Penajam Paser Utara', 23);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (285, 'Kab. Pasir', 23);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (286, 'Kab. Mahakam Ulu', 23);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (287, 'Kab Malinau', 24);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (288, 'Kab. Nunukan', 24);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (289, 'Kab. Tana Tidung', 24);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (290, 'Kab. Bolaang Mongondow', 25);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (291, 'Kab. Bolaang Mongondow Utara', 25);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (292, 'Kab. Minahasa', 25);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (293, 'Kab. Minahasa Tenggara', 25);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (294, 'Kab. Minahasa Selatan', 25);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (295, 'Kab. Minahasa Utara', 25);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (296, 'Kab. Sangihe Talaud', 25);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (297, 'Kab. Kep. Talaud', 25);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (298, 'Kab. Kep. Siau Tagulandang Biaro', 25);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (299, 'Kab. Bolaang Mongondow Timur', 25);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (300, 'Kab. Bolaang Mongondow Selatan', 25);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (301, 'Kab. Banggai', 26);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (302, 'Kab. Banggai Kepulauan', 26);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (303, 'Kab. Buol', 26);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (304, 'Kab. Donggala', 26);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (305, 'Kab. Morowali', 26);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (306, 'Kab. Parigi Mountong', 26);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (307, 'Kab. Poso', 26);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (308, 'Kab. Tojo Una-Una', 26);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (309, 'Kab. Toli-Toli', 26);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (310, 'Kab. Sigi', 26);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (311, 'Kab. Banggai Laut', 26);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (312, 'Kab. Selayar', 27);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (313, 'Kab. Bantaeng', 27);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (314, 'Kab. Barru', 27);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (315, 'Kab. Bone', 27);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (316, 'Kab. Bulukumba', 27);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (317, 'Kab. Enrekang', 27);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (318, 'Kab. Gowa', 27);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (319, 'Kab. Jeneponto', 27);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (320, 'Kab. Luwu', 27);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (321, 'Kab. Luwu Timur', 27);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (322, 'Kab. Luwu Utara', 27);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (323, 'Kab. Maros', 27);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (324, 'Kab. Pangkep', 27);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (325, 'Kab. Pinrang', 27);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (326, 'Kab. Sidenreng Rappang', 27);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (327, 'Kab. Sinjai', 27);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (328, 'Kab. Soppeng', 27);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (329, 'Kab. Takalar', 27);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (330, 'Kab. Tanatoraja', 27);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (332, 'Kab. Toraja Utara', 27);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (333, 'Kab. Bombana', 28);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (334, 'Kab. Buton', 28);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (335, 'Kab. Konawe (dulu: Kab. Kendari)', 28);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (336, 'Kab. Kolaka', 28);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (337, 'Kab. Kolaka Utara', 28);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (338, 'Kab. Konawe Selatan', 28);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (339, 'Kab. Muna', 28);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (340, 'Kab. Wakatobi', 28);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (341, 'Kab. Konawe Utara', 28);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (342, 'Kab. Buton Utara', 28);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (343, 'Kab. Kolaka Timur', 28);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (344, 'Kab. Boalemo', 29);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (345, 'Kab. Bone Bolango', 29);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (346, 'Kab. Gorontalo', 29);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (347, 'Kab. Gorontalo Utara', 29);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (348, 'Kab. Pohuwato', 29);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (349, 'Kab. Mamuju', 30);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (350, 'Kab. Majene', 30);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (351, 'Kab. Mamuju Utara', 30);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (352, 'Kab. Mamasa', 30);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (353, 'Kab. Polewali Mamasa', 30);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (354, 'Kab. Mamuju Tengah', 30);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (355, 'Kab. Buru', 31);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (356, 'Kab. Kepulauan Aru', 31);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (357, 'Kab. Seram Bagian Barat', 31);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (358, 'Kab. Seram Bagian Timur', 31);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (359, 'Kab. Maluku Tengah', 31);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (360, 'Kab. Maluku Tenggara', 31);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (361, 'Kab. Maluku Tenggara Barat', 31);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (362, 'Kab. Maluku Barat Daya', 31);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (363, 'Kab. Buru Selatan', 31);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (364, 'Kab. Halmahera Barat', 32);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (365, 'Kab. Halmahera Selatan', 32);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (366, 'Kab. Halmahera Tengah', 32);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (367, 'Kab. Halmahera Tirnur', 32);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (368, 'Kab Halmahera Utara', 32);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (369, 'Kab. Kepulauan Sula', 32);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (370, 'Kab. Morotai', 32);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (371, 'Kab. Pulau Taliabu', 32);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (372, 'Kab. Asmat', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (373, 'Kab. Biak Numfor', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (374, 'Kab. Boven Digoel', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (375, 'Kab. Jayapura', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (376, 'Kab. Jayawijaya', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (377, 'Kab. Keerom', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (378, 'Kab. Mappi', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (379, 'Kab. Merauke', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (380, 'Kab. Mimika', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (381, 'Kab. Paniai', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (382, 'Kab. Pegunungan Bintang', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (383, 'Kab. Puncak Jaya', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (384, 'Kab. Sarmi', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (385, 'Kab. Mamberamo Raya', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (386, 'Kab. Supiori', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (387, 'Kab. Tolikara', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (388, 'Kab. Yahukimo', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (389, 'Kab. Yapen Waropen', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (390, 'Kab. Waropen', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (391, 'Kab. Nabire', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (392, 'Kab. Mamberamo Tengah', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (393, 'Kab. Yalimo', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (394, 'Kab. Lanny Jaya', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (395, 'Kab. Nduga', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (396, 'Kab. Puncak', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (397, 'Kab. Dogiyai', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (398, 'Kab. Deiyai', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (399, 'Kab. Intan Jaya', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (400, 'Kab. Fak-Fak', 34);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (401, 'Kab. Kaimana', 34);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (402, 'Kab. Kepulauan Raja Ampat', 34);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (403, 'Kab. Manokwari', 34);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (404, 'Kab. Sorong Selatan', 34);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (405, 'Kab. Teluk Bintuni', 34);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (406, 'Kab. Sorong', 34);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (407, 'Kab. Teluk Wondama', 34);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (408, 'Kab. Tambrauw', 34);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (409, 'Kab. Maybrat', 34);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (410, 'Kab. Manokwari Selatan', 34);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (411, 'Kab. Pegunungan Arfak', 34);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (412, 'Kota Banda Aceh', 1);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (413, 'Kota Subulussalam', 1);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (414, 'Kota Langsa', 1);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (415, 'Kota Lhokseumawe', 1);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (416, 'Kota Saban', 1);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (417, 'Kota Medan', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (418, 'Kota Binjai', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (419, 'Kota Padang Sidempuan', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (420, 'Kota Pematan Siantar', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (421, 'Kota Sibolga', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (422, 'Kota Tanjung Balai', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (423, 'Kota TebingTinggi', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (424, 'Kota Gunung Sitoli', 2);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (425, 'Kota Padang', 3);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (426, 'Kota BukitTinggi', 3);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (427, 'Kota Pandang Panjang', 3);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (428, 'Kota Pariaman', 3);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (429, 'Kota Payakumbuh', 3);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (430, 'Kota Sawahlunto', 3);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (431, 'Kota Solok', 3);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (432, 'Kota Pekanbaru', 4);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (433, 'Kota Dumai', 4);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (434, 'Kota Jambi', 5);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (435, 'Kota Sungai Penuh', 5);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (436, 'Kota Palembang', 6);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (437, 'Kota Lubuk Linggau', 6);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (438, 'Kota Pagar Alam', 6);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (439, 'Kota Prabumulih', 6);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (440, 'Kota Bengkulu', 7);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (441, 'Kota Bandarlampung', 8);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (442, 'Kota Metro', 8);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (443, 'Kota Pangkalpinang', 9);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (444, 'Kota Tanjungpinang', 10);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (445, 'Kota Batam', 10);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (446, 'Jakarta Barat', 11);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (447, 'Jakarta Pusat', 11);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (448, 'Jakarta Selatan', 11);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (449, 'Jakarta Timur', 11);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (450, 'Jakarta Utara', 11);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (451, 'Kota Bandung', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (452, 'Kota Banjar', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (453, 'Kota Bekasi', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (454, 'Kota Bogor', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (455, 'Kota Cimahi', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (456, 'Kota Cirebon', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (457, 'Kota Depok', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (458, 'Kota Sukabumi', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (459, 'Kota Tasikmalaya', 12);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (460, 'Kota Semarang', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (461, 'Kota Magelang', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (462, 'Kota Pekalongan', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (463, 'Kota Salatiga', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (464, 'Kota Surakarta', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (465, 'Kota Tegal', 13);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (466, 'Kota Cilegon', 14);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (467, 'Kota Serang', 14);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (468, 'Kota Tangerang', 14);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (469, 'Kota Tangerang Selatan', 14);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (470, 'Kota Surabaya', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (471, 'Kota Batu', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (472, 'Kota Blitar', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (473, 'Kota Kediri', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (474, 'Kota Madiun', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (475, 'Kota Malang', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (476, 'Kota Mojokerto', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (477, 'Kota Pasuruan', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (478, 'Kota Probolinggo', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (479, 'Kota Yogyakarta', 16);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (480, 'Kota Denpasar', 17);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (481, 'Kota Mataram', 18);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (482, 'Kota Bima', 18);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (483, 'Kota Kupang', 19);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (484, 'Kota Pontianak', 20);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (485, 'Kota Singkawang', 20);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (486, 'Kota Palangkaraya', 21);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (487, 'Kota Banjarmasin', 22);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (488, 'Kota Banjar Baru', 22);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (489, 'Kota Samarinda', 23);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (490, 'Kota Balikpapan', 23);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (491, 'Kota Bontang', 23);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (492, 'Kota Tarakan', 23);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (493, 'Kota Manado', 25);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (494, 'Kota Kotamobagu', 25);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (495, 'Kota Bitung', 25);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (496, 'Kota Tomohon', 25);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (497, 'Kota Palu', 26);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (498, 'Kota Makasar', 27);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (499, 'Kota Pare-Pare', 27);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (500, 'Kota Palopo', 27);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (501, 'Kota Kendari', 28);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (502, 'Kota Bau-Bau', 28);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (503, 'Kota Gorontalo', 29);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (504, 'Kota Ambon', 31);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (505, 'Kota Tual', 31);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (506, 'Kota Ternate', 32);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (507, 'Kota Tidore Kepulauan', 32);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (508, 'Kota Jayapura', 33);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (509, 'Kota Sorong', 34);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (192, 'Kab. Pasuruan', 15);
INSERT INTO public.regency (systemid, name, prov_id) VALUES (331, 'Kab. Wajo', 27);


--
-- Data for Name: contactaddress; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.contactaddress (systemid, owner, regency_id, street) VALUES (4, 7, NULL, 'Jalan ws 123');
INSERT INTO public.contactaddress (systemid, owner, regency_id, street) VALUES (7, 9, NULL, 'CCC 9');
INSERT INTO public.contactaddress (systemid, owner, regency_id, street) VALUES (9, 11, NULL, 'Jalan JF 123');
INSERT INTO public.contactaddress (systemid, owner, regency_id, street) VALUES (13, 14, NULL, 'Jalan BH 123');
INSERT INTO public.contactaddress (systemid, owner, regency_id, street) VALUES (14, 12, NULL, 'SSS 9');
INSERT INTO public.contactaddress (systemid, owner, regency_id, street) VALUES (16, 16, NULL, 'Bos Man 9');
INSERT INTO public.contactaddress (systemid, owner, regency_id, street) VALUES (17, 17, NULL, 'Jalan BH 123');
INSERT INTO public.contactaddress (systemid, owner, regency_id, street) VALUES (19, 18, NULL, 'Jalan json 123');
INSERT INTO public.contactaddress (systemid, owner, regency_id, street) VALUES (22, 20, NULL, 'anjing 9');
INSERT INTO public.contactaddress (systemid, owner, regency_id, street) VALUES (24, 22, NULL, 'Jalan Yam 123');
INSERT INTO public.contactaddress (systemid, owner, regency_id, street) VALUES (26, 23, NULL, 'Jalan KKK 123');
INSERT INTO public.contactaddress (systemid, owner, regency_id, street) VALUES (29, 25, NULL, 'Jalan Rek 100');
INSERT INTO public.contactaddress (systemid, owner, regency_id, street) VALUES (31, 27, NULL, 'Jalan TTT 123');


--
-- Data for Name: driver; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: facebooklogin; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: googlelogin; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: gudang; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.gudang (id_gudang, name, addr, memo, "default") VALUES (1, 'Utama', '', '', false);


--
-- Data for Name: itemcategory; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.itemcategory (systemid, code_category, name, memo) VALUES (1, 'BRU', 'Biru Langit', 'KKK');
INSERT INTO public.itemcategory (systemid, code_category, name, memo) VALUES (4, 'BBB', 'Baru', 'KKK');
INSERT INTO public.itemcategory (systemid, code_category, name, memo) VALUES (5, 'BSR', 'Besar', 'KKK');
INSERT INTO public.itemcategory (systemid, code_category, name, memo) VALUES (6, 'PNS', 'Puanas', 'PPP');
INSERT INTO public.itemcategory (systemid, code_category, name, memo) VALUES (9, 'CTE', 'Cuttey', 'MAMI');
INSERT INTO public.itemcategory (systemid, code_category, name, memo) VALUES (11, 'MMM', 'Milk', 'susu');


--
-- Data for Name: itemcategorytag; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.itemcategorytag (id_ctgr, id_item) VALUES (1, 2);
INSERT INTO public.itemcategorytag (id_ctgr, id_item) VALUES (4, 2);
INSERT INTO public.itemcategorytag (id_ctgr, id_item) VALUES (5, 6);
INSERT INTO public.itemcategorytag (id_ctgr, id_item) VALUES (4, 6);
INSERT INTO public.itemcategorytag (id_ctgr, id_item) VALUES (5, 7);
INSERT INTO public.itemcategorytag (id_ctgr, id_item) VALUES (4, 7);
INSERT INTO public.itemcategorytag (id_ctgr, id_item) VALUES (6, 20);
INSERT INTO public.itemcategorytag (id_ctgr, id_item) VALUES (9, 20);
INSERT INTO public.itemcategorytag (id_ctgr, id_item) VALUES (5, 23);
INSERT INTO public.itemcategorytag (id_ctgr, id_item) VALUES (4, 23);
INSERT INTO public.itemcategorytag (id_ctgr, id_item) VALUES (5, 24);
INSERT INTO public.itemcategorytag (id_ctgr, id_item) VALUES (4, 24);
INSERT INTO public.itemcategorytag (id_ctgr, id_item) VALUES (11, 24);


--
-- Data for Name: log; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: model; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: oauth_access_token; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

--INSERT INTO public.oauth_access_token (token_id, token, authentication_id, user_name, client_id, authentication, refresh_token) VALUES ('d275c0fc7c988eba38b8358f74f466ca', '\xaced0005737200436f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e636f6d6d6f6e2e44656661756c744f4175746832416363657373546f6b656e0cb29e361b24face0200064c00156164646974696f6e616c496e666f726d6174696f6e74000f4c6a6176612f7574696c2f4d61703b4c000a65787069726174696f6e7400104c6a6176612f7574696c2f446174653b4c000c72656672657368546f6b656e74003f4c6f72672f737072696e676672616d65776f726b2f73656375726974792f6f61757468322f636f6d6d6f6e2f4f417574683252656672657368546f6b656e3b4c000573636f706574000f4c6a6176612f7574696c2f5365743b4c0009746f6b656e547970657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e000578707372001e6a6176612e7574696c2e436f6c6c656374696f6e7324456d7074794d6170593614855adce7d002000078707372000e6a6176612e7574696c2e44617465686a81014b5974190300007870770800000166ebff5e49787372004c6f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e636f6d6d6f6e2e44656661756c744578706972696e674f417574683252656672657368546f6b656e2fdf47639dd0c9b70200014c000a65787069726174696f6e71007e0002787200446f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e636f6d6d6f6e2e44656661756c744f417574683252656672657368546f6b656e73e10e0a6354d45e0200014c000576616c756571007e0005787074002436663562656463332d393133302d343330372d393632662d3464663732613432363561667371007e00097708000001670074cc9e78737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65536574801d92d18f9b80550200007872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c0001637400164c6a6176612f7574696c2f436f6c6c656374696f6e3b7870737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000103f40000000000003740003666f6f7400047265616474000577726974657874000662656172657274002434623863643932622d373938612d343337352d393266632d336431353564626132313364', 'dce9f31aa06d749fe553e087f3f8a13f', 'admin', 'fooClientIdPassword', '\xaced0005737200416f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e4f417574683241757468656e7469636174696f6ebd400b02166252130200024c000d73746f7265645265717565737474003c4c6f72672f737072696e676672616d65776f726b2f73656375726974792f6f61757468322f70726f76696465722f4f4175746832526571756573743b4c00127573657241757468656e7469636174696f6e7400324c6f72672f737072696e676672616d65776f726b2f73656375726974792f636f72652f41757468656e7469636174696f6e3b787200476f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e416273747261637441757468656e7469636174696f6e546f6b656ed3aa287e6e47640e0200035a000d61757468656e746963617465644c000b617574686f7269746965737400164c6a6176612f7574696c2f436f6c6c656374696f6e3b4c000764657461696c737400124c6a6176612f6c616e672f4f626a6563743b787000737200266a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654c697374fc0f2531b5ec8e100200014c00046c6973747400104c6a6176612f7574696c2f4c6973743b7872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c00016371007e00047870737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000001770400000001737200426f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e617574686f726974792e53696d706c654772616e746564417574686f7269747900000000000001f40200014c0004726f6c657400124c6a6176612f6c616e672f537472696e673b787074000a545950452041444d494e7871007e000c707372003a6f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e4f41757468325265717565737400000000000000010200075a0008617070726f7665644c000b617574686f72697469657371007e00044c000a657874656e73696f6e7374000f4c6a6176612f7574696c2f4d61703b4c000b726564697265637455726971007e000e4c00077265667265736874003b4c6f72672f737072696e676672616d65776f726b2f73656375726974792f6f61757468322f70726f76696465722f546f6b656e526571756573743b4c000b7265736f7572636549647374000f4c6a6176612f7574696c2f5365743b4c000d726573706f6e7365547970657371007e0014787200386f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e426173655265717565737436287a3ea37169bd0200034c0008636c69656e74496471007e000e4c001172657175657374506172616d657465727371007e00124c000573636f706571007e00147870740013666f6f436c69656e74496450617373776f7264737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654d6170f1a5a8fe74f507420200014c00016d71007e00127870737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f400000000000067708000000080000000374000a6772616e745f7479706574000870617373776f7264740009636c69656e745f6964740013666f6f436c69656e74496450617373776f7264740008757365726e616d6574000561646d696e78737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65536574801d92d18f9b80550200007871007e0009737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000103f40000000000003740003666f6f74000472656164740005777269746578017371007e0025770c000000103f40000000000000787371007e001a3f40000000000000770800000010000000007870707371007e0025770c000000103f40000000000000787371007e0025770c000000103f40000000000000787372004f6f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e557365726e616d6550617373776f726441757468656e7469636174696f6e546f6b656e00000000000001f40200024c000b63726564656e7469616c7371007e00054c00097072696e636970616c71007e00057871007e0003017371007e00077371007e000b0000000177040000000171007e000f7871007e0031737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f726465727871007e001a3f400000000000067708000000080000000371007e001c71007e001d71007e001e71007e001f71007e002071007e0021780070737200326f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e5573657200000000000001f40200075a00116163636f756e744e6f6e457870697265645a00106163636f756e744e6f6e4c6f636b65645a001563726564656e7469616c734e6f6e457870697265645a0007656e61626c65644c000b617574686f72697469657371007e00144c000870617373776f726471007e000e4c0008757365726e616d6571007e000e7870010101017371007e0022737200116a6176612e7574696c2e54726565536574dd98509395ed875b0300007870737200466f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e5573657224417574686f72697479436f6d70617261746f7200000000000001f4020000787077040000000171007e000f787074000561646d696e', '0310dbe0e5451305d6ca8b8daa7dc152');


--
-- Data for Name: oauth_approvals; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: oauth_client_details; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

--INSERT INTO public.oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('clientIdPassword', '', 'secret', 'read', 'password,authorization_code,refresh_token', '', '', NULL, NULL, '{}', '');
--INSERT INTO public.oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('sampleClientId', '', NULL, 'read', 'implicit', '', '', NULL, NULL, '{}', 'read');


--
-- Data for Name: oauth_client_token; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: oauth_code; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: oauth_refresh_token; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

--INSERT INTO public.oauth_refresh_token (token_id, token, authentication) VALUES ('87da25dfb9e69ea8d6e80aefa55b8ea2', '\xaced00057372004c6f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e636f6d6d6f6e2e44656661756c744578706972696e674f417574683252656672657368546f6b656e2fdf47639dd0c9b70200014c000a65787069726174696f6e7400104c6a6176612f7574696c2f446174653b787200446f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e636f6d6d6f6e2e44656661756c744f417574683252656672657368546f6b656e73e10e0a6354d45e0200014c000576616c75657400124c6a6176612f6c616e672f537472696e673b787074002433663933363365312d346135622d343961342d383338322d6130616262396566656165627372000e6a6176612e7574696c2e44617465686a81014b59741903000078707708000001645607c55878', '\xaced0005737200416f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e4f417574683241757468656e7469636174696f6ebd400b02166252130200024c000d73746f7265645265717565737474003c4c6f72672f737072696e676672616d65776f726b2f73656375726974792f6f61757468322f70726f76696465722f4f4175746832526571756573743b4c00127573657241757468656e7469636174696f6e7400324c6f72672f737072696e676672616d65776f726b2f73656375726974792f636f72652f41757468656e7469636174696f6e3b787200476f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e416273747261637441757468656e7469636174696f6e546f6b656ed3aa287e6e47640e0200035a000d61757468656e746963617465644c000b617574686f7269746965737400164c6a6176612f7574696c2f436f6c6c656374696f6e3b4c000764657461696c737400124c6a6176612f6c616e672f4f626a6563743b787000737200266a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654c697374fc0f2531b5ec8e100200014c00046c6973747400104c6a6176612f7574696c2f4c6973743b7872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c00016371007e00047870737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000001770400000001737200426f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e617574686f726974792e53696d706c654772616e746564417574686f7269747900000000000001f40200014c0004726f6c657400124c6a6176612f6c616e672f537472696e673b787074000a545950452041444d494e7871007e000c707372003a6f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e4f41757468325265717565737400000000000000010200075a0008617070726f7665644c000b617574686f72697469657371007e00044c000a657874656e73696f6e7374000f4c6a6176612f7574696c2f4d61703b4c000b726564697265637455726971007e000e4c00077265667265736874003b4c6f72672f737072696e676672616d65776f726b2f73656375726974792f6f61757468322f70726f76696465722f546f6b656e526571756573743b4c000b7265736f7572636549647374000f4c6a6176612f7574696c2f5365743b4c000d726573706f6e7365547970657371007e0014787200386f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e426173655265717565737436287a3ea37169bd0200034c0008636c69656e74496471007e000e4c001172657175657374506172616d657465727371007e00124c000573636f706571007e00147870740013666f6f436c69656e74496450617373776f7264737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654d6170f1a5a8fe74f507420200014c00016d71007e00127870737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f400000000000067708000000080000000374000a6772616e745f7479706574000870617373776f7264740009636c69656e745f6964740013666f6f436c69656e74496450617373776f7264740008757365726e616d6574000561646d696e78737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65536574801d92d18f9b80550200007871007e0009737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000103f40000000000003740003666f6f74000472656164740005777269746578017371007e0025770c000000103f40000000000000787371007e001a3f40000000000000770800000010000000007870707371007e0025770c000000103f40000000000000787371007e0025770c000000103f40000000000000787372004f6f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e557365726e616d6550617373776f726441757468656e7469636174696f6e546f6b656e00000000000001f40200024c000b63726564656e7469616c7371007e00054c00097072696e636970616c71007e00057871007e0003017371007e00077371007e000b0000000177040000000171007e000f7871007e0031737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f726465727871007e001a3f400000000000067708000000080000000371007e001c71007e001d71007e001e71007e001f71007e002071007e0021780070737200326f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e5573657200000000000001f40200075a00116163636f756e744e6f6e457870697265645a00106163636f756e744e6f6e4c6f636b65645a001563726564656e7469616c734e6f6e457870697265645a0007656e61626c65644c000b617574686f72697469657371007e00144c000870617373776f726471007e000e4c0008757365726e616d6571007e000e7870010101017371007e0022737200116a6176612e7574696c2e54726565536574dd98509395ed875b0300007870737200466f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e5573657224417574686f72697479436f6d70617261746f7200000000000001f4020000787077040000000171007e000f787074000561646d696e');
--INSERT INTO public.oauth_refresh_token (token_id, token, authentication) VALUES ('3cc4e878a2b399129c16c321bb540e31', '\xaced00057372004c6f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e636f6d6d6f6e2e44656661756c744578706972696e674f417574683252656672657368546f6b656e2fdf47639dd0c9b70200014c000a65787069726174696f6e7400104c6a6176612f7574696c2f446174653b787200446f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e636f6d6d6f6e2e44656661756c744f417574683252656672657368546f6b656e73e10e0a6354d45e0200014c000576616c75657400124c6a6176612f6c616e672f537472696e673b787074002433646166303861622d636534312d346137642d386230652d3538636135663332666130627372000e6a6176612e7574696c2e44617465686a81014b59741903000078707708000001645658f99d78', '\xaced0005737200416f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e4f417574683241757468656e7469636174696f6ebd400b02166252130200024c000d73746f7265645265717565737474003c4c6f72672f737072696e676672616d65776f726b2f73656375726974792f6f61757468322f70726f76696465722f4f4175746832526571756573743b4c00127573657241757468656e7469636174696f6e7400324c6f72672f737072696e676672616d65776f726b2f73656375726974792f636f72652f41757468656e7469636174696f6e3b787200476f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e416273747261637441757468656e7469636174696f6e546f6b656ed3aa287e6e47640e0200035a000d61757468656e746963617465644c000b617574686f7269746965737400164c6a6176612f7574696c2f436f6c6c656374696f6e3b4c000764657461696c737400124c6a6176612f6c616e672f4f626a6563743b787000737200266a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654c697374fc0f2531b5ec8e100200014c00046c6973747400104c6a6176612f7574696c2f4c6973743b7872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c00016371007e00047870737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000001770400000001737200426f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e617574686f726974792e53696d706c654772616e746564417574686f7269747900000000000001f40200014c0004726f6c657400124c6a6176612f6c616e672f537472696e673b787074000a545950452041444d494e7871007e000c707372003a6f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e4f41757468325265717565737400000000000000010200075a0008617070726f7665644c000b617574686f72697469657371007e00044c000a657874656e73696f6e7374000f4c6a6176612f7574696c2f4d61703b4c000b726564697265637455726971007e000e4c00077265667265736874003b4c6f72672f737072696e676672616d65776f726b2f73656375726974792f6f61757468322f70726f76696465722f546f6b656e526571756573743b4c000b7265736f7572636549647374000f4c6a6176612f7574696c2f5365743b4c000d726573706f6e7365547970657371007e0014787200386f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e426173655265717565737436287a3ea37169bd0200034c0008636c69656e74496471007e000e4c001172657175657374506172616d657465727371007e00124c000573636f706571007e00147870740013666f6f436c69656e74496450617373776f7264737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654d6170f1a5a8fe74f507420200014c00016d71007e00127870737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f400000000000067708000000080000000374000a6772616e745f7479706574000870617373776f7264740009636c69656e745f6964740013666f6f436c69656e74496450617373776f7264740008757365726e616d6574000561646d696e78737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65536574801d92d18f9b80550200007871007e0009737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000103f40000000000003740003666f6f74000472656164740005777269746578017371007e0025770c000000103f40000000000000787371007e001a3f40000000000000770800000010000000007870707371007e0025770c000000103f40000000000000787371007e0025770c000000103f40000000000000787372004f6f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e557365726e616d6550617373776f726441757468656e7469636174696f6e546f6b656e00000000000001f40200024c000b63726564656e7469616c7371007e00054c00097072696e636970616c71007e00057871007e0003017371007e00077371007e000b0000000177040000000171007e000f7871007e0031737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f726465727871007e001a3f400000000000067708000000080000000371007e001c71007e001d71007e001e71007e001f71007e002071007e0021780070737200326f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e5573657200000000000001f40200075a00116163636f756e744e6f6e457870697265645a00106163636f756e744e6f6e4c6f636b65645a001563726564656e7469616c734e6f6e457870697265645a0007656e61626c65644c000b617574686f72697469657371007e00144c000870617373776f726471007e000e4c0008757365726e616d6571007e000e7870010101017371007e0022737200116a6176612e7574696c2e54726565536574dd98509395ed875b0300007870737200466f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e5573657224417574686f72697479436f6d70617261746f7200000000000001f4020000787077040000000171007e000f787074000561646d696e');
--INSERT INTO public.oauth_refresh_token (token_id, token, authentication) VALUES ('0310dbe0e5451305d6ca8b8daa7dc152', '\xaced00057372004c6f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e636f6d6d6f6e2e44656661756c744578706972696e674f417574683252656672657368546f6b656e2fdf47639dd0c9b70200014c000a65787069726174696f6e7400104c6a6176612f7574696c2f446174653b787200446f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e636f6d6d6f6e2e44656661756c744f417574683252656672657368546f6b656e73e10e0a6354d45e0200014c000576616c75657400124c6a6176612f6c616e672f537472696e673b787074002436663562656463332d393133302d343330372d393632662d3464663732613432363561667372000e6a6176612e7574696c2e44617465686a81014b59741903000078707708000001670074cc9e78', '\xaced0005737200416f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e4f417574683241757468656e7469636174696f6ebd400b02166252130200024c000d73746f7265645265717565737474003c4c6f72672f737072696e676672616d65776f726b2f73656375726974792f6f61757468322f70726f76696465722f4f4175746832526571756573743b4c00127573657241757468656e7469636174696f6e7400324c6f72672f737072696e676672616d65776f726b2f73656375726974792f636f72652f41757468656e7469636174696f6e3b787200476f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e416273747261637441757468656e7469636174696f6e546f6b656ed3aa287e6e47640e0200035a000d61757468656e746963617465644c000b617574686f7269746965737400164c6a6176612f7574696c2f436f6c6c656374696f6e3b4c000764657461696c737400124c6a6176612f6c616e672f4f626a6563743b787000737200266a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654c697374fc0f2531b5ec8e100200014c00046c6973747400104c6a6176612f7574696c2f4c6973743b7872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c00016371007e00047870737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000001770400000001737200426f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e617574686f726974792e53696d706c654772616e746564417574686f7269747900000000000001f40200014c0004726f6c657400124c6a6176612f6c616e672f537472696e673b787074000a545950452041444d494e7871007e000c707372003a6f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e4f41757468325265717565737400000000000000010200075a0008617070726f7665644c000b617574686f72697469657371007e00044c000a657874656e73696f6e7374000f4c6a6176612f7574696c2f4d61703b4c000b726564697265637455726971007e000e4c00077265667265736874003b4c6f72672f737072696e676672616d65776f726b2f73656375726974792f6f61757468322f70726f76696465722f546f6b656e526571756573743b4c000b7265736f7572636549647374000f4c6a6176612f7574696c2f5365743b4c000d726573706f6e7365547970657371007e0014787200386f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e426173655265717565737436287a3ea37169bd0200034c0008636c69656e74496471007e000e4c001172657175657374506172616d657465727371007e00124c000573636f706571007e00147870740013666f6f436c69656e74496450617373776f7264737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654d6170f1a5a8fe74f507420200014c00016d71007e00127870737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f400000000000067708000000080000000374000a6772616e745f7479706574000870617373776f7264740009636c69656e745f6964740013666f6f436c69656e74496450617373776f7264740008757365726e616d6574000561646d696e78737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65536574801d92d18f9b80550200007871007e0009737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000103f40000000000003740003666f6f74000472656164740005777269746578017371007e0025770c000000103f40000000000000787371007e001a3f40000000000000770800000010000000007870707371007e0025770c000000103f40000000000000787371007e0025770c000000103f40000000000000787372004f6f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e557365726e616d6550617373776f726441757468656e7469636174696f6e546f6b656e00000000000001f40200024c000b63726564656e7469616c7371007e00054c00097072696e636970616c71007e00057871007e0003017371007e00077371007e000b0000000177040000000171007e000f7871007e0031737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f726465727871007e001a3f400000000000067708000000080000000371007e001c71007e001d71007e001e71007e001f71007e002071007e0021780070737200326f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e5573657200000000000001f40200075a00116163636f756e744e6f6e457870697265645a00106163636f756e744e6f6e4c6f636b65645a001563726564656e7469616c734e6f6e457870697265645a0007656e61626c65644c000b617574686f72697469657371007e00144c000870617373776f726471007e000e4c0008757365726e616d6571007e000e7870010101017371007e0022737200116a6176612e7574696c2e54726565536574dd98509395ed875b0300007870737200466f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e5573657224417574686f72697479436f6d70617261746f7200000000000001f4020000787077040000000171007e000f787074000561646d696e');


--
-- Data for Name: onhandstock; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.onhandstock (id_product, id_gudang, qty, str_expiry_date, serialno, batch_no, expirydate) VALUES (6, 1, 8436, '', '', '', NULL);
INSERT INTO public.onhandstock (id_product, id_gudang, qty, str_expiry_date, serialno, batch_no, expirydate) VALUES (18, 1, 2778, '', '', '', NULL);
INSERT INTO public.onhandstock (id_product, id_gudang, qty, str_expiry_date, serialno, batch_no, expirydate) VALUES (7, 1, 6969, '', '', '', NULL);
INSERT INTO public.onhandstock (id_product, id_gudang, qty, str_expiry_date, serialno, batch_no, expirydate) VALUES (2, 1, 4800, '', '', '', NULL);


--
-- Data for Name: sellpricelevel; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.sellpricelevel (id_pricelevel, name, passworded, usebydefault, memo) VALUES (1, 'Normal', false, false, '');
INSERT INTO public.sellpricelevel (id_pricelevel, name, passworded, usebydefault, memo) VALUES (2, 'Special', false, false, '');


--
-- Data for Name: productsellprice; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.productsellprice (id_pricelevel, id_product, price, profitfactor) VALUES (2, 18, 10000, 0.200000003);
INSERT INTO public.productsellprice (id_pricelevel, id_product, price, profitfactor) VALUES (1, 18, 5000, 0.100000001);
INSERT INTO public.productsellprice (id_pricelevel, id_product, price, profitfactor) VALUES (2, 20, 10000, 0.200000003);
INSERT INTO public.productsellprice (id_pricelevel, id_product, price, profitfactor) VALUES (1, 20, 5000, 0.100000001);
INSERT INTO public.productsellprice (id_pricelevel, id_product, price, profitfactor) VALUES (1, 23, 0, 0);
INSERT INTO public.productsellprice (id_pricelevel, id_product, price, profitfactor) VALUES (2, 23, 0, 0);
INSERT INTO public.productsellprice (id_pricelevel, id_product, price, profitfactor) VALUES (1, 24, 0, 0);


--
-- Data for Name: salesinvoice; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.salesinvoice (systemid, issuedate, cust, status_payment, status_canceled, status_delivery, shipping_line, misc_charge, misc_charge_memo, vat, vat_inclusive, promocode_used, memo, disc, disc_memo, payment_type, payment_details, payment_amount, invoice_no, no_fak_pajak) VALUES (5, '2018-04-30 16:50:37.779', 7, 0, 0, 0, NULL, 0, '', 0, false, NULL, '', 0, NULL, 0, 'RRR', 300000, '2018-04-30', '9191');
INSERT INTO public.salesinvoice (systemid, issuedate, cust, status_payment, status_canceled, status_delivery, shipping_line, misc_charge, misc_charge_memo, vat, vat_inclusive, promocode_used, memo, disc, disc_memo, payment_type, payment_details, payment_amount, invoice_no, no_fak_pajak) VALUES (6, '2018-05-02 13:18:50.163', 14, 0, 0, 0, NULL, 0, '', 0, false, NULL, '', 0, NULL, 0, 'RRR', 240000, '2018-05-02', '112233');
INSERT INTO public.salesinvoice (systemid, issuedate, cust, status_payment, status_canceled, status_delivery, shipping_line, misc_charge, misc_charge_memo, vat, vat_inclusive, promocode_used, memo, disc, disc_memo, payment_type, payment_details, payment_amount, invoice_no, no_fak_pajak) VALUES (7, '2018-05-11 11:38:27.869', 14, 0, 0, 0, NULL, 0, '', 0, false, NULL, '', 0, NULL, 0, 'RRR', 44446666, '2018-05-11', '112233');
INSERT INTO public.salesinvoice (systemid, issuedate, cust, status_payment, status_canceled, status_delivery, shipping_line, misc_charge, misc_charge_memo, vat, vat_inclusive, promocode_used, memo, disc, disc_memo, payment_type, payment_details, payment_amount, invoice_no, no_fak_pajak) VALUES (8, '2018-05-14 10:38:15.338', 14, 0, 0, 0, NULL, 0, '', 0, false, NULL, '', 0, NULL, 2, 'LLL', 100000, '2018-05-14', '11223344');


--
-- Data for Name: salesinvoiceitem; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.salesinvoiceitem (parent, item, qty, reqnote, harga_jual, disc) VALUES (5, 2, 200, NULL, 0, 0);
INSERT INTO public.salesinvoiceitem (parent, item, qty, reqnote, harga_jual, disc) VALUES (5, 6, 200, NULL, 0, 0);
INSERT INTO public.salesinvoiceitem (parent, item, qty, reqnote, harga_jual, disc) VALUES (5, 7, 40, NULL, 0, 0);
INSERT INTO public.salesinvoiceitem (parent, item, qty, reqnote, harga_jual, disc) VALUES (6, 2, 44, NULL, 0, 0);
INSERT INTO public.salesinvoiceitem (parent, item, qty, reqnote, harga_jual, disc) VALUES (6, 6, 100, NULL, 0, 0);
INSERT INTO public.salesinvoiceitem (parent, item, qty, reqnote, harga_jual, disc) VALUES (6, 18, 400, NULL, 0, 0);
INSERT INTO public.salesinvoiceitem (parent, item, qty, reqnote, harga_jual, disc) VALUES (7, 6, 120, NULL, 0, 0);
INSERT INTO public.salesinvoiceitem (parent, item, qty, reqnote, harga_jual, disc) VALUES (7, 7, 20, NULL, 0, 0);
INSERT INTO public.salesinvoiceitem (parent, item, qty, reqnote, harga_jual, disc) VALUES (8, 2, 132, NULL, 0, 0);
INSERT INTO public.salesinvoiceitem (parent, item, qty, reqnote, harga_jual, disc) VALUES (8, 6, 32, NULL, 0, 0);
INSERT INTO public.salesinvoiceitem (parent, item, qty, reqnote, harga_jual, disc) VALUES (8, 7, 43, NULL, 0, 0);


--
-- Data for Name: salesofficer; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.salesofficer (systemid) VALUES (9);
INSERT INTO public.salesofficer (systemid) VALUES (12);
INSERT INTO public.salesofficer (systemid) VALUES (16);
INSERT INTO public.salesofficer (systemid) VALUES (20);
INSERT INTO public.salesofficer (systemid) VALUES (25);


--
-- Data for Name: salesorder; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.salesorder (systemid, issuedate, cust, status_payment, status_canceled, status_delivery, shipping_line, misc_charge, misc_charge_memo, vat, vat_inclusive, promocode_used, memo, disc, disc_memo) VALUES (15, '2018-05-08 23:59:59', 7, 0, 0, 0, NULL, 100000, 'OOO', 0, true, NULL, '', 2000, 'No No');
INSERT INTO public.salesorder (systemid, issuedate, cust, status_payment, status_canceled, status_delivery, shipping_line, misc_charge, misc_charge_memo, vat, vat_inclusive, promocode_used, memo, disc, disc_memo) VALUES (16, '2018-05-09 23:59:59', 7, 0, 0, 0, NULL, 100000, 'OOO', 0, true, NULL, '', 2000, 'No No');
INSERT INTO public.salesorder (systemid, issuedate, cust, status_payment, status_canceled, status_delivery, shipping_line, misc_charge, misc_charge_memo, vat, vat_inclusive, promocode_used, memo, disc, disc_memo) VALUES (17, '2018-05-09 23:59:59', 7, 1, 0, 0, NULL, 100000, 'OOO', 0, true, NULL, '', 2000, 'No No');
INSERT INTO public.salesorder (systemid, issuedate, cust, status_payment, status_canceled, status_delivery, shipping_line, misc_charge, misc_charge_memo, vat, vat_inclusive, promocode_used, memo, disc, disc_memo) VALUES (18, '2018-05-09 23:59:59', 7, 2, 2, 1, NULL, 100000, 'OOO', 0, true, NULL, '', 2000, 'No No');
INSERT INTO public.salesorder (systemid, issuedate, cust, status_payment, status_canceled, status_delivery, shipping_line, misc_charge, misc_charge_memo, vat, vat_inclusive, promocode_used, memo, disc, disc_memo) VALUES (22, '2018-05-14 15:56:10.326', 14, 0, 0, 0, NULL, 0, '', 0, false, NULL, '', 0, NULL);
INSERT INTO public.salesorder (systemid, issuedate, cust, status_payment, status_canceled, status_delivery, shipping_line, misc_charge, misc_charge_memo, vat, vat_inclusive, promocode_used, memo, disc, disc_memo) VALUES (23, '2018-05-09 23:59:59', 7, 1, 0, 1, NULL, 100000, 'OOO', 0, true, NULL, '', 2000, 'NoNo');
INSERT INTO public.salesorder (systemid, issuedate, cust, status_payment, status_canceled, status_delivery, shipping_line, misc_charge, misc_charge_memo, vat, vat_inclusive, promocode_used, memo, disc, disc_memo) VALUES (24, '2018-05-09 23:59:59', 11, 1, 0, 1, NULL, 100000, 'OOO', 0, true, NULL, '', 2000, 'NoNo');
INSERT INTO public.salesorder (systemid, issuedate, cust, status_payment, status_canceled, status_delivery, shipping_line, misc_charge, misc_charge_memo, vat, vat_inclusive, promocode_used, memo, disc, disc_memo) VALUES (25, '2018-05-17 10:17:21.96', 22, 0, 0, 0, NULL, 0, '', 0, false, NULL, '', 0, NULL);
INSERT INTO public.salesorder (systemid, issuedate, cust, status_payment, status_canceled, status_delivery, shipping_line, misc_charge, misc_charge_memo, vat, vat_inclusive, promocode_used, memo, disc, disc_memo) VALUES (26, '2018-05-09 23:59:59', 27, 1, 0, 1, NULL, 100000, 'OOO', 0, true, NULL, '', 2000, 'NoNo');
INSERT INTO public.salesorder (systemid, issuedate, cust, status_payment, status_canceled, status_delivery, shipping_line, misc_charge, misc_charge_memo, vat, vat_inclusive, promocode_used, memo, disc, disc_memo) VALUES (27, '2018-05-17 12:50:32.175', 22, 0, 0, 0, NULL, 0, '', 0, false, NULL, '', 0, NULL);


--
-- Data for Name: salesorderitem; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.salesorderitem (parent, item, qty, harga_jual, disc) VALUES (15, 2, 100, 0, 0);
INSERT INTO public.salesorderitem (parent, item, qty, harga_jual, disc) VALUES (15, 6, 200, 0, 0);
INSERT INTO public.salesorderitem (parent, item, qty, harga_jual, disc) VALUES (16, 2, 100, 0, 0);
INSERT INTO public.salesorderitem (parent, item, qty, harga_jual, disc) VALUES (16, 6, 200, 0, 0);
INSERT INTO public.salesorderitem (parent, item, qty, harga_jual, disc) VALUES (17, 2, 100, 0, 0);
INSERT INTO public.salesorderitem (parent, item, qty, harga_jual, disc) VALUES (17, 6, 200, 0, 0);
INSERT INTO public.salesorderitem (parent, item, qty, harga_jual, disc) VALUES (18, 6, 200, 0, 0);
INSERT INTO public.salesorderitem (parent, item, qty, harga_jual, disc) VALUES (18, 2, 100, 0, 0);
INSERT INTO public.salesorderitem (parent, item, qty, harga_jual, disc) VALUES (22, 7, 444, 0, 0);
INSERT INTO public.salesorderitem (parent, item, qty, harga_jual, disc) VALUES (22, 18, 2222, 0, 0);
INSERT INTO public.salesorderitem (parent, item, qty, harga_jual, disc) VALUES (23, 2, 100, 0, 0);
INSERT INTO public.salesorderitem (parent, item, qty, harga_jual, disc) VALUES (23, 6, 200, 0, 0);
INSERT INTO public.salesorderitem (parent, item, qty, harga_jual, disc) VALUES (24, 2, 100, 0, 0);
INSERT INTO public.salesorderitem (parent, item, qty, harga_jual, disc) VALUES (24, 6, 200, 0, 0);
INSERT INTO public.salesorderitem (parent, item, qty, harga_jual, disc) VALUES (25, 2, 100, 0, 0);
INSERT INTO public.salesorderitem (parent, item, qty, harga_jual, disc) VALUES (25, 7, 444, 0, 0);
INSERT INTO public.salesorderitem (parent, item, qty, harga_jual, disc) VALUES (26, 2, 100, 0, 0);
INSERT INTO public.salesorderitem (parent, item, qty, harga_jual, disc) VALUES (26, 6, 200, 0, 0);
INSERT INTO public.salesorderitem (parent, item, qty, harga_jual, disc) VALUES (27, 2, 100, 0, 0);


--
-- Data for Name: series; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: tire; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: usergroup; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: usergroupaccessright; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Name: construction_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

--SELECT pg_catalog.setval('public.construction_systemid_seq', 1, false);
--ALTER SEQUENCE construction_systemid_seq restart with 1;

--
-- Name: contact_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

--SELECT pg_catalog.setval('public.contact_systemid_seq', 27, true);
ALTER SEQUENCE contact_systemid_seq restart with 27;


--
-- Name: contactaddress_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

--SELECT pg_catalog.setval('public.contactaddress_systemid_seq', 31, true);
ALTER SEQUENCE contactaddress_systemid_seq restart with 31;


--
-- Name: counterinfo_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

--SELECT pg_catalog.setval('public.counterinfo_system_id_seq', 1, false);


--
-- Name: counterinfo_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

--SELECT pg_catalog.setval('public.counterinfo_systemid_seq', 1, false);


--
-- Name: gudang_id_gudang_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

--SELECT pg_catalog.setval('public.gudang_id_gudang_seq', 1, true);
ALTER SEQUENCE gudang_id_gudang_seq restart with 2;


--
-- Name: itemcategory_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

--SELECT pg_catalog.setval('public.itemcategory_systemid_seq', 12, true);
ALTER SEQUENCE itemcategory_systemid_seq restart with 12;


--
-- Name: merk_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

--SELECT pg_catalog.setval('public.merk_systemid_seq', 5, true);
ALTER SEQUENCE merk_systemid_seq restart with 5;


--
-- Name: model_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

--SELECT pg_catalog.setval('public.model_systemid_seq', 1, false);


--
-- Name: product_id_product_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

--SELECT pg_catalog.setval('public.product_id_product_seq', 25, true);
ALTER SEQUENCE product_id_product_seq restart with 25;

--
-- Name: productsellpricehistory_id_itempricehistory_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

--SELECT pg_catalog.setval('public.productsellpricehistory_id_itempricehistory_seq', 1, false);
ALTER SEQUENCE productsellpricehistory_id_itempricehistory_seq restart with 1;


--
-- Name: province_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

--SELECT pg_catalog.setval('public.province_systemid_seq', 1, false);
ALTER SEQUENCE province_systemid_seq restart with 1;


--
-- Name: regency_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

--SELECT pg_catalog.setval('public.regency_systemid_seq', 1, false);
ALTER SEQUENCE regency_systemid_seq restart with 1;


--
-- Name: salesinvoice_id_si_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

--SELECT pg_catalog.setval('public.salesinvoice_id_si_seq', 8, true);
ALTER SEQUENCE salesinvoice_id_si_seq restart with 8;


--
-- Name: salesinvoice_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

--SELECT pg_catalog.setval('public.salesinvoice_systemid_seq', 1, false);


--
-- Name: salesorder_id_so_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

--SELECT pg_catalog.setval('public.salesorder_id_so_seq', 27, true);
ALTER SEQUENCE salesorder_id_so_seq restart with 27;


--
-- Name: salesorder_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

--SELECT pg_catalog.setval('public.salesorder_systemid_seq', 1, false);


--
-- Name: salesquotation_id_sq_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

--SELECT pg_catalog.setval('public.salesquotation_id_sq_seq', 1, false);


--
-- Name: sellpricelevel_id_pricelevel_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

--SELECT pg_catalog.setval('public.sellpricelevel_id_pricelevel_seq', 2, true);


--
-- Name: seq_gen_sequence; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

--SELECT pg_catalog.setval('public.seq_gen_sequence', 50, false);


--
-- Name: usercredential_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

--SELECT pg_catalog.setval('public.usercredential_systemid_seq', 27, true);
ALTER SEQUENCE usercredential_systemid_seq restart with 27;


--
-- Name: vendorpayment_id_pr_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

--SELECT pg_catalog.setval('public.vendorpayment_id_pr_seq', 1, false);


--
-- PostgreSQL database dump complete
--

