create database Car_Insurance;
use Car_Insurance;
select * from car_insurance;


alter table car_insurance change column ï»¿ID Id_no varchar(50);
-- Total claim Amt
SELECT 
    CONCAT(ROUND(SUM(Claim_Amount) / 1000000, 2),
            'M') AS Total_claim_amt
FROM
    car_insurance;


-- Total Policies
SELECT 
    CONCAT(ROUND(COUNT(Id_no) / 1000, 2), 'K') AS total_policies
FROM
    car_insurance;



-- Avg Claim Frequency
SELECT 
    AVG(claim_freq) AS Claim_freq
FROM
    car_insurance;

-- Avg claim amount
SELECT 
    CONCAT(ROUND(AVG(claim_Amount) / 1000, 1), 'K') AS Avg_claim_amt
FROM
    car_insurance;

-- Total male count
SELECT 
    CONCAT(ROUND(COUNT(Id_no) / 1000, 2), 'K') AS Male_count
FROM
    car_insurance
WHERE
    Gender = 'Male';

-- Total Female count
SELECT 
    CONCAT(ROUND(COUNT(Id_no) / 1000, 2), 'K') AS Male_count
FROM
    car_insurance
WHERE
    Gender = 'Female';

-- Total claim amt by car use
SELECT 
    Car_use, ROUND(SUM(Claim_Amount), 2) AS claim_amt
FROM
    car_insurance
GROUP BY Car_use;

-- Total Polices by car use
SELECT 
   Car_use, CONCAT(ROUND(COUNt(Id_no)/1000, 2),"K") AS Total_Polices
FROM
    car_insurance
GROUP BY Car_use;


-- Total claim amt by car make
SELECT 
    Car_Company, ROUND(SUM(Claim_Amount), 2) AS claim_amt
FROM
    car_insurance
GROUP BY Car_Company
ORDER BY claim_amt DESC
LIMIT 10;

-- Total Polices  by car make
SELECT 
    Car_Company, CONCAT(ROUND(COUNT(Id_no)/1000, 2),"K") AS Total_Polices
FROM
    car_insurance
GROUP BY Car_Company
ORDER BY Total_Polices DESC
LIMIT 10;

-- Total claim amt by car use
SELECT 
    Coverage_zone,
    claim_amt,
    concat(ROUND(claim_amt / SUM(claim_amt) OVER () * 100, 2),"%") AS percentage
FROM (
    SELECT 
        Coverage_zone, 
        SUM(Claim_Amount)AS claim_amt
    FROM car_insurance
    GROUP BY Coverage_zone
) AS sub;
-- Total Polices by car use
SELECT 
    Coverage_zone, CONCAT(ROUND(COUNT(Id_no)/1000, 3),"K") AS claim_amt
FROM
    car_insurance
GROUP BY Coverage_zone;

SELECT 
    Coverage_zone,
    Total_Polices,
    CONCAT(ROUND(Total_Polices * 100.0 / SUM(Total_Polices) OVER (), 2), '%') AS percentage
FROM (
    SELECT 
        Coverage_zone, 
        CONCAT(ROUND(COUNT(Id_no)/1000,3),"K") AS Total_Polices
    FROM car_insurance
    GROUP BY Coverage_zone
) AS sub;


-- Total claim amt by car year
SELECT 
    Car_Year, ROUND(SUM(Claim_Amount), 2) AS claim_amt
FROM
    car_insurance
GROUP BY Car_Year;

-- Total claim amt by car year
SELECT 
    Car_Year, CONCAT(ROUND(SUM(Claim_Amount)/1000000, 2),"M") AS claim_amt
FROM
    car_insurance
GROUP BY Car_Year;

-- Total Polices By Car_year
SELECT 
    Car_Year, concat(ROUND(count(Id_no)/1000, 2),"K") AS claim_amt
FROM
    car_insurance
GROUP BY Car_Year;
-- Total claim amt by Kids Driving
SELECT 
    Kids_Driving, ROUND(SUM(Claim_Amount), 2) AS claim_amt
FROM
    car_insurance
GROUP BY Kids_Driving;
-- Total Polices By Kids Driving
SELECT 
    Kids_Driving, CONCAT(ROUND(Count(Id_no)/1000, 3),"K")AS Total_Polices
FROM
    car_insurance
GROUP BY Kids_Driving;

-- Total claim amt by Education
SELECT 
    Education,
    claim_amt,
    concat(ROUND(claim_amt / SUM(claim_amt) OVER () * 100, 2),"%") AS percentage
FROM (
    SELECT 
        Education, 
        SUM(Claim_Amount)AS claim_amt
    FROM car_insurance
    GROUP BY Education
) AS sub;


-- Total Claim Polices By Education
SELECT 
    Education,
    Total_Polices,
    CONCAT(ROUND(Total_Polices * 100.0 / SUM(Total_Polices) OVER (), 2), '%') AS percentage
FROM (
    SELECT 
        Education, 
        CONCAT(ROUND(COUNT(Id_no)/1000,3),"K") AS Total_Polices
    FROM car_insurance
    GROUP BY Education
) AS sub;

SELECT 
    Education, CONCAT(ROUND(Count(Id_no)/1000, 3),"K")AS Total_Polices
FROM
    car_insurance
GROUP BY Education;

-- Total claim amt by Martial Status and Education
SELECT 
    Education,
    Marital_Status,
    CONCAT(ROUND(SUM(Claim_Amount)/1000000, 2),"M") AS claim_amt
FROM
    car_insurance
GROUP BY Education , Marital_Status;


-- Total Polices by Martial Status and Education
SELECT 
    Education,
    Marital_Status,
    CONCAT(ROUND(COUNT(Id_no)/1000, 3),"K") AS Total_Polices
FROM
    car_insurance
GROUP BY Education , Marital_Status;
-- Total Claim amt By age Group
SELECT 
    CASE
        WHEN TIMESTAMPDIFF(YEAR, STR_TO_DATE(BirthDate, '%d-%m-%Y'), CURDATE()) BETWEEN 15 AND 25 THEN '15-25'
        WHEN TIMESTAMPDIFF(YEAR, STR_TO_DATE(BirthDate, '%d-%m-%Y'), CURDATE()) BETWEEN 26 AND 35 THEN '25-35'
        WHEN TIMESTAMPDIFF(YEAR, STR_TO_DATE(BirthDate, '%d-%m-%Y'), CURDATE()) BETWEEN 36 AND 45 THEN '36-45'
        WHEN TIMESTAMPDIFF(YEAR, STR_TO_DATE(BirthDate, '%d-%m-%Y'), CURDATE()) BETWEEN 46 AND 55 THEN '46-55'
        WHEN TIMESTAMPDIFF(YEAR, STR_TO_DATE(BirthDate, '%d-%m-%Y'), CURDATE()) BETWEEN 56 AND 65 THEN '56-65'
        WHEN TIMESTAMPDIFF(YEAR, STR_TO_DATE(BirthDate, '%d-%m-%Y'), CURDATE()) BETWEEN 66 AND 75 THEN '66-75'
        ELSE '75+'
    END AS Age_Group,
    CONCAT(ROUND(SUM(Claim_Amount)/1000000,2),"M") AS Total_Claim
FROM car_insurance
GROUP BY Age_Group
ORDER BY Age_Group;

-- Total Polices By Age Group
SELECT 
    CASE
        WHEN TIMESTAMPDIFF(YEAR, STR_TO_DATE(BirthDate, '%d-%m-%Y'), CURDATE()) BETWEEN 15 AND 25 THEN '15-25'
        WHEN TIMESTAMPDIFF(YEAR, STR_TO_DATE(BirthDate, '%d-%m-%Y'), CURDATE()) BETWEEN 26 AND 35 THEN '25-35'
        WHEN TIMESTAMPDIFF(YEAR, STR_TO_DATE(BirthDate, '%d-%m-%Y'), CURDATE()) BETWEEN 36 AND 45 THEN '36-45'
        WHEN TIMESTAMPDIFF(YEAR, STR_TO_DATE(BirthDate, '%d-%m-%Y'), CURDATE()) BETWEEN 46 AND 55 THEN '46-55'
        WHEN TIMESTAMPDIFF(YEAR, STR_TO_DATE(BirthDate, '%d-%m-%Y'), CURDATE()) BETWEEN 56 AND 65 THEN '56-65'
        WHEN TIMESTAMPDIFF(YEAR, STR_TO_DATE(BirthDate, '%d-%m-%Y'), CURDATE()) BETWEEN 66 AND 75 THEN '66-75'
        ELSE '75+'
    END AS Age_Group,
    CONCAT(ROUND(COUNT(Id_no)/1000,2),"K") AS Total_Polices
FROM car_insurance
GROUP BY Age_Group
ORDER BY Age_Group;

