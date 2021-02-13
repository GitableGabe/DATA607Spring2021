#Create RatingsDetails TABLE Parent TABLE

DROP TABLE IF EXISTS movieRatings;

DROP TABLE IF EXISTS MovieName;

CREATE TABLE MovieName 
(
  movieID int PRIMARY KEY NOT NULL,
  name varchar(30) NOT NULL
);

SELECT * FROM MovieName;

#Create movieRatings TABLE Child TABLE


CREATE TABLE movieRatings 
(
  surveyID int NOT NULL,
  movieID int NOT NULL,
  rating int,
  details varchar(50),
  CONSTRAINT fk_category
    FOREIGN KEY (movieID) 
    REFERENCES MovieName(movieID)
);
  
SELECT * FROM movieRatings;