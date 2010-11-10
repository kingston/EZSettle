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

