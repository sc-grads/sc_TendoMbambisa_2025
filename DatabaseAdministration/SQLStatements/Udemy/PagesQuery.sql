-- Create the database
CREATE DATABASE dbtest;

-- Alter database settings
ALTER DATABASE dbtest SET MIXED_PAGE_ALLOCATION ON;

-- Create a table
CREATE TABLE heaptable1 (c1 INT, c2 VARCHAR(8000));

-- Insert data into the table
INSERT INTO heaptable1 VALUES (1, REPLICATE('a', 1000));

-- Select data from the table
SELECT * FROM heaptable1;

-- Drop the table
DROP TABLE heaptable1;
-- Enable trace flag
DBCC TRACEON(3604, -1);
-- Display page information
DBCC PAGE(dbtest, 1, 1, 3);


