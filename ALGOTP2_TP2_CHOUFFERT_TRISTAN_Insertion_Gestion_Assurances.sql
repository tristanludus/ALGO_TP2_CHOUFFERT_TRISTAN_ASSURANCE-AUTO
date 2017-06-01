/*insertion de données:*/

INSERT INTO CLIENT
VALUES (1,'Jean','15 Grand rue');
INSERT INTO CLIENT
VALUES (2,'Bernadette','20 boulevard du saumon');
INSERT INTO CLIENT
VALUES (3,'Jacky','11 Avenue de Charle de Gaulle');
INSERT INTO CLIENT
VALUES (4,'Gislaine','2 sentier de la mairie');
INSERT INTO CLIENT
VALUES (5,'Henri','125 rue du Châtelet');

/*--> Pas de relations 0-N, que des relations 1-1, les clients sont uniques.*/

INSERT INTO ACCIDENT
VALUES (1,'15-06-2015',1500);
INSERT INTO ACCIDENT
VALUES (2,'04-12-2011',600);
INSERT INTO ACCIDENT
VALUES (3,'31-05-2013',4689);
INSERT INTO ACCIDENT
VALUES (4,'5-01-2006',990);
INSERT INTO ACCIDENT
VALUES (5,'24-12-2016',666);

/*--> Les accidents sont uniques aussi mais peuvent concerner plusieurs fois la même voiture*/

INSERT INTO CONTRAT
VALUES (1,1,'Tous risque','16-09-2010');
INSERT INTO CONTRAT
VALUES (1,2,'Reprise','16-09-2010');
INSERT INTO CONTRAT
VALUES (3,3,'Au tiers','03-03-2017');
INSERT INTO CONTRAT
VALUES (4,4,'Tous risque','17-07-2013');
INSERT INTO CONTRAT
VALUES (4,5,'Reprise','12-02-2008');

/*--> Un contrat ne peut être signer que par un seul client mais le même client peut signer plusieurs contrat*/

INSERT INTO IMPLICATION
VALUES (1,'');
INSERT INTO IMPLICATION
VALUES (2,1);
INSERT INTO IMPLICATION
VALUES (2,2);
INSERT INTO IMPLICATION
VALUES (3,4);
INSERT INTO IMPLICATION
VALUES (5,5);

/*--> Un accident peut affecter plusieurs vehicule comme il peut n'en affecter aucun, et un vehicule peut ou pas faire un accident*/

INSERT INTO VEHICULE
VALUES (1,'Ford','Mustang','1966',355,1,1,1);
INSERT INTO VEHICULE
VALUES (2,'Ford','Mondeo','2009',140,1,2,1);
INSERT INTO VEHICULE
VALUES (3,'Renault','Clio','1999',90,3,3,3);
INSERT INTO VEHICULE
VALUES (4,'Honda','Civic','2001',96,4,4,4);
INSERT INTO VEHICULE
VALUES (5,'Volkswagen','Golf','2011',70,4,5,4);

/*--> Un vehicule appartient obligatoirement a un client, mais un client peut posséder plusieurs vehicule comme il ne peut en posséder aucun*/