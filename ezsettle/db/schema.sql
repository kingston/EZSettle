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
	user_fk INTEGER,
	time_spent INTEGER
);

CREATE TABLE page_time(
	user_fk INTEGER,
	page_name TEXT,
	time_spent INTEGER
);