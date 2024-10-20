-- Create the tables
CREATE TABLE IF NOT EXISTS Product (
    maker CHAR(1) NOT NULL,
    model INTEGER PRIMARY KEY,
    type TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS PC (
    model INTEGER PRIMARY KEY,
    speed DECIMAL(3, 2),
    ram INTEGER,
    hd INTEGER,
    price INTEGER,
    FOREIGN KEY (model) REFERENCES Product(model)
);

CREATE TABLE IF NOT EXISTS Printer (
    model INTEGER PRIMARY KEY,
    color BOOLEAN,
    type TEXT,
    price INTEGER,
    FOREIGN KEY (model) REFERENCES Product(model)
);


-- Insert data into Product table
INSERT OR IGNORE INTO Product (maker, model, type) VALUES
('A', 1001, 'PC'),
('A', 1002, 'PC'),
('A', 1003, 'PC'),
('A', 2004, 'LAPTOP'),
('A', 2005, 'LAPTOP'),
('A', 2006, 'LAPTOP'),
('B', 1004, 'PC'),
('B', 1005, 'PC'),
('B', 1006, 'PC'),
('B', 2007, 'LAPTOP'),
('C', 1007, 'PC'),
('D', 1008, 'PC'),
('D', 1009, 'PC'),
('D', 1010, 'PC'),
('D', 3004, 'PRINTER'),
('D', 3005, 'PRINTER'),
('E', 1011, 'PC'),
('E', 1012, 'PC'),
('E', 1013, 'PC'),
('E', 2001, 'LAPTOP'),
('E', 2002, 'LAPTOP'),
('E', 2003, 'LAPTOP'),
('E', 3001, 'PRINTER'),
('E', 3002, 'PRINTER'),
('E', 3003, 'PRINTER'),
('F', 2008, 'LAPTOP'),
('F', 2009, 'LAPTOP'),
('G', 2010, 'LAPTOP'),
('H', 3006, 'PRINTER'),
('H', 3007, 'PRINTER');

-- Insert data into PC table
INSERT OR IGNORE INTO PC (model, speed, ram, hd, price) VALUES
(1001, 2.66, 1024, 250, 2114),
(1002, 2.10, 512, 250, 995),
(1003, 1.42, 512, 80, 478),
(1004, 2.80, 1024, 250, 649),
(1005, 3.20, 512, 250, 630),
(1006, 3.20, 1024, 320, 1049),
(1007, 2.20, 1024, 200, 510),
(1008, 2.20, 2048, 250, 770),
(1009, 2.00, 1024, 250, 650),
(1010, 2.80, 2048, 300, 770),
(1011, 1.86, 2048, 160, 959),
(1012, 2.80, 1024, 160, 649),
(1013, 3.06, 512, 80, 529),
(2001, 2.00, 2048, 240, 3673),
(2002, 1.73, 1024, 80, 949),
(2003, 1.80, 512, 60, 549),
(2004, 2.00, 512, 60, 1150),
(2005, 2.16, 1024, 120, 2500),
(2006, 2.00, 2048, 80, 1700),
(2007, 1.83, 1024, 120, 1429),
(2008, 1.60, 1024, 100, 900),
(2009, 1.60, 512, 80, 680),
(2010, 2.00, 2048, 160, 2300);

-- Insert data into Printer table
INSERT OR IGNORE INTO Printer (model, color, type, price) VALUES
(3001, TRUE, 'ink-jet', 99),
(3002, FALSE, 'laser', 239),
(3003, TRUE, 'laser', 899),
(3004, TRUE, 'ink-jet', 120),
(3005, FALSE, 'laser', 120),
(3006, TRUE, 'ink-jet', 100),
(3007, TRUE, 'laser', 200);
