-- 6 Requetes SQL ou on recupere ceux qui ne sont pas chefs 
SELECT EmpNo, Nom, Prenom FROM Employe MINUS SELECT Chef FROM Employe; /* Difference */

SELECT EmpNo, Nom, Prenom FROM Employe WHERE EmpNo NOT IN (SELECT Chef FROM Employe WHERE Chef IS NOT NULL); /* Appartenance */

SELECT EmpNo, Nom, Prenom FROM Employe WHERE EmpNo != ALL (SELECT Chef From Employe WHERE Chef IS NOT NULL); /* Comparaison */

SELECT EmpNo, Nom, Prenom From Employe er WHERE NOT EXISTS (SELECT * FROM Employe WHERE Chef = er.EmpNo); /* Existence */

SELECT EmpNo, Nom, Prenom From Employe er WHERE 0 = (SELECT count(*) FROM Employe WHERE chef = er.EmpNo); /* Dénombrer subordonnes */

SElECT er.EmpNo, er.Nom, er.Prenom FROM Employe er LEFT OUTER JOIN Employe em ON em.Chef = er.EmpNo WHERE em.Chef IS NULL; /* Jointure externe  */

-- Recherche du noeud racine
SELECT EmpNo, Nom, Prenom FROM Employe WHERE Chef IS NULL;

-- Qui est responsable d'employes
SELECT * FROM Employe WHERE EmpNo IN (SELECT Chef FROM Employe WHERE Chef IS NOT NULL);

-- Qui est chef d'un employe mieux payé que lui-même
SELECT * FROM Employe er WHERE EmpNo IN (SELECT Chef FROM Employe em WHERE Salaire > er.Salaire);

-- Qui est chef absolu (aucun employe mieux paye que lui)
SELECT * FROM Employe er WHERE NOT EXISTS (SELECT Chef FROM Employe em WHERE em.Salaire > er.Salaire AND er.Chef = em.EmpNo);

-- Trouver le nom du chef d'un employe donne (avec &)
SELECT * FROM Employe er WHERE EmpNo = &employe;
