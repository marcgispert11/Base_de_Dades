CREATE TABLE especies (
	id INT UNSIGNED AUTO_INCREMENT,
	nom_Vulgar VARCHAR(20),
	nom_cientific VARCHAR(20),
	familia  ENUM('mamífer', 'amfibi', 'au'),
	en_perill_extincio BOOLEAN,
	PRIMARY KEY (id)
);

CREATE TABLE zoo (
	id INT UNSIGNED AUTO_INCREMENT,
	nom VARCHAR(20),
	ciutat VARCHAR(20),
	pais ENUM('españa','franca','alemanya','italia'),
	presupost INT UNSIGNED,
	grandaria INT UNSIGNED,
	PRIMARY KEY (id),
	CHECK (grandaria > 1000 AND grandaria < 1000000)
);

CREATE TABLE animals (
	id INT UNSIGNED AUTO_INCREMENT,
	num_identificacio INT UNSIGNED UNIQUE,
	sexe ENUM('mascle','femella'),
	any_naixement SMALLINT UNSIGNED,
	pais_origen ENUM('espanya','frança','italia','alemanya','marroc'),
	continent ENUM('europa','africa','america','asia'),
	id_especie INT UNSIGNED NOT NULL,
	id_zoo INT UNSIGNED NOT NULL,
	FOREIGN KEY (id_especie) REFERENCES especies(id),
	FOREIGN KEY (id_zoo) REFERENCES zoo(id),
	PRIMARY KEY (id)
);

