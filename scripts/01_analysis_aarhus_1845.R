# DAM Final Project – Aarhus 1845 Census Analysis
# Author: [Your Name]
# Date: July 2026

library(tidyverse)

# Load cleaned data
census <- read_csv("data/clean/aarhus-1845-cleaned.csv")

# Frequency table of social categories
census %>%
  count(social_category, sort = TRUE)

# Plot 1: Key social categories
census %>%
  filter(social_category %in% c("Destitute / Supported by relief", 
                                "Insane / Institutionalised",
                                "Physically disabled")) %>%
  count(social_category) %>%
  ggplot(aes(x = reorder(social_category, n), y = n, fill = social_category)) +
  geom_col(width = 0.7) +
  geom_text(aes(label = n), hjust = -0.1, size = 4) +
  coord_flip() +
  scale_fill_manual(values = c("Destitute / Supported by relief" = "#E74C3C",
                               "Insane / Institutionalised" = "#3498DB",
                               "Physically disabled" = "#2ECC71")) +
  labs(title = "Poverty and Supported Groups – 1845 Aarhus Census",
       subtitle = "Number of people recorded in key categories",
       x = NULL,
       y = "Number of people",
       caption = "Source: Aarhus Stadsarkiv, 1845 Census") +
  theme_minimal(base_size = 13) +
  theme(legend.position = "none",
        plot.title = element_text(face = "bold"))

# Plot 2: Age distribution of Destitute group
census %>%
  filter(social_category == "Destitute / Supported by relief") %>%
  ggplot(aes(x = alder)) +
  geom_histogram(binwidth = 5, fill = "#E74C3C", color = "white") +
  labs(title = "Age Distribution of People 'Destitute / Supported by relief'",
       subtitle = "1845 Aarhus Census",
       x = "Age",
       y = "Number of people",
       caption = "Source: Aarhus Stadsarkiv, 1845 Census") +
  theme_minimal()
