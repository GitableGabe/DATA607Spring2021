#LOADING INTO movieRatings DB

LOAD DATA INFILE 'DRIVE:/PATH/TO/CSV/6 Recent Popular movies.csv'
INTO TABLE movieRatings
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(surveyID,movie,@mrating)
SET rating = nullif(@mrating, -1);

SELECT * FROM movieRatings WHERE rating IS NULL;
SELECT COUNT(*) FROM movieRatings;
SELECT * FROM movieRatings;

##################################################################################
##################################################################################

#LOADING INTO ratingDetails DB

LOAD DATA INFILE 'DRIVE:/PATH/TO/CSV//RatingDetails.csv'
INTO TABLE ratingDetails
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT COUNT(*) FROM ratingDetails;;
SELECT * FROM ratingDetails;