CREATE TABLE users(
id PRIMARY KEY INTEGER,
fname TEXT NOT NULL,
lname TEXT NOT NULL
);
CREATE TABLE questions(
id PRIMARY KEY INTEGER,
title TEXT NOT NULL,
body TEXT NUT NULL,
ass_author_id INTEGER NOT NULL,
FOREIGN KEY (ass_author_id) REFERENCES authors(id)
);
CREATE TABLE question_follows(
id PRIMARY KEY INTEGER,

);