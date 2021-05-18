######################################################################################################
#Create the Schema
CREATE DATABASE Assignment;
######################################################################################################
#Creating the 6 Tables for 20 days and 50 days moving average
CREATE  TABLE IF NOT EXISTS `Assignment`.`bajaj1` (
  `date` DATE ,
  `Close Price` DOUBLE,
  `20_Day_MA` DOUBLE ,
  `50_Day_MA` DOUBLE );
  
  CREATE  TABLE IF NOT EXISTS `Assignment`.`eicher1` (
  `date` DATE ,
  `Close Price` DOUBLE,
  `20_Day_MA` DOUBLE ,
  `50_Day_MA` DOUBLE );
  
   CREATE  TABLE IF NOT EXISTS `Assignment`.`hero1` (
  `date` DATE ,
  `Close Price` DOUBLE,
  `20_Day_MA` DOUBLE ,
  `50_Day_MA` DOUBLE );
  
   CREATE  TABLE IF NOT EXISTS `Assignment`.`infosys1` (
  `date` DATE ,
  `Close Price` DOUBLE,
  `20_Day_MA` DOUBLE ,
  `50_Day_MA` DOUBLE );
  
   CREATE  TABLE IF NOT EXISTS `Assignment`.`tcs1` (
  `date` DATE ,
  `Close Price` DOUBLE,
  `20_Day_MA` DOUBLE ,
  `50_Day_MA` DOUBLE );
  
   CREATE  TABLE IF NOT EXISTS `Assignment`.`tvs1` (
  `date` DATE ,
  `Close Price` DOUBLE,
  `20_Day_MA` DOUBLE ,
  `50_Day_MA` DOUBLE );
######################################################################################################
  #Creating the master table containing the close price for all 6 stocks
   CREATE  TABLE IF NOT EXISTS `Assignment`.`close_price` (
  `date` DATE ,
  `Bajaj` DOUBLE,
  `TCS` DOUBLE,
  `TVS` DOUBLE,
  `Infosys` DOUBLE,
  `Eicher` DOUBLE,
  `Hero` DOUBLE
  );
######################################################################################################
  #Creating 6 tables to identify buy or sell signal for each stock
  CREATE  TABLE IF NOT EXISTS `Assignment`.`bajaj2` (
  `date` DATE ,
  `Close Price` DOUBLE,
  `Signal` VARCHAR(32) );
  
  CREATE  TABLE IF NOT EXISTS `Assignment`.`eicher2` (
  `date` DATE ,
  `Close Price` DOUBLE,
  `Signal` VARCHAR(32) );
  
   CREATE  TABLE IF NOT EXISTS `Assignment`.`hero2` (
  `date` DATE ,
  `Close Price` DOUBLE,
  `Signal` VARCHAR(32) );
  
   CREATE  TABLE IF NOT EXISTS `Assignment`.`infosys2` (
  `date` DATE ,
  `Close Price` DOUBLE,
  `Signal` VARCHAR(32) );
  
   CREATE  TABLE IF NOT EXISTS `Assignment`.`tcs2` (
  `date` DATE ,
  `Close Price` DOUBLE,
  `Signal` VARCHAR(32) );
  
   CREATE  TABLE IF NOT EXISTS `Assignment`.`tvs2` (
  `date` DATE ,
  `Close Price` DOUBLE,
  `Signal` VARCHAR(32) );
######################################################################################################
 #Check the column names
  desc BAJAJ_AUTO;
######################################################################################################
  #Correct the column names as space is not allowed in the SQL
ALTER TABLE `assignment`.`bajaj_auto` 
CHANGE COLUMN `Open Price` `Open_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `High Price` `High_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `Low Price` `Low_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `Close Price` `Close_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `No.of Shares` `No_of_Shares` INT(11) NULL DEFAULT NULL ,
CHANGE COLUMN `No. of Trades` `No_of_Trades` INT(11) NULL DEFAULT NULL ,
CHANGE COLUMN `Total Turnover (Rs.)` `Total_Turnover_Rs` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `Deliverable Quantity` `Deliverable_Quantity` INT(11) NULL DEFAULT NULL ,
CHANGE COLUMN `% Deli. Qty to Traded Qty` `PER_Del_QtY_to_Traded_Qty` DOUBLE NULL DEFAULT NULL ;

#Correct the column names for all the 6 tables
ALTER TABLE `assignment`.`eicher_motors` 
CHANGE COLUMN `Open Price` `Open_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `High Price` `High_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `Low Price` `Low_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `Close Price` `Close_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `No.of Shares` `No_of_Shares` INT(11) NULL DEFAULT NULL ,
CHANGE COLUMN `No. of Trades` `No_of_Trades` INT(11) NULL DEFAULT NULL ,
CHANGE COLUMN `Total Turnover (Rs.)` `Total_Turnover_Rs` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `Deliverable Quantity` `Deliverable_Quantity` INT(11) NULL DEFAULT NULL ,
CHANGE COLUMN `% Deli. Qty to Traded Qty` `PER_Del_QtY_to_Traded_Qty` DOUBLE NULL DEFAULT NULL ;

ALTER TABLE `assignment`.`hero_motocorp` 
CHANGE COLUMN `Open Price` `Open_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `High Price` `High_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `Low Price` `Low_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `Close Price` `Close_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `No.of Shares` `No_of_Shares` INT(11) NULL DEFAULT NULL ,
CHANGE COLUMN `No. of Trades` `No_of_Trades` INT(11) NULL DEFAULT NULL ,
CHANGE COLUMN `Total Turnover (Rs.)` `Total_Turnover_Rs` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `Deliverable Quantity` `Deliverable_Quantity` INT(11) NULL DEFAULT NULL ,
CHANGE COLUMN `% Deli. Qty to Traded Qty` `PER_Del_QtY_to_Traded_Qty` DOUBLE NULL DEFAULT NULL ;

ALTER TABLE `assignment`.`infosys` 
CHANGE COLUMN `Open Price` `Open_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `High Price` `High_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `Low Price` `Low_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `Close Price` `Close_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `No.of Shares` `No_of_Shares` INT(11) NULL DEFAULT NULL ,
CHANGE COLUMN `No. of Trades` `No_of_Trades` INT(11) NULL DEFAULT NULL ,
CHANGE COLUMN `Total Turnover (Rs.)` `Total_Turnover_Rs` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `Deliverable Quantity` `Deliverable_Quantity` INT(11) NULL DEFAULT NULL ,
CHANGE COLUMN `% Deli. Qty to Traded Qty` `PER_Del_QtY_to_Traded_Qty` DOUBLE NULL DEFAULT NULL ;

ALTER TABLE `assignment`.`tcs` 
CHANGE COLUMN `Open Price` `Open_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `High Price` `High_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `Low Price` `Low_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `Close Price` `Close_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `No.of Shares` `No_of_Shares` INT(11) NULL DEFAULT NULL ,
CHANGE COLUMN `No. of Trades` `No_of_Trades` INT(11) NULL DEFAULT NULL ,
CHANGE COLUMN `Total Turnover (Rs.)` `Total_Turnover_Rs` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `Deliverable Quantity` `Deliverable_Quantity` INT(11) NULL DEFAULT NULL ,
CHANGE COLUMN `% Deli. Qty to Traded Qty` `PER_Del_QtY_to_Traded_Qty` DOUBLE NULL DEFAULT NULL ;

ALTER TABLE `assignment`.`tvs_motors` 
CHANGE COLUMN `Open Price` `Open_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `High Price` `High_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `Low Price` `Low_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `Close Price` `Close_Price` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `No.of Shares` `No_of_Shares` INT(11) NULL DEFAULT NULL ,
CHANGE COLUMN `No. of Trades` `No_of_Trades` INT(11) NULL DEFAULT NULL ,
CHANGE COLUMN `Total Turnover (Rs.)` `Total_Turnover_Rs` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `Deliverable Quantity` `Deliverable_Quantity` INT(11) NULL DEFAULT NULL ,
CHANGE COLUMN `% Deli. Qty to Traded Qty` `PER_Del_QtY_to_Traded_Qty` DOUBLE NULL DEFAULT NULL ;
######################################################################################################  
#IMPORTING DATA FOR MOVING AVERGARE FOR RESPECTIVE STOCKS
INSERT INTO bajaj1 (
SELECT STR_TO_DATE(bajaj_curr.DATE, '%d-%M-%Y') AS bDATE,
       Close_Price,
       IF((ROW_NUMBER() OVER (ORDER BY STR_TO_DATE(bajaj_curr.DATE, '%d-%M-%Y')))>19,(AVG(Close_Price) OVER (ORDER BY (STR_TO_DATE(bajaj_curr.DATE, '%d-%M-%Y')) ASC ROWS 19 PRECEDING)),NULL) AS MA20,
       IF((ROW_NUMBER() OVER (ORDER BY STR_TO_DATE(bajaj_curr.DATE, '%d-%M-%Y')))>49,(AVG(Close_Price) OVER (ORDER BY (STR_TO_DATE(bajaj_curr.DATE, '%d-%M-%Y')) ASC ROWS 49 PRECEDING)),NULL) AS MA50
FROM   BAJAJ_AUTO bajaj_curr);

INSERT INTO eicher1 (
SELECT STR_TO_DATE(eicher_curr.DATE, '%d-%M-%Y') AS bDATE,
       Close_Price,
       IF((ROW_NUMBER() OVER (ORDER BY STR_TO_DATE(eicher_curr.DATE, '%d-%M-%Y')))>19,(AVG(Close_Price) OVER (ORDER BY (STR_TO_DATE(eicher_curr.DATE, '%d-%M-%Y')) ASC ROWS 19 PRECEDING)),NULL) AS MA20,
       IF((ROW_NUMBER() OVER (ORDER BY STR_TO_DATE(eicher_curr.DATE, '%d-%M-%Y')))>49,(AVG(Close_Price) OVER (ORDER BY (STR_TO_DATE(eicher_curr.DATE, '%d-%M-%Y')) ASC ROWS 49 PRECEDING)),NULL) AS MA50
FROM   EICHER_MOTORS eicher_curr);

INSERT INTO hero1 (
SELECT STR_TO_DATE(hero_curr.DATE, '%d-%M-%Y') AS bDATE,
       Close_Price,
       IF((ROW_NUMBER() OVER (ORDER BY STR_TO_DATE(hero_curr.DATE, '%d-%M-%Y')))>19,(AVG(Close_Price) OVER (ORDER BY (STR_TO_DATE(hero_curr.DATE, '%d-%M-%Y')) ASC ROWS 19 PRECEDING)),NULL) AS MA20,
       IF((ROW_NUMBER() OVER (ORDER BY STR_TO_DATE(hero_curr.DATE, '%d-%M-%Y')))>49,(AVG(Close_Price) OVER (ORDER BY (STR_TO_DATE(hero_curr.DATE, '%d-%M-%Y')) ASC ROWS 49 PRECEDING)),NULL) AS MA50
FROM   HERO_MOTOCORP hero_curr);

INSERT INTO infosys1 (
SELECT STR_TO_DATE(infosys_curr.DATE, '%d-%M-%Y') AS bDATE,
       Close_Price,
       IF((ROW_NUMBER() OVER (ORDER BY STR_TO_DATE(infosys_curr.DATE, '%d-%M-%Y')))>19,(AVG(Close_Price) OVER (ORDER BY (STR_TO_DATE(infosys_curr.DATE, '%d-%M-%Y')) ASC ROWS 19 PRECEDING)),NULL) AS MA20,
       IF((ROW_NUMBER() OVER (ORDER BY STR_TO_DATE(infosys_curr.DATE, '%d-%M-%Y')))>49,(AVG(Close_Price) OVER (ORDER BY (STR_TO_DATE(infosys_curr.DATE, '%d-%M-%Y')) ASC ROWS 49 PRECEDING)),NULL) AS MA50
FROM   INFOSYS infosys_curr);

INSERT INTO tcs1 (
SELECT STR_TO_DATE(tcs_curr.DATE, '%d-%M-%Y') AS bDATE,
       Close_Price,
       IF((ROW_NUMBER() OVER (ORDER BY STR_TO_DATE(tcs_curr.DATE, '%d-%M-%Y')))>19,(AVG(Close_Price) OVER (ORDER BY (STR_TO_DATE(tcs_curr.DATE, '%d-%M-%Y')) ASC ROWS 19 PRECEDING)),NULL) AS MA20,
       IF((ROW_NUMBER() OVER (ORDER BY STR_TO_DATE(tcs_curr.DATE, '%d-%M-%Y')))>49,(AVG(Close_Price) OVER (ORDER BY (STR_TO_DATE(tcs_curr.DATE, '%d-%M-%Y')) ASC ROWS 49 PRECEDING)),NULL) AS MA50
FROM   TCS tcs_curr);

INSERT INTO tvs1 (
SELECT STR_TO_DATE(tvs_curr.DATE, '%d-%M-%Y') AS bDATE,
       Close_Price,
       IF((ROW_NUMBER() OVER (ORDER BY STR_TO_DATE(tvs_curr.DATE, '%d-%M-%Y')))>19,(AVG(Close_Price) OVER (ORDER BY (STR_TO_DATE(tvs_curr.DATE, '%d-%M-%Y')) ASC ROWS 19 PRECEDING)),NULL) AS MA20,
       IF((ROW_NUMBER() OVER (ORDER BY STR_TO_DATE(tvs_curr.DATE, '%d-%M-%Y')))>49,(AVG(Close_Price) OVER (ORDER BY (STR_TO_DATE(tvs_curr.DATE, '%d-%M-%Y')) ASC ROWS 49 PRECEDING)),NULL) AS MA50
FROM   TVS_MOTORS tvs_curr);
#####################################################################################################
#Importing data for the master table i.e Close_price
INSERT INTO CLOSE_PRICE (
SELECT STR_TO_DATE(bajaj.DATE, '%d-%M-%Y') AS DATE
,bajaj.close_price as bajaj
,tcs.close_price as tcs
,tvs.close_price as tvs
,infosys.close_price as infosys
,eicher.close_price as eicher
,hero.close_price as hero
FROM BAJAJ_AUTO bajaj
INNER JOIN TCS tcs ON tcs.DATE = bajaj.DATE
INNER JOIN TVS_MOTORS tvs ON tvs.DATE = bajaj.DATE
INNER JOIN INFOSYS infosys ON infosys.DATE = bajaj.DATE
INNER JOIN EICHER_MOTORS eicher ON eicher.DATE = bajaj.DATE
INNER JOIN HERO_MOTOCORP hero ON hero.DATE = bajaj.DATE
ORDER BY 1 ASC);
#####################################################################################################
#Generating buy and sell signal for the Stocks
#Since there should be a significant change, hence using the floor function and keeping the 1,0 and -1 values as hold
INSERT INTO BAJAJ2 ( 
SELECT baj.date,
Close_Price,
CASE
#WHEN (ROW_NUMBER() OVER (ORDER BY baj.date ASC) < 50 THEN 'Hold'
	WHEN FLOOR(baj.20_Day_MA-baj.50_Day_MA)>1 THEN "Buy"
	WHEN FLOOR(baj.20_Day_MA-baj.50_Day_MA)<-1 THEN "Sell"
	ELSE "HOLD"
END as "Signal"
FROM BAJAJ1 baj
ORDER BY 1 ASC);

INSERT INTO EICHER2 ( 
SELECT eicher.date,
Close_Price,
CASE
#WHEN (ROW_NUMBER() OVER (ORDER BY baj.date ASC) < 50 THEN 'Hold'
	WHEN FLOOR(eicher.20_Day_MA-eicher.50_Day_MA)>1 THEN "Buy"
	WHEN FLOOR(eicher.20_Day_MA-eicher.50_Day_MA)<-1 THEN "Sell"
	ELSE "HOLD"
END as "Signal"
FROM EICHER1 eicher
ORDER BY 1 ASC);

INSERT INTO HERO2 ( 
SELECT hero.date,
Close_Price,
CASE
#WHEN (ROW_NUMBER() OVER (ORDER BY hero.date ASC) < 50 THEN 'Hold'
	WHEN FLOOR(hero.20_Day_MA-hero.50_Day_MA)>1 THEN "Buy"
	WHEN FLOOR(hero.20_Day_MA-hero.50_Day_MA)<-1 THEN "Sell"
	ELSE "HOLD"
END as "Signal"
FROM HERO1 hero
ORDER BY 1 ASC);

INSERT INTO INFOSYS2 ( 
SELECT infosys.date,
Close_Price,
CASE
#WHEN (ROW_NUMBER() OVER (ORDER BY baj.date ASC) < 50 THEN 'Hold'
	WHEN FLOOR(infosys.20_Day_MA-infosys.50_Day_MA)>1 THEN "Buy"
	WHEN FLOOR(infosys.20_Day_MA-infosys.50_Day_MA)<-1 THEN "Sell"
	ELSE "HOLD"
END as "Signal"
FROM INFOSYS1 infosys
ORDER BY 1 ASC);

INSERT INTO TCS2 ( 
SELECT tcs.date,
Close_Price,
CASE
#WHEN (ROW_NUMBER() OVER (ORDER BY baj.date ASC) < 50 THEN 'Hold'
	WHEN FLOOR(tcs.20_Day_MA-tcs.50_Day_MA)>1 THEN "Buy"
	WHEN FLOOR(tcs.20_Day_MA-tcs.50_Day_MA)<-1 THEN "Sell"
	ELSE "HOLD"
END as "Signal"
FROM TCS1 tcs
ORDER BY 1 ASC);

INSERT INTO TVS2 ( 
SELECT tvs.date,
Close_Price,
CASE
#WHEN (ROW_NUMBER() OVER (ORDER BY baj.date ASC) < 50 THEN 'Hold'
	WHEN FLOOR(tvs.20_Day_MA-tvs.50_Day_MA)>1 THEN "Buy"
	WHEN FLOOR(tvs.20_Day_MA-tvs.50_Day_MA)<-1 THEN "Sell"
	ELSE "HOLD"
END as "Signal"
FROM TVS1 tvs
ORDER BY 1 ASC);
######################################################################################################
#A function that returns the signal for that particular day (Buy/Sell/Hold) for the Bajaj stock.
delimiter $$
CREATE FUNCTION signals(check_date DATE)
	RETURNS VARCHAR(10)
		DETERMINISTIC
			BEGIN 
				DECLARE state char(10);
				SELECT `Signal` INTO state
				FROM bajaj2
				WHERE `date` = `check_date`;
			RETURN State;
END
$$
delimiter ;
#call to the function
SELECT signals(STR_TO_DATE('02-JAN-2015', '%d-%M-%Y')) as "SIGNAL";
######################################################################################################