

USE auth_db ;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    planet VARCHAR(255) NOT NULL
);

SELECT * FROM users ;


CREATE TABLE IF NOT EXISTS inventory (
    user_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    planet VARCHAR(100) NOT NULL,
    category VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    estimated_value DECIMAL(15,2) NOT NULL,
    currency VARCHAR(50) NOT NULL,
    status VARCHAR(50) DEFAULT 'Available'
);

SELECT * FROM inventory ;
DROP TABLE inventory ;
DESCRIBE inventory;
TRUNCATE users ;
TRUNCATE inventory;