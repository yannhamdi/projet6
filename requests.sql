#Requête numero 1:
SELECT employe.*, commande.*,EQUIPE.dateTraitement FROM EMPLOYE AS employe INNER JOIN EQUIPE ON employe.idEMPLOYE=EQUIPE.idEmploye 
INNER JOIN COMMANDE AS commande ON commande.idCOMMANDE=EQUIPE.idCommande WHERE commande.idPIZZERIA=1;

#Requête numéro 2:
SELECT employe.*, commande.*,EQUIPE.dateTraitement FROM EMPLOYE AS employe 
INNER JOIN EQUIPE ON employe.idEMPLOYE=EQUIPE.idEmploye INNER JOIN COMMANDE AS commande ON commande.idCOMMANDE=EQUIPE.idCommande 
WHERE commande.status='en cours' AND commande.idPIZZERIA=(SELECT idPIZZERIA FROM PIZZERIA WHERE nomPIZZERIA='Chez Mario');

#Requête numéro 3:
SELECT pizza.nomPizzas, stock.nomAliment AS ingredient FROM PIZZAS AS pizza INNER JOIN PIZZA_COMPO ON (SELECT pizza.idPIZZAS 
WHERE pizza.nomPizzas='Orientale')=PIZZA_COMPO.idpizzass INNER JOIN STOCK AS stock ON stock.idSTOCK=PIZZA_COMPO.idCOMPOSITIONPIZZA;

#Requête numéro 4:
SELECT commande.*, pizza.nomPizzas FROM COMMANDE AS commande INNER JOIN  COMPOSITION_COMMANDE ON (SELECT commande.idCOMMANDE 
WHERE idClient=(SELECT idCLIENT FROM CLIENT WHERE nom='Hamdi'))=COMPOSITION_COMMANDE.idCommande 
INNER JOIN PIZZAS AS pizza ON pizza.idPIZZAS=COMPOSITION_COMMANDE.Idpizza;




SELECT pizza.idPIZZAS AS id,pizza.nomPIZZAS FROM PIZZAS as pizza INNER JOIN MENUDISPO AS MD  ON pizza.idPIZZAS=MD.idDispoPizza WHERE MD.idMENUDISPO=1;
