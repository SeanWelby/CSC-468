CREATE TABLE IF NOT EXISTS cattle (
    id INT AUTO_INCREMENT PRIMARY KEY,
    breed VARCHAR(255),
    weight INT,
    age INT
);

LOAD DATA INFILE '/docker-entrypoint-initdb.d/cattle.csv'
INTO TABLE cattle
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(breed, weight, age);
