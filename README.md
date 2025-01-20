SQL-NBA-Query-Practice

Présentation du projet

J'ai téléchargé une base de données SQL sur les joueurs NBA depuis le site Kaggle (lien vers la base de données) afin d'améliorer mes compétences en SQL. Cette base de données couvre les statistiques des joueurs de la saison 1996-97 à la saison 2022-23. Elle contient une table unique, all_seasons, comprenant 22 colonnes et plus de 12 000 lignes.

Pour pratiquer et approfondir mes compétences en requêtes SQL, j'ai utilisé ChatGPT pour analyser la base de données et générer 15 questions de niveau facile, 15 de niveau intermédiaire et 10 de niveau avancé. J'ai ensuite utilisé le logiciel DBeaver pour explorer et interroger la base de données.

Détails de la base de données

La table all_seasons contient les colonnes suivantes :

Nom de la colonne

Type de donnée

Description

player_name

VARCHAR

Nom complet du joueur

team_abbreviation

VARCHAR

Abréviation de l'équipe

age

REAL

Âge du joueur

player_height

REAL

Taille en cm

player_weight

REAL

Poids en kg

country

VARCHAR

Pays d'origine

draft_year

VARCHAR

Année de draft

draft_round

VARCHAR

Tour de draft

pts

REAL

Points marqués

reb

REAL

Rebonds total

ast

REAL

Passes décisives

season

VARCHAR

Saison NBA

Pour plus de détails, veuillez consulter les captures d'écran fournies.

Questions SQL d'entraînement

J'ai conçu les questions suivantes pour pratiquer différents aspects de SQL :

Niveau débutant :

Récupérer toutes les colonnes pour les joueurs ayant joué lors de la saison 2019-20.

Lister les pays uniques représentés dans la base de données.

Trouver le nombre total de matchs joués par tous les joueurs en 2020-21.

Niveau intermédiaire :

Trouver la moyenne de points marqués par les joueurs chaque saison.

Afficher les 3 meilleurs joueurs avec le pourcentage de tirs le plus élevé.

Compter le nombre total de joueurs par pays.

Niveau avancé :

Identifier le joueur ayant connu la plus grande amélioration en points par match.

Récupérer les 3 meilleures années de draft avec le plus grand total de points marqués.

Calculer la contribution des points de chaque joueur au total de son équipe.

Vous pouvez retrouver l'ensemble des questions dans les captures d'écran fournies.

Outils utilisés

Pour réaliser ce projet, j'ai utilisé les outils suivants :

Type de SQL : SQLite

Logiciel : DBeaver

Source de la base de données : Kaggle (lien)

Outil IA : ChatGPT pour la génération des questions

Comment utiliser ce projet

Téléchargez la base de données depuis Kaggle et importez-la dans DBeaver.

Ouvrez les scripts SQL fournis et exécutez-les pour répondre aux questions.

Comparez vos réponses avec les solutions fournies.

Ressources utiles

Base de données Kaggle : NBA Players Data

Documentation DBeaver : DBeaver.io

Tutoriels SQL : W3Schools SQL

Contact

Pour toute question ou retour, n'hésitez pas à me contacter via GitHub.
