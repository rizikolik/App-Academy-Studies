  SELECT 
  *
  FROM
  users
  WHERE
 name = 'Ned';

  SELECT
     name , age, has_cats
    FROM
    accounts
    WHERE
  (customer_id = 5 AND account_type = 'checking');

  INSERT INTO
 users (name, age, height_in_inches)
  VALUES
  ('Santa Claus', 876, 34);
INSERT INTO
accounts(account_number,customer_id,account_type)
VALUES
  (12345, 76, 'savings');


 UPDATE
  users
SET
  name = 'Eddard Stark', house = 'Winterfell'
WHERE
  name = 'Ned Stark';

UPDATE
  accounts
SET
  balance = 30
WHERE
  id = 6;
UPDATE
users
SET
name = 'Eddard Stark', house = 'Winterfell'
WHERE
name='Ned Stark';
DELETE FROM
  users
WHERE
  (name = 'Eddard Stark' AND house = 'Winterfell');
  DELETE FROM
  users
  WHERE
  (name = 'Eddard Stark' AND house = 'Winterfell')


CREATE TABLE users(   
  id=INTEGER PRIMARY KEY , 
  name  VARCHAR(100) NOT NULL,
  birth_date DATE ,
  house VARCHAR(255),
  favorite_food VARCHAR(255)
  
);

INSERT INTO books VALUES (
3,"sdsadsa",4

);
