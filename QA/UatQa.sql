-- REMOVE NULLS FROM SPECIFIC FIELDS RESULTS DATASET  
SELECT * 
FROM 'dataset.table.name' 
Where FieldNameHere is not null 
LIMIT 100; -- change limit as needed 

-- Drop a view in GCP && then create new one
Drop View if Exsists viewDataSetName.ViewName;

Create view viewDataSetName.ViewName as 
(SELECT * FROM 'DataSet.View.Name' LIMIT 1000)
