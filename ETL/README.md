# Extraction
* [WHO Mortality Database](https://github.com/awesomepack/Mortality_By_Meat_Consumption/edit/main/ETL/README.md): A dataset of deaths reported by members of WHO
* [OECD Meat Consumption](https://data.oecd.org/agroutput/meat-consumption.htm): Dataset lists meat consumption per capita for many countries
* [OECD Country Codes](https://github.com/awesomepack/Mortality_By_Meat_Consumption/blob/main/ETL/Resources/OECDCountryCodes.csv): Dataset that maps ISO country codes used in OECD dataset to country names used in WHO dataset

# Transform
  Both Datasets had their features reduced or altered using the following criteria:
  * Records missing values in key features were dropped
  * Duplicate records were dropped
  * Synonym columns were renamed to match (ex: 'sex' and 'gender' renamed to 'sex')
  * WHO's Geography column had its Full Country names converted to their equivalent three letter code using the Country Codes CSV

# Load


 
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

