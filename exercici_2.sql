CREATE DATABASE exercici_2_2;
USE exercici_2_2;

CREATE TABLE clients (
    dni CHAR(9) PRIMARY KEY,
    nom VARCHAR(50),
    direccio VARCHAR(50)
);

CREATE TABLE pagaments_pendents (
    codi INTEGER PRIMARY KEY AUTO_INCREMENT,
    dni CHAR(9),
    import DOUBLE,
    FOREIGN KEY (dni) REFERENCES clients (dni)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
