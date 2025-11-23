-- Users Service Database Schema (linked to Location)

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,

    first_name VARCHAR(255) NOT NULL,
    last_name  VARCHAR(255) NOT NULL,

    email VARCHAR(255) NOT NULL UNIQUE,
    phone VARCHAR(50),

    address VARCHAR(255),
    city    VARCHAR(100),
    state   VARCHAR(100),
    zip_code VARCHAR(20),

    status VARCHAR(50) DEFAULT 'active',

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
