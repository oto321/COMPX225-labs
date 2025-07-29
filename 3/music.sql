-- normal tables

-- Create a table for the student
CREATE TABLE Student(
  student_id INT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL
);

-- instrument tabel
CREATE TABLE Instrument(
  instrument_name VARCHAR(50) PRIMARY KEY,
  type VARCHAR(50)

);

-- tutor table
CREATE TABLE Tutor(
staff_id INT PRIMARY KEY,
tutor_first_name VARCHAR(50),
tutor_last_name VARCHAR(50)
);


-- relation tables

-- Plays relational table
CREATE TABLE Plays(
  student_id INT,
  instrument_name VARCHAR(50),
  PRIMARY KEY (student_id, instrument_name),
  FOREIGN KEY (student_id) REFERENCES Student(student_id),
  FOREIGN KEY (instrument_name) REFERENCES Instrument(instrument_name)
);


-- Teach relational table
CREATE TABLE Teach(
  instrument_name VARCHAR(50),
  staff_id INT,
  PRIMARY KEY(instrument_name, staff_id),
  FOREIGN KEY (instrument_name) REFERENCES Instrument(instrument_name),
  FOREIGN KEY (staff_id) REFERENCES Tutor(staff_id)
);



