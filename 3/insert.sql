-- inset into the sudent table
INSERT INTO Student (
  student_id, first_name, last_name, email) VALUES 
  (1, 'Navraj', 'Mann', 'navrajmann138@gmail.com'),
  (2, 'John', 'Duncan', 'JohnLDuncan@dayrep.com'),
  (3, 'Nellie', 'Miller', 'NellieMMiller@rhyta.com'),
  (4, 'Jose', 'Elliott', 'JoseBElliott@armyspy.com'),
  (5, 'Patricia', 'Murray', 'PatriciaKMurray@rhyta.com');
  
-- insert into the Tutor table
INSERT INTO Tutor (
  staff_id, tutor_first_name, tutor_last_name) VALUES
  (1, 'Laura', 'Nguyen'),
  (2, 'Mark', 'Wilson'),
  (3, 'Sarah', 'Kim'),
  (4, 'James', 'Patel'),
  (5, 'Emily', 'Clark');

-- insert into the Instrument table
INSERT INTO Instrument (
  instrument_name, type) VALUES 
  ('Oboe', 'woodwind'),
  ('Flute', 'woodwind'),
  ('Piano', 'percussion'),
  ('Drums', 'percussion'),
  ('Guitar', 'strings'),
  ('Violin', 'strings'),
  ('Cello', 'strings');
