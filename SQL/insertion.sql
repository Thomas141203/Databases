INSERT INTO Service VALUES(10, 'Comptabilité', 'Paris');
INSERT INTO Service VALUES(20, 'Affaire Générales', 'Dijon');
INSERT INTO Service VALUES(30, 'Ventes', 'Besançon');
INSERT INTO Service VALUES(40, 'Ressources Humaines', 'Lyon');

INSERT INTO Employe VALUES(7839, 'Ramirez', 'Jules', 'President', NULL, TO_DATE('17-nov-81', 'DD-MON-YY'), 5000.00, NULL, 20);
INSERT INTO Employe VALUES(7782, 'Lapotre', 'Albert', 'Gerant', 7839, TO_DATE('09-jun-81', 'DD-MON-YY'), 2450.00, NULL, 10);
INSERT INTO Employe VALUES(7566, 'Deschamps', 'Jean', 'Gerant', 7839, TO_DATE('02-mar-81', 'DD-MON-YY'), 2975.00, NULL, 20);
INSERT INTO Employe VALUES(7902, 'Jamme', 'Michelle', 'Gerant', 7566, TO_DATE('03-dec-81', 'DD-MON-YY'), 3000.00, NULL, 20);
INSERT INTO Employe VALUES(7698, 'Bourgeois', 'Joel', 'Gerant', 7839, TO_DATE('01-may-81', 'DD-MON-YY'), 2850.00, NULL, 30);
INSERT INTO Employe VALUES(7788, 'Remond', 'Pierre', 'Secretaire', 7566, TO_DATE('09-nov-81', 'DD-MON-YY'), 3000.00, NULL, 20);
INSERT INTO Employe VALUES(7876, 'Jaillot', 'Elodi', 'Secretaire', 7788, TO_DATE('23-sep-81', 'DD-MON-YY'), 1100.00, NULL, 20);
INSERT INTO Employe VALUES(7934, 'Chauvet', 'Sylvie', 'Secretaire', 7782, TO_DATE('23-jan-82', 'DD-MON-YY'), 1300.00, NULL, 10);
INSERT INTO Employe VALUES(7369, 'Dupont', 'Jean', 'Secretaire', 7902, TO_DATE('17-dec-80', 'DD-MON-YY'), 800.00, NULL, 20);
INSERT INTO Employe VALUES(7844, 'Turpin', 'Claire', 'Vendeur', 7698, TO_DATE('08-sep-81', 'DD-MON-YY'), 1500.00, 0.00, 30);
INSERT INTO Employe VALUES(7499, 'Martin', 'Adam', 'Vendeur', 7698, TO_DATE('20-feb-81', 'DD-MON-YY'), 1600.00, 300.00, 30);
INSERT INTO Employe VALUES(7521, 'Dupuy', 'Maurice', 'Vendeur', 7839, TO_DATE('22-sep-80', 'DD-MON-YY'), 7000.00, 500.00, 30);
INSERT INTO Employe VALUES(7654, 'Martin', 'Bernard', 'Vendeur', 7698, TO_DATE('28-sep-81', 'DD-MON-YY'), 1250.00, 1400.00, 30);
INSERT INTO Employe VALUES(7900, 'Sibille', 'Lionel', 'Vendeur', 7698, TO_DATE('03-dec-81', 'DD-MON-YY'), 950.00, NULL, 30);

