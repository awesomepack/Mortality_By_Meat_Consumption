# Extraction
* [WHO Mortality Database](https://www.who.int/data/data-collection-tools/who-mortality-database#:~:text=The%20WHO%20Mortality%20Database%20is%20a%20compilation%20of,and%20cause%20of%20death%20as%20reported%20by%20countries.): A dataset of deaths reported by members of WHO
* [OECD Meat Consumption](https://data.oecd.org/agroutput/meat-consumption.htm): Dataset lists meat consumption per capita for many countries
* [OECD Country Codes](https://github.com/awesomepack/Mortality_By_Meat_Consumption/blob/main/ETL/Resources/OECDCountryCodes.csv): Dataset that maps ISO country codes used in OECD dataset to country names used in WHO dataset

# Transform
  Both Datasets had their features reduced or altered using the following criteria:
  * Records missing values in key features were dropped
  * Duplicate records were dropped
  * Synonym columns were renamed to match (ex: 'sex' and 'gender' renamed to 'sex')
  * WHO's Geography column had its Full Country names converted to their equivalent three letter code using the Country Codes CSV

# Load
PostgreSQL was chosen as the data storage method because the structure of our data was predefined and ridgid.
* [Meat_Mortality.sql](https://github.com/awesomepack/Mortality_By_Meat_Consumption/blob/main/ETL/Meat_Mortality.sql) Prepares the Meat_Mortality Database
* [Mortality_Table.sql](https://github.com/awesomepack/Mortality_By_Meat_Consumption/blob/main/ETL/Mortality_Table.sql) Prepares the Mortality table for data insertion
* SQLAlchemy is used to establish connection between jupyter notebook and Postgres instance
* Pandas .toSQL() function is used to upload our clean dataframe into Mortality_Table
  


 
 ## Schemas
 <details>
  <summary>WHO</summary>

| Column Name | DataType | Source | Description |
| --- | --- | --- | --- |
| **year** | *Date* | Both | Year data was collected |
| Geography | String | Both | The country that reported the data |
| sex | String | Both | Gender|
| Value | Float | WHO | value of mortality rate |
| Unit | String | WHO | Unit of mortality rate |
</details>

  <details>
  <summary>Meat Consumption</summary>

| Column Name | DataType | Source | Description |
| --- | --- | --- | --- |
| **TIME** | *Date* | Both | Year data was collected |
| LOCATION | String | Both | The country that reported the data |
| SUBJECT | String | OECD | Meat Type|
| VALUE | Float | WHO | value of meat eaten |
| MEASURE | String | WHO | Kilograms eaten per Capita |
</details>

  <details>
  <summary>Meat Mortality</summary>

| Column Name | DataType | Source | Description |
| --- | --- | --- | --- |
| **Location** | *Date* | merged | Reporting Country |
| Meat Type | String | merged | The country that reported the data |
| Year | date | merged | year data was reported|
| Kg Per Capita | Float | merged | kg of meat eaten |
| Sex | String | merged | gender |
| Mortality Rate (Per 100k Capita) | Float | merged | mortality rate per capita |
</details>

