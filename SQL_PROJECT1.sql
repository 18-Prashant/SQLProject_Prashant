-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: employee_management
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `D_ID` int NOT NULL,
  `D_Name` varchar(25) NOT NULL,
  `D_Location` varchar(20) NOT NULL,
  PRIMARY KEY (`D_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Sales','CSMT'),(2,'Marketing','Byculla'),(3,'IT','Dadar'),(4,'HR','Kurla'),(5,'Finance','Ghatkopar'),(6,'BD','Mulund'),(7,'R&D','Thane');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `E_ID` int NOT NULL,
  `D_ID` int DEFAULT NULL,
  `JT_ID` int DEFAULT NULL,
  `E_First_Name` varchar(50) NOT NULL,
  `E_Last_Name` varchar(50) NOT NULL,
  `E_Date_Of_Birth` date NOT NULL,
  `E_Mail` varchar(50) NOT NULL,
  `E_Phone_number` varchar(15) NOT NULL,
  `E_Address` varchar(20) NOT NULL,
  `E_JOINING_DATE` date NOT NULL,
  `E_Status` varchar(25) NOT NULL,
  PRIMARY KEY (`E_ID`),
  KEY `D_ID` (`D_ID`),
  KEY `JT_ID` (`JT_ID`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`D_ID`) REFERENCES `department` (`D_ID`),
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`JT_ID`) REFERENCES `job_title` (`JT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,1,1,'Rohan','Sharma','1990-01-01','rohan.sharma@example.com','9876543210','Mumbai','2020-01-01','Active'),(2,2,4,'Aishwarya','Rai','1992-02-02','aishwarya.rai@example.com','9876543211','Delhi','2020-02-02','Active'),(3,3,7,'Karan','Jain','1991-03-03','karan.jain@example.com','9876543212','Bengaluru','2020-03-03','Active'),(4,4,10,'Priya','Gupta','1993-04-04','priya.gupta@example.com','9876543213','Hyderabad','2020-04-04','Active'),(5,5,13,'Rahul','Kumar','1994-05-05','rahul.kumar@example.com','9876543214','Chennai','2020-05-05','Active'),(6,6,14,'Sneha','Singh','1995-06-06','sneha.singh@example.com','9876543215','Kolkata','2020-06-06','Active'),(7,7,16,'Vivek','Patel','1996-07-07','vivek.patel@example.com','9876543216','Pune','2020-07-07','Active'),(8,1,2,'Raj','Shah','1997-08-08','raj.shah@example.com','9876543217','Mumbai','2020-08-08','Active'),(9,2,5,'Nisha','Joshi','1998-09-09','nisha.joshi@example.com','9876543218','Delhi','2020-09-09','Active'),(10,3,8,'Saurabh','Gupta','1999-10-10','saurabh.gupta@example.com','9876543219','Bengaluru','2020-10-10','Active'),(11,4,11,'Ankita','Mishra','2000-11-11','ankita.mishra@example.com','9876543220','Hyderabad','2020-11-11','Active'),(12,5,12,'Vikas','Sharma','2001-12-12','vikas.sharma@example.com','9876543221','Chennai','2020-12-12','Active'),(13,6,3,'Rashmi','Singh','1990-01-13','rashmi.singh@example.com','9876543222','Kolkata','2020-01-13','Active'),(14,7,6,'Amit','Kumar','1991-02-14','amit.kumar@example.com','9876543223','Pune','2020-02-14','Active'),(15,1,9,'Priyanka','Gupta','1992-03-15','priyanka.gupta@example.com','9876543224','Mumbai','2020-03-15','Active'),(16,2,15,'Rakesh','Sharma','1993-04-16','rakesh.sharma@example.com','9876543225','Delhi','2020-04-16','Active'),(17,3,17,'Sonal','Jain','1994-05-17','sonal.jain@example.com','9876543226','Bengaluru','2020-05-17','Active'),(18,4,1,'Nikhil','Patel','1995-06-18','nikhil.patel@example.com','9876543227','Hyderabad','2020-04-01','Active');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_title`
--

DROP TABLE IF EXISTS `job_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_title` (
  `JT_ID` int NOT NULL,
  `JT_Name` varchar(50) NOT NULL,
  `Salary_Range` varchar(30) NOT NULL,
  PRIMARY KEY (`JT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_title`
--

LOCK TABLES `job_title` WRITE;
/*!40000 ALTER TABLE `job_title` DISABLE KEYS */;
INSERT INTO `job_title` VALUES (1,'Sales Director','20000-25000'),(2,'Sales Manager','18000-23000'),(3,'Sales Consultant','15000-20000'),(4,'Marketing Director','20000-30000'),(5,'Marketing Manager','18000-28000'),(6,'Marketing Assistant','15000-25000'),(7,'IT Manager','40000-50000'),(8,'Developer','30000-45000'),(9,'Technical Support','20000-35000'),(10,'HR Manager','250000-45000'),(11,'Recruiter','15000-25000'),(12,'Finance Auditor','55000-60000'),(13,'Finance Analyst','10000-15000'),(14,'BD Manager','70000-75000'),(15,'Strategic Manager','60000-70000'),(16,'R&D Manager','80000-85000'),(17,'R&D Analyst','50000-75000');
/*!40000 ALTER TABLE `job_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaves_taken`
--

DROP TABLE IF EXISTS `leaves_taken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leaves_taken` (
  `L_ID` int NOT NULL,
  `E_ID` int DEFAULT NULL,
  `Leave_Type` varchar(50) NOT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date NOT NULL,
  PRIMARY KEY (`L_ID`),
  KEY `E_ID` (`E_ID`),
  CONSTRAINT `leaves_taken_ibfk_1` FOREIGN KEY (`E_ID`) REFERENCES `employee` (`E_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaves_taken`
--

LOCK TABLES `leaves_taken` WRITE;
/*!40000 ALTER TABLE `leaves_taken` DISABLE KEYS */;
INSERT INTO `leaves_taken` VALUES (1,1,'Annual Leave','2020-01-05','2020-01-10'),(2,2,'Sick Leave','2020-02-10','2020-02-12'),(3,3,'Casual Leave','2020-03-15','2020-03-17'),(4,4,'Annual Leave','2020-04-20','2020-04-25'),(5,5,'Sick Leave','2020-05-01','2020-05-03'),(6,6,'Casual Leave','2020-06-05','2020-06-07'),(7,7,'Annual Leave','2020-07-10','2020-07-15'),(8,8,'Sick Leave','2020-08-15','2020-08-17'),(9,9,'Casual Leave','2020-09-20','2020-09-22'),(10,10,'Annual Leave','2020-10-25','2020-10-30'),(11,11,'Sick Leave','2020-11-01','2020-11-03'),(12,12,'Casual Leave','2020-12-05','2020-12-07'),(13,13,'Annual Leave','2020-01-15','2020-01-20'),(14,14,'Sick Leave','2020-02-20','2020-02-22'),(15,15,'Casual Leave','2020-03-25','2020-03-27'),(16,16,'Annual Leave','2020-04-30','2020-05-05'),(17,17,'Sick Leave','2020-06-10','2020-06-12'),(18,18,'Casual Leave','2020-07-20','2020-07-22');
/*!40000 ALTER TABLE `leaves_taken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary` (
  `Sal_ID` int NOT NULL,
  `E_ID` int DEFAULT NULL,
  `Sal_Amt` double NOT NULL,
  `Payment_Date` date NOT NULL,
  PRIMARY KEY (`Sal_ID`),
  KEY `E_ID` (`E_ID`),
  CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`E_ID`) REFERENCES `employee` (`E_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (1,1,22000,'2020-01-01'),(2,2,21000,'2020-02-01'),(3,3,42000,'2020-03-01'),(4,4,28000,'2020-04-01'),(5,5,62000,'2020-05-01'),(6,6,18000,'2020-06-01'),(7,7,45000,'2020-07-01'),(8,8,20000,'2020-08-01'),(9,9,25000,'2020-09-01'),(10,10,30000,'2020-10-01'),(11,11,22000,'2020-11-01'),(12,12,35000,'2020-12-01'),(13,13,28000,'2020-01-01'),(14,14,42000,'2020-02-01'),(15,15,25000,'2020-03-01'),(16,16,30000,'2020-04-01'),(17,17,22000,'2020-05-01'),(18,18,35000,'2020-06-01');
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'employee_management'
--
/*!50003 DROP PROCEDURE IF EXISTS `Check_Avg_Max_Min_SAL_BY_DEPARTMENT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Check_Avg_Max_Min_SAL_BY_DEPARTMENT`(inout CHECK_ varchar(10), in Department_Name varchar(25))
BEGIN
if CHECK_ = "avg" then
	select  avg(salary.Sal_Amt) as Average_Salary from Employee
	inner join salary on employee.E_ID = salary.E_ID
    inner join department on employee.D_ID = department.D_ID
    where department.D_Name = Department_Name;
    
elseif CHECK_ = "max" then
	select  max(salary.Sal_Amt) as MAX_Salary from Employee
	inner join salary on employee.E_ID = salary.E_ID
    inner join department on employee.D_ID = department.D_ID
    where department.D_Name = Department_Name;

elseif CHECK_ = "min" then
	select  min(salary.Sal_Amt) as MIN_Salary from Employee
	inner join salary on employee.E_ID = salary.E_ID
    inner join department on employee.D_ID = department.D_ID
    where department.D_Name = Department_Name;

end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Check_Employees_Department_&_Job_Title_BY_E_ID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Check_Employees_Department_&_Job_Title_BY_E_ID`(in EmployeeID int)
BEGIN
select E_ID,E_First_Name,E_Last_Name,department.D_ID,D_Name,job_title.JT_ID,JT_Name from employee 
inner join department 
on employee.D_ID=department.D_ID 
inner join job_title 
on employee.JT_ID=job_title.JT_ID
where employee.E_ID=EmployeeID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Employees_By_Department` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Employees_By_Department`(in Department_Name varchar(25))
BEGIN
select department.D_ID,E_ID,E_First_Name,E_Last_Name,D_Name from employee 
left join department 
on employee.D_ID=department.D_ID 
where department.D_Name
in (select D_Name from department where department.D_Name=Department_Name);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Employees_Taken_Leaves` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Employees_Taken_Leaves`(in Leave_Type varchar(25))
BEGIN
select leaves_taken.E_ID,E_First_Name,E_Last_Name,E_Mail,Leave_Type,Start_Date,End_Date from employee 
left join leaves_taken 
on employee.E_ID=leaves_taken.E_ID 
where leaves_taken.Leave_Type 
in (select Leave_Type from leaves_taken 
	where leaves_taken.Leave_Type = Leave_Type);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Department_JobTitle_Counts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Department_JobTitle_Counts`()
BEGIN
    SELECT department.D_Name, Job_title.JT_Name, COUNT(employee.E_ID) AS EmployeeCount
    FROM EMPLOYEE 
    JOIN DEPARTMENT  
    ON employee.D_ID = department.D_ID
    JOIN JOB_TITLE  
    ON employee.JT_ID = JOB_TITLE.JT_ID
    GROUP BY DEPARTMENT.D_Name, JOB_TITLE.JT_Name
    ORDER BY EmployeeCount DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-08 12:06:16
