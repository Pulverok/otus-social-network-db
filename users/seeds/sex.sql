INSERT INTO users_sex(id, sex)
VALUES
    (1, 'Мужской'),
    (2, 'Женский'),
    (3, 'Не хочу указывать')
ON DUPLICATE KEY UPDATE
    sex = sex;
