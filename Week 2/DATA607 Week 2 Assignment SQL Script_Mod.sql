/*
  tb.sql
*/

DROP TABLE IF EXISTS movieRatings;

CREATE TABLE movieRatings 
(
  surveyID int NOT NULL,
  movie varchar(30) NOT NULL,
  rating int,
  details varchar(50) NULL
  );

SELECT * FROM movieRatings;

# 'ERROR shoes global variable secure file priv'
# SHOW VARIABLES LIKE "secure_file_priv";
# Use above path to import csv file data
# SHOW VARIABLES LIKE "local_infile";
# 'to set for local access modify as shown below if result is FALSE'
# SET GLOBAL local_infile = 'ON' 

LOAD DATA INFILE 'DRIVE:/PATH/TO/CSV/6 Recent Popular movies.csv'
INTO TABLE movieRatings
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(surveyID,movie,@mrating,details)
SET rating = nullif(@mrating, -1);

SELECT * FROM movieRatings WHERE rating IS NULL;
SELECT COUNT(*) FROM movieRatings;
SELECT * FROM movieRatings;