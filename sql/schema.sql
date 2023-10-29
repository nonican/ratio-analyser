CREATE TABLE Balance_sheet (
	category TEXT CHECK (category IN ('Asset', 'Equity', 'Liability')),
	description TEXT,
	date TEXT,
	amount INTEGER,
	longterm BOOLEAN
);
CREATE TABLE Analysis (
	date TEXT,
	measure REAL,
	description TEXT
);