-- Question 2:
-- c)

CREATE TABLE Laptop(
    model VARCHAR,
    speed FLOAT, 
    ram INT,
    hd INT,
    price DECIMAL(10,2) NOT NULL,
    screen VARCHAR(255),
    PRIMARY KEY (model),
)

-- d)
CREATE TABLE Printer (
model VARCHAR(255),
color VARCHAR(255),
type VARCHAR(255),
price DECIMAL(10,2),
PRIMARY KEY (model)
);

-- e)
-- An alteration to the Printer schema from d) which would drop the 'color' attribute could be done using the ALTER TABLE and DROP COLUMN commands:
ALTER TABLE Printer
DROP COLUMN color;

-- That statement will remove the 'color' column from the Printer table and delete all the data in that column

-- f)
-- Similar to e), we use the ALTER TABLE with ADD COLUMN this time in order to 

ALTER TABLE Laptop
ADD od VARCHAR(255) DEFAULT 'none' AFTER hd;

-- This statement will add a new column 'od' of type VARCHAR(255) with a default value of 'none' after the 'hd' column in the Laptop table.
-- If the Laptop does not have an optical disk the default value of 'none' will be used.
-- It is important to keep in mind that this operation may affect other parts of the database, such as any views or stored procedures that reference the table. 
