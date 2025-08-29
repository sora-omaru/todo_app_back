CREATE TABLE todos(
id UUID PRIMARY KEY,
user_id UUID NOT NULL,
title VARCHAR(255) NOT NULL,
completed BOOLEAN NOT NULL DEFAULT FALSE,
created_at TIMESTAMP NOT NULL CURRENT_TIMESTAMP,
CONSTRAINT fk_todos_user FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE INDEX idx_todos_user_id ON todos(user_id);