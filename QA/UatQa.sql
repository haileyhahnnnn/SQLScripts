-- ROW COUNT ON VALUES IN BIGQUERY DATASET 
Select count(*) as row_count
    FROM 'dataset.table.view'

-- REMOVE NULLS FROM SPECIFIC FIELDS RESULTS DATASET  
SELECT * 
FROM 'dataset.table.name' 
Where FieldNameHere is not null 
LIMIT 100; -- change limit as needed 


-- DROP A VIEW IN GCP IF IT ALREADY EXSISTS && THEN CREATE A NEW ONE 
Drop View if Exsists viewDataSetName.ViewName;

Create view viewDataSetName.ViewName as 
(SELECT * FROM 'DataSet.View.Name' LIMIT 1000)
  

-- COUNT TOTAL ROWS IN A TABLE FROM THE DATALOADS 
SELECT COUNT(*) AS total_rows
From 'DataSet.Table.Name';


-- SELECT COUNT DEDUPLICATION -- REMOVING DUPLICATED VALUES && THEN PERFORMING COUNT 
Select Count (*)
From (
  Select Distinct *
  From 'DataSet.Table.Name'
  )a

OR 

Select Count (*)
From (
  Select Distinct FieldNameHere
  From 'DataSet.Table.Name'
  Order by FieldNameHere ASC
  )a
  

-- CALC NULLS VALUES RETURNED WITHIN A DATASET 
-- add as many fieldNames as needed
Select 
  count(*) as row_count , 
  sum(case when fieldName is null then 1 else 0 end) as fieldName_count ,
  sum(case when fieldName2 is null then 1 else 0 end) as fieldName2_count
From 
          'DataSet.Table.Name'


-- GRABBING MIN AND MAX DATES FROM DATE FIELDS 
select max(month_field_here) as max_date, min(month_field_here) as min_date from 
'DataSet.Table.Name'
