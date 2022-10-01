-- -- -- -- -- -- -- -- -- -- -- -- -- Bike Sales Company -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --  
-- Data Overview.
SELECT * 
FROM bike_sales_database.all_data_table;
-- Data Cleaning :
-- • Correction of writing the first column.
ALTER TABLE bike_sales_database.all_data_table
RENAME COLUMN ï»¿ID TO ID;
-- • Change data type format of age column.
ALTER TABLE bike_sales_database.all_data_table
MODIFY Age INT;
-- • Check if there is NULL values in each column.
SELECT * 
FROM bike_sales_database.all_data_table
WHERE "Education" IS NULL;
-- Data Exploration :
-- • Relation between Purchases & Occupation.
SELECT Occupation, COUNT(Purchases)
FROM bike_sales_database.all_data_table
WHERE Purchases = "Yes"
GROUP BY Occupation;
-- • Relation between Purchases & Commute Distance.
SELECT  Distance, COUNT(Purchases)
FROM bike_sales_database.all_data_table
WHERE Purchases = "Yes"
GROUP BY Distance;
-- • Relation between Purchases & Region.
SELECT Region, COUNT(Purchases)
FROM bike_sales_database.all_data_table
WHERE Purchases = "Yes"
GROUP BY Region;
-- • Relation between Purchases & Gender.
SELECT Gender, COUNT(Purchases)
FROM bike_sales_database.all_data_table
WHERE Purchases = "Yes"
GROUP BY Gender;