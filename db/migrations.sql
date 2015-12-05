CREATE DATABASE shopping_list;
\c shopping_list

CREATE TABLE items (id SERIAL PRIMARY KEY, name VARCHAR(255), quantity INTEGER );

CREATE TABLE accounts (id SERIAL PRIMARY KEY, user_name VARCHAR(255), user_email VARCHAR(255), password_digest VARCHAR(255), is_admin BOOLEAN);
\dt

# COMMENTS
# table name accounts instead of users, to avoid issues
# bcrypt requires the naming and it's ruby best practice
# password_digest is bcrypt representation of pwd
