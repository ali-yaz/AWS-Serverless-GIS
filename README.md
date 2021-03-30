# AWS-Serverless-GIS

# Serverless GIS with Amazon S3, OSM, and ArcGIS API for Javascript

The code creates an OSM map view and select 25 restaurants in Montreal and show them on the web, like the map in this [link](https://serverless-gis-example.s3.ca-central-1.amazonaws.com/index.html). 

The following AWS services are used to create a serverless GIS web app:
- Amazon S3
- Amazon Athena
- Registry of Open Data on AWS

Follow the steps below to create your app on  
-- Step 0. Create an AWS account  
-- Step 1. Create an S3 Bucket on AWS  
-- Step 2. Link S3 to AWS Athena, and create a table in AWS Athena  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Setup AWS Athena by pointing it at a dataset located on your personal bucket created on Step 2  
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Open the ```osm-planet.sql``` file and copy/paste its content into AWS Athena to create an Athena table (Select Run Query)  
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Remvoe the code from osm-planet.sql, and copy/paste the code from ```query-restaurants.sql``` into Athena and Run Query  
--Step 3. Update the dataset permissions  
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Navigate to S3 console  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Select the ```bucket```  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Select ```Unsaved```  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Select on the folder with today’s Year, then Month, then Day.  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Select the <filename>.csv that you would like to plot. Ignore the file ending in metadata.    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  (Note: There are multiple files if you ran multiple queries, just share the CSV you want to plot)  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Copy the ```Object URL``` from the details panel on the right or from the details page of the file.  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  * Select ```Make Public```  
--Step 4. 
