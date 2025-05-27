create table account (
    id VARCHAR(255) PRIMARY KEY,
    uid VARCHAR(40) NOT NULL,
    name TEXT NOT NULL,
    username TEXT NOT NULL,
    zone TEXT NOT NULL,
    phone TEXT NOT NULL,
    password TEXT NOT NULL,
    login_type SMALLINT NOT NULL,
    created_at INTEGER NULL DEFAULT 0,
    updated_at INTEGER NULL DEFAULT 0
);