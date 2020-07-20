CREATE TABLE auth_access_tokens (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id bigint REFERENCES users_users(id),
    token varchar(100) NOT NULL UNIQUE,
    expires_at timestamp NOT NULL DEFAULT DATE_ADD(now(), INTERVAL 2 WEEK),
    added_at   timestamp NOT NULL DEFAULT now()
);
