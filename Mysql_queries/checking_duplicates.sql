
-- checking duplicates

WITH Dupes AS(
SELECT
customerID,
ROW_NUMBER() OVER(PARTITION BY customerID, gender, SeniorCitizen, Partner, Dependents, 
tenure, PhoneService, MultipleLines, InternetService, OnlineSecurity, OnlineBackup, DeviceProtection, 
TechSupport, StreamingTV, StreamingMovies, Contract, PaperlessBilling, PaymentMethod, 
MonthlyCharges, TotalCharges, Churn ORDER BY customerID ) as row_num
FROM telco_customer_churn
)

SELECT * FROM Dupes WHERE 
row_num > 1;
