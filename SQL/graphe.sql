-- Affichage des esclaves de Ramirez
SELECT *, LEVEL 
FROM Employe 
START WITH Chef = 7839
CONNECT BY PRIOR EmpNo = Chef
ORDER SIBLINGS BY EmpNo;

SELECT LPAD(' ', (LEVEL - 1) * 4) || '- ' || NOM AS "Les esclaves de Ramirez"
FROM Employe
START WITH EmpNo = 7839
CONNECT BY PRIOR EmpNo = Chef
ORDER SIBLINGS BY EmpNo;

-- Connaitre le type des noeuds 1->vrai 0->faux
SELECT NOM, 
CONNECT_BY_ISLEAF Feuille,
(SELECT COUNT(*) FROM Employe EM
WHERE Chef IS NOT NULL
AND ER.EmpNo = EM.Chef
AND ROWNUM = 1
) Branche,
DECODE(EmpNo, CONNECT_BY_ROOT(EmpNo), 1, 0) Racine
FROM Employe ER
START WITH Nom = 'Ramirez'
CONNECT BY Chef = PRIOR EmpNo;

-- Liste des esclaves de Ramirez avec une Common Table Expression
WITH LesEsclaves(EmpNo, Nom, Niveau) AS (
	SELECT EmpNo, Nom, 1
	FROM Employe
	WHERE Chef IS NULL
	UNION ALL
	SELECT E.EmpNo, E.Nom, Niveau+1
	FROM Employe E, LesEsclaves LE
	WHERE LE.EmpNo = E.Chef
) SEARCH DEPTH FIRST BY EmpNo 
SET seq
SELECT LPAD(' ', (Niveau - 1) * 4) || '- ' || NOM AS "Les esclaves de Ramirez" FROM LesEsclaves;
