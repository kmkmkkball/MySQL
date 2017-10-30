-- Ensure you've run Item03StructureAndData.sql
-- in the Sample Databases folder in order to run this example. 

-- UNION 指令的目的是將兩個 SQL 語句的結果合併起來。從這個角度來看 ， 
-- UNION 跟 JOIN 有些許類似，因為這兩個指令都可以由多個表格中擷取資料。 
-- UNION 的一個限制是兩個 SQL 語句所產生的欄位需要是同樣的資料種類。
-- 另外，當我們用 UNION 這個指令時，我們只會看到不同的資料值 (類似 SELECT DISTINCT)。
USE Item03Example;

SELECT ID AS DrawingID, Predecessor_1 AS Predecessor
FROM Assignments WHERE Predecessor_1 IS NOT NULL
UNION
SELECT ID AS DrawingID, Predecessor_2 AS Predecessor
FROM Assignments WHERE Predecessor_2 IS NOT NULL
UNION
SELECT ID AS DrawingID, Predecessor_3 AS Predecessor
FROM Assignments WHERE Predecessor_3 IS NOT NULL
UNION
SELECT ID AS DrawingID, Predecessor_4 AS Predecessor
FROM Assignments WHERE Predecessor_4 IS NOT NULL
UNION
SELECT ID AS DrawingID, Predecessor_5 AS Predecessor
FROM Assignments WHERE Predecessor_5 IS NOT NULL
ORDER BY DrawingID, Predecessor;
