CREATE DATABASE prototype ;
USE prototype ;
CREATE TABLE user_1 
(
 id_user_1 INT PRIMARY KEY ,
 name_user_1 VARCHAR(50) 
);

INSERT INTO user_1(name_user_1 ,id_user_1 )
VALUES                   ("ALEX",90),
                         ("PEDRO",91),
                         ("LOLA",92),
                         ("NOAH",93),
                         ("SAM",94),
                         ("EL JACK",95),
                         ("EL NOLAND",96),
                         ("AHMED ALAMI",97),
                         ("ALBERT",98),
                         ("LODRIGO",99),
                         ("ANTONI",100),
                         ("NAMI",101),
                         ("ZORO",102),
                         ("LUFI",103),
                         ("LOQI",104),
                         ("EDWAED NEW GEITS",105),
                         ("EL MEHOCK",106),
                         ("DON FLAMINGO",107),
                         ("GARMADONG",108),
                         ("LI",109)
                         ;
CREATE TABLE article_1
(
 id_article_1 VARCHAR(6) PRIMARY KEY ,
 content_article_1 TEXT ,
 date_article_1 DATE ,
 id_WWW_user_1 INT ,
 FOREIGN KEY (id_WWW_user_1) REFERENCES user_1(id_user_1)
);






INSERT INTO article_1(id_article_1 ,content_article_1 ,date_article_1 ,id_WWW_user_1) 
                        VALUES("KB20","Dragon Ball is a famous Japanese anime and manga.","2025-12-21",90),
                              ("KB1","The main character is named Goku.","2025-12-23",91),
                              ("KB2","Goku was sent to Earth when he was a baby.","2025-12-23",92),
                              ("KB3","He has a tail because he is a Saiyan.","2025-12-24",93),
                              ("KB4","Goku loves eating food a lot.","2025-12-25",94),
                              ("KB5","Bulma is one of Goku’s first friends.","2025-12-26",95),
                              ("KB6","The Dragon Balls can summon a dragon called Shenron.","2025-12-27",96),
                              ("KB7","Shenron can grant wishes.","2025-12-28",97),
                              ("KB8","Krillin is Goku’s best friend.","2025-12-29",98),
                              ("KB9","Master Roshi trains Goku in martial arts.","2025-12-30",99),
                              ("KB10","Goku can transform into a Super Saiyan.","2025-12-31",100),
                              ("KB11","Vegeta is also a Saiyan prince.","2025-1-1",101),
                              ("KB12","At first, Vegeta is an enemy of Goku.","2025-1-2",102),
                              ("KB13","Later, Vegeta becomes Goku’s ally.","2025-1-3",103),
                              ("KB14","Gohan is Goku’s son.","2025-1-4",104),
                              ("KB15","Gohan is very strong even as a child.","2025-1-5",105),
                              ("KB16","Frieza is one of the most dangerous villains.","2025-1-6",106),
                              ("KB17","Dragon Ball has many intense battles.","2025-1-7",107),
                              ("KB18","Training is very important in Dragon Ball.","2025-1-8",108),
                              ("KB19","Dragon Ball teaches friendship and perseverance.","2025-1-9",109)
                              ;




SELECT content_article_1 , date_article_1 FROM article_1 ;
SELECT * FROM user_1 WHERE name_user_1 LIKE "EL%" ;





SELECT MAX(date_article_1) FROM article_1;


SELECT * FROM article_1 WHERE date_article_1 >= (SELECT GREATEST( MAX(date_article_1) - INTERVAL 1 MONTH, MIN(date_article_1)) FROM article_1);

SELECT * FROM article_1 WHERE date_article_1 = (SELECT GREATEST(MAX(date_article_1), CURDATE()) FROM article_1);

UPDATE article_1 SET archived_1 = 1 WHERE id_WWW_user_1 BETWEEN 100 AND 106 ;

SELECT * FROM article_1 WHERE date_article_1 >= (SELECT GREATEST( MAX(date_article_1) - INTERVAL 1 MONTH, MIN(date_article_1)) FROM article_1);

SELECT COUNT(A.id_article_1) AS number_id_article_1 , U.name_user_1 FROM article_1 AS A INNER JOIN user_1 AS U ON A.id_WWW_user_1 = U.id_user_1 WHERE name_user_1 = "AHMED ALAMI" ; 


INSERT INTO user_1(name_user_1, id_user_1)
VALUES
("Goku",129),
("Vegeta",130),
("Gohan",131),
("Trunks",132),
("Piccolo",133),
("Krillin",134),
("Bulma",135),
("Chi-Chi",136),
("Frieza",137),
("Cell",138),
("Majin Buu",139),
("Beerus",140),
("Whis",141),
("Jiren",142),
("Hit",143),
("Android 17",144),
("Android 18",145),
("Videl",146),
("Broly",147),
("Muten Roshi",148);

INSERT INTO article_1(id_article_1 ,content_article_1 ,date_article_1 ,id_WWW_user_1) 
VALUES
("KB41","One Piece is a famous Japanese anime and manga.","2025-04-01",129),
("KB42","The story is written by Eiichiro Oda.","2025-04-02",130),
("KB43","The main character is Monkey D. Luffy.","2025-04-03",131),
("KB44","Luffy dreams of becoming the Pirate King.","2025-04-04",132),
("KB45","He has a rubber body because he ate a Devil Fruit.","2025-04-05",133),
("KB46","His crew is called the Straw Hat Pirates.","2025-05-01",134),
("KB47","The crew has many members with special skills.","2025-05-02",135),
("KB48","Zoro is the swordsman of the crew.","2025-05-03",136),
("KB49","Nami is the navigator of the crew.","2025-05-04",137),
("KB50","Sanji is the cook who fights with his legs.","2025-05-05",138),
("KB51","Chopper is a reindeer doctor who can change form.","2025-06-01",139),
("KB52","Robin can read ancient texts and knows history.","2025-06-02",140),
("KB53","Franky is the shipwright and a cyborg.","2025-06-03",141),
("KB54","Brook is the musician and a living skeleton.","2025-06-04",142),
("KB55","Jinbe is the fish-man helmsman of the crew.","2025-06-05",143),
("KB56","The crew travels on a ship called the Thousand Sunny.","2025-07-01",144),
("KB57","They search for the legendary treasure called One Piece.","2025-07-02",145),
("KB58","They fight against many powerful pirates and the Navy.","2025-07-03",146),
("KB59","Luffy values friendship and freedom very much.","2025-07-04",147),
("KB60","One Piece is loved by fans all over the world.","2025-07-05",148);

SELECT MONTH(date_article_1) AS month_number , COUNT(*) AS number_of_articles FROM article_1 WHERE YEAR(date_article_1) = 2025 GROUP BY MONTH(date_article_1) ORDER BY MONTH(date_article_1) ;

UPDATE article_1 SET date_article_1 = "2026-01-02" WHERE id_WWW_user_1 = 145 ;

ADD archived_1 TINYINT(1) NOT NULL DEFAULT 0;

UPDATE article_1 SET archived_1 = 1 WHERE id_WWW_user_1 = 145 ;


DELETE FROM article_1 WHERE id_WWW_user_1 BETWEEN 134 AND 138 ;

DELETE A FROM article_1 AS A INNER JOIN user_1 AS U ON A.id_WWW_user_1 = U.id_user_1 WHERE name_user_1 = "AHMED ALAMI" ;