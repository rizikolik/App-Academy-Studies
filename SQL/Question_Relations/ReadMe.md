# Question Pairs

**Read the entire project description before beginning**.

## Learning Goals

- Know how to use a SQL script to construct a database
  - Be able to debug SQL syntax errors
- Be able to use queries, written in SQL, in your Ruby code
- Know how a basic ORM (Object-Relational Mapping) system works
- Be able to write SQL queries to solve problems without using Ruby code
  - Be able to use joins instead of Ruby code
  - Be able to use `GROUP BY` and `ORDER BY` instead of Ruby code

## SQL

First construct a series of tables. Write the table definitions
in a SQL script named `import_db.sql`.

- Add a `users` table.
  - Should track `fname` and `lname` attributes.
- Add a `questions` table.
  - Track the `title`, the `body`, and the associated author
    (a foreign key).
- Add a `question_follows` table.
  - This should support the many-to-many relationship between
    `questions` and `users` (a user can have many questions she
    is following, and a question can have many followers).
  - This is an example of a **_join table_**; the rows in
    `question_follows` are used to join `users` to `questions`
    and vice versa.
- Add a `replies` table.
  - Each reply should contain a reference to the subject question.
  - Each reply should have a reference to its parent reply.
  - Each reply should have a reference to the user who wrote it.
  - Don't forget to keep track of the `body` of a reply.
  - "Top level" replies don't have any parent, but all replies have
    a subject question.
  - It's okay for a column to be **self referential**; a foreign key
    can point to a primary key in the same table.
- Add a `question_likes` table.
  - Users can like a question.
  - Have references to the user and the question in this table

## Gemfile

Sqlite3 gem used for this project:

```bash
bundle init
```

This will create a starter `Gemfile`. Open it up and add a line to
include the `sqlite3` gem:

```ruby
gem 'sqlite3'
```

Finally, run `bundle install` to install `sqlite3`. This gem will now
be available when you run `pry`.
