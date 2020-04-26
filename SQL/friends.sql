CREATE TABLE friends(
  id INTER PRIMARY KEY,
  name TEXT,
  birthday DATE
);
INSERT INTO friends(id,name,birthday)
VALUES (1, 'Jane Doe', '1990-05-30');

INSERT INTO friends(id,name,birthday)
VALUES (2, 'Jack DoS', '1993-04-23');
INSERT INTO friends(id,name,birthday)
VALUES (3, 'Mark trottlre', '1990-05-31');

UPDATE friends
SET name="Jane Smith"
WHERE id=1;

ALTER TABLE friends
ADD COLUMN
email TEXT;

UPDATE friends 
SET email="jane@bla.com"
WHERE id=1;
SELECT * FROM friends;