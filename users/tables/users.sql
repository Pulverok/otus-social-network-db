CREATE TABLE users_users (
    id bigint NOT NULL PRIMARY KEY AUTO_INCREMENT,
    email varchar(320) NOT NULL UNIQUE, -- максимальная длинна email 320 символов
    first_name varchar(1478) NOT NULL, -- максиммальная длинна имени человека в мире 1478 букв
    last_name varchar(24) NOT NULL, -- максиммальная длинна фамилии человека в мире 24 буквы
    password_hash varchar(60) NOT NULL,
    sex_id int REFERENCES users_sex(id),
    city_id int REFERENCES geo_cities(id),
    hobbies text
);
