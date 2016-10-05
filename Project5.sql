CREATE TABLE Student(
	FName Varchar2(30) Not Null,
	LName Varchar2(30) Not Null,
	MI    Varchar2(3)  Not Null,
	SSN   Int(9),      
	Sex   char(1)      Not Null,
	
	
	Primary Key (SSN),




);

CREATE TABLE `aduff463_db`.`Student` (
 `FName` VARCHAR(30) NOT NULL , 
 `MI` CHAR(1) NOT NULL , 
 `LName` VARCHAR(30) NOT NULL , 
 `SSN` INT(9) NOT NULL , 
 `StuNum` INT(10) NOT NULL AUTO_INCREMENT , 
 `Birth_Date` DATE NOT NULL , 
 `SerialNumber` VARCHAR(13), 
 `StudentClass` VARCHAR(20) NOT NULL , 
 `DegreeLevel` VARCHAR(20) NOT NULL , 
 `minor` VARCHAR(20) NOT NULL , PRIMARY KEY (`StuNum`) , UNIQUE (`SerialNumber`),
 FOREIGN KEY (`SerialNumber`) REFERENCES `aduff463_db`.`Laptop`(`SerialNum`) ON DELETE RESTRICT ON UPDATE RESTRICT;
  ) ENGINE = InnoDB;
	
 CREATE TABLE `aduff463_db`.`Laptop` ( 
 `SerialNum` INT(13) NOT NULL , 
 `OpSys` VARCHAR(30) NOT NULL , 
 `Manufacturer` VARCHAR(30) NOT NULL , 
 `Date_Build` DATE NOT NULL , 
 PRIMARY KEY (`SerialNum`) ) ENGINE = InnoDB;
 
 CREATE TABLE `aduff463_db`.`Department` ( 
 `DepName` VARCHAR(30) NOT NULL , 
 `Dep_Code` INT(10) NOT NULL AUTO_INCREMENT , 
 `College` VARCHAR(30) NOT NULL , 
 PRIMARY KEY (`Dep_Code`) ) ENGINE = InnoDB;
 
 CREATE TABLE `aduff463_db`.`Enroll` ( 
 `StuID` INT(10) NOT NULL , 
 `Senester` VARCHAR(30) NOT NULL , 
 `Year` VARCHAR(30) NOT NULL , 
 `SecNum` INT(10) NOT NULL , 
 `LetterGrade` CHAR(1) NOT NULL , 
 PRIMARY KEY (`StuID`, `Semester`, `Year`, `SecNum`) ) ENGINE = InnoDB;