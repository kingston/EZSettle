PRAGMA foreign_keys = ON;
CREATE TABLE users (
    user_id INTEGER PRIMARY KEY,
    condition INTEGER,
    login_time DATETIME,
    try_additional_issue INTEGER, --no = 0, yes = 1
    additional_issue TEXT,
	return_laptop INTEGER,
	pay_back_computer INTEGER,
	pay_original_ship INTEGER,
	pay_cost_rental INTEGER,
	pay_emo_damage INTEGER,
	pay_return_ship INTEGER
	);

CREATE TABLE offers (
    user_fk INTEGER,
    --FOREIGN KEY(user_fk) REFERENCES users(user_id),

    offer_num INTEGER,
    
	return_laptop TEXT, --no = 0, yes = 1
	pay_back_computer FLOAT,
	pay_original_ship FLOAT,
	pay_cost_rental FLOAT,
	pay_emo_damage FLOAT,
	pay_return_ship TEXT, --n/a = 0, buyer = 1, seller = 2
    comment_to_2party TEXT,
    comment_to_ezsettle TEXT,
    PRIMARY KEY(user_fk, offer_num)
);

CREATE TABLE damage_creatives(
	user_fk INTEGER PRIMARY KEY,
	damage INTEGER,
	creative INTEGER
);

CREATE TABLE faqs (
	user_fk INTEGER PRIMARY KEY,
	time_spent INTEGER
);
----------------

CREATE TABLE conditions (
    condition_id INTEGER PRIMARY KEY,
    condition TEXT
);

CREATE TABLE pages (
    page_id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE times (
    page_fk INTEGER,
    --FOREIGN KEY(page_fk) REFERENCES pages(page_id),
    
    user_fk INTEGER,
    --FOREIGN KEY(user_fk) REFERENCES users(user_id),
    
    time_spent INTEGER,
    PRIMARY KEY(page_fk, user_fk)
    );

CREATE TABLE issues (
    issue_id INTEGER PRIMARY KEY,
    issue TEXT
);

CREATE TABLE ranks (
    rank_id INTEGER PRIMARY KEY,
    
    user_fk INTEGER,
    --FOREIGN KEY(user_fk) REFERENCES users(user_id),
    
    issue_fk INTEGER,
    --FOREIGN KEY(issue_fk) REFERENCES issues(issue_id),
    
    bid_trial INTEGER,
    
    importance INTEGER
);



CREATE TABLE messages (
    chat_id INTEGER PRIMARY KEY,
    
    bid
    to_field TEXT,
    message_text TEXT,
    length INTEGER,
    
    user_fk INTEGER,
    --FOREIGN KEY(user_fk) REFERENCES users(user_id),
    
    bid_trial INTEGER,
    
    offer_num INTEGER
    --FOREIGN KEY(page_fk) REFERENCES pages(page_id)
);

CREATE TABLE faqs (
	user_fk INTEGER,
    --FOREIGN KEY(user_fk) REFERENCES users(user_id),
    
    time_spent INTEGER,
);

-- Could anyone else have damaged the goods?
-- let's think creatively