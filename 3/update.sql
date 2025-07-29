-- Link each student to at least one instrument
INSERT INTO Plays (student_id, instrument_name) VALUES
(1, 'Guitar'),       
(2, 'Flute'),        
(3, 'Piano'),        
(4, 'Drums'),        
(5, 'Violin');       

-- Link each tutor to at least one instrument
INSERT INTO Teach (staff_id, instrument_name) VALUES
(1, 'Violin'),       
(2, 'Cello'),        
(3, 'Flute'),        
(4, 'Piano'),        
(5, 'Guitar');       
