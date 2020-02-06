
create database COUNTRY
USE COUNTRY

CREATE TABLE REGIONS(
	REGION_ID int PRIMARY KEY,
	REGION_NAME VARCHAR(255)
)

CREATE TABLE COUNTRIES(
	COUNTRY_ID char(2) PRIMARY KEY,
	COUNTRY_NAME VARCHAR(40),
	REGION_ID int foreign key references REGIONS(REGION_ID) 
)

CREATE TABLE LOCATIONS(
	LOCATION_ID INT PRIMARY KEY,
	STREET_ADDRESS VARCHAR(40),
	POSTAL_CODE VARCHAR(12),
	CITY VARCHAR(30),
	STATE_PROVINCE VARCHAR(50),
	COUNTRY_ID CHAR(2) foreign key references COUNTRIES(COUNTRY_ID)
)   

CREATE TABLE DEPARTMENTS(
	DEPARTMENT_ID INT PRIMARY KEY,
	DEPARTMENT_NAME VARCHAR(30),
	LOCATION_ID INT FOREIGN KEY REFERENCES LOCATIONS(LOCATION_ID),
	MANAGER_ID INT,
)

CREATE TABLE EMPLOYEES(
	EMPLOYEE_ID INT primary key,
	FIRST_NAME VARCHAR(20),
	LAST_NAME VARCHAR(25),
	EMAIL VARCHAR(25),
	PHONE_NUMBER VARCHAR(20),
	HIRE_DATE DATE,
	JOB_ID VARCHAR(10) FOreign key references JOBS(JOB_ID),
	SALARY INT FOreign key references EMPLOYEES(EMPLOYEE_ID),
	COMMISION_PCT FLOAT(24),
	MANAGER_ID INT UNIQUE,
	DEPARTMENT_ID INT foreign key references DEPARTMENTS(DEPARTMENT_ID),
)

ALTER TABLE DEPARTMENTS
   ADD FOREIGN KEY (MANAGER_ID) REFERENCES EMPLOYEES(MANAGER_ID);



CREATE TABLE JOB_HISTORY(
	EMPLOYEE_ID INT fOreign key references EMPLOYEES(EMPLOYEE_ID),
	STARTING_DATE DATE, /*-----*/
	ENDING_DATE DATE,  /*-----*/
	JOB_ID VARCHAR(10) FOREIGN KEY REFERENCES JOBS(JOB_ID),
	DEAPRTMENT_ID INT FOREIGN KEY REFERENCES DEPARTMENTS(DEPARTMENT_ID)
)

CREATE TABLE JOBS(
	JOB_ID  VARCHAR(10) PRIMARY KEY,
	JOB_TITLE VARCHAR(35),
	MIN_SALARY INT,
	MAX_SALARY INT
)

CREATE TABLE JOB_GRADES(
	GRADE_LEVEL VARCHAR(3) PRIMARY KEY,
	LOWEST_SAL INT,
	HIGHEST_SAL INT
)



/*inserting in re REGIONS table*/
INSERT INTO REGIONS VALUES ( 1, 'Europe');  
INSERT INTO REGIONS VALUES ( 2, 'Americas');
INSERT INTO REGIONS VALUES ( 3, 'Asia');  
INSERT INTO REGIONS VALUES ( 4, 'Middle East and Africa');

/*inserting in COUNTRIES TABLE */ 

INSERT INTO countries VALUES ('CA', 'Canada', 2);  
INSERT INTO countries VALUES ('DE', 'GERMANY', 1);  
INSERT INTO countries VALUES ( 'UK', 'UNITED KINGDOM', 1);  
INSERT INTO countries VALUES ( 'US', 'United States of America', 2);  


/* inserting inLOCATIONS TABLE */

INSERT INTO locations VALUES ( 1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US');   
INSERT INTO locations VALUES ( 1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US');  
INSERT INTO locations VALUES ( 1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US');  
INSERT INTO locations VALUES ( 1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA');  
INSERT INTO locations VALUES (2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK');  


/*inserting in DEPARTMENTS TABLE */ 

 
INSERT INTO departments (DEPARTMENT_ID, DEPARTMENT_NAME) VALUES ( 10, 'Administration');  
INSERT INTO departments (DEPARTMENT_ID, DEPARTMENT_NAME) VALUES ( 20, 'Marketing');                    
INSERT INTO departments (DEPARTMENT_ID, DEPARTMENT_NAME) VALUES ( 50, 'Shipping');  
INSERT INTO departments (DEPARTMENT_ID, DEPARTMENT_NAME) VALUES ( 60, 'IT');  
INSERT INTO departments (DEPARTMENT_ID, DEPARTMENT_NAME) VALUES ( 80, 'Sales');  
INSERT INTO departments (DEPARTMENT_ID, DEPARTMENT_NAME) VALUES ( 90, 'Executive');                    
INSERT INTO departments (DEPARTMENT_ID, DEPARTMENT_NAME) VALUES ( 110, 'Accounting');  
INSERT INTO departments (DEPARTMENT_ID, DEPARTMENT_NAME) VALUES ( 190, 'Contracting' );
                  		
/*  inserting in EMPLOLYEES TABLE */ 

INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 100  
        , 'Steven'  
        , 'King'  
        , 'SKING'  
        , '515.123.4567'  
        , '1987-dec-19'  
        , NULL  
        , NULL  
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES 
        ( 101  
        , 'Neena'  
        , 'Kochhar'  
        , 'NKOCHHAR'  
        , '515.123.4568'  
        , '1989-sep-31'
        , NULL  
        , 100    
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 109  
        , 'Lex'  
        , 'De Haan'  
        , 'LDEHAAN'  
        , '515.123.4569'  
        , '1993-jan-10'   
        , NULL  
        , 180   
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 103  
        , 'Alexander'  
        , 'Hunold'  
        , 'AHUNOLD'  
        , '590.423.4567'  
        , '1990-january-3'  
        , NULL  
        , 102 
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 104  
        , 'Bruce'  
        , 'Ernst'  
        , 'BERNST'  
        , '590.423.4568'  
        , '1991-may-21'     
        , NULL  
        , 103 
        );  
  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 107  
        , 'Diana'  
        , 'Lorentz'  
        , 'DLORENTZ'  
        , '590.423.5567'  
        , '1999-feb-17' 
        , NULL  
        , 113   
        );  
  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 124  
        , 'Kevin'  
        , 'Mourgos'  
        , 'KMOURGOS'  
        , '650.123.5234'  
        , '2009-feb-07' 
        , NULL  
        , 109  
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 141  
        , 'Trenna'  
        , 'Rajs'  
        , 'TRAJS'  
        , '650.121.8009'  
        , '1999-dec-07'    
        , NULL  
        , 124  
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 142  
        , 'Curtis'  
        , 'Davies'  
        , 'CDAVIES'  
        , '650.121.2994'  
        , '2020-feb-07'       
        , NULL  
        , 124  
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 143  
        , 'Randall'  
        , 'Matos'  
        , 'RMATOS'  
        , '650.121.2874'  
        , '1999-jan-17'  
        , NULL  
        , 134  
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 144  
        , 'Peter'  
        , 'Vargas'  
        , 'PVARGAS'  
        , '650.121.2004'  
        , '1999-mar-09'  
        , NULL  
        , 194  
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 149  
        , 'Eleni'  
        , 'Zlotkey'  
        , 'EZLOTKEY'  
        , '011.44.1344.429018'  
        , '2019-apr-28'  
        , .2  
        , 111   
        );  
  

INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 174  
        , 'Ellen'  
        , 'Abel'  
        , 'EABEL'  
        , '011.44.1644.429267'  
        , '1919-feb-01'
        , .30  
        , 149   
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 176  
        , 'Jonathon'  
        , 'Taylor'  
        , 'JTAYLOR'  
        , '011.44.1644.429265'  
        , '1299-feb-30'  
        , .20  
        , 249   
        );  
  

INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 178  
        , 'Kimberely'  
        , 'Grant'  
        , 'KGRANT'  
        , '011.44.1644.429263'  
        , '1201-may-31'  
        , .15  
        , 141  
        );  
  

INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 200  
        , 'Jennifer'  
        , 'Whalen'  
        , 'JWHALEN'  
        , '515.123.4444'  
        , '1999-feb-23' 
        , NULL  
        , 101   
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 201  
        , 'Michael'  
        , 'Hartstein'  
        , 'MHARTSTE'  
        , '515.123.5555'  
        , '1999-jul-07'    
        , NULL  
        , 170   
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 202  
        , 'Pat'  
        , 'Fay'  
        , 'PFAY'  
        , '603.123.6666'  
        , '2019-feb-07'  
        , NULL  
        , 201   
        );  
  

INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 205  
        , 'Shelley'  
        , 'Higgins'  
        , 'SHIGGINS'  
        , '515.123.8080'  
        , '2017-dec-07'
        , NULL  
        , 301    
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 206  
        , 'William'  
        , 'Gietz'  
        , 'WGIETZ'  
        , '515.123.8181'  
        , '2018-jan-07'
        , NULL  
        , 205  
        );  
		
/* inserting in JOBS TABLE */

INSERT INTO jobs VALUES   
        ( 'AD_PRES'  
        , 'President'  
        , 20080  
        , 40000  
        );  
	
INSERT INTO jobs VALUES   
        ( 'AD_VP'  
        , 'Administration Vice President'  
        , 15000  
        , 30000  
        );  
  
INSERT INTO jobs VALUES   
        ( 'AD_ASST'  
        , 'Administration Assistant'  
        , 3000  
        , 6000  
        );  

INSERT INTO jobs VALUES   
        ( 'AC_MGR'  
        , 'Accounting Manager'  
        , 8200  
        , 16000  
        );  
  
INSERT INTO jobs VALUES   
        ( 'AC_ACCOUNT'  
        , 'Public Accountant'  
        , 4200  
        , 9000  
        );  
	
INSERT INTO jobs VALUES   
        ( 'SA_MAN'  
        , 'Sales Manager'  
        , 10000  
        , 20080  
        );  
  
INSERT INTO jobs VALUES   
        ( 'SA_REP'  
        , 'Sales Representative'  
        , 6000  
        , 12008  
        );  
  
INSERT INTO jobs VALUES   
        ( 'ST_MAN'  
        , 'Stock Manager'  
        , 5500  
        , 8500  
        );  
	
INSERT INTO jobs VALUES   
        ( 'ST_CLERK'  
        , 'Stock Clerk'  
        , 2008  
        , 5000  
        );  

INSERT INTO jobs VALUES   
        ( 'IT_PROG'  
        , 'Programmer'  
        , 4000  
        , 10000  
        );  
  
INSERT INTO jobs VALUES   
        ( 'MK_MAN'  
        , 'Marketing Manager'  
        , 9000  
        , 15000  
        );  

INSERT INTO jobs VALUES   
        ( 'MK_REP'  
        , 'Marketing Representative'  
        , 4000  
        , 9000  
        );   

/* inserting in JOB_GRADES TABLE  */

INSERT INTO JOB_GRADES VALUES   
        ( 'A' 
        , 1000  
        , 2999  
        );

INSERT INTO JOB_GRADES VALUES   
        ( 'B' 
        , 3000  
        , 5999  
        );  		   

INSERT INTO JOB_GRADES VALUES   
        ( 'C' 
        , 6000  
        , 9999  
        );  

INSERT INTO JOB_GRADES VALUES   
        ( 'D' 
        , 10000  
        , 14999  
        );  

INSERT INTO JOB_GRADES VALUES   
        ( 'E' 
        , 15000  
        , 24999  
        );  

INSERT INTO JOB_GRADES VALUES   
        ( 'F' 
        , 25000  
        , 40000  
        );  
	
/* inserting in JOB_HISTORY TABLE  */
INSERT INTO job_history (STARTING_DATE, ENDING_DATE) 
VALUES ( '1999-feb-07'   /* YY-MM-DD */
       , '2020-feb-01'   
	   ); 

INSERT INTO job_history (STARTING_DATE, ENDING_DATE) 
VALUES (  
        '1999-feb-07'   
       , '2020-feb-01'    
       );  
  
INSERT INTO job_history  (STARTING_DATE, ENDING_DATE)
VALUES (  
        '1999-feb-07'   /* YY-MM-DD */ 
       , '2020-feb-01'      
       );  
  
INSERT INTO job_history  (STARTING_DATE, ENDING_DATE)
VALUES (  
        '1999-feb-07'   /* YY-MM-DD */  
       , '2020-feb-01'     
       );  
  
INSERT INTO job_history  (STARTING_DATE, ENDING_DATE)
VALUES (  
        '1999-feb-07'   /* YY-MM-DD */  
       , '2020-feb-01'      
       );  
  
INSERT INTO job_history  (STARTING_DATE, ENDING_DATE)
VALUES  ( '1999-feb-07'   /* YY-MM-DD */  
        , '2020-feb-01'    
        );  
  
INSERT INTO job_history  (STARTING_DATE, ENDING_DATE)
VALUES  (  
         '1999-feb-07'   /* YY-MM-DD */  
        , '2020-feb-01'     
        );  
  
INSERT INTO job_history  (STARTING_DATE, ENDING_DATE)
VALUES  ( 
         '1999-feb-07'   /* YY-MM-DD */  
        , '2020-feb-01'     
        );  
  
INSERT INTO job_history  (STARTING_DATE, ENDING_DATE)
VALUES  (
        '1999-feb-07'   /* YY-MM-DD */  
		, '2020-feb-01'  
        );  
  
INSERT INTO job_history  (STARTING_DATE, ENDING_DATE)
VALUES  (  
         '1999-feb-07'   /* YY-MM-DD */  
        , '2020-feb-01'     
        );  
  
INSERT INTO job_history  (STARTING_DATE, ENDING_DATE)
VALUES  (
         '1999-feb-07'   /* YY-MM-DD */
        , '2020-feb-01'   
	);
	
