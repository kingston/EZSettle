CREATE TABLE users (
    user_id INTEGER PRIMARY KEY,
    experimental_id INTEGER UNIQUE NOT NULL,
    condition INTEGER AUTO_INCREMENT  
);

CREATE TABLE conditions (
    condition_id INTEGER PRIMARY KEY,
    condition VARCHAR(128)
);

CREATE TABLE pages (
    page_id INTEGER PRIMARY KEY,
    name TEXT,
);

CREATE TABLE times (
    time_id INTEGER PRIMARY KEY,
    
    page_id INTEGER,
    FOREIGN KEY(page_id) REFERENCES pages(page_id),
    
    user_id INTEGER,
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    
    time_spent INTEGER
);

CREATE TABLE offers (
    offer_id INTEGER PRIMARY KEY,
    
    user_id INTEGER,
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    
    step INTEGER,
    
    amount INTEGER
);
