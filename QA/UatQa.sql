-- REMOVE NULLS FROM SPECIFIC FIELDS RESULTS DATASET  
SELECT * 
FROM 'dataset.table.name' 
Where FieldNameHere is not null 
LIMIT 100; -- change limit as needed 
