# Crowdfunding ETL Project

## Overview of Project

### Purpose
The purpose of the analysis is to help a crowdfunding platform called Independent Funding to analyze their data using ETL which is to Extract, Transform, and Load the data.

## Analysis
We extracted the data from a new dataset about backers who pledged to live projects and created a new dataframe, then exported the information we needed from the data into a csv.

![image](https://user-images.githubusercontent.com/108503112/196812443-d13c2ef1-f0db-4866-807b-b17d46ef60da.png)

We then split out the data into columns with First and Last name, and re-ordered the dataframe to what we needed and exported the data again to a csv.

![image](https://user-images.githubusercontent.com/108503112/196812682-682aa2e4-9d4d-4304-955c-34fe4b6c6588.png)

Then we loaded the backers table onto the database.

## Results
With SQL, we created two new tables: One for the contacts of each live campaign to inform them of the remaining goal amount and one for the backers to inform them how much of the goal remains for each live campaign they pledged.
