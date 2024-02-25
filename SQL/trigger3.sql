CREATE OR REPLACE TRIGGER triggerCreateExamen BEFORE UPDATE ON EXAMEN FOR EACH ROW
DECLARE effectifModule Module.effectif%type;
BEGIN
	SELECT effectif INTO effectifModule FROM MODULE WHERE codmod = :NEW.codmod;
	IF effectifModule < 1 THEN
		RAISE_APPLICATION_ERROR(-20003, 'On ne peut pas créer d exament pour un module n ayant pas d eleve');
	END IF;
END;
/