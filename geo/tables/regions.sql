CREATE TABLE geo_regions (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name varchar(250) NOT NULL,
    country_id int NOT NULL REFERENCES geo_countries(id)
);
