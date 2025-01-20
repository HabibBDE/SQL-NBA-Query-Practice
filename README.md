# SQL-NBA-Query-Practice

## Project Overview / Présentation du projet

I downloaded an SQL database on NBA players from Kaggle ([link to the dataset](https://www.kaggle.com/datasets/justinas/nba-players-data)) to improve my SQL skills. This database covers player statistics from the 1996-97 season to the 2022-23 season. It contains a single table, `all_seasons`, with 22 columns and over 12,000 rows.

J'ai téléchargé une base de données SQL sur les joueurs NBA depuis le site Kaggle ([lien vers la base de données](https://www.kaggle.com/datasets/justinas/nba-players-data)) afin d'améliorer mes compétences en SQL. Cette base de données couvre les statistiques des joueurs de la saison 1996-97 à la saison 2022-23. Elle contient une table unique, `all_seasons`, comprenant 22 colonnes et plus de 12 000 lignes.

To practice and deepen my SQL query skills, I used ChatGPT to analyze the database and generate 15 beginner-level, 15 intermediate-level, and 10 advanced-level questions. I then used the DBeaver software to explore and query the database.

Pour pratiquer et approfondir mes compétences en requêtes SQL, j'ai utilisé ChatGPT pour analyser la base de données et générer 15 questions de niveau facile, 15 de niveau intermédiaire et 10 de niveau avancé. J'ai ensuite utilisé le logiciel DBeaver pour explorer et interroger la base de données.

---

## Dataset Details / Détails de la base de données

The `all_seasons` table contains the following columns:

La table `all_seasons` contient les colonnes suivantes :

| Column Name       | Data Type | Description                  |
|------------------|-----------|------------------------------|
| `player_name`     | VARCHAR   | Player's full name            |
| `team_abbreviation` | VARCHAR | Team abbreviation             |
| `age`             | REAL      | Player's age                   |
| `player_height`   | REAL      | Height in cm                   |
| `player_weight`   | REAL      | Weight in kg                   |
| `country`         | VARCHAR   | Country of origin              |
| `draft_year`      | VARCHAR   | Year the player was drafted    |
| `draft_round`     | VARCHAR   | Draft round selected           |
| `pts`             | REAL      | Points scored                  |
| `reb`             | REAL      | Total rebounds                 |
| `ast`             | REAL      | Assists                        |
| `season`          | VARCHAR   | NBA season                      |

For more details, please refer to the provided screenshots.

Pour plus de détails, veuillez consulter les captures d'écran fournies.

---

## SQL Practice Questions / Questions SQL d'entraînement

I have designed the following questions to practice various SQL aspects:

J'ai conçu les questions suivantes pour pratiquer différents aspects de SQL :

**Beginner Level / Niveau débutant :**
- Retrieve all columns for players who played in the `2019-20` season.
- List the unique countries represented in the dataset.
- Find the total number of games played by all players in `2020-21`.

**Intermediate Level / Niveau intermédiaire :**
- Find the average points scored by players each season.
- Display the top 3 players with the highest shooting percentage.
- Count the total number of players by country.

**Advanced Level / Niveau avancé :**
- Identify the player with the highest improvement in points per game.
- Retrieve the top 3 draft years with the highest total points scored.
- Calculate each player's point contribution to their team's total.

You can find the complete list of questions in the provided screenshots.

Vous pouvez retrouver l'ensemble des questions dans les captures d'écran fournies.

---

## Tools Used / Outils utilisés

For this project, I used the following tools:

Pour réaliser ce projet, j'ai utilisé les outils suivants :

- **SQL Type / Type de SQL :** SQLite
- **Software / Logiciel :** [DBeaver](https://dbeaver.io/)
- **Dataset Source / Source de la base de données :** Kaggle ([link](https://www.kaggle.com/datasets/justinas/nba-players-data))
- **AI Tool / Outil IA :** ChatGPT for question generation

---

## How to Use / Comment utiliser

1. Download the database from Kaggle and import it into DBeaver.
2. Open the provided SQL scripts and execute them to answer the questions.
3. Compare your answers with the provided solutions.

1. Téléchargez la base de données depuis Kaggle et importez-la dans DBeaver.
2. Ouvrez les scripts SQL fournis et exécutez-les pour répondre aux questions.
3. Comparez vos réponses avec les solutions fournies.

---

## Useful Resources / Ressources utiles

- Kaggle Dataset / Base de données Kaggle : [NBA Players Data](https://www.kaggle.com/datasets/justinas/nba-players-data)
- DBeaver Documentation / Documentation DBeaver : [DBeaver.io](https://dbeaver.io/)
- SQL Tutorials / Tutoriels SQL : [W3Schools SQL](https://www.w3schools.com/sql/)

---

## Contact

For any questions or feedback, feel free to reach out via GitHub.

Pour toute question ou retour, n'hésitez pas à me contacter via GitHub.

