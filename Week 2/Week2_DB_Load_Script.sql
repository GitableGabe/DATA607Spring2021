#LOADING INTO movieName DB

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/MovieName.csv'
INTO TABLE movieName
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT COUNT(*) FROM movieName;
SELECT * FROM movieName;

##################################################################################
##################################################################################


#LOADING INTO movieRatings DB

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/6 Recent Popular movies.csv'
INTO TABLE movieRatings
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(surveyID,movieID,@mrating,details)
SET rating = nullif(@mrating, -1);

SELECT * FROM movieRatings WHERE rating IS NULL;
SELECT COUNT(*) FROM movieRatings;
SELECT * FROM movieRatings;