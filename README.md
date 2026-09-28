# 📊 Netflix Business Analytics — PostgreSQL SQL Project

A business-focused SQL analytics project using a Netflix content dataset to answer **15 real-world business questions** with PostgreSQL.

The project demonstrates practical SQL skills including **aggregation, filtering, grouping, subqueries, window functions, ranking, string manipulation, date operations, CTEs, conditional logic, and data transformation**.

---

## 🎯 Project Objective

The goal of this project is to transform raw Netflix content data into meaningful business insights using SQL.

Instead of simply querying the dataset, the project answers practical questions that a data analyst might encounter when analyzing a large content library, such as:

- How is Netflix's content distributed between Movies and TV Shows?
- Which ratings are most common?
- Which countries contribute the most content?
- Which genres dominate the catalog?
- Which years had the highest volume of content added?
- Which actors and directors appear most frequently?
- How much content can be classified based on specific description keywords?

---

## 🛠️ Tech Stack

- **PostgreSQL**
- SQL
- pgAdmin
- Window Functions
- CTEs
- Subqueries
- String & Array Functions
- Date & Time Functions

---

## 📁 Dataset

The project uses a Netflix titles dataset containing information about movies and TV shows, including:

- Show ID
- Type
- Title
- Director
- Cast
- Country
- Date Added
- Release Year
- Rating
- Duration
- Listed-in / Genre
- Description

---

# 🔎 Business Problems Solved

### 1. Movies vs TV Shows

**Business Question:**  
How many Movies and TV Shows are available in the Netflix catalog?

**SQL concepts:** `GROUP BY`, `COUNT()`

---

### 2. Most Common Rating by Content Type

**Business Question:**  
What is the most common rating for Movies and TV Shows?

**SQL concepts:** `GROUP BY`, `COUNT()`, `RANK()`, `PARTITION BY`, subquery

---

### 3. Movies Released in 2020

**Business Question:**  
Which movies were released in a specific year?

**SQL concepts:** `WHERE`, multiple conditions

---

### 4. Top 5 Countries by Netflix Content

**Business Question:**  
Which five countries have the highest amount of content in the Netflix dataset?

**SQL concepts:** `STRING_TO_ARRAY()`, `UNNEST()`, `GROUP BY`, `ORDER BY`, `LIMIT`

---

### 5. Longest Movie Duration

**Business Question:**  
Which movie has the longest duration?

**SQL concepts:** `SPLIT_PART()`, `CAST()`, `ORDER BY`, `LIMIT`

---

### 6. Content Added in the Last 5 Years

**Business Question:**  
Which Netflix titles were added within the last five years?

**SQL concepts:** Date arithmetic, `CURRENT_DATE`, `INTERVAL`, filtering

---

### 7. Content by Director

**Business Question:**  
Which movies or TV shows were directed by Rajiv Chilaka?

**SQL concepts:** `ILIKE`, pattern matching

---

### 8. TV Shows With 5 or More Seasons

**Business Question:**  
Which TV shows have at least five seasons?

**SQL concepts:** `SPLIT_PART()`, type conversion, comparison operators

---

### 9. Content by Genre

**Business Question:**  
How many Netflix titles belong to each genre?

**SQL concepts:** `STRING_TO_ARRAY()`, `UNNEST()`, `COUNT()`, `GROUP BY`

---

### 10. Top 5 Years for Indian Netflix Content

**Business Question:**  
Which five years had the highest number of Netflix titles associated with India?

**SQL concepts:** `EXTRACT()`, date functions, `COUNT()`, `GROUP BY`, `ORDER BY`, `LIMIT`

---

### 11. Documentary Movies

**Business Question:**  
Which Netflix titles are categorized as documentaries?

**SQL concepts:** `ILIKE`, pattern matching

---

### 12. Content Without a Director

**Business Question:**  
Which titles have missing director information?

**SQL concepts:** `IS NULL`

---

### 13. Salman Khan's Movie Appearances in the Last 10 Years

**Business Question:**  
Which Netflix titles feature Salman Khan and were released within the last 10 years?

**SQL concepts:** `ILIKE`, date/year extraction, filtering

---

### 14. Top 10 Actors in Indian Content

**Business Question:**  
Which ten actors appear in the highest number of titles associated with India?

**SQL concepts:** `STRING_TO_ARRAY()`, `UNNEST()`, `COUNT()`, `GROUP BY`, `ORDER BY`, `LIMIT`

---

### 15. Content Categorization Using Description Keywords

**Business Question:**  
How many titles contain keywords related to "kill" or "violence" in their descriptions?

Content is categorized into:

- `Bad_Content`
- `Good Content`

**SQL concepts:** `CASE`, `WHEN`, `ILIKE`, CTEs, `GROUP BY`, aggregation

---

# 🧠 SQL Skills Demonstrated

This project demonstrates practical knowledge of:

### Basic SQL
- `SELECT`
- `WHERE`
- `DISTINCT`
- `ORDER BY`
- `LIMIT`

### Aggregation
- `COUNT()`
- `AVG()`
- `GROUP BY`

### Advanced SQL
- Window Functions
- `RANK()`
- `PARTITION BY`
- Subqueries
- Common Table Expressions (CTEs)

### Data Transformation
- `STRING_TO_ARRAY()`
- `UNNEST()`
- `SPLIT_PART()`
- `CAST()`
- Type conversion

### Date & Time Analysis
- `EXTRACT()`
- `CURRENT_DATE`
- `INTERVAL`
- Date filtering

### Conditional Logic
- `CASE`
- `WHEN`
- `ELSE`

### Text Analysis
- `ILIKE`
- Pattern matching
- Keyword-based classification

### NULL Handling
- `IS NULL`

---

# 💡 Key Takeaways

This project strengthened my ability to:

- Translate business questions into SQL queries
- Analyze categorical and numerical data
- Work with semi-structured string fields
- Handle multi-value columns
- Use window functions for ranking
- Build queries using CTEs and subqueries
- Perform time-based analysis
- Extract actionable insights from raw datasets
- Apply SQL to realistic business analytics problems

---

## 🚀 Project Outcome

This project strengthened my ability to transform raw relational data into meaningful business insights using PostgreSQL and demonstrated practical SQL techniques used in data analysis.
