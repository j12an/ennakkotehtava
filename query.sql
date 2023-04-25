/* Tietokannan luonti */
CREATE DATABASE mml_etukateistehtava;

/*1) TUOTTEET-taulu
1.1. Tuotteet-taulun luonti */

CREATE TABLE mml_etukateistehtava.tuotteet(tuoteID int,tuote varchar(255),tuotteen_hinta varchar(255));

-- 1.2. Tuotteet-taulun tietojen lisäys

INSERT INTO `mml_etukateistehtava`.`tuotteet`
(`tuoteID`,
`tuote`,
`tuotteen_hinta`)
VALUES
('1',
'Laihuutotodistus',
'5');
INSERT INTO `mml_etukateistehtava`.`tuotteet`
(`tuoteID`,
`tuote`,
`tuotteen_hinta`)
VALUES
('2',
'Rasitustodistus',
'10');
INSERT INTO `mml_etukateistehtava`.`tuotteet`
(`tuoteID`,
`tuote`,
`tuotteen_hinta`)
VALUES
('3',
'Vuokraoikeustodistus',
'5');
INSERT INTO `mml_etukateistehtava`.`tuotteet`
(`tuoteID`,
`tuote`,
`tuotteen_hinta`)
VALUES
('4',
'Laihuutotodistus oikeaksi todistettava',
'5');
INSERT INTO `mml_etukateistehtava`.`tuotteet`
(`tuoteID`,
`tuote`,
`tuotteen_hinta`)
VALUES
('5',
'Rasitustodistus oikeaksi todistettava',
'10');
INSERT INTO `mml_etukateistehtava`.`tuotteet`
(`tuoteID`,
`tuote`,
`tuotteen_hinta`)
VALUES
('6',
'Vuokraoikeustodistus oikeaksi todistettava',
'5');
INSERT INTO `mml_etukateistehtava`.`tuotteet`
(`tuoteID`,
`tuote`,
`tuotteen_hinta`)
VALUES
('7',
'Ylläpitomaksu',
'15');

-- 1.3. Tuotteet-taulun tietojen haku:

SELECT * FROM mml_etukateistehtava.tuotteet;


/* 2) LASKUTUSTAPAHTUMAT-taulu
2.1. Laskutustapahtuma-taulun luonti */

CREATE TABLE mml_etukateistehtava.laskutustapahtumat(laskutustapahtumaID int,asiakastunnus varchar(255),tuote varchar(255),kplmaara varchar(255), pvm varchar(255));

-- 2.2. Laskutustapahtumat-taulun tietojen lisäys

INSERT INTO `mml_etukateistehtava`.`laskutustapahtumat`
(`laskutustapahtumaID`,
`asiakastunnus`,
`tuote`,
`kplmaara`,
`pvm`)
VALUES
('1',
'asiakas1',
'Lainhuutodistus',
'1',
'1.4.2023');	
INSERT INTO `mml_etukateistehtava`.`laskutustapahtumat`
(`laskutustapahtumaID`,
`asiakastunnus`,
`tuote`,
`kplmaara`,
`pvm`)
VALUES
('2',
'asiakas1',
'Vuokraoikeustodistus oikeaksi todistettava',
'8',
'1.4.2023');	
INSERT INTO `mml_etukateistehtava`.`laskutustapahtumat`
(`laskutustapahtumaID`,
`asiakastunnus`,
`tuote`,
`kplmaara`,
`pvm`)
VALUES
('3',
'asiakas1',
'Rasitustodistus',
'1',
'4.4.2023');
INSERT INTO `mml_etukateistehtava`.`laskutustapahtumat`
(`laskutustapahtumaID`,
`asiakastunnus`,
`tuote`,
`kplmaara`,
`pvm`)
VALUES
('3',
'asiakas2',
'Rasitustodistus oikeaksi todistettava',
'2',
'2.4.2023');	
INSERT INTO `mml_etukateistehtava`.`laskutustapahtumat`
(`laskutustapahtumaID`,
`asiakastunnus`,
`tuote`,
`kplmaara`,
`pvm`)
VALUES
('4',
'asiakas2',
'Lainhuutotodistus oikeaksi todistettava',
'1',
'7.4.2023');	
INSERT INTO `mml_etukateistehtava`.`laskutustapahtumat`
(`laskutustapahtumaID`,
`asiakastunnus`,
`tuote`,
`kplmaara`,
`pvm`)
VALUES
('5',
'asiakas2',
'Vuokraoikeustodistus',
'1',
'7.4.2023');	
INSERT INTO `mml_etukateistehtava`.`laskutustapahtumat`
(`laskutustapahtumaID`,
`asiakastunnus`,
`tuote`,
`kplmaara`,
`pvm`)
VALUES
('6',
'asiakas3',
'Vuokraoikeustodistus',
'5',
'2.4.2023');	
INSERT INTO `mml_etukateistehtava`.`laskutustapahtumat`
(`laskutustapahtumaID`,
`asiakastunnus`,
`tuote`,
`kplmaara`,
`pvm`)
VALUES
('7',
'asiakas3',
'Vuokraoikeustodistus oikeaksi todistettava',
'7',
'7.4.2023');	
INSERT INTO `mml_etukateistehtava`.`laskutustapahtumat`
(`laskutustapahtumaID`,
`asiakastunnus`,
`tuote`,
`kplmaara`,
`pvm`)
VALUES
('8',
'asiakas4',
'Rasitustodistus',
'7',
'7.4.2023');	
INSERT INTO `mml_etukateistehtava`.`laskutustapahtumat`
(`laskutustapahtumaID`,
`asiakastunnus`,
`tuote`,
`kplmaara`,
`pvm`)
VALUES
('9',
'asiakas4',
'Rasitustodistus oikeaksi todistettava',
'3',
'8.4.2023');	

-- 2.3. Laskutustapahtumat-taulun tietojen haku 

SELECT * FROM mml_etukateistehtava.laskutustapahtumat;


/* 3) ASIAKKAAT-taulu
3.1 Asiakkaat-taulun luonti */

CREATE TABLE mml_etukateistehtava.asiakkaat(asiakasID int, asiakastunnus varchar(255),asiakasryhma varchar(255));

-- 3.2 Asiakkaat-taulun tietojen lisäys

INSERT INTO `mml_etukateistehtava`.`asiakkaat`
(`asiakasID`,
`asiakastunnus`,
`asiakasryhma`)
VALUES
('1',
'asiakas1',
'kiinteistönvälittäjät');
INSERT INTO `mml_etukateistehtava`.`asiakkaat`
(`asiakasID`,
`asiakastunnus`,
`asiakasryhma`)
VALUES
('2',
'asiakas2',
'maistaraatit');
INSERT INTO `mml_etukateistehtava`.`asiakkaat`
(`asiakasID`,
`asiakastunnus`,
`asiakasryhma`)
VALUES
('3',
'asiakas3',
'kunnat');
INSERT INTO `mml_etukateistehtava`.`asiakkaat`
(`asiakasID`,
`asiakastunnus`,
`asiakasryhma`)
VALUES
('4',
'asiakas4',
'kiinteistönvälittäjät');

-- 3.3. Asiakkaat-taulun tietojen haku 

SELECT * FROM mml_etukateistehtava.asiakkaat;

/* 4) ASIAKASRYHMAT JA HINNOITTELU-taulu
4.1 Asiakasryhmat ja hinnoittelu-taulun luonti */

CREATE TABLE mml_etukateistehtava.asiakasryhmat_ja_hinnoittelu(asiakasryhmat_ja_hinnoitteluID int, asiakasryhma varchar(255),yllapitomaksu varchar(255),hinnoittelu varchar(255));

-- 4.2 Asiakasryhmat ja hinnoittelu-taulun tietojen lisäys

INSERT INTO `mml_etukateistehtava`.`asiakasryhmat_ja_hinnoittelu`
(`asiakasryhmat_ja_hinnoitteluID`,
`asiakasryhma`,
`yllapitomaksu`,
`hinnoittelu`)
VALUES
('1',
'kiinteistonvalittajat',
'kaikki tuotteet maksullisia',
'kiinteä ylläpitomaksu / kk');
INSERT INTO `mml_etukateistehtava`.`asiakasryhmat_ja_hinnoittelu`
(`asiakasryhmat_ja_hinnoitteluID`,
`asiakasryhma`,
`yllapitomaksu`,
`hinnoittelu`)
VALUES
('2',
'maistraatit',
'vain oikeaksi todistetut tuotteet maksullisia',
'ei ylläpitomaksua');
INSERT INTO `mml_etukateistehtava`.`asiakasryhmat_ja_hinnoittelu`
(`asiakasryhmat_ja_hinnoitteluID`,
`asiakasryhma`,
`yllapitomaksu`,
`hinnoittelu`)
VALUES
('3',
'kunnat',
'kaikki tuotteet maksuttomia',
'ei ylläpitomaksua');

-- 4.3. Asiakasryhmat ja hinnoittelu-taulun tietojen haku

SELECT * FROM mml_etukateistehtava.asiakasryhmat_ja_hinnoittelu; 

-- 5) NÄKYMÄN (kaikki_asiakaslaskutiedot_yhteensa) luonti:

CREATE VIEW asiakaslaskutustiedot_yhteensa AS SELECT laskutustapahtumat.asiakastunnus, SUM(laskutustapahtumat.kplmaara * tuotteet.tuotteen_hinta) as 'Kokonaissumma' FROM asiakkaat JOIN laskutustapahtumat ON asiakkaat.asiakastunnus=laskutustapahtumat.asiakastunnus JOIN tuotteet ON laskutustapahtumat.tuote = tuotteet.tuote JOIN asiakasryhmat_ja_hinnoittelu ON asiakkaat.asiakasryhma=asiakasryhmat_ja_hinnoittelu.asiakasryhma WHERE asiakasryhmat_ja_hinnoittelu.yllapitomaksu IN ('vain oikeaksi todistetut tuotteet maksullisia') AND laskutustapahtumat.tuote LIKE '%oikeaksi todistettava%' OR asiakasryhmat_ja_hinnoittelu.yllapitomaksu IN ('kaikki tuotteet maksullisia') GROUP BY asiakastunnus;

-- 6) NÄKYMÄN (kaikki_asiakas_laskutustiedot) luonti

CREATE VIEW kaikki_asiakas_laskutustiedot AS SELECT asiakaslaskutustiedot_yhteensa.Kokonaissumma as 'Kokonaissumma', laskutustapahtumat.asiakastunnus, asiakkaat.asiakasryhma, laskutustapahtumat.tuote, laskutustapahtumat.kplmaara, tuotteet.tuotteen_hinta, laskutustapahtumat.kplmaara * tuotteet.tuotteen_hinta as 'Tuotteen hinta yhteensa', asiakasryhmat_ja_hinnoittelu.yllapitomaksu, asiakasryhmat_ja_hinnoittelu.hinnoittelu FROM asiakkaat JOIN laskutustapahtumat ON asiakkaat.asiakastunnus=laskutustapahtumat.asiakastunnus JOIN tuotteet ON laskutustapahtumat.tuote = tuotteet.tuote JOIN asiakasryhmat_ja_hinnoittelu ON asiakkaat.asiakasryhma=asiakasryhmat_ja_hinnoittelu.asiakasryhma JOIN asiakaslaskutustiedot_yhteensa ON asiakkaat.asiakastunnus=asiakaslaskutustiedot_yhteensa.asiakastunnus WHERE asiakasryhmat_ja_hinnoittelu.yllapitomaksu IN ('vain oikeaksi todistetut tuotteet maksullisia') AND laskutustapahtumat.tuote LIKE '%oikeaksi todistettava%' OR asiakasryhmat_ja_hinnoittelu.yllapitomaksu IN ('kaikki tuotteet maksullisia') ORDER BY asiakastunnus;