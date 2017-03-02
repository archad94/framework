drop table utilisateur;
drop table depot;
drop table retrait;
drop table transfert;
drop table client;

CREATE TABLE	utilisateur(
	"id" SERIAL not null,
	"nom" varchar(200),
	"naissance" Date,
	"email" varchar(100),
	"tel" varchar(15),
	"adresse" varchar(200),
	"pseudo" varchar(20),
	"mot_de_passe" varchar(30),
	constraint pk_utilisateur primary key (id)
);

CREATE TABLE	client(
	"id" SERIAL not null,
	"nom" varchar(150),
	"prenom" varchar(50),
	"naissance" Date,
	"numero" varchar(15),
	"email" varchar(100),
	"cin" varchar(12),
	"compte" int,
	"adresse" varchar(200),
	constraint pk_client primary key (id)
);

CREATE TABLE	depot(
	"id" SERIAL not null,
	"client" int,
	"montant" int,
	constraint pk_depot primary key (id)
);

CREATE TABLE	retrait(
	"id" SERIAL not null,
	"client" int,
	"montant" int,
	constraint pk_retrait primary key (id)
);

CREATE TABLE	transfert(
	"id" SERIAL not null,
	"de client" int,
	"a client" int,
	"montant" int,
	constraint pk_transaction primary key (id)
);

alter table depot
   add constraint fk_depot foreign key (client)
      references client (id)
      on delete restrict on update restrict;

alter table retrait
   add constraint fk_retrait foreign key (client)
      references client (id)
      on delete restrict on update restrict;

alter table transfert
   add constraint fk_transaction foreign key ("de client")
      references client (id)
      on delete restrict on update restrict;

alter table transfert
   add constraint fk_transaction2 foreign key ("a client")
      references client (id)
      on delete restrict on update restrict;
