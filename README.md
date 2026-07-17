# DAM Final Project: Poverty and Social Categories in the 1845 Aarhus Census

**Course:** Digitale arkiver og metoder  
**Author:** [Daniel Andrés Ortiz del Villar]  
**Date:** July 2026

## Project Overview

This project analyses social categories related to poverty, destitution, and institutional support in the 1845 census of Aarhus, Denmark. Using the occupation field (`erhverv`) and notes (`notater`), a new categorical variable (`social_category`) was created to identify people recorded as destitute or supported by relief, as well as cases of physical disability and mental illness.

## Research Focus

- How many people were recorded as destitute or supported by relief in Aarhus in 1845?
- What is the age distribution of this group?
- How common are explicit mentions of mental illness or institutionalisation in the census?

## Data

- **Source:** Aarhus Stadsarkiv – 1845 Census
- **Original file:** `data/raw/census-1845-original.csv`
- **Cleaned file:** `data/clean/aarhus-1845-cleaned.csv`

## Methods

1. **Data cleaning** was performed in OpenRefine.
   - A new column `social_category` was created.
   - Relevant terms related to poverty, support, disability, and mental illness were identified and categorised.
   - The full cleaning history is available in the `openrefine/` folder.

2. **Analysis and visualisation** were done in R using the `tidyverse` package.
   - Frequency counts of social categories
   - Age distribution of the “Destitute / Supported by relief” group

## How to Reproduce

1. Clone this repository.
2. Open the RStudio project (`.Rproj` file).
3. Run the script:  
   `scripts/01_analysis_aarhus_1845.R`
   
   ## Folder Structure
   
   data/
├── raw/               # Original census data
└── clean/             # Cleaned data with social_category
figures/               # Visualisations used in the report
openrefine/            # OpenRefine project archive (cleaning history)
scripts/               # R analysis scripts


## License

This project is licensed under the [Creative Commons Attribution 4.0 International License](LICENSE) (CC BY 4.0).


## Folder Structure
