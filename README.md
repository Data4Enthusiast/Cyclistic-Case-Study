![image](https://github.com/user-attachments/assets/816c7ef4-0cac-4fae-b2e5-46515d2d57ef) 
# Cyclistic Case Study: Google Data Analytics Capstone
## Rider Behaviors and Membership Growth
_______________________________________________________
Author : Shannon Johnson

Last Updated: July 2024
_______________________________________________________

## About the Company
In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown
to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations
across Chicago. The bikes can be unlocked from one station and returned to any other station
in the system anytime.

Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to
broad consumer segments. One approach that helped make these things possible was the
flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships.
Customers who purchase single-ride or full-day passes are referred to as casual riders.
Customers who purchase annual memberships are Cyclistic members.

## Scenario
You are a junior data analyst on the marketing analysis team at Cyclistic, a bike-share company in Chicago. The marketing director believes that maximizing the number of annual memberships is crucial for the company’s future success. Consequently, your team aims to understand the usage patterns of casual riders versus annual members. Based on these insights, your team will develop a new marketing strategy to convert casual riders into annual members. However, the proposed recommendations must be approved by Cyclistic executives and supported with compelling data insights and professional data visualizations. In order to answer the business questions, follow the steps of the data analysis process: Ask, Prepare, Process, Analyze, Share, and Act.

## Tools 
- Excel: Data Cleaning

- SQL Server: Data Analysis

- Tableau: Data Visualization

## Ask 
The financial team at Cyclistic has recently concluded that annual members are far more profitable to the company than are casual riders. Subsequently, the marketing team has identified maximizing the number of annual memberships as a key goal for the company's success. They want to design a new marketing strategy to convert casual riders into annual members since individuals in this demographic are already aware of the Cyclistic program and have chosen it at some point for their transportation needs in the past.

In order to do this, the marketing team first wants to understand how these different customer types are currently using Cyclistic bikes. They have identified the following questions to guide the future of their marketing program:

1. How do annual members and casual riders use Cyclistic differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

#### Assigned Question:
1. How do annual members and casual riders use Cyclistic differently?
   
## Prepare
Data source link: https://divvy-tripdata.s3.amazonaws.com/index.html

In this data analytics project, Cyclistic stores its data on Amazon Web Services (AWS) in zipped comma-separated values (CSV) files. For the years 2020-2023, the data is organized by month, whereas prior to 2020, it is organized by quarterly periods.

This case study focuses on data from January 2021 to December 2021. Since I am utilizing first-party data, it is original, current, and properly cited. Additionally, the data is anonymized, as it does not include personally identifiable information. While the data is largely reliable and comprehensive, there is partial incompleteness for about 20% of the trips, specifically concerning station attribute data.

I am using Microsoft SQL Server Management Studio in this part of the project to help process and analyze the datasets.

First downloaded all of the .xlsx files and stored it locally in a folder on my system. I made sure to import all of the datasets as a .csv file to the database server. Checked and verified if the data types of each of the columns in each dataset is same to merge them all together.

## Process 
The data processing was conducted in two phases.

In the first phase, Excel was utilized to organize all data into tables, which were then saved for the subsequent phase of analysis. This involved opening each monthly file from the year 2022 and ensuring the data was properly structured in a table format with appropriate headings. The files were saved in (.xlsx) format to facilitate easy upload into Microsoft SQL Server Management Studio.

The second phase of analysis employed Microsoft SQL Server Management Studio to clean and prepare the data for analysis. Initially, I imported all datasets (.xlsx) into the database server. I then checked and verified that the data types of each column in each dataset were consistent to enable seamless merging into a comprehensive dataset for the year 2021. The following SQL queries were used in the attached files. 

## Analyze
The data has been prepared, cleaned, and processed, and is now ready for analysis. Calculations will be conducted on the cleaned and consistent data to identify trends, relationships, and patterns. This analysis aims to establish the differences between casual riders and annual members. The attached Analysis file will show the steps completed during this phase. 

## Data Visualizations
![image](https://github.com/user-attachments/assets/fd91b649-8957-4a75-b540-56d5de9b73b4)
![image](https://github.com/user-attachments/assets/0c832c6f-9a61-4b82-9f50-b442bc5da6f1)
![image](https://github.com/user-attachments/assets/61ab8cbc-724a-4ae0-bcf2-d13d30edeb9d)
![image](https://github.com/user-attachments/assets/9c2548e0-5cd1-435f-89d7-2363f15c5097)
![image](https://github.com/user-attachments/assets/a3328b32-de08-4467-b47a-c44291b9cd82)
![image](https://github.com/user-attachments/assets/a82c70b0-092b-44e4-88ec-17216641e1af)
![image](https://github.com/user-attachments/assets/1b771600-09e3-453c-8ca8-16736300bee4)

## Recommendations
- Implement rewards programs aimed at converting Casual riders to Annual Members, offering enhanced benefits for membership.

- Introduce seasonal plans tailored for peak summer months, with promotional efforts beginning in the winter to drive awareness.

- Develop additional Annual Membership options targeting summer riders, with special benefits for usage on slower days such as Tuesdays.

- Conduct unbiased surveys targeting both current users and non-users of Cyclistic to gain deeper insights into their motivations and perceptions of bikeshare programs.

- Collect and analyze demographic data to better understand the profiles of Cyclistic's users and optimize marketing strategies accordingly.




