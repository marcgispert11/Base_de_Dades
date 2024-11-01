
CREATE TABLE professors (
	id INT UNSIGNED,
	nif CHAR(9),
	nom VARCHAR(20),
	especialitat VARCHAR(15),
	telefon VARCHAR(9),
	PRIMARY KEY (id),
	UNIQUE (nif)
);

CREATE TABLE alumnes (
	num_matricula INT UNSIGNED,
	nom VARCHAR(20),
	data_naixement DATE,
	telefon INT UNSIGNED,
	PRIMARY KEY (num_matricula)
);

CREATE TABLE assignatures (
	codi_assignatura INT UNSIGNED,
	nom VARCHAR(20),
	id_professor INT UNSIGNED,
	PRIMARY KEY (codi_assignatura),
	FOREIGN KEY (id_professor) REFERENCES professors (id)
);

CREATE TABLE matriculacio (
	num_matricula_alumne INT UNSIGNED,
	codi_assignatura INT UNSIGNED,
	any_academic INT UNSIGNED,
	FOREIGN KEY (num_matricula_alumne) REFERENCES alumnes (num_matricula),
	FOREIGN KEY (codi_assignatura) REFERENCES assignatures (codi_assignatura),
	PRIMARY KEY (num_matricula_alumne)
);
