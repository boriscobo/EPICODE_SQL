-- Boris Cobo, DAPT0624, 01/12/2024

CREATE DATABASE TOYSGROUP;

USE TOYSGROUP;

-- Per quanto riguarda il primo punto dell'esercizio, ho direttamente inserito UNIQUE nelle Primary Key durante la creazione delle tabelle

-- Creazione della tabella Product
CREATE TABLE Product (
    ProductID INT UNIQUE
    , ProductName VARCHAR(100)
    , UnitPrice DECIMAL (8, 2)
    , CATEGORY VARCHAR (75)
    , CONSTRAINT PK_Product PRIMARY KEY (ProductID)
);

-- Creazione della tabella Region
CREATE TABLE Region (
    RegionId INT UNIQUE
    , RegionName VARCHAR(75)
    , Country VARCHAR(75)
    , CONSTRAINT PK_Region PRIMARY KEY (RegionID)
);

-- Creazione della tabella Sales
CREATE TABLE Sales (
    SaleID INT UNIQUE
    , SaleDate DATE
    , QuantitySold INT
    , TotalSale DECIMAL(10, 2)
    , ProductID INT
    , RegionID INT
    , CONSTRAINT PK_Sales PRIMARY KEY (SaleID)
	, CONSTRAINT FK_Product FOREIGN KEY (ProductID) REFERENCES Product (ProductID)
    , CONSTRAINT FK_Region FOREIGN KEY (RegionID) REFERENCES Region (RegionID)
);

-- Popolamento della tabella Product
INSERT INTO Product (ProductID, ProductName, UnitPrice, Category) VALUES
(1, 'Super Mario Odyssey', 59.99, 'Platform')
, (2, 'The Legend of Zelda: Breath of the Wild', 69.99, 'Action-Adventure')
, (3, 'Minecraft', 29.99, 'Sandbox')
, (4, 'Fortnite', 0.00, 'Battle Royale')
, (5, 'Call of Duty: Modern Warfare', 59.99, 'Shooter')
, (6, 'FIFA 22', 49.99, 'Sports')
, (7, 'Among Us', 4.99, 'Multiplayer')
, (8, 'Animal Crossing: New Horizons', 49.99, 'Simulation')
, (9, 'The Witcher 3: Wild Hunt', 39.99, 'RPG')
, (10, 'Overwatch', 39.99, 'Shooter')
, (11, 'Final Fantasy XV', 29.99, 'RPG')
, (12, 'Resident Evil Village', 59.99, 'Survival Horror')
, (13, 'Rocket League', 19.99, 'Sports')
, (14, 'Apex Legends', 0.00, 'Battle Royale')
, (15, 'Horizon Zero Dawn', 39.99, 'Action-Adventure')
, (16, 'Red Dead Redemption 2', 59.99, 'Action-Adventure')
, (17, 'Tetris Effect', 39.99, 'Puzzle')
, (18, 'Assassin\'s Creed Valhalla', 59.99, 'Action-Adventure')
, (19, 'Cyberpunk 2077', 59.99, 'RPG')
, (20, 'Super Smash Bros. Ultimate', 59.99, 'Fighting');

-- Popolamento della tabella Region
INSERT INTO Region (RegionID, RegionName, Country) VALUES
(1, 'North America', 'United States')
, (2, 'South America', 'Brazil')
, (3, 'Europe', 'Germany')
, (4, 'Asia', 'China')
, (5, 'Africa', 'Nigeria')
, (6, 'Oceania', 'Australia')
, (7, 'Middle East', 'United Arab Emirates')
, (8, 'East Asia', 'Japan')
, (9, 'South Asia', 'India')
, (10, 'Southeast Asia', 'Thailand')
, (11, 'Western Europe', 'France')
, (12, 'Northern Europe', 'United Kingdom')
, (13, 'Central Asia', 'Kazakhstan')
, (14, 'Caribbean', 'Cuba')
, (15, 'Northern America', 'Canada');

-- Popolamento della tabella Sales
INSERT INTO Sales (SaleID, ProductID, RegionID, SaleDate, QuantitySold) VALUES
(1, 1, 1, '2024-10-01', 10)
, (2, 1, 2, '2024-10-02', 15)
, (3, 2, 3, '2024-10-03', 20)
, (4, 3, 4, '2024-10-04', 5)
, (5, 4, 1, '2024-10-05', 12)
, (6, 5, 2, '2024-10-06', 8)
, (7, 6, 3, '2024-10-07', 25)
, (8, 7, 4, '2024-10-08', 7)
, (9, 8, 5, '2024-10-09', 18)
, (10, 9, 1, '2024-10-10', 10)
, (11, 10, 2, '2024-10-11', 14)
, (12, 11, 3, '2024-10-12', 9)
, (13, 12, 4, '2024-10-13', 13)
, (14, 13, 5, '2024-10-14', 30)
, (15, 14, 1, '2024-10-15', 6)
, (16, 15, 2, '2024-10-16', 22)
, (17, 1, 3, '2024-10-17', 17)
, (18, 2, 4, '2024-10-18', 14)
, (19, 3, 5, '2024-10-19', 26)
, (20, 4, 1, '2024-10-20', 5)
, (21, 5, 2, '2024-10-21', 10)
, (22, 6, 3, '2024-10-22', 35)
, (23, 7, 4, '2024-10-23', 12)
, (24, 8, 5, '2024-10-24', 4)
, (25, 9, 1, '2024-10-25', 8)
, (26, 10, 2, '2024-10-26', 6)
, (27, 11, 3, '2024-10-27', 11)
, (28, 12, 4, '2024-10-28', 5)
, (29, 13, 5, '2024-10-29', 3)
, (30, 14, 1, '2024-10-30', 9)
, (31, 15, 2, '2024-11-01', 18)
, (32, 1, 3, '2024-11-02', 7)
, (33, 2, 4, '2024-11-03', 25)
, (34, 3, 5, '2024-11-04', 15)
, (35, 4, 1, '2024-11-05', 9)
, (36, 5, 2, '2024-11-06', 11)
, (37, 6, 3, '2024-11-07', 21)
, (38, 7, 4, '2024-11-08', 6)
, (39, 8, 5, '2024-11-09', 16)
, (40, 9, 1, '2024-11-10', 4)
, (41, 10, 2, '2024-11-11', 8)
, (42, 11, 3, '2024-11-12', 13)
, (43, 12, 4, '2024-11-13', 14)
, (44, 13, 5, '2024-11-14', 12)
, (45, 14, 1, '2024-11-15', 10)
, (46, 15, 2, '2024-11-16', 9)
, (47, 1, 3, '2024-11-17', 19)
, (48, 2, 4, '2024-11-18', 7)
, (49, 3, 5, '2024-11-19', 30)
, (50, 4, 1, '2024-11-20', 11)
, (51, 5, 2, '2024-11-21', 22)
, (52, 6, 3, '2024-11-22', 8)
, (53, 7, 4, '2024-11-23', 6)
, (54, 8, 5, '2024-11-24', 18)
, (55, 9, 1, '2024-11-25', 13)
, (56, 10, 2, '2024-11-26', 10)
, (57, 11, 3, '2024-11-27', 7)
, (58, 12, 4, '2024-11-28', 20)
, (59, 13, 5, '2024-11-29', 9)
, (60, 14, 1, '2024-11-30', 25)
, (61, 15, 2, '2024-12-01', 30)
, (62, 1, 3, '2024-12-02', 6)
, (63, 2, 4, '2024-12-03', 8)
, (64, 3, 5, '2024-12-04', 14)
, (65, 4, 1, '2024-12-05', 18)
, (66, 5, 2, '2024-12-06', 7)
, (67, 6, 3, '2024-12-07', 25)
, (68, 7, 4, '2024-12-08', 9)
, (69, 8, 5, '2024-12-09', 13)
, (70, 9, 1, '2024-12-10', 10)
, (71, 10, 2, '2024-12-11', 20)
, (72, 11, 3, '2024-12-12', 11)
, (73, 12, 4, '2024-12-13', 5)
, (74, 13, 5, '2024-12-14', 18)
, (75, 14, 1, '2024-12-15', 8)
, (76, 15, 2, '2024-12-16', 15)
, (77, 1, 3, '2024-12-17', 25)
, (78, 2, 4, '2024-12-18', 10)
, (79, 3, 5, '2024-12-19', 6)
, (80, 4, 1, '2024-12-20', 7)
, (81, 5, 2, '2024-12-21', 12)
, (82, 6, 3, '2024-12-22', 15)
, (83, 7, 4, '2024-12-23', 10)
, (84, 8, 5, '2024-12-24', 5)
, (85, 9, 1, '2024-12-25', 8)
, (86, 10, 2, '2024-12-26', 3)
, (87, 11, 3, '2024-12-27', 6)
, (88, 12, 4, '2024-12-28', 7)
, (89, 13, 5, '2024-12-29', 8)
, (90, 14, 1, '2024-12-30', 14)
, (91, 15, 2, '2024-12-31', 20)
, (92, 1, 3, '2025-01-01', 10)
, (93, 2, 4, '2025-01-02', 2)
, (94, 3, 5, '2025-01-03', 13)
, (95, 4, 1, '2025-01-04', 7)
, (96, 5, 2, '2025-01-05', 9)
, (97, 6, 3, '2025-01-06', 14)
, (98, 7, 4, '2025-01-07', 10)
, (99, 8, 5, '2025-01-08', 5)
, (100, 9, 1, '2025-01-09', 12);

-- Esporre l’elenco dei soli prodotti venduti e per ognuno di questi il fatturato totale per anno
SELECT 
    p.ProductID
    , p.ProductName
    , YEAR(s.SaleDate) AS SaleYear
    , SUM(s.QuantitySold * p.UnitPrice) AS TotalRevenue
FROM 
    Sales AS s
JOIN 
    Product AS p
ON s.ProductID = p.ProductID
GROUP BY 
    p.ProductID
    , YEAR(s.SaleDate)
ORDER BY 
    p.ProductID
    , SaleYear;
    
-- Esporre il fatturato totale per stato per anno. Ordina il risultato per data e per fatturato decrescente
SELECT 
    r.RegionName
    , YEAR(s.SaleDate) AS SaleYear
    , SUM(s.QuantitySold * p.UnitPrice) AS TotalRevenue
FROM 
    Sales AS s
JOIN 
    Product AS p
ON s.ProductID = p.ProductID
JOIN 
    Region AS r
ON s.RegionID = r.RegionID
GROUP BY 
    r.RegionName 
    , YEAR (s.SaleDate)
ORDER BY 
    SaleYear ASC
    , TotalRevenue DESC;

-- Qual è la categoria di articoli maggiormente richiesta dal mercato?
SELECT 
    p.Category
    , SUM(s.QuantitySold * p.UnitPrice) AS TotalRevenue
FROM 
    Sales AS s
JOIN 
    Product AS p
ON s.ProductID = p.ProductID
GROUP BY 
    p.Category
ORDER BY 
    TotalRevenue DESC
LIMIT 1;

-- Quali sono, se ci sono, i prodotti invenduti? Proponi due approcci risolutivi differenti.
-- Approccio n. 1
SELECT 
    p.ProductID
    , p.ProductName
    , p.Category
FROM 
    Product AS p
LEFT JOIN 
    Sales AS s
ON p.ProductID = s.ProductID
WHERE 
    s.SaleID IS NULL;

-- Approccio n. 2
SELECT 
    p.ProductID
    , p.ProductName
    , p.Category
FROM 
    Product AS p
WHERE 
    NOT EXISTS (
        SELECT 1
        FROM Sales AS s
        WHERE s.ProductID = p.ProductID
    );

-- Esporre l’elenco dei prodotti con la rispettiva ultima data di vendita (la data di vendita più recente)
SELECT 
    p.ProductID
    , p.ProductName
    , MAX(s.SaleDate) AS LastSaleDate
FROM 
    Product AS p
JOIN 
    Sales AS s
ON p.ProductID = s.ProductID
GROUP BY 
    p.ProductID
    , p.ProductName
ORDER BY 
    LastSaleDate DESC;
    
-- Fine esame pratico