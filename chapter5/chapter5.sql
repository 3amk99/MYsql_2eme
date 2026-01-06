CREATE DATABASE chapter5 ;
USE chapter5 ;
CREATE TABLE user_1
(
    id_user_1 INT AUTO_INCREMENT PRIMARY KEY ,
    name_user_1 VARCHAR(30) NOT NULL  
);
INSERT INTO user_1 (name_user_1) VALUES ("PEDRO"),
                                        ("ALEX"),
                                        ("NOAH"),
                                        ("STEVE")
                                        ;
CREATE TABLE article_1
(
  id_article INT AUTO_INCREMENT PRIMARY KEY ,
  content TEXT NULL ,
  title VARCHAR(50) NOT NULL ,
  vues INT NOT NULL ,
  date_article DATE NOT NULL ,
  id_user_article_1 INT NOT NULL ,
  FOREIGN KEY (id_user_article_1) REFERENCES user_1(id_user_1)
);
INSERT INTO article_1 (content,title ,vues,date_article ,id_user_article_1)
                         VALUES ("AAAA","ARTICLE8A",100,"2026-11-01",1),
                                ("BBBB","ARTICLEB",200,"2026-11-02",1),
                                ("CCCCCC","ARTICLE8C",50,"2026-11-03",2),
                                ("DDDDD","ARTICLE8D",500,"2026-11-04",2),
                                ("EEEEE","ARTICLE8E",130,"2026-11-05",2),
                                ("RRRRRR","ARTICLE8R",103,"2026-11-06",4),
                                ("QQQQQQ","ARTICLE8Q",123,"2026-11-07",3),
                                ("SSSSSS","ARTICLE8S",242,"2026-11-08",4)       
                                ;
CREATE TABLE comment_1
(
 id_comment_1 INT AUTO_INCREMENT PRIMARY KEY ,
 content_comment_1 VARCHAR(50) NOT NULL ,
 id_article_1_comment_1 INT NOT NULL ,
 FOREIGN KEY (id_article_1_comment_1) REFERENCES article_1(id_article)
);
INSERT INTO comment_1 (content_comment_1 , id_article_1_comment_1 )
 VALUES 
                                                                            ("COMMENT_1" , 1),
                                                                            ("COMMENT_2" , 2),
                                                                            ("COMMENT_3" , 2),
                                                                            ("COMMENT_4" , 3),
                                                                            ("COMMENT_5" , 4),
                                                                            ("COMMENT_6" , 4),
                                                                            ("COMMENT_7" , 5),
                                                                            ("COMMENT_8" , 6),
                                                                            ("COMMENT_9" , 7),
                                                                            ("COMMENT_10" , 8),
                                                                            ("COMMENT_11" , 1),
                                                                            ("COMMENT_12" , 2),
                                                                            ("COMMENT_13" , 2),
                                                                            ("COMMENT_14" , 3),
                                                                            ("COMMENT_15" ,7),
                                                                            ("COMMENT_16" , 7)
                                                                            ;
