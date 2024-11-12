CREATE TABLE mecanics (
    dni VARCHAR(9) PRIMARY KEY,
    nom VARCHAR(20),
    cognom VARCHAR(20),
    edat INT
);



CREATE TABLE vehicles (
    matricula VARCHAR(7) PRIMARY KEY,
    propietari VARCHAR(20),
    marca VARCHAR(20),
    dni VARCHAR(9),
    FOREIGN KEY (dni) REFERENCES mecanics (dni)
        ON DELETE SET NULL
        ON UPDATE SET NULL

); 