# Project2

Extract

- We debated on what data to use at the start until we decided on meat consumption and mortality due to the datasets being useful in drawing a simple correlation.

  - Data:

    - MeatConsumption CSV from OECD website: Details year(1990-2029), meat type, weight(of meat consumed), Frequency, Measure, indicator, flag code
    - MortalityByUnintentionalPoisoning XLSX from CDC website: Details indicator, sex, region, unit(rate per 100,000), value, year(2000-2015), data source, location, .
    - Country Code CSV from OECD website: Details countries and their assign abbreviation.

Transform

- We first had to convert the Mortality XLSX into a csv.
  
- Once we had all the csvs then we loaded and read each one of them.
  
- Created a cc_dict based on the country code CSV to later use in merging the DFs.
  
- For the mortality_df we drop several rows that we deemed not neccessary/ had no data.(['Indicator','AgeGroup','DataType', 'Location', 'Unit', 'Source', 'DataType'])
  
- For meat_df, we drop rows we deemed not neccessary/ had no data. (['Indicator','Flag codes','Frequency', 'Measure'])
  
- We then align the meat_df to mortality_df columns using the cc_dict.
  
      -Then the columns names in meat_df and mortality_df were renamed

- Merging between meat_df and mortality_df on columns = ['Year', 'Location']
  
Load

- Using sqlalchemy, we loaded our data into postgressql.

  - Reason: Arbitrary.
