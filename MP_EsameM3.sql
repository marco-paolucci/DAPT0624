/* NOTA: il seguente codice è stato creato in VS Code, e funziona correttamente.
Se inserito in MySQL Workbench, funziona correttamente */

CREATE DATABASE MP_EsameM3;
USE MP_EsameM3;


-- Creo le tre tabelle identificate
CREATE TABLE Product (
    ProductID INT PRIMARY KEY AUTO_INCREMENT
    , ProductName VARCHAR(50)   -- 
    , Category VARCHAR(50)
    , Price DECIMAL(5, 2)
);

CREATE TABLE Region (
    RegionID INT PRIMARY KEY AUTO_INCREMENT
    , RegionName VARCHAR(50)
    , Country VARCHAR(50)
);

CREATE TABLE Sales (
    SalesID INT PRIMARY KEY AUTO_INCREMENT
    , ProductID INT
    , RegionID INT
    , SaleDate DATE
    , Quantity INT
    , TotalAmount DECIMAL(10, 2)
    , FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
    , FOREIGN KEY (RegionID) REFERENCES Region(RegionID)
);
    

/* Popolo le tabelle con i record da ChatGPT per praticità
NB: i valori ProductID nella tabella Sales sono stati randomizzati
per avere più varietà e non avere tabelle vuote negli esercizi */
INSERT INTO
    Product (ProductName, Category, Price)
VALUES
    ('Toy Car', 'Vehicles', 10.99),
    ('Doll House', 'Dolls', 49.99),
    ('Action Figure', 'Figures', 14.99),
    ('Building Blocks', 'Blocks', 24.99),
    ('Puzzle', 'Puzzles', 9.99),
    ('Rubber Ball', 'Sports', 8.99),
    ('Stuffed Bear', 'Plush', 19.99),
    ('Toy Train', 'Vehicles', 29.99),
    ('Board Game', 'Games', 34.99),
    ('Toy Airplane', 'Vehicles', 15.99),
    ('Action Hero', 'Figures', 17.99),
    ('Stuffed Rabbit', 'Plush', 21.99),
    ('Toy Boat', 'Vehicles', 12.99),
    ('Jigsaw Puzzle', 'Puzzles', 7.99),
    ('Yo-Yo', 'Sports', 5.99),
    ('Kite', 'Outdoor', 9.99),
    ('Dinosaur Figure', 'Figures', 13.99),
    ('Remote Control Car', 'Vehicles', 49.99),
    ('Play Dough', 'Craft', 8.99),
    ('Water Gun', 'Outdoor', 14.99),
    ('Toy Drum', 'Musical', 19.99),
    ('Toy Flute', 'Musical', 9.99),
    ('Toy Helicopter', 'Vehicles', 27.99),
    ('Stuffed Dog', 'Plush', 18.99),
    ('Toy Sword', 'Figures', 12.99),
    ('Bubble Blower', 'Outdoor', 6.99),
    ('Coloring Book', 'Craft', 4.99),
    ('Toy Piano', 'Musical', 29.99),
    ('Toy Soldier', 'Figures', 8.99),
    ('Rocking Horse', 'Outdoor', 59.99),
    ('Toy Gun', 'Figures', 11.99),
    ('Toy Robot', 'Robots', 39.99),
    ('Magic Kit', 'Games', 24.99),
    ('Toy Motorcycle', 'Vehicles', 14.99),
    ('Toy Kitchen Set', 'Games', 34.99),
    ('Puzzle Cube', 'Puzzles', 6.99),
    ('Toy Drum Set', 'Musical', 49.99),
    ('Toy Truck', 'Vehicles', 19.99),
    ('Stuffed Cat', 'Plush', 16.99),
    ('Toy Rocket', 'Vehicles', 25.99),
    ('Skipping Rope', 'Sports', 7.99),
    ('Toy Fishing Set', 'Games', 18.99),
    ('Toy Race Track', 'Vehicles', 59.99),
    ('Toy Police Car', 'Vehicles', 15.99),
    ('Play Tent', 'Outdoor', 29.99),
    ('Toy Drum', 'Musical', 19.99),
    ('Toy Flute', 'Musical', 9.99),
    ('Toy Helicopter', 'Vehicles', 27.99),
    ('Stuffed Dog', 'Plush', 18.99),
    ('Toy Sword', 'Figures', 12.99);

INSERT INTO
    Region (RegionName, Country)
VALUES
    ('North America', 'USA'),
    ('Europe', 'Italy'),
    ('Asia', 'Japan'),
    ('South America', 'Brazil'),
    ('Africa', 'Nigeria'),
    ('Australia', 'Australia'),
    ('Middle East', 'UAE'),
    ('Eastern Europe', 'Poland'),
    ('Scandinavia', 'Sweden'),
    ('Western Europe', 'France'),
    ('Southern Europe', 'Spain'),
    ('Central America', 'Mexico'),
    ('South Asia', 'India'),
    ('East Asia', 'China'),
    ('Southeast Asia', 'Thailand'),
    ('Caribbean', 'Jamaica'),
    ('West Africa', 'Ghana'),
    ('East Africa', 'Kenya'),
    ('Northern Africa', 'Egypt'),
    ('Oceania', 'New Zealand'),
    ('Central Asia', 'Kazakhstan'),
    ('Baltic States', 'Estonia'),
    ('Iberian Peninsula', 'Portugal'),
    ('Benelux', 'Netherlands'),
    ('Caucasus', 'Georgia'),
    ('Eastern Africa', 'Tanzania'),
    ('Western Asia', 'Turkey'),
    ('Northern Europe', 'Denmark'),
    ('Southern Africa', 'South Africa'),
    ('Western Africa', 'Senegal'),
    ('Central Europe', 'Germany'),
    ('North Asia', 'Russia'),
    ('Pacific Islands', 'Fiji'),
    ('Micronesia', 'Palau'),
    ('Melanesia', 'Papua New Guinea'),
    ('Polynesia', 'Samoa'),
    ('Balkan Peninsula', 'Greece'),
    ('Northwest Europe', 'Ireland'),
    ('Adriatic', 'Croatia'),
    ('Andean States', 'Peru'),
    ('Amazon Basin', 'Colombia'),
    ('Greater Antilles', 'Cuba'),
    ('Lesser Antilles', 'Barbados'),
    ('Maghreb', 'Morocco'),
    ('Horn of Africa', 'Somalia'),
    ('Western Mediterranean', 'Malta'),
    ('Eastern Mediterranean', 'Cyprus'),
    ('Greater Arabia', 'Saudi Arabia'),
    ('Indian Subcontinent', 'Sri Lanka');

INSERT INTO
    Sales (ProductID, RegionID, SaleDate, Quantity, TotalAmount)
VALUES
    (1, 1, '2024-08-01', 5, 54.95),
    (7, 2, '2024-08-15', 2, 99.98),
    (12, 3, '2024-08-20', 1, 14.99),
    (25, 4, '2024-08-25', 3, 74.97),
    (36, 5, '2024-09-05', 10, 99.90),
    (19, 6, '2024-09-15', 4, 35.96),
    (5, 7, '2024-09-20', 8, 159.92),
    (42, 8, '2024-09-25', 6, 209.94),
    (17, 9, '2024-10-01', 7, 244.93),
    (11, 10, '2024-10-05', 2, 31.98),
    (34, 11, '2024-10-10', 5, 89.95),
    (23, 12, '2024-10-15', 3, 65.97),
    (18, 13, '2024-10-20', 9, 134.91),
    (7, 14, '2024-10-25', 4, 59.96),
    (50, 15, '2024-11-01', 10, 99.90),
    (3, 16, '2024-11-05', 3, 44.97),
    (16, 17, '2024-11-10', 8, 111.92),
    (25, 18, '2024-11-15', 6, 107.94),
    (31, 19, '2024-11-20', 1, 49.99),
    (45, 20, '2024-11-25', 7, 104.93),
    (4, 21, '2024-11-30', 2, 17.98),
    (21, 22, '2024-09-10', 9, 134.91),
    (13, 23, '2024-09-15', 4, 39.96),
    (9, 24, '2024-09-20', 5, 94.95),
    (7, 25, '2024-09-25', 8, 119.92),
    (47, 26, '2024-10-01', 10, 249.90),
    (26, 27, '2024-10-05', 3, 29.97),
    (32, 28, '2024-10-10', 6, 53.94),
    (18, 29, '2024-10-15', 7, 55.93),
    (6, 30, '2024-10-20', 1, 29.99),
    (14, 31, '2024-10-25', 8, 79.92),
    (39, 32, '2024-11-01', 2, 15.98),
    (11, 33, '2024-11-05', 9, 89.91),
    (2, 34, '2024-11-10', 3, 44.97),
    (27, 35, '2024-11-15', 4, 59.96),
    (48, 36, '2024-11-20', 10, 99.90),
    (10, 37, '2024-11-25', 5, 74.95),
    (36, 38, '2024-11-30', 6, 47.94),
    (4, 39, '2024-09-01', 7, 111.93),
    (29, 40, '2024-09-05', 1, 49.99),
    (35, 41, '2024-09-10', 2, 17.98),
    (9, 42, '2024-09-15', 8, 63.92),
    (44, 43, '2024-09-20', 4, 79.96),
    (20, 44, '2024-09-25', 3, 35.97),
    (41, 45, '2024-10-01', 9, 134.91),
    (8, 46, '2024-10-05', 5, 94.95),
    (22, 47, '2024-10-10', 7, 83.93),
    (15, 48, '2024-10-15', 6, 107.94),
    (33, 49, '2024-10-20', 3, 44.97),
    (5, 37, '2024-10-25', 10, 99.90);


-- ESERCIZI 
-- 1. Verificare che i campi definiti come PK siano univoci
SELECT
    ProductID
FROM
    Product
GROUP BY
    ProductID
HAVING
    COUNT(*) > 1;

SELECT
    RegionID
FROM
    Region
GROUP BY
    RegionID
HAVING
    COUNT(*) > 1;

SELECT
    SalesID
FROM
    Sales
GROUP BY
    SalesID
HAVING
    COUNT(*) > 1;


-- 2. Esporre l’elenco dei soli prodotti venduti e per ognuno di questi il fatturato totale per anno
SELECT
    p.ProductName
    , YEAR(s.SaleDate) Year
    , SUM(s.TotalAmount) TotalRevenue
FROM
    Sales s
JOIN
    Product p ON s.ProductID = p.ProductID
GROUP BY
    p.ProductID, YEAR(s.SaleDate);

-- 3. Esporre il fatturato totale per stato per anno. Ordina il risultato per data e per fatturato decrescente
SELECT
    r.Country
    , YEAR(s.SaleDate) Year
    , SUM(s.TotalAmount) Revenues
FROM
    Sales s
JOIN
    Region r ON s.RegionID = r.RegionID
GROUP BY
    r.Country, YEAR(s.SaleDate)
ORDER BY
    Year, Revenues DESC;

-- 4. Qual è la categoria di articoli maggiormente richiesta dal mercato?
SELECT
    Category
    , SUM(s.Quantity) TotalQuantity
FROM
    Sales s
JOIN
    Product p ON s.ProductID = p.ProductID
GROUP BY
    Category
ORDER BY
    TotalQuantity DESC
LIMIT 5;

/* 5a. Quali sono, se ci sono, i prodotti invenduti?
Soluzione 1 con subquery: prima seleziono i ProductID univoci venduti
e poi seleziono i ProductID che non rientrano nel primo gruppo */
SELECT * 
FROM
    Product p
WHERE
    p.ProductID NOT IN (SELECT
                            DISTINCT ProductID
                        FROM Sales);

/* 5b. Quali sono, se ci sono, i prodotti invenduti?
Soluzione 2 con LEFT JOIN: con questa soluzione posso trovare
i valori di Sales.ProducID nulli e mostrare il rispettivo
Product.ProductID che non è stato venduto */
SELECT p.*
FROM
    Product p
LEFT JOIN
    Sales s ON p.ProductID = s.ProductID
WHERE
    s.SalesID IS NULL;

-- 6. Esporre l’elenco dei prodotti con la rispettiva ultima data di vendita
SELECT
    p.ProductName
    , MAX(s.SaleDate) LastSaleDate
FROM
    Sales s
JOIN
    Product p ON s.ProductID = p.ProductID
GROUP BY
    p.ProductID;