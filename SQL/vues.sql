CREATE VIEW Salaires AS 
SELECT SerNo, Nom NomS, Lieu, (SELECT MIN(Salaire) FROM Employe E WHERE E.SerNo = S.SerNo) SalaireMin, (SELECT MAX(Salaire) FROM Employe E WHERE E.SerNo = S.SerNo) SalairaMax
FROM Service S;

SELECT * FROM Salaires;
SELECT S.SerNo, S.Nom, Lieu, MIN(Salaire), MAX(Salaire)
FROM Service S, Employe E
WHERE S.SerNo = E.SerNo
GROUP BY S.SerNo, S.Nom, Lieu;

CREATE VIEW SalaireFranc(EmpNo, Nom, Prenom, Fonction, SerNo, SalaireFranc, CommissionFranc) AS
SELECT EmpNo, Nom, Prenom, Fonction, SerNo, Salaire*6.55957, CommissionFranc*6.55957
FROM Employe;

SELECT * FROM SalaireFranc;

CREATE TRIGGER SF_insert
INSTEAD OF INSERT ON SalaireFranc
FOR EACH ROW
BEGIN

--Ecrire l'insertion dans la table Employe
INSERT INTO Employe VALUES(:NEW.EmpNo,...,:NEW.SalaireFranc/6.55957,...);
END;
