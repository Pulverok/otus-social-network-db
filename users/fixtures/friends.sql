CREATE TEMPORARY TABLE users AS(
    SELECT
        users.id as user_id,
        users_users.id as friend_id
    FROM users_users as users
    CROSS JOIN users_users
    WHERE users.id != users_users.id
    ORDER BY RAND()
    LIMIT 250
);

INSERT INTO users_friends(user_id, friend_id)
SELECT user_id, friend_id
FROM users;

INSERT INTO users_friends(user_id, friend_id)
SELECT friend_id, user_id
FROM users;

DROP TABLE users;
