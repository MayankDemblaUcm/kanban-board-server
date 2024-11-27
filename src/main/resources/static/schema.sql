CREATE DATABASE `kanban-board`;

USE `kanban-board`;

CREATE TABLE IF NOT EXISTS boards (
    board_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    assigned_user VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


CREATE TABLE columns (
    column_id INT AUTO_INCREMENT PRIMARY KEY,              -- Primary key with auto-increment
    name VARCHAR(255) NOT NULL,                            -- Name of the column (required)
    board_id INT NOT NULL,                                 -- Foreign key referencing boards table
    position INT NOT NULL,                                 -- Position of the column in the board
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,        -- Automatically set when a record is created
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- Auto-updates when a record changes

    FOREIGN KEY (board_id) REFERENCES boards(board_id) ON DELETE CASCADE -- Links to boards table
);

-- DROP TABLE IF EXISTS cards;

CREATE TABLE cards (
    card_id INT AUTO_INCREMENT PRIMARY KEY,              -- Primary key with auto-increment
    title VARCHAR(255) NOT NULL,                         -- Title of the card (required)
    description TEXT,                                    -- Optional description of the card
    points INT,                                          -- Points associated with the card
    assigned_user_id INT,                                -- ID of the assigned user
    column_id INT NOT NULL,                              -- Foreign key referencing columns table
    board_id INT NOT NULL,                               -- Foreign key referencing boards table
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,      -- Automatically set when a record is created
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- Auto-updates when a record changes

    FOREIGN KEY (board_id) REFERENCES boards(board_id) ON DELETE CASCADE,   -- Links to boards table
    FOREIGN KEY (board_id) REFERENCES boards(board_id) ON DELETE CASCADE     -- Links to boards table
);



CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,              -- Primary key with auto-increment
    first_name VARCHAR(255) NOT NULL,                   -- User's first name (required)
    last_name VARCHAR(255),                             -- User's last name (optional)
    email VARCHAR(255) UNIQUE NOT NULL,                 -- User's email (unique and required)
    password VARCHAR(255) NOT NULL,                     -- User's password (required)
    role VARCHAR(50) NOT NULL,                          -- User's role (e.g., admin, user)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,      -- Automatically set when a record is created
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Auto-updates when a record changes
);


