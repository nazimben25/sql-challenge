# sql-challenge
This is the output of Challenge 9 : SQL


1) repository organization
    - gitignore file
    - README file
    - Directory : EmployeeSQL
        - 2 files .sql
            - data_analysis.sql
            - table_schema.sql
        - 1 png file
            - QuickDBD-Entity Relationship Diagram

        - 1 directory : resources
            - with the six csv files


2) outputs
 
 2.1) ERD
    png file with the diagram
    geneated with quick DBD : https://app.quickdatabasediagrams.com/#/d/bWuXBj

 2.1) table_schema.sql
    the code includes : 
    - dropping all the 6 tables with CASCADE methode (to be used only if we need to reset the DB)

    - drop each table
    - create each table with 
        - its structure
        - define primary key
        - define foreign keys
    
 2.2) data_analysis
  code for the 8 questions of the requirement


3) import data
date is available in csv files (6 files)
directory : resources
it needs to be imported manually



## code importation not used

COPY titles (title_id, other_columns)
FROM '/path/to/yourfile.csv'
DELIMITER ',' 
CSV HEADER;