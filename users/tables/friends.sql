CREATE TABLE users_friends (
   id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
   user_id bigint REFERENCES users_users(id),
   friend_id bigint REFERENCES users_users(id),
   created_at timestamp DEFAULT now(),
   deleted_at timestamp
);
