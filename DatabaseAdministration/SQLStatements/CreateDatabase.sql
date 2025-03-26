-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS Autotestdb;

-- Use the database
USE Autotestdb;

-- Create the user table with three fields
CREATE TABLE IF NOT EXISTS user (
    Name VARCHAR(50) NOT NULL,
    Surname VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    PRIMARY KEY (Email)  -- Adding a primary key is recommended
);

-- Create stored procedure for inserting data
DELIMITER //
CREATE PROCEDURE InsertUser(
    IN p_name VARCHAR(50),
    IN p_surname VARCHAR(50),
    IN p_email VARCHAR(100)
BEGIN
    INSERT INTO user (Name, Surname, Email) 
    VALUES (p_name, p_surname, p_email)
    ON DUPLICATE KEY UPDATE
        Name = VALUES(Name),
        Surname = VALUES(Surname);
END //
DELIMITER ;

-- Insert sample data using the stored procedure
CALL InsertUser('John', 'Doe', 'john.doe@example.com');
CALL InsertUser('Jane', 'Smith', 'jane.smith@example.com');
CALL InsertUser('Test', 'User', 'test@example.com');

-- Verify the data
SELECT * FROM user;
