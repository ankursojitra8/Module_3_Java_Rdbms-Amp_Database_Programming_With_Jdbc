/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.1.44-community : Database - module_3_java_rdbms&amp_database_programming_with_jdbc
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`module_3_java_rdbms&amp_database_programming_with_jdbc` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `module_3_java_rdbms&amp_database_programming_with_jdbc`;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Que 1. Select unique job from EMP table.
-- Ans:)

SELECT DISTINCT JOB
FROM EMP;

-- --------------------------------------------------------------------------------------------------------

-- Que 2. List the details of the emps in asc order of the Dptnos and desc of Jobs?
-- Ans:)

SELECT *
FROM EMP
ORDER BY DEPTNO ASC, JOB DESC;

-- --------------------------------------------------------------------------------------------------------

-- Que 3. Display all the unique job groups in the descending order?
-- Ans:)

SELECT DISTINCT JOB
FROM EMP
ORDER BY JOB DESC;

-- --------------------------------------------------------------------------------------------------------
-- Que 4. List the emps who joined before 1981.
-- Ans:)

SELECT *
FROM EMP
WHERE HIREDATE < '1981-01-01';

-- --------------------------------------------------------------------------------------------------------

-- Que 5. List the Empno, Ename, Sal, Daily sal of all emps in the asc order of Annsal.
-- Ans:)

SELECT EMPNO, ENAME, SAL, SAL / 30 AS DAILY_SAL, SAL * 12 AS ANNUAL_SAL
FROM EMP
ORDER BY ANNUAL_SAL ASC;

-- --------------------------------------------------------------------------------------------------------

-- Que 6. List the Empno, Ename, Sal, Exp of all emps working for Mgr 7369.
-- Ans:)

SELECT EMPNO, ENAME, SAL, DATEDIFF(CURDATE(), HIREDATE) / 365 AS EXP
FROM EMP
WHERE MGR = 7369;

-- --------------------------------------------------------------------------------------------------------

-- Que 7. Display all the details of the emps who’s Comm. Is more than their Sal?
-- Ans:)

SELECT *
FROM EMP
WHERE COMM > SAL;

-- --------------------------------------------------------------------------------------------------------

-- Que 8. List the emps who are either ‘CLERK’ or ‘ANALYST’ in the Desc order.
-- Ans:)

SELECT *
FROM EMP
WHERE JOB IN ('CLERK', 'ANALYST')
ORDER BY JOB DESC;

-- --------------------------------------------------------------------------------------------------------

-- Que 9. List the emps Who Annual sal ranging from 22000 and 45000.
-- Ans:)

SELECT *
FROM EMP
WHERE SAL * 12 BETWEEN 22000 AND 45000;

-- --------------------------------------------------------------------------------------------------------

-- Que 10.List the Enames those are starting with ‘S’ and with five characters.
-- Ans:)

SELECT ENAME
FROM EMP
WHERE ENAME LIKE 'S____';

-- --------------------------------------------------------------------------------------------------------

-- Que 11.List the emps whose Empno not starting with digit78.
-- Ans:)

SELECT *
FROM EMP
WHERE EMPNO NOT LIKE '78%';

-- --------------------------------------------------------------------------------------------------------

-- Que 12.List all the Clerks of Deptno 20.
-- Ans:)

SELECT *
FROM EMP
WHERE JOB = 'CLERK' AND DEPTNO = 20;

-- --------------------------------------------------------------------------------------------------------

-- Que 13.List the Emps who are senior to their own MGRS.
-- Ans:)

SELECT E.ENAME, M.ENAME AS MGR_NAME
FROM EMP E
JOIN EMP M ON E.MGR = M.EMPNO
WHERE E.HIREDATE < M.HIREDATE;

-- --------------------------------------------------------------------------------------------------------

-- QUe 14.List the Emps of Deptno 20 who’s Jobs are same as Deptno10.
-- Ans:)

SELECT *
FROM EMP
WHERE DEPTNO = 20
  AND JOB IN (SELECT JOB FROM EMP WHERE DEPTNO = 10);

-- --------------------------------------------------------------------------------------------------------

-- QUe 15.List the Emps who’s Sal is same as FORD or SMITH in desc order of Sal.
-- Ans:)

SELECT *
FROM EMP
WHERE SAL IN (SELECT SAL FROM EMP WHERE ENAME IN ('FORD', 'SMITH'))
ORDER BY SAL DESC;

-- --------------------------------------------------------------------------------------------------------

-- Que 16.List the emps whose jobs same as SMITH or ALLEN.
-- Ans:)

SELECT *
FROM EMP
WHERE JOB IN (SELECT JOB FROM EMP WHERE ENAME IN ('SMITH', 'ALLEN'));

-- --------------------------------------------------------------------------------------------------------

-- QUe 17.Any jobs of deptno 10 those that are not found in deptno 20.
-- Ans:)

SELECT DISTINCT JOB
FROM EMP
WHERE DEPTNO = 10
  AND JOB NOT IN (SELECT JOB FROM EMP WHERE DEPTNO = 20);

-- --------------------------------------------------------------------------------------------------------

-- QUe 18.Find the highest sal of EMP table.
-- Ans:)

SELECT MAX(SAL) AS HIGHEST_SALARY
FROM EMP;

-- --------------------------------------------------------------------------------------------------------

-- QUe 19.Find details of highest paid employee.
-- Ans:)

SELECT *
FROM EMP
WHERE SAL = (SELECT MAX(SAL) FROM EMP);


-- --------------------------------------------------------------------------------------------------------

-- QUe 20.Find the total sal given to the MGR.
-- Ans:)

SELECT MGR, SUM(SAL) AS TOTAL_SALARY_PAID_TO_MGR
FROM EMP
GROUP BY MGR;

-- --------------------------------------------------------------------------------------------------------

-- QUe 21.List the emps whose names contains ‘A’.
-- Ans:)

SELECT *
FROM EMP
WHERE ENAME LIKE '%A%';

-- --------------------------------------------------------------------------------------------------------

-- QUe 22.Find all the emps who earn the minimum Salary for each job wise in ascending order.
-- Ans:)

SELECT *
FROM EMP E
WHERE E.SAL = 
(
    SELECT MIN(SAL)
    FROM EMP
    WHERE JOB = E.JOB
)
ORDER BY SAL ASC;

-- --------------------------------------------------------------------------------------------------------

-- QUe 23.List the emps whose sal greater than Blake’s sal.
-- Ans:)

SELECT *
FROM EMP
WHERE SAL > (SELECT SAL FROM EMP WHERE ENAME = 'BLAKE');

-- --------------------------------------------------------------------------------------------------------

-- QUe 24.Create view v1 to select ename, job, dname, loc whose deptno are same.
-- Ans:)

CREATE VIEW v1 AS
SELECT E.ENAME, E.JOB, D.DNAME, D.LOC
FROM EMP E
JOIN DEPT D ON E.DEPTNO = D.DEPTNO;

-- --------------------------------------------------------------------------------------------------------

-- QUe 25.Create a procedure with dno as input parameter to fetch ename and dname.
-- Ans:)

USE `module_3_java_rdbms&database_programming_with_jdbc`;

CREATE PROCEDURE get_emp_dname(IN dno INT)
BEGIN
    SELECT E.ENAME, D.DNAME
    FROM EMP E
    JOIN DEPT D ON E.DEPTNO = D.DEPTNO
    WHERE E.DEPTNO = dno;
END

-- Check if the procedure exists
SHOW PROCEDURE STATUS WHERE Db = 'module_3_java_rdbms&database_programming_with_jdbc';


-- Call the procedure
CALL get_emp_dname(20);

-- --------------------------------------------------------------------------------------------------------

-- QUe 26.Add column Pin with bigint data type in table student.
-- Ans:)

ALTER TABLE STUDENT ADD COLUMN Pin BIGINT;

-- --------------------------------------------------------------------------------------------------------

-- QUe 27.Modify the student table to change the sname length from 14 to 40. Create trigger to insert data in emp_log table whenever any 
-- update of sal in EMP table. You can set action as ‘New Salary’.
-- Ans:)

-- 1. Modifying the student table:

ALTER TABLE student MODIFY COLUMN sname VARCHAR(40);

-- 2. Creating a trigger to log salary updates in the EMP table:

DELIMITER $$

CREATE TRIGGER emp_sal_update_trigger
AFTER UPDATE ON EMP
FOR EACH ROW
BEGIN
    INSERT INTO emp_log (empno, old_sal, new_sal, ACTION)
    VALUES (OLD.EMPNO, OLD.SAL, NEW.SAL, 'New Salary');
END$$

DELIMITER ;

-- UPDATE EMP
-- SET SAL = 5000
-- WHERE EMPNO = 7839;
-- SELECT * FROM emp_log;

-- --------------------------------------------------------------------------------------------------------
