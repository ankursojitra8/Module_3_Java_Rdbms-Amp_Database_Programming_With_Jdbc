CREATE TABLE `employees` 
(
	`Empno` INT (4),
	`Ename` VARCHAR (30),
	`Job` VARCHAR (27),
	`Mgr` INT (4),
	`Hiredate` DATE ,
	`Sal` DECIMAL (9),
	`Comm` DECIMAL (9),
	`Deptno` INT (2)
); 
INSERT INTO `employees` (`Empno`, `Ename`, `Job`, `Mgr`, `Hiredate`, `Sal`, `Comm`, `Deptno`) VALUES('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20');
INSERT INTO `employees` (`Empno`, `Ename`, `Job`, `Mgr`, `Hiredate`, `Sal`, `Comm`, `Deptno`) VALUES('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30');
INSERT INTO `employees` (`Empno`, `Ename`, `Job`, `Mgr`, `Hiredate`, `Sal`, `Comm`, `Deptno`) VALUES('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30');
INSERT INTO `employees` (`Empno`, `Ename`, `Job`, `Mgr`, `Hiredate`, `Sal`, `Comm`, `Deptno`) VALUES('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20');
INSERT INTO `employees` (`Empno`, `Ename`, `Job`, `Mgr`, `Hiredate`, `Sal`, `Comm`, `Deptno`) VALUES('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');
INSERT INTO `employees` (`Empno`, `Ename`, `Job`, `Mgr`, `Hiredate`, `Sal`, `Comm`, `Deptno`) VALUES('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30');
INSERT INTO `employees` (`Empno`, `Ename`, `Job`, `Mgr`, `Hiredate`, `Sal`, `Comm`, `Deptno`) VALUES('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10');
INSERT INTO `employees` (`Empno`, `Ename`, `Job`, `Mgr`, `Hiredate`, `Sal`, `Comm`, `Deptno`) VALUES('7788','SCOTT','ANALYST','7566','1987-06-11','3000.00',NULL,'20');
INSERT INTO `employees` (`Empno`, `Ename`, `Job`, `Mgr`, `Hiredate`, `Sal`, `Comm`, `Deptno`) VALUES('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10');
INSERT INTO `employees` (`Empno`, `Ename`, `Job`, `Mgr`, `Hiredate`, `Sal`, `Comm`, `Deptno`) VALUES('7844','TURNER','SALESMAN','7698','1981-08-09','1500.00','0.00','30');
INSERT INTO `employees` (`Empno`, `Ename`, `Job`, `Mgr`, `Hiredate`, `Sal`, `Comm`, `Deptno`) VALUES('7876','ADAMS','CLERK','7788','1987-07-13','1100.00',NULL,'20');