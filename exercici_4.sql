CREATE DATABASE restaurant;
USE restaurant;

CREATE TABLE regio (
	nom_regio VARCHAR(20) PRIMARY KEY
);

CREATE TABLE provincia (
	codi_provincia INT(5) PRIMARY KEY,
	nom VARCHAR(20),
	nom_regio VARCHAR(20),
	FOREIGN KEY (nom_regio) REFERENCES regio (nom_regio)
);


CREATE TABLE localitat (
	codi_localitat INT(5) PRIMARY KEY,
	nom VARCHAR(20),
	codi_provincia INT(5),
	FOREIGN KEY (codi_provincia) REFERENCES provincia (codi_provincia)
);

CREATE TABLE empleat (
	id_empleat INT(5) PRIMARY KEY,
	dni_empleat CHAR(9),
	nom VARCHAR(20),
	telefon VARCHAR(9),
	salari VARCHAR(5),
	codi_localitat INT(5),
	FOREIGN KEY (codi_localitat) REFERENCES localitat (codi_localitat)
);
