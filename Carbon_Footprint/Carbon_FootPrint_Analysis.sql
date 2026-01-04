SELECT * FROM my_database.`carbon footprint survey for college students  (responses)`;

-- 1️⃣ Show all records
SELECT * FROM student_data;

-- 2️⃣ Count total number of students
SELECT COUNT(*) AS total_students FROM student_data;

-- 3️⃣ Count students by gender
SELECT Gender, COUNT(*) AS count
FROM student_data
GROUP BY Gender;

-- 4️⃣ Average age of students
SELECT AVG(CAST(Age AS UNSIGNED)) AS avg_age FROM student_data;

-- 5️⃣ Count of students by course/year
SELECT `Course / Year`, COUNT(*) AS count
FROM student_data
GROUP BY `Course / Year`;

-- 6️⃣ Most common travel mode
SELECT Travel_Mode, COUNT(*) AS count
FROM student_data
GROUP BY Travel_Mode
ORDER BY count DESC
LIMIT 1;

-- 7️⃣ Average travel distance by travel mode
SELECT Travel_Mode, AVG(CAST(Travel_Distance AS UNSIGNED)) AS avg_distance
FROM student_data
GROUP BY Travel_Mode;

-- 8️⃣ Students using AC
SELECT COUNT(*) AS ac_users
FROM student_data
WHERE Use_Of_AC > 0;

-- 9️⃣ Students by diet type
SELECT Diet_Type, COUNT(*) AS count
FROM student_data
GROUP BY Diet_Type;

-- 🔟 Students who eat outside frequently
SELECT COUNT(*) AS outside_food_users
FROM student_data
WHERE Outside_Food = 'Yes';

-- 1️⃣1️⃣ Students who shop online
SELECT COUNT(*) AS online_shoppers
FROM student_data
WHERE Online_Shopping = 'Yes';

-- 1️⃣2️⃣ Electricity units usage summary
SELECT MIN(CAST(Electricity_Units AS UNSIGNED)) AS min_units,
       MAX(CAST(Electricity_Units AS UNSIGNED)) AS max_units,
       AVG(CAST(Electricity_Units AS UNSIGNED)) AS avg_units
FROM student_data;

-- 1️⃣3️⃣ Students by living type
SELECT `Living Type`, COUNT(*) AS count
FROM student_data
GROUP BY `Living Type`;

-- 1️⃣4️⃣ Waste segregation practices
SELECT waste_segregation, COUNT(*) AS count
FROM student_data
GROUP BY waste_segregation;

-- 1️⃣5️⃣ Students using AC and living in PG
SELECT COUNT(*) AS ac_pg_users
FROM student_data
WHERE Use_Of_AC > 0 AND `Living Type` = 'PG';

RENAME TABLE my_database.`carbon footprint survey for college students  (responses)`
TO my_database.student_data;

