#!/bin/bash

DB_HOST=$1
DB_USER=$2
DB_PASSWORD=$3

mysql -h $DB_HOST -u $DB_USER -p $DB_PASSWORD -e "
CREATE TABLE IF NOT EXISTS testdb.test (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

INSERT INTO testdb.test (name) VALUES ('dummy1'), ('dummy2'), ('dummy3');
"
