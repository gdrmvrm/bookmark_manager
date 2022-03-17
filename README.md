**\_**SETTING UP a DEVELOPMENT DB:**\_**

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE "bookmark_manager";
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql
5. Run the query we have saved in the file 02_add_title_to_bookmarks.sql

**\_**CREATE A TEST DB:**\_**

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE "bookmark_manager_test";
3. Create a table in the test db using the psql command CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
4. Run the psql command \l to show both databases.
