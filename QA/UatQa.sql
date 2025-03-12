-- REMOVE NULLS FROM SPECIFIC FIELDS RESULTS DATASET  
SELECT * 
FROM 'dataset.table.name' 
Where FieldNameHere is not null 
LIMIT 100; -- change limit as needed 

-- Drop a view in GCP && then create new one
Drop View if Exsists viewDataSetName.ViewName;

Create view viewDataSetName.ViewName as 
(SELECT * FROM 'DataSet.View.Name' LIMIT 1000)

-- Count total rows in a table from the dataloads  
SELECT COUNT(*) AS total_rows
From 'DataSet.Table.Name';


-- Select count deduplication -- removing duplicated values and then performing count 
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
