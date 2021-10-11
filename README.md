# Mortality_By_Meat_Consumption

## Summary:
Using the World Health Organization's <From this point onward>(WHO) mortality dataset with OECD's dataset on global meat consumption we investigate any trends that may be present between a country's consumption of meat and it's mortality rate.

## Data Sources (Extract)

### Mortality Data (Background)
The Mortality Database , Curated by (WHO) is a collection of national statistics on mortality data reported by the pertininet authoritie's in that nation. The deaths in the aforementioned reports are those that have been registered in the national vital registration system which includes the underlying cause of death coded by the relevant national authority. 

According to the databases documentation: 
"Underlying cause of death is defined as “the disease or injury which initiated the train of morbid events leading directly to death, or the circumstances of the accident or violence which produced the fatal injury” in accordance with the rules of the International Classification of Diseases."
(insert link to doc here)

- Key features in the database include the death count grouped by Country , year , sex  , age group , and cause of death.
- Data is present all the way from 1950.
- Only deaths coded in accordance to the guidelines of the International Classification of Diseases were included in the database

    ### References
    (Mortality_Database)
    https://www.who.int/data/data-collection-tools/who-mortality-database --> This is the link to click to once pushed to repo


### Meat Consumption

## Preprocessing (Transform)

## Storage (Load)

## Analysis

## Findings

## (Bonus) Use K-means clustering to create leads for potential investigation

## To Do 10/10/2021
Outline the structure of the new Read Me file which should:
- Provide background on our data sources "CDC unintentional poisoning" (look for a more recent dataset if possible) ; "OECD's meat consumption"
- Identify the key features present in our datasets (Preprocessing)
- Summarize the cleaning process used to clean and consolidate our data (Preprocessing)
- Summarize the creation of PostgresSQL database using SQL alchemy
- Explain the questions that drove the investigation and the insights we were able to extract once we visualized using Tableau
- Summarize the key insights from the analysis 
- (Bonus) How can we implement machine learing in this project?