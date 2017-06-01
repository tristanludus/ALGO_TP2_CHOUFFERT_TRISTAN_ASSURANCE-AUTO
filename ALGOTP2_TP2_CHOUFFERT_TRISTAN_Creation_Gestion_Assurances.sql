create table CLIENT ( NUMCLIENT char (12) not null,

                      NOM char (38) not null,

                      ADRESSE char (60) not null,

             primary key (NUMCLIENT) );

create table CONTRAT ( SIGNATAIRE char (12) not null,

                       NUMCTR char (8) not null,

                       TYPE char (12) not null,

                       DATESIGN date not null,

             primary key (SIGNATAIRE,NUMCTR),

             foreign key (SIGNATAIRE) references CLIENT

                on delete no action on update cascade);


create table VEHICULE (NUMVEH char (16) not null,

                       MARQUE char (30) not null,

                       MODELE char (30) not null,

                       ANNEE decimal (4) not null,

                       CYLINDREE decimal (6) not null,

                       SIGNATAIRE char (12) not null,

                       NUMCTR decimal (8) not null,

                       NUMCLIENT char (12) not null,

             primary key (NUMVEH),

             unique (SIGNATAIRE,NUMCTR),

             foreign key (NUMCLIENT) references CLIENT

                on delete no action on update cascade,

             foreign key (SIGNATAIRE,NUMCTR) references CONTRAT

                on delete no action on update cascade);


create table ACCIDENT (NUMACC char (10) not null,

                       DATEACC date not null,

                       MONTANT decimal (6),

             primary key (NUMACC));

create table IMPLICATION (NUMVEH char (16) not null,

                          NUMACC char (10) not null,

             primary key (NUMVEH,NUMACC),

             foreign key (NUMVEH) references VEHICULE

                on delete cascade on update cascade,

             foreign key (NUMACC) references ACCIDENT

                on delete cascade on update cascade);