--userのDBデータ
CREATE TABLE users(
id UUID PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(255) UNIQUE NOT NULL,
email_norm VARCHAR(255) NOT NULL,
password_hash VARCHAR(255) NOT NULL,
email_verified BOOLEAN NOT NULL DEFAULT FALSE,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--大文字/小文字の違いで重複登録させないための一意制約
CREATE UNIQUE INDEX ux_users_email_norm ON users(email_norm)
--インデックスの作成により検索の高速化や重複防止のためのデータ構造を作ることができる。
