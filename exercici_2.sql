CREATE DATABASE exercici_2;
USE exercici_2;

CREATE TABLE mecanics (
    dni CHAR(9),
    nom VARCHAR(20),
    edat TINYINT,
    PRIMARY KEY (dni)
);

CREATE TABLE vehicles (
    matricula VARCHAR(7),
    propietari VARCHAR(20),
    marca VARCHAR(20),
    dni CHAR(9),
    PRIMARY KEY (matricula),
    FOREIGN KEY (dni) REFERENCES mecanics (dni)
)