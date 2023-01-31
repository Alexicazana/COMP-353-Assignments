-- Create the Students table
CREATE TABLE Students (
    SID INT PRIMARY KEY,
    Name VARCHAR(255),
    Program VARCHAR(255),
    Address VARCHAR(255)
);

-- Populate the Students table with some sample data using "Insert into"

INSERT INTO Students (SID, Name, Program, Address)
VALUES (1, 'Alice', 'Computer Science', '123 Main St'),
       (2, 'Bob', 'Computer Science', '456 Park Ave'),
       (3, 'Charlie', 'Computer Science', '789 Elm St');

-- Create the Courses table
CREATE TABLE Courses (
    CID INT PRIMARY KEY,
    Name VARCHAR(255),
    Credits INT
);

--Pop the Courses table with sample data
INSERT INTO Courses (CID, Name, Credits)
VALUES (1, 'Databases', 3),
       (2, 'Algorithms', 4),
       (3, 'Programming', 3);

-- Create the Courses_Enrolled table
CREATE TABLE Courses_Enrolled (
    SID INT,
    CID INT,
    Grade VARCHAR(255),
    PRIMARY KEY (SID, CID),
    FOREIGN KEY (SID) REFERENCES Students (SID),
    FOREIGN KEY (CID) REFERENCES Courses (CID)
);

--Populate the Courses-Enrolled table with sample data
INSERT INTO Courses_Enrolled (SID, CID, Grade)
VALUES (1, 1, 'A'),
       (1, 2, 'B+'),
       (2, 1, 'B'),
       (2, 2, 'A'),
       (3, 3, 'A-');
