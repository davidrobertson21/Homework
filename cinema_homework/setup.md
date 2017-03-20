# SQL Homework Setup

The Dominion Cinema are having a Marvel Movie Marathon! They have asked you to help maintain their database of movies with times and attendees.

## To access the database:

First, create a database called 'marvel'

```
# terminal
createdb marvel
```

Next, run the provided SQL script to populate your database:

```
# terminal
psql -d marvel -f marvel.sql
```


## If you need to reset the data

First go back to terminal and delete hte database

```
# terminal
dropdb marvel
```

Then start at the begining again and create your database again.