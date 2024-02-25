CREATE OR REPLACE TRIGGER nbEtuInscrit
BEFORE INSERT OR UPDATE 
ON INSCRIPTION 
FOR EACH ROW
DECLARE maximum Module.effectifMax%type;
nb Module.effectif%type;
BEGIN
	SELECT effectifMax, effectif INTO maximum, nb FROM MODULE WHERE codmod = :NEW.codmod;
	IF maximum <= nb THEN
		RAISE_APPLICATION_ERROR(-20002, 'Trop de personnes sont déjà présente dans ce module');
	END IF;
END;
/