# Who Counts as Destitute?  
**Poverty, Insanity and Categorization in the 1845 Aarhus Census**

**Author:** [Daniel Andrés Ortiz del Villar]  
**Course:** Digitale arkiver og metoder (DAM) – Aarhus University, Spring 2026  
**Repository:** https://github.com/Tulavera92/DAM-final-project-aarhus-poverty-census-1845

## Research Question
How did the 1845 Aarhus census construct categories of poverty, destitution and insanity through the `erhverv` (occupation) field, and what patterns emerge when these categories are analysed by age and gender?

## Project Overview
This project uses digital methods to explore how historical administrative data (the 1845 Aarhus census) created and made visible categories of social marginality. The work includes:

- Cleaning and standardising the messy `erhverv` field using OpenRefine
- Quantitative analysis with R (tidyverse + ggplot2)
- Critical reflection on database thinking, biases in classification, and the ethics of digitising and analysing data about marginalised historical subjects

## How to Reproduce This Project

1. Clone this repository
2. Make sure you have R and RStudio installed
3. Install the required packages:
   ```r
   install.packages(c("tidyverse", "ggplot2", "readr"))
