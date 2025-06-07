# Telco Customer Risk Analysis (Power BI)
We obtained this Telco dataset from Kaggle.com to perform a real-world data analysis simulation focused on customer churn. Using MySQL, we cleaned and standardized the dataset to ensure accuracy and consistency. Power BI was then employed to visualize the data and uncover meaningful insights.
Our primary goal was to analyze the factors influencing customer churn and identify strategies to minimize it based on data-driven findings. For this analysis, we utilized key columns including Customer ID, Partner status, Senior Citizen status, Contract type, Payment Method, Monthly Charges, and Total Charges.

![Customer_Risk_Analysis_Dashbaord (1)](https://github.com/user-attachments/assets/52f52442-3678-4b32-b7e3-ad6b76886196)


## 🧰 Tools Used
- **MySQL** – for data cleaning and transformation
- **Power BI** – for creating dashboards and visual insights
- **GitHub** – for version control and documentation
- 
---

## 📎 Power BI Report (Live Link)
🔗 [View the Power BI Dashboard Here](https://app.powerbi.com/links/jSzK10iL-B?ctid=898c782c-ee10-4bdd-a6be-e993f0d4c44a&pbi_source=linkShare)

---

## 🧹 Data Cleaning (in MySQL)
We prepared and standardized the dataset using the following steps:
- Ensured appropriate column data types (e.g., `VARCHAR`, `INT`)
- Removed duplicate records using `ROW_NUMBER()` window function
- Standardized formatting with `CONCAT()` and `SUBSTRING()`
- Identified and handled null values using `CASE` statements

---

## 📈 Key Insights
- 📌 **Overall churn rate**: 26.58% (1,869 out of 7,032 customers)
- 📉 **Highest churn**: Month-to-month contracts (42.71%)
- 🌐 **Fiber optic users** churn more (41.89%) than DSL users (19%)
- 👵 **Senior citizens** churn at a higher rate (41.68%) than non-seniors (23.56%)
- 💳 **Electronic check** users have the highest churn (1,071 customers)
- 💰 Customers who churned typically paid **~$70/month**, while loyal customers paid closer to **$110/month**

---

## ✅ Recommendations
### 💳 Payment Modernization
- Replace **electronic checks** with digital wallets (e.g., **PayPal**, **Apple Pay**, **Google Pay**)
- Accept **EBT** and **government assistance** options
- Provide **in-store payment** options and digital literacy **workshops**

### 🎁 Loyalty & Inclusion
- Offer **gift cards** for long-term customers (1+ year)
- Launch **special plans** for veterans, retirees, and low-income seniors
- Introduce **family plans** for single-parent households

### 💬 Customer Engagement
- Assign **dedicated customer service reps** for check-ins
- Send out **surveys** before subscription renewals
- Send **birthday/holiday messages** to increase customer appreciation

### 📣 DSL Awareness Campaign
- Promote DSL as a lower-churn option with clear marketing
- Create a **retention team** and gather feedback on fiber churn reasons

---

## Conclusion
The churn analysis revealed key customer segments at higher risk of leaving, particularly those on month-to-month contracts, using electronic checks, or among senior citizen demographics. By modernizing payment methods, improving support for traditional customers, and implementing personalized loyalty programs, the company can reduce churn and improve long-term customer satisfaction. These data-driven strategies are aimed at enhancing the overall customer experience while promoting service reliability and retention.

---

## 🔗 Dataset Source
- [Kaggle – Telco Customer Churn Dataset](https://www.kaggle.com/datasets/blastchar/telco-customer-churn)

---

## 👩‍💻 About the Author
**Saraijah** – Tech-savvy data analyst in training with a strong foundation in SQL, Excel, Power BI, and customer engagement strategy. Passionate about using data to drive business impact.

---

