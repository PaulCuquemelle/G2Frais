# Présentation

Ce projet a été conçu dans le cadre des PPE durant la 2ème année du BTS SIO au Lycée Jean Rostand à Caen.

Il a pour but la modification d'une application déjà existante de gestion des frais de déplacement, de restauration et d'hébergement générés par l'activité de visite médicale de la société GSB. 

L'application doit permettre d'établir une gestion plus précise et uniforme entre les entités du laboratoire. Elle devra permettre aux visiteurs d'inscrire leurs dépenses, de visualiser la prise en charge des remboursements (enregistré, validé, remboursé) (voir les modifications souhaitées dans le cahier des charges).

# Structuration du projet

Le projet comporte 3 dossiers :
- doc -> Regroupe les différents documents importants du projet
- sql -> Contient l'historique de tous les scripts (SQL ou PHP) qui ont modifié la BDD. "bdd.sql" contient le script SQL de la BDD final
- src -> Contient le code source de l'application web

# Modifications souhaitées

### MODIFICATION 1 : CRYPTER LE MOT DE PASSE DANS LA BASE DE DONNÉES.
Afin de sécuriser davantage l’accès à l’application, on souhaite crypter le mot de passe de la base de données avec la fonction de hachage MD5 ou autre fonction de cryptage davantage sécurisée.

### MODIFICATION 2 : MODIFICATION DE LA CONSULTATION DE LA FICHE DE FRAIS – FRAIS AU FORFAIT
Sur le formulaire de consultation de la fiche de frais, on souhaite afficher le montant unitaire de chaque ligne forfait (85 euros par nuitée, 25 euros par restaurant, etc...).

Le montant du forfait kilométrique sera ajustée en fonction de la puissance du véhicule des visiteurs (modification de la base de données et de l’application).

Le forfait de chaque ligne ainsi que le total du mois sera également affiché.

### MODIFICATION 3 : MODIFICATION DE LA CONSULTATION DE LA FICHE DE FRAIS – FRAIS HORS FORFAIT
Modifier la base de données (et l’application) pour que l’on connaisse le statut d’une ligne de frais hors forfait.

Le statut d’une ligne de frais hors forfait peut être :
- En attente des justificatifs
- Validée
- Remboursée
- Refusée

### MODIFICATION 4 : AMELIORATION DES INTERFACES DE SAISIE
Actuellement, il n’existe aucun contrôle de saisie sur les formulaires de l’application actuelle.
Répertorier fonctionnellement tous les contrôles pouvant être mis en place sur les formulaires existants et les mettre en œuvre.

### MODIFICATION 5 : EDITION DE LA FICHE DE FRAIS AU FORMAT PDF
Afin que les visiteurs puissent imprimer correctement leur fiche de frais, l’application doit permettre la génération au format PDF de la fiche de frais.

### MODIFICATION 6 : IMPLEMENTATION DE LA PARTIE COMPTABLE
Vous développerez la partie comptable et à ce titre, mettrez en place la gestion de l’état de la fiche de frais (de l’état "fiche créée" (état par défaut à la saisie d’une fiche) jusqu’à l’état "remboursée".

# Collaborateurs

Le projet étant réalisé par groupe de 3, voici la liste des personnes affectées sur le présent projet : 
- Justine MARTIN ([@justine-martin-study](https://github.com/justine-martin-study))
- Thibaut JOUBERT ([@ThibautJoub](https://github.com/ThibautJoub))
- Corentin PAGEOT ([@CorentinPageot](https://github.com/CorentinPageot))
