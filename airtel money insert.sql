INSERT INTO public.utilisateur(nom, naissance, email, tel, adresse, pseudo, mot_de_passe)VALUES 
			    ('ali mitha archad', '06/06/1994', 'alimithaarchad@gmail.com', '0337150174', '67ha nord est', 'itachi', 'itu12345');

INSERT INTO public.utilisateur(nom, naissance, email, tel, adresse, pseudo, mot_de_passe)VALUES 
			    ('jaofera nina', '21/11/1996', 'jaofera@gmail.com', '0330485140', '67ha nord ouest', 'nina', 'fb12345');

INSERT INTO public.client(nom, prenom, naissance, numero, email, cin, compte, adresse)VALUES
				('ali mitha', 'archad', '06/06/1994', '0337150174', 'alimithaarchad@gmail.com', '401301540749', '4000', '67ha nord est');
				
INSERT INTO public.client(nom, prenom, naissance, numero, email, cin, compte, adresse)VALUES
				('jaofera', 'nina', '21/11/1996', '0337452175', 'jaoferanina@gmail.com', '481361292727', '3000', '67ha nord ouest');

INSERT INTO public.client(nom, prenom, naissance, numero, email, cin, compte, adresse)VALUES
				('diamondra', 'jejo', '18/05/1995', '0339464255', 'diamondra@yahoo.com', '460861592652', '0', 'ampefiloha');

INSERT INTO public.client(nom, prenom, naissance, numero, email, cin, compte, adresse)VALUES
				('razafindrakoto', 'marco', '08/02/1996', '0330090251', 'marco@gmail.com', '267962552562', '3000', 'anosy');

INSERT INTO public.client(nom, prenom, naissance, numero, email, cin, compte, adresse)VALUES
				('rakoto', 'tony', '16/10/1992', '0338475162', 'tonyrakoto@gmail.com', '217475123948', '1000', 'andoharanofotsy');

INSERT INTO public.depot(client, montant)
			VALUES ('1','10000');

INSERT INTO public.depot(client, montant)
			VALUES ('2','3000');

INSERT INTO public.retrait(client, montant)
			VALUES ('1', '5000');

INSERT INTO public.retrait(client, montant)
			VALUES ('2', '1000');

INSERT INTO public.transfert(
            "de client", "a client", montant)
    VALUES ('1', '2', '1000');
