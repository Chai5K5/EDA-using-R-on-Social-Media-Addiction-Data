# EDA-using-R-on-Social-Media-Addiction-Data
Mini project for Statistical techniques with R
# 📊 Social Media Addiction EDA Dashboard (R Shiny)

This project explores and visualizes patterns in students’ social media usage using **R** and **Shiny**.  
It focuses on understanding how screen time, sleep hours, and mental health indicators relate to social media addiction among students.  
The dashboard allows users to interactively explore data distributions and correlations in a visually engaging format.

---

## 🚀 Features

- **Interactive Dashboard** built with R Shiny  
- **Histogram Explorer**: View variable distributions dynamically  
- **Correlation Heatmap**: Explore relationships among numeric attributes  
- **Clean, Minimal UI** using `ggplot2` + `plotly` for interactivity  
- **Reproducible Analysis** of social media usage and behavioral trends  

---

## 🧠 Objectives and Scope

The objective of this project is to explore and analyze students’ social media usage patterns using R’s data visualization and statistical tools.  
The scope includes developing an interactive Shiny application that visualizes behavioral data through histograms, correlation matrices, and summary statistics.  
The project demonstrates how R, along with packages like `ggplot2`, `dplyr`, and `plotly`, can provide valuable insights into the psychological and academic effects of social media addiction.

---

## 🧰 Libraries Used

- **shiny** – For creating the web-based dashboard  
- **ggplot2** – For elegant static visualizations  
- **plotly** – For interactive, zoomable plots  
- **dplyr** – For efficient data manipulation  
- **readr** – For fast CSV import  
- **corrplot** – For correlation matrix visualization  
- **psych** – For descriptive statistics  

---

## ▶️ How to Run

1. Install the required packages:
   ```r
   install.packages(c("shiny", "ggplot2", "plotly", "dplyr", "readr", "corrplot", "psych"))
2. Open SocialMediaAddiction.R in RStudio.
3. Run the app
4. The dashboard will open inside RStudio’s Viewer or your browser.

# 📊 Dataset Overview

The dataset contains 13 attributes describing students’ demographics, social media habits, and psychological indicators.
Key variables include:

- Avg_Daily_Usage_Hours — Average hours spent on social media

- Sleep_Hours_Per_Night — Average sleep per night

- Mental_Health_Score — Mental wellness indicator

- Addicted_Score — Social media addiction intensity

# 🧩 Results and Insights

- Higher screen time is strongly correlated with addiction levels.

- Sleep hours tend to decrease with higher social media usage.

- Mental health scores show a moderate negative correlation with addiction.

- The app provides an intuitive, data-driven way to understand these behavioral patterns.

