PRAGMA foreign_keys = ON;
CREATE TABLE users (
    user_id INTEGER PRIMARY KEY,
    experimental_id INTEGER UNIQUE NOT NULL,
    condition INTEGER AUTO_INCREMENT  
);

CREATE TABLE conditions (
    condition_id INTEGER PRIMARY KEY,
    condition TEXT
);

CREATE TABLE pages (
    page_id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE times (
    time_id INTEGER PRIMARY KEY,
    
    page_fk INTEGER,
    FOREIGN KEY(page_fk) REFERENCES pages(page_id),
    
    user_fk INTEGER,
    FOREIGN KEY(user_fk) REFERENCES users(user_id),
    
    time_spent INTEGER
);

CREATE TABLE issues (
    issue_id INTEGER PRIMARY KEY,
    issue TEXT
);

CREATE TABLE offers (
    offer_id INTEGER PRIMARY KEY,
    
    user_fk INTEGER,
    FOREIGN KEY(user_fk) REFERENCES users(user_id),
    
    issue_fk INTEGER,
    FOREIGN KEY(issue_fk) REFERENCES issues(issue_id),
    
    offer_num INTEGER,
    
    amount INTEGER
);

CREATE TABLE chat (
    chat_id INTEGER PRIMARY KEY,
    
    text VARCHAR(1024),
    
    user_fk INTEGER,
    FOREIGN KEY(user_fk) REFERENCES users(user_id),
    
    page_fk INTEGER,
    FOREIGN KEY(page_fk) REFERENCES pages(page_id)
);
