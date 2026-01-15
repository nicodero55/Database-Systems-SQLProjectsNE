SELECT * FROM season;
SELECT * FROM conference;
SELECT * FROM stadium;
SELECT * FROM team;
SELECT * FROM player;
SELECT * FROM game;
SELECT * FROM head_coach;
SELECT * FROM owner;
SELECT * FROM media;
SELECT * FROM player_revenue;
INSERT INTO player_revenue (Player_id, Season_yr, P_jersey_rev, P_apparel_rev, P_sponsor_rev, P_misc_rev)
VALUES("009", "2022-2023", 13000, 28000, 15000, 25000);
SELECT * FROM team_revenue;
SELECT * FROM stadium_revenue;
SELECT * FROM media_revenue;
INSERT INTO media_revenue (Network_id, Season_yr, N_viewership_rev, N_sponsor_rev)
VALUES("003", "2022-2023", 53000, 80000);
SELECT * FROM game_revenue;
SELECT * FROM player_stat;
SELECT * FROM playoff_seed;



INSERT INTO player (Player_id, P_lname, P_fname, P_suffix, P_popscore) 
VALUES ("001", "Lebron", "James", "Jr.", 99.99);

INSERT INTO season (Season_yr, Champ_team)
VALUES
("2023-2024", "Boston Celtics"), 
("2022-2023", "Denver Nuggets"), 
("2021-2022", "Golden-State Warriors"),
("2020-2021", "Milwaukee Bucks")
;

DELETE FROM game_revenue
WHERE Game_id = "009" AND Season_yr = "2024-2025";

SELECT * FROM season;
SELECT * FROM conference;
SELECT * FROM stadium;
SELECT * FROM team;
SELECT * FROM player;
SELECT * FROM game;
SELECT * FROM head_coach;
SELECT * FROM owner;
SELECT * FROM media;

ALTER  TABLE season
ADD CONSTRAINT yr_format
CHECK(Season_yr LIKE '____-____');


INSERT INTO conference (Conference_name, Conference_size)
VALUES("East",15), ("West", 15);

INSERT INTO stadium (Stadium_id, Stadium_name, Stadium_location, Max_capacity)
VALUES (015, "GB Fieldhouse", "Indiana, IN", 29000),

(008, "TD Garden", "Boston, MA", 34000),
(009, "Fiserv Forum", "Milwaukee, WA", 30000),
(010, "Madison Square Garden", "Manhattan, NY", 40000),
(011, "Kaseya Center", "Miami, FL", 20000),
(012, "United Center", "Chicago, IL", 36000),
(013, "Wells Fargo Center", "Philadelpia, PA", 27000),
(014, "Barclays Center", "Brooklyn, NY", 20000);

INSERT INTO team (Team_name, Team_conference, Team_stadium, Team_city, Team_state)
VALUES
("Indiana Pacers", "East", 15, "Indiana", "IN");


INSERT INTO player (Player_id, P_fname, P_lname, P_team)
VALUES 
("003", "Stephen", "Curry", "Golden State Warriors"),
("004", "James", "Harden", "Los Angeles Clippers"),
("005", "Devin", "Booker", "Phoenix Suns"),
("006", "Jayson", "Tatum", "Boston Celtics"),
("007", "Giannis", "Antetokounmpo", "Milwaukee Bucks"),
("008", "Kyrie", "Irving", "Brooklyn Nets"),
("009", "Jimmy", "Butler", "Miami Heat"),
("010", "Nikola", "Jokic", "Denver Nuggets");
;

UPDATE player
SET P_suffix = "III"
WHERE Player_id = "009";

INSERT INTO game (Game_id, Date, Stadium_id, Home_team, Away_team, Home_fscore, Away_fscore)
VALUES ("010", "2025-11-21", 3, "Sacramento Kings", "Oklahoma City Thunder", 112, 127);
("009", "2025-11-18", 15, "Indiana Pacers", "Oklahoma City Thunder", 114, 101);

("001", "2025-11-12", 9, "Milwaukee Bucks", "Boston Celtics", 111, 121),
("002", "2025-11-12", 6, "Oklahoma City Thunder", "Denver Nuggets", 103, 100),
("003", "2025-11-13", 1, "Los Angeles Clippers", "Los Angeles Lakers", 120, 98),
("004", "2025-11-13", 12, "Chicago Bulls", "Miami Heat", 121, 122),
("005", "2025-11-15", 6, "Oklahoma City Thunder", "Phoenix Suns", 92, 97),
("006", "2025-11-15", 9, "Milwaukee Bucks", "Philadelphia 76ers", 132, 125),
("007", "2025-11-15", 8, "Boston Celtics", "Los Angeles Clippers", 113, 115),
("008", "2025-11-16", 2, "Los Angeles Lakers", "Golden State Warriors", 111, 121)
;

INSERT INTO head_coach (Coach_id, Team_name, Coach_fname, Coach_lname)
VALUES 
("001", "Los Angeles Clippers", "Tyronne", "Lue"),
("002", "Golden State Warriors ", "Steve", "Kerr"),
("003", "Milwaukee Bucks", "Mike", "Bud");

INSERT INTO owner (Owner_id, Team_name, Owner_fname, Owner_lname)
VALUES 
("001", "Los Angeles Lakers", "Jeanie", "Buss"),
("002", "Miami Heat", "Micky", "Arison"),
("003", "New York Knicks", "James", "Dolan");

INSERT INTO media (Network_id, Network_name, N_rating_pct)
INSERT INTO media (Network_id, Network_name, N_rating_pct)
VALUES 
("001", "ESPN", 89.30),
("002", "TNT", 95.50),
("003", "Bally Sports", 85.80);


SELECT * FROM season;
SELECT * FROM conference;
SELECT * FROM stadium;
SELECT * FROM team;
SELECT * FROM player;
SELECT * FROM game;
SELECT * FROM head_coach;
SELECT * FROM owner;
SELECT * FROM media;

SELECT * FROM team_revenue;
SELECT * FROM player_revenue;


INSERT INTO team_revenue (Team_name, Season_yr, T_ticket_rev, T_apparel_rev, T_misc_rev)
VALUES
("Los Angeles Clippers", "2023-2024", 30000.00, 20000.00, 20000.00),
("Los Angeles Lakers", "2024-2025", 20000.00, 30000.00, 50000.00),
("Golden State Warriors", "2024-2025", 35000.00, 30000.00, 45000.00),
("Boston Celtics", "2024-2025", 30000.00, 40000.00, 35000.00),
("New York Knicks", "2024-2025", 20000.00, 20000.00, 20000.00);

INSERT INTO player_revenue (Player_id, Season_yr, P_jersey_rev, P_apparel_rev, P_sponsor_rev, P_misc_rev)
VALUES
("003", "2024-2025", 33000.00, 40000.00, 37000.00, 35000),
("010", "2024-2025", 30000.00, 44000.00, 27000.00, 25000),
("006", "2024-2025", 31000.5, 30000.00, 30000.00, 29000);

INSERT INTO game_revenue (Game_id, Season_yr, G_ticket_rev, G_concession_rev, G_store_rev, G_sponsor_rev, G_media_rev)
VALUE("002", "2024-2025", 3000, 2200, 2300, 1500, 1700),
("003", "2024-2025", 5000, 3000, 3200, 1700, 1500),
("006", "2023-2024", 4000, 2000, 2500, 500, 1900);


INSERT INTO media_revenue (Network_id, Season_yr, N_viewership_rev, N_sponsor_rev, N_subscription_rev)
VALUE
("003", "2024-2025", 50000, 75000, 60000);
#("001", "2024-2025", 80000, 75000, 65000), 
#("002", "2024-2025", 90000, 85000, 70000),
#("002", "2023-2024", 70000, 65000, 60000);  


INSERT INTO stadium_revenue (Stadium_id, Season_yr,  S_ticket_rev, S_membership_rev,  S_concession_rev, S_store_rev)
VALUE 
(1, "2024-2025", 70000, 65000,  40000, 45000),
(14, "2024-2025", 60000, 75000,  45000, 50000),
(13, "2024-2025", 73000, 63000,  50000, 48000);

INSERT INTO player_stat (Player_id, Season_yr, Points, Assists, Rebounds, Turnovers, Field_goal_pct, Three_pt_pct, Plus_minus, Minutes_played, Games_played)
VALUES 
("003", "2024-2025", 1700, 420, 300, 200, 44.8, 40.7, 60, 2240, 70), 
("004", "2024-2025", 1500, 470, 320, 250, 42.6, 37.7, 30, 2010, 60),
("009", "2023-2024", 1200, 130, 100, 90, 34.6, 30.7, -23, 1650, 50),
("001", "2024-2025", 10, 0, 5, 10, 40.2, 20.0, -30, 90, 3);   

INSERT INTO playoff_seed (Conference_name, Season_yr, Seed_one, Seed_two, Seed_three, Seed_four, Seed_five, Seed_six, Seed_seven)
VALUES("West", "2022-2023", "Los Angeles Clippers", "Los Angeles Lakers","Sacramento Kings",  "Oklahoma City Thunder", "Golden State Warriors", "Phoenix Suns","Denver Nuggets");
("East", "2022-2023", "Boston Celtics", "Chicago Bulls", "Philadelphia 76ers", "Miami Heat","New York Knicks", "Milwaukee Bucks", "Brooklyn Nets");
("East", "2024-2025", "Boston Celtics", "Milwaukee Bucks", "New York Knicks", "Chicago Bulls", "Brooklyn Nets", "Philadelphia 76ers", "Miami Heat"),
("West", "2023-2024", "Denver Nuggets", "Los Angeles Lakers", "Golden State Warriors", "Phoenix Suns",  "Los Angeles Clippers", "Oklahoma City Thunder", "Sacramento Kings");
("East", "2023-2024", "Boston Celtics", "Brooklyn Nets","New York Knicks", "Chicago Bulls", "Philadelphia 76ers", "Miami Heat","Milwaukee Bucks", );


# Update revenue TESTING 

UPDATE media_revenue 
SET N_viewership_rev = N_viewership_rev + 300
WHERE Network_id = "001";

ALTER TABLE player
ADD CHECK (0.00 <= P_popscore <= 100.00);
ALTER TABLE player_stat
ADD CHECK (0.00 <= Field_goal_pct <= 100.00);
ALTER TABLE player_stat
ADD CHECK (0.00 <= Three_pt_pct <= 100.00);
ALTER TABLE team
ADD CHECK (0.00 <= team_popscore <= 100.00);
ALTER TABLE head_coach
ADD CHECK (0.00 <= Coach_popscore <= 100.00);
ALTER TABLE owner
ADD CHECK (0.00 <= Owner_popscore <= 100.00);
ALTER TABLE media
ADD CHECK (0.00 <= N_rating_pct <= 100.00);


UPDATE season 
SET Gross_rev = 1260000000.00
WHERE Season_yr = "2020-2021" ;

SELECT * FROM season_total;

# Defining and Setting roles 

CREATE ROLE 'tier_one'@'localhost';
CREATE ROLE 'tier_twoa'@'localhost';
CREATE ROLE 'tier_twob'@'localhost';
CREATE ROLE 'tier_three'@'localhost';
CREATE ROLE 'tier_four'@'localhost';	


DESCRIBE season;
DESCRIBE conference;
DESCRIBE stadium;
DESCRIBE team;
DESCRIBE player;
DESCRIBE game;
DESCRIBE head_coach;
DESCRIBE owner;
DESCRIBE media;
DESCRIBE player_revenue;
DESCRIBE team_revenue;
DESCRIBE stadium_revenue;
DESCRIBE media_revenue;
DESCRIBE game_revenue;
DESCRIBE player_stat;
DESCRIBE playoff_seed;


INSERT INTO game_revenue (Game_id, Season_yr, G_ticket_rev, G_concession_rev, G_store_rev, G_sponsor_rev, G_media_rev)
VALUE ("002", "2024-2025", 3000, 3400, 2200, 3000, 1000);
("003", "2024-2025", 5000, 3000, 3200, 1700, 1500),
("006", "2023-2024", 4000, 2000, 2500, 500, 1900);

SELECT * FROM season;
SELECT * FROM conference;
SELECT * FROM stadium;
SELECT * FROM team;
SELECT * FROM player;
SELECT * FROM game;
SELECT * FROM head_coach;
SELECT * FROM owner;
SELECT * FROM media;
SELECT * FROM player_revenue;
SELECT * FROM team_revenue;
SELECT * FROM stadium_revenue;
SELECT * FROM media_revenue;
SELECT * FROM game_revenue;
SELECT * FROM player_stat;
SELECT * FROM playoff_seed;

# QUERY 2
SELECT game.Home_team, game.Away_team, (G_ticket_rev + G_concession_rev + G_store_rev + G_sponsor_rev + G_media_rev) AS total
FROM game_revenue 
JOIN game ON game_revenue.Game_id = game.Game_id
WHERE (Home_team = "Oklahoma City Thunder" OR Away_team = "Oklahoma City Thunder") AND (game_revenue.Season_yr = "2024-2025");


# QUERY 3
SELECT P_fname, P_lname, P_popscore
FROM player
WHERE P_team IS NOT NULL
ORDER BY P_popscore DESC;

# QUERY 4
(SELECT Seed_one,
COUNT(*) AS seedcount1
FROM playoff_seed
WHERE Season_yr = "2022-2023" OR Season_yr = "2023-2024" OR Season_yr = "2024-2025"
GROUP BY Seed_one
ORDER BY seedcount1 DESC);

SELECT Seed_two,
COUNT(*) AS seedcount2
FROM playoff_seed
WHERE Season_yr = "2022-2023" OR Season_yr = "2023-2024" OR Season_yr = "2024-2025"
GROUP BY Seed_two
ORDER BY seedcount2 DESC ;

(SELECT Seed_three,
COUNT(*) AS seedcount3
FROM playoff_seed
WHERE Season_yr = "2022-2023" OR Season_yr = "2023-2024" OR Season_yr = "2024-2025"
GROUP BY Seed_three
ORDER BY seedcount3 DESC);

(SELECT Seed_four,
COUNT(*) AS seedcount4
FROM playoff_seed
WHERE Season_yr = "2022-2023" OR Season_yr = "2023-2024" OR Season_yr = "2024-2025"
GROUP BY Seed_four
ORDER BY seedcount4 DESC);

(SELECT Seed_five,
COUNT(*) AS seedcount5
FROM playoff_seed
WHERE Season_yr = "2022-2023" OR Season_yr = "2023-2024" OR Season_yr = "2024-2025"
GROUP BY Seed_five
ORDER BY seedcount5 DESC);

(SELECT Seed_six,
COUNT(*) AS seedcount6
FROM playoff_seed
WHERE Season_yr = "2022-2023" OR Season_yr = "2023-2024" OR Season_yr = "2024-2025"
GROUP BY Seed_six
ORDER BY seedcount6 DESC);

(SELECT Seed_seven,
COUNT(*) AS seedcount7
FROM playoff_seed
WHERE Season_yr = "2022-2023" OR Season_yr = "2023-2024" OR Season_yr = "2024-2025"
GROUP BY Seed_seven
ORDER BY seedcount7 DESC );

# QUERY 5
SELECT player.P_fname, player.P_lname, player.P_suffix, 
(P_jersey_rev +P_apparel_rev+ P_sponsor_rev+ P_misc_rev) AS P_total
FROM player_revenue
JOIN player ON player_revenue.Player_id = player.Player_id
WHERE P_team IS NOT NULL;





# QUERY 6
SELECT Season_yr, SUM(P_spons) AS P_total, SUM(G_spons) AS G_total, SUM(M_spons) AS M_total, 
SUM(P_spons + G_spons + M_spons) AS ful_total
FROM(
	SELECT Season_yr, P_sponsor_rev AS P_spons, 0 AS G_spons, 0 AS M_spons
    FROM player_revenue

  UNION ALL

  SELECT Season_yr, 0 AS P_spons, G_sponsor_rev AS G_spons, 0 AS M_spons
  FROM game_revenue

  UNION ALL

  SELECT Season_yr, 0 AS P_spons, 0 AS G_spons, N_sponsor_rev AS M_spons
  FROM media_revenue
) AS combined
GROUP BY Season_yr;

# QUERY 7
SELECT * FROM team_revenue; 

UPDATE team_revenue 
SET T_ticket_rev = T_ticket_rev + 5000.00
WHERE Team_name = "Boston Celtics" AND Season_yr = "2024-2025";

UPDATE team_revenue 
SET T_apparel_rev = T_apparel_rev + 7000.00
WHERE Team_name = "Boston Celtics" AND Season_yr = "2024-2025";

UPDATE team_revenue 
SET T_misc_rev = T_misc_rev + 10000.00
WHERE Team_name = "Boston Celtics" AND Season_yr = "2024-2025";

SELECT Season_yr, (P_jersey_rev+ P_apparel_rev+ P_sponsor_rev+ P_misc_rev) AS P_total
FROM player_revenue;
GROUP BY Player_id, Season_yr;

#QUERY8
SELECT 'P_jersey_rev' AS revenue_type, SUM(P_jersey_rev) AS total FROM player_revenue
UNION ALL
SELECT 'P_apparel_rev', SUM(P_apparel_rev) FROM player_revenue
UNION ALL
SELECT 'P_sponsor_rev', SUM(P_sponsor_rev) FROM player_revenue
UNION ALL
SELECT 'P_misc_rev', SUM(P_misc_rev) FROM player_revenue
ORDER BY total DESC;

#QUERY1

CREATE FUNCTION PerformScore (PTS INT, AST INT, REB INT, TURN INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
RETURN PTS + (AST * 1.2) + (REB * 1.5) + (TURN * -0.5);

SELECT P_fname, P_lname, P_suffix,
PerformScore(Points, Assists, Rebounds, Turnovers) AS performance_score
FROM player_stat
WHERE Season_yr = '2024-2025'
ORDER BY performance_score DESC;



