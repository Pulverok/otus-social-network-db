INSERT INTO geo_countries (id, name)
VALUES
    (1, 'Россия')
ON DUPLICATE KEY UPDATE
    name = name;
