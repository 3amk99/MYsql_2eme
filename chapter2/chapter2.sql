CREATE DATABASE chapter2 ;
USE chapter2 ;
CREATE TABLE article 
(
 id_articale INT AUTO_INCREMENT PRIMARY KEY ,
 titre VARCHAR(100) NOT NULL ,
 content TEXT NOT NULL ,
 date_article DATE NOT NULL 
);
INSERT INTO article (titre ,content ,date_article )
VALUES ("ALGO","ALGOALGOALGO2","2026-09-11"),
       ("AMANECER","AMANECERAMANECER2","2026-09-12"),
       ("PUERTA","PUERTAPUERTA2","2026-09-13"),
       ("LOCO","LOCOLOCOLOCO2","2026-09-14"),
       ("COCODRELO","COCODRELOCOCODRELO2","2026-09-15")
       ;
SELECT * FROM article ;