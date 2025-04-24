PRAGMA foreign_keys = ON;

CREATE TABLE CARRIERS (
    cid VARCHAR(7) PRIMARY KEY,
    name VARCHAR(83)
);

CREATE TABLE MONTHS (
    mid INTEGER PRIMARY KEY,
    month VARCHAR(9)
);

CREATE TABLE WEEKDAYS (
    did INTEGER PRIMARY KEY,
    day_of_week VARCHAR(9)
);

CREATE TABLE FLIGHTS (
    fid INTEGER PRIMARY KEY,
    month_id INTEGER,
    day_of_month INTEGER,
    day_of_week_id INTEGER,
    carrier_id VARCHAR(7),
    flight_num INTEGER,
    origin_city VARCHAR(34),
    origin_state VARCHAR(47),
    dest_city VARCHAR(34),
    dest_state VARCHAR(46),
    departure_delay INTEGER,
    taxi_out INTEGER,
    arrival_delay INTEGER,
    canceled INTEGER,
    actual_time INTEGER,
    distance INTEGER,
    capacity INTEGER,
    price INTEGER,
    FOREIGN KEY (carrier_id) REFERENCES CARRIERS(cid),
    FOREIGN KEY (month_id) REFERENCES MONTHS(mid),
    FOREIGN KEY (day_of_week_id) REFERENCES WEEKDAYS(did)
);
