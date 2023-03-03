-- Video game sales FROM 1980 TO 2020
SELECT * FROM vgsales$;

SELECT * FROM vgsales$
WHERE Year IS NULL;

SELECT DISTINCT(Platform)
FROM vgsales$

--Top ten games have highest sales globalLy
SELECT Rank,Name,Platform,Publisher,Year 
FROM vgsales$
WHERE Rank<11;



--TOTAL SALES IN EACH REGION GROUP BY PUBLISHER 

SELECT Publisher,SUM(NA_Sales) AS Total_NA_Sales,SUM(EU_Sales) AS Total_Europe_Sales,
SUM(JP_Sales) AS Total_Japanese_Sales,SUM(Other_Sales) AS Other_Region_Sales
FROM vgsales$
GROUP BY Publisher;

--Total number of games for each publisher
SELECT Publisher,COUNT(Name) AS Total_Games
FROM vgsales$
GROUP BY Publisher;

--Highest sales in each year
SELECT MAX(Global_Sales) AS Global_Highest_Sales
FROM vgsales$
GROUP BY Year
ORDER BY Year ;

--Total sales in each region group by Genre

SELECT Genre,SUM(NA_Sales) AS Total_NA_Sales,SUM(EU_Sales) AS Total_Europe_Sales,
SUM(JP_Sales) AS Total_Japanese_Sales,SUM(Other_Sales) AS Other_Region_Sales
FROM vgsales$
GROUP BY Genre;