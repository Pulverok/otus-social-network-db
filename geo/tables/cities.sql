CREATE TABLE geo_cities (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name varchar(250) NOT NULL,
    region_id int NOT NULL REFERENCES geo_regions(id)
);
