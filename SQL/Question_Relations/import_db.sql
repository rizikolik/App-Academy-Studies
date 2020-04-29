PRAGMA foreign_keys = ON;

CREATE TABLE users(
id INTEGER PRIMARY KEY, 
fname TEXT NOT NULL,
lname TEXT NOT NULL
);
CREATE TABLE questions(
id INTEGER PRIMARY KEY, 
title TEXT NOT NULL,
body TEXT NUT NULL,
user_id INTEGER NOT NULL,
FOREIGN KEY (user_id) REFERENCES users(id)
);
CREATE TABLE question_follows (
	id INTEGER PRIMARY KEY,
	user_id INTEGER NOT NULL,
	question_id INTEGER NOT NULL,

	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (question_id) REFERENCES questions(id)
);
CREATE TABLE replies(
id INTEGER PRIMARY KEY,
body TEXT NOT NULL,
owner_id INTEGER NOT NULL,
parent_id INTEGER,
question_id INTEGER NOT NULL,
FOREIGN KEY (owner_id) REFERENCES users(id),
FOREIGN KEY (parent_id) REFERENCES replies(id),
FOREIGN KEY (question_id) REFERENCES questions(id)
);

CREATE TABLE questions_likes(
id INTEGER PRIMARY KEY,
question_id INTEGER NOT NULL,
user_id INTEGER NOT NULL,
FOREIGN KEY(question_id) REFERENCES questions(id),
FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO
users
(fname,lname)
VALUES
("yunus","ture"),
("fulya","ture"),
("henry","gambler");
INSERT INTO 
questions
(title,body,user_id)
VALUES
("How long?","how long does it take to complete full curriculum?",1),
("how much?","how much time should you spent on curriculum for a better career?",3),
("Age","what is the average ages of users of this curriculum?",2);

INSERT INTO
question_follows
(user_id,question_id)
VALUES
	(2, 1),
	(1, 1),
	(3, 1),
	(1, 2),
	(3, 2);

INSERT INTO
replies

(body ,owner_id,parent_id,question_id)
VALUES
("It took fo me about 4 months to complete",1,NULL,1),
("I agree", 3, 1,2);

INSERT INTO
questions_likes
(question_id,user_id)
VALUES
(3, 1);