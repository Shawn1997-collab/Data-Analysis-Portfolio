# Data-Analysis-Portfolio
## 👋 About Me

Hi, I'm **Shaohui (Shawn) Ma** — a first-generation immigrant and passionate data analyst who transforms raw data into actionable insights.

🎓 I hold a degree in **Business Administration – Information Systems Management** from **California State University, Long Beach**, and certifications in **Business Analysis (CSULB)** and **Google Analytics**.

🌐 I'm **bilingual** in **Mandarin (native)** and **English (advanced)**, and known for my strong communication and problem-solving skills in cross-functional environments.

💻 With over **one year of hands-on experience**, I work confidently with tools like **SQL**, **Excel**, **pandas**, **Tableau**, and **R** to clean, analyze, and visualize data.

📊 I love exploring datasets, identifying patterns, and telling compelling data stories that support smarter decisions.  
My projects showcase real-world skills in **data cleaning**, **exploratory data analysis (EDA)**, and **interactive dashboards**, including work done in **Google Colab** using the **Pokémon dataset**.
## 📬 Contact

- 📧 Email: [shawnma785509956@gmail.com](mailto:shawnma785509956@gmail.com)  
- 💼 LinkedIn: [Shaohui (Shawn) Ma](https://www.linkedin.com/in/shaohui-ma-2a1425233)
- ## 🛠️ Skills

- **Communication**  
- **Problem-Solving**  
- **Data-Driven Decision Making**  
- **SQL**  
- **Microsoft Office (Excel, Word, PowerPoint)**  
- **Python (pandas)**  
- **Tableau**  
- **R**
## 🏆 Accomplishments

- Created an insightful **Tableau visualization** analyzing the World Happiness Report data.  
- Designed a compelling **PowerPoint presentation** that helped my current job’s safety committee win the monthly contest.  
- Used **Excel** and **SQL** in a class project to analyze and determine the best times to take classes to avoid parking difficulties.
# 🧠 Data Analyst Portfolio


# 🧹 Pokémon Data Exploration with pandas

This project demonstrates **data cleaning** and **exploratory data analysis (EDA)** using the Pokémon dataset in **Google Colab** with **pandas**.

## 📁 Dataset
- **File:** `pokemon.csv`
## 📋 Dataset Column Description

| Column       | Description |
|--------------|-------------|
| `number`     | The entry number of the Pokémon |
| `name`       | The English name of the Pokémon |
| `type1`      | The Primary Type of the Pokémon |
| `type2`      | The Secondary Type of the Pokémon |
| `hp`         | The Base HP of the Pokémon |
| `attack`     | The Base Attack of the Pokémon |
| `defense`    | The Base Defense of the Pokémon |
| `sp.atk`     | The Base Special Attack of the Pokémon |
| `sp.def`     | The Base Special Defense of the Pokémon |
| `speed`      | The Base Speed of the Pokémon |
| `generation` | The numbered generation which the Pokémon was first introduced |
| `legendary`  | Denotes if the Pokémon is legendary |
## 🚀 Tools Used
- Google Colab
- Python (pandas), seaborn

## 📊 Data Exploration
- Examining the number of rows and columns
- Showing the head rows of a data frame
- Obtaining a single or multiple attributes for each Pokémon
- Extracting specific rows or columns
- Data Visualization 
## 📎 Files
- `Data Exploration.ipynb`: Main Colab notebook with all code
- `pokemon.csv`: Original dataset
## 📎 View the Notebook
[👉 Project File](https://github.com/Shawn1997-collab/Data-Analysis-Portfolio/blob/main/Data_Exploration.ipynb))

# 🧹 Data Cleaning & Exploration with pandas

This project demonstrates **data cleaning**, **exploratory data analysis (EDA)**, and **data manipulation** using Python's `pandas` library in a Google Colab environment.

## 📁 Dataset
- **Dataset Name:** car_kick.csv
## 📋 Dataset Column Description

| Column                         | Description |
|--------------------------------|-------------|
| `Auction`                      | Auction provider at which the vehicle was purchased |
| `Color`                        | Vehicle color |
| `IsBadBuy`                     | Identifies if the kicked vehicle was an avoidable purchase |
| `MMRCurrentAuctionAveragePrice` | Acquisition price for this vehicle in average condition as of current day |
| `Size`                         | The size category of the vehicle (Compact, SUV, etc.) |
| `TopThreeAmericanName`         | Identifies if the manufacturer is one of the top three American manufacturers |
| `VehBCost`                     | Acquisition cost paid for the vehicle at time of purchase |
| `VehicleAge`                   | The years elapsed since the manufacturer's year |
| `VehOdo`                       | The vehicle's odometer reading |
| `WarrantyCost`                 | Warranty price (term = 36 months and mileage = 36K) |
| `WheelType`                    | The vehicle wheel type description (Alloy, Covers) |

## 🛠️ Tools & Technologies
- Google Colab
- Python (pandas). seaborn

## 🔍 Project Goals
- Examining and removing missing values
- Displaying all numeric and categorical variables
- Calculating and visualizing statistical measurements (variance, standard deviation, interquartile range, etc.)
- [👉 Project File](https://github.com/Shawn1997-collab/Data-Analysis-Portfolio/blob/main/Data_Cleaning_and_Exploration.ipynb))
  
# 🧮EV Adoption in U.S. (MySQL and Tableau)
The transition to electric vehicles (EVs) is accelerating across the United States, but adoption rates vary significantly by state. This project explores the key factors influencing EV adoption. In this project, I used **MySQL** and **Tableau** to explore key factors influencing EV adoption in the U.S.
## 📁 Dataset
- Dataset used: EV State Detail.csv
- ## 🛠️ Tools & Technologies
- MySQL
- MySQL Workbench 
## 🔍 Key Exploration Tasks
- Inspect schema and table structure
- Apply filtering, sorting, and conditions
- Ranking based on certain columns
- Explore correlations between EV adoption rates and potential influencing factors using both national-level and state-level data.
## 📊 Sample Query – Gasoline Price Ranking (2023)

This query ranks U.S. states based on their average gasoline price per gallon in 2023.

```sql
SELECT state, ROUND(gasoline_price_per_gallon, 2) AS gas_price,
       RANK() OVER (ORDER BY gasoline_price_per_gallon DESC) AS National_Ranking
FROM porfolio.ev_data
WHERE year = 2023;
```

You can view the full SQL script here:  
[Portfolio Data Exploration.sql](./Portfolio%20Data%20Exploration.sql)

## 📊 Query Results Visualizations(Tableau)
### 🖼️ Dashboard Preview  
[![EV Dashboard](EV_Growth_vs_Infrastructure.png)](https://github.com/Shawn1997-collab/Data-Analysis-Portfolio/blob/main/EV%20Growth%20vs.%20Infrastructure.png)
### 🖼️ Full Visualization
[View Full Tableau Project on Tableau Public](https://public.tableau.com/views/EVs_17513195932010/EVGrowthvs_Infrastructure)




## 🔍 Key Findings
California has the most electric vehicles nationwide in 2023
- States with more charging stations tend to have higher EV adoption rates.
- States with higher gasoline prices usually have higher electric vehicle adoption.
- Due to electric vehicles' affordability, people with higher average income usually tend to purchase electric vehicles.
- Each state's government's tax and environmental policies could impact electric vehicle adoption. (Ex: California)
- For electric vehicle manufacturers, states like California, Florida, and Texas.
- Building more charging stations is important to increase sales in states with low electric vehicle adoption.

## 🧭 Recommendations / Next Steps

Based on the analysis of EV growth versus infrastructure across U.S. states, the following actions are recommended to support wider electric vehicle (EV) adoption:

- 🏛 **Government Policy Engagement**  
  Work with local and federal governments to introduce or expand tax credits and rebates that make EV ownership more financially appealing, especially in low-adoption regions.

- 💲 **Make EVs More Affordable**  
  Encourage policies and partnerships that lower the purchase cost of EVs, such as manufacturer subsidies, zero-interest loans, or used EV incentives.

- ⚡ **Expand Charging Infrastructure**  
  Invest in public charging stations in underserved and rural areas. Accessibility to charging is critical for potential EV buyers.

- 📍 **Target Deployment in Low-Adoption States**  
  Focus infrastructure and incentive development in states with the lowest EV penetration to reduce regional adoption gaps.

- 📣 **Public Awareness Campaigns**  
  Launch educational efforts that promote EV benefits and inform the public about available financial incentives.




