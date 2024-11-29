# Module_3_Java_Rdbms-Amp_Database_Programming_With_Jdbc
java-rdbms-jdbc/
├── README.md
├── sql_queries/
│   ├── query1_select_unique_jobs.sql
│   ├── query2_order_emps.sql
│   ├── query3_unique_jobs_desc.sql
│   └── ... (Each query with descriptive names)
├── java/
│   ├── Module_Java_RDBMS_JDBC.pdf
│   └── ... (Java programs related to JDBC)
└── database_schema/
    ├── create_dept_table.sql
    ├── create_student_table.sql
    ├── create_emp_table.sql
    ├── insert_dept_data.sql
    ├── insert_emp_data.sql
    └── insert_student_data.sql

-------------------------------------------------File Descriptions-----------------------------------------------------


README.md: 
            - Explains the schema and usage of the repository.
            - Lists SQL queries and their purpose.

sql_queries/
Contains organized and descriptive SQL query files:

            - query1_select_unique_jobs.sql: Select unique jobs from the EMP table.
            - query2_order_emps.sql: List details of employees ordered by Deptno and Jobs.
            - Queries 1-26 will follow this structure with clear filenames for easy identification.

database_schema/
Contains scripts to create and populate tables:

            - create_dept_table.sql: Defines the Dept table schema.
            - insert_dept_data.sql: Populates the Dept table with sample data.
            - Similar scripts exist for Student and Emp tables.

java/
Contains Java programs demonstrating JDBC concepts:

            - EmpDataFetcher.java: Connects to the database and executes query #6 (employees working for Mgr 7369).
            - StudentTableUpdater.java: Adds a Pin column and modifies the Sname length in the Student table.
            - TriggerExample.java: Demonstrates the trigger for the Emp_log table.
