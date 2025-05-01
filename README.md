
# 📊 Netflix Originals Data Analysis

This project is focused on analyzing a dataset of **Netflix Originals** using **MySQL**. It showcases how structured query language (SQL) can be used to extract insights and trends from a real-world dataset using various SQL techniques.

## 📁 Dataset Description

The analysis is based on two CSV datasets:

1. **Netflix_Originals**  
   Contains details about each Netflix Original title including:
   - Title
   - Genre ID
   - Runtime
   - IMDb Score
   - Language
   - Premiere Date

2. **Genre_Details**  
   Maps genre IDs to their respective genre names.

These datasets were imported into MySQL tables for querying.

## 🎯 Project Objective

The main objective is to:
- Practice and apply advanced SQL queries.
- Gain insights from the Netflix Originals dataset.
- Demonstrate the use of `GROUP BY`, `HAVING`, `ORDER BY`, `JOIN`, `WINDOW FUNCTIONS`, and `SUBQUERIES`.

## 📌 Key Analyses Performed

- ✅ Average IMDb scores for each genre.
- ✅ Genres with average IMDb score > 7.5.
- ✅ Titles sorted by IMDb score (descending).
- ✅ Top 10 longest Netflix Originals by runtime.
- ✅ Titles and their respective genres using JOINs.
- ✅ Ranked IMDb scores within each genre using window functions.
- ✅ Titles with IMDb scores above the overall average.
- ✅ Count of titles per genre.
- ✅ Genres with more than 5 titles scoring > 8.
- ✅ Top 3 genres by average IMDb score and their counts.

## 🛠️ Technologies Used

- MySQL
- SQL (Advanced queries)
- CSV (data source)
- Google Sheets (dataset source)

## 📂 Files Included

- `netflix_originals_data_analysis.sql`:  
  Contains all the SQL queries used for analysis.

- `SQL Final Project.pdf`:  
  Describes the project background, objectives, and key analysis questions.

## 🔗 Dataset Sources

- [Netflix_Originals Dataset](https://docs.google.com/spreadsheets/d/14ExfGXNya1fBPs_SlZj4-q2GHLOa4LLbJ9ADJIwK480/edit#gid=979450355)
- [Genre_Details Dataset](https://docs.google.com/spreadsheets/d/17xAZ21LLYrS8Q6vZHqXyWxe_6SW2Pa-H1EUg__EWGTA/edit#gid=201028059)

## 📣 How to Use

1. Clone this repository.
2. Import the datasets into your MySQL database.
3. Run the queries from `netflix_originals_data_analysis.sql` in your MySQL client.
4. Modify or extend queries to explore additional insights!

## 👨‍💻 Author

**Kalpesh Govind Talesha**

---
