CREATE TABLE faculty (
    id INT GENERATED ALWAYS AS IDENTITY,
    name TEXT,
    PRIMARY KEY(id),
);

CREATE TABLE specialty(
    id INT GENERATED ALWAYS AS IDENTITY,
    name TEXT,
    faculty_id INT,
    PRIMARY KEY(id) 
);

CREATE TABLE subject(
    id INT GENERATED ALWAYS AS IDENTITY,
    name TEXT,
    specialty_id INT,
    PRIMARY KEY(id) 
);

CREATE TABLE schedule(
    id INT GENERATED ALWAYS AS IDENTITY,
    start_date DATE,
    end_date DATE,
    subject_id INT,
    PRIMARY KEY(id) 
);


CREATE TABLE hub_faculty (
    hash_key INT GENERATED ALWAYS AS IDENTITY,
    change_date TIMESTAMP
);

CREATE TABLE sat_faculty (
    hash_key INT GENERATED ALWAYS AS IDENTITY,
    name TEXT
);

CREATE TABLE hub_specialty (
    hash_key INT GENERATED ALWAYS AS IDENTITY,
    faculty_hash_key INT,
    change_date TIMESTAMP
);

CREATE TABLE sat_specialty (
    hash_key INT GENERATED ALWAYS AS IDENTITY,
    name TEXT
);

CREATE TABLE hub_subject (
    hash_key INT GENERATED ALWAYS AS IDENTITY,
    specialty_hash_key INT,
    change_date TIMESTAMP
);

CREATE TABLE sat_subject (
    hash_key INT GENERATED ALWAYS AS IDENTITY,
    name TEXT
);

CREATE TABLE hub_schedule (
    hash_key INT GENERATED ALWAYS AS IDENTITY,
    subject_hash_key INT,
    change_date TIMESTAMP
);

CREATE TABLE sat_subject (
    hash_key INT GENERATED ALWAYS AS IDENTITY,
    start_date DATE,
    end_date DATE
);