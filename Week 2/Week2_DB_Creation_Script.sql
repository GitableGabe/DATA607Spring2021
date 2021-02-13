DROP TABLE IF EXISTS movieRatings;

CREATE TABLE movieRatings 
(
  surveyID int NOT NULL,
  movie varchar(30) NOT NULL,
  rating int
);
  
SELECT * FROM movieRatings;

DROP TABLE IF EXISTS RatingDetails;

  CREATE TABLE RatingDetails 
(
  rating int NOT NULL PRIMARY KEY,
  details varchar(50) NULL
);

SELECT * FROM RatingDetails;