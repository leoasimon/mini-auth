CREATE TYPE status AS ENUM (
    'active',
    'inactive',
    'deleted',
    'pending_validation',
    'pending_password_reset'
);

CREATE TABLE IF NOT EXISTS users (
    id serial primary key,
    email varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    hash varchar(255) NOT NULL,
    status status NOT NULL default 'pending_validation',
    created_at timestamp NOT NULL default now(),
    updated_at timestamp NOT NULL default now()
)