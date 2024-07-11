-- SQL script to create a user table with the specified attributes:
-- Columns:
-- id: integer, primary key, auto increment, non-nullable
-- email: string (max length 255), unique, non-nullable
-- name: string (max length 255)
-- country: enumeration (US, CO, TN), non-nullable, default value is 'US'
-- Script should not fail if the table already exists
-- The script should be executable on any database

-- Create the 'users' table if it does not already exist
CREATE TABLE IF NOT EXISTS users (
    -- id column: integer, auto-incremented primary key, non-nullable
    id INT AUTO_INCREMENT PRIMARY KEY,
    
    -- email column: string (255 characters max), non-nullable, unique
    email VARCHAR(255) NOT NULL UNIQUE,
    
    -- name column: string (255 characters max)
    name VARCHAR(255),
    
    -- country column: enumeration (US, CO, TN), non-nullable, default is 'US'
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US'
);
