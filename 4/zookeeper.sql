CREATE TABLE Zookeeper(
  name VARCHAR(50) PRIMARY KEY,
  category_specialist VARCHAR(50) NOT NULL
);

INSERT INTO Zookeeper (
  name, category_specialist) VALUES 
  ("Bob", 'Mammal'),
  ("David", 'Mammal'),
  ("John", 'Mammal'),
  ("Nellie", 'Reptile'),
  ("Jose", 'Reptile'),
  ("Patricia", 'Bird'),
  ("Ann", "Bird"),
  ("James", "Amphibian");
  
