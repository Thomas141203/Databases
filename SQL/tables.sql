DROP TABLE Employe;
DROP TABLE Service;

CREATE TABLE Service(
	SerNo INTEGER CONSTRAINT pk_Service PRIMARY KEY,
	Nom VARCHAR2(30) NOT NULL,
	Lieu VARCHAR2(50) NOT NULL
);

CREATE TABLE Employe(
	EmpNo INTEGER CONSTRAINT pk_Employe PRIMARY KEY,
	Nom VARCHAR2(50) NOT NULL,
	Prenom VARCHAR2(50) NOT NULL,
	Fonction VARCHAR2(30) CONSTRAINT valeur_permises_pour_fonction CHECK(Fonction in ('President', 'Gerant', 'Secretaire', 'Vendeur')),
	Chef INTEGER CONSTRAINT fk_Employe_Employe REFERENCES Employe(EmpNo),
	DateEmbauche Date DEFAULT Sysdate,
	Salaire NUMBER(12, 2) DEFAULT 0.0,
	Commission NUMBER(10, 2),
	SerNo INTEGER CONSTRAINT fk_Employe_Service REFERENCES Service(SerNo) ON DELETE CASCADE,	
	CONSTRAINT contrainteMemePersonne UNIQUE(Nom, Prenom)
);
