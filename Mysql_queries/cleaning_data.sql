CREATE DATABASE TELCO_ECOMMERCE;
USE TELCO_ECOMMERCE;

SELECT * FROM telco_customer_churn;

-- Checking Distinct Value
SELECT DISTINCT InternetService FROM 
telco_customer_churn;

SELECT * FROM telco_customer_churn
WHERE TotalCharges IS NULL OR TRIM(TotalCharges) = '';



SELECT CustomerID, tenure, MonthlyCharges, TotalCharges
FROM telco_customer_churn
WHERE tenure > 0 AND TotalCharges = 0;


-- Checking for Nulls
SELECT 
    SUM(CASE WHEN CustomerID IS NULL THEN 1 ELSE 0 END) AS CustomerID_nulls,
    SUM(CASE WHEN gender IS NULL THEN 1 ELSE 0 END) AS gender_nulls,
    SUM(CASE WHEN SeniorCitizen IS NULL THEN 1 ELSE 0 END) AS SeniorCitizen_nulls,
    SUM(CASE WHEN Partner IS NULL THEN 1 ELSE 0 END) AS Partner_nulls,
    SUM(CASE WHEN Dependents IS NULL THEN 1 ELSE 0 END) AS Dependents_nulls,
    SUM(CASE WHEN tenure IS NULL THEN 1 ELSE 0 END) AS tenure_nulls,
    SUM(CASE WHEN PhoneService IS NULL THEN 1 ELSE 0 END) AS PhoneService_nulls,
    SUM(CASE WHEN MultipleLines IS NULL THEN 1 ELSE 0 END) AS MultipleLines_nulls,
    SUM(CASE WHEN InternetService IS NULL THEN 1 ELSE 0 END) AS InternetService_nulls,
    SUM(CASE WHEN OnlineSecurity IS NULL THEN 1 ELSE 0 END) AS OnlineSecurity_nulls,
    SUM(CASE WHEN OnlineBackup IS NULL THEN 1 ELSE 0 END) AS OnlineBackup_nulls,
    SUM(CASE WHEN DeviceProtection IS NULL THEN 1 ELSE 0 END) AS DeviceProtection_nulls,
    SUM(CASE WHEN TechSupport IS NULL THEN 1 ELSE 0 END) AS TechSupport_nulls,
    SUM(CASE WHEN StreamingTV IS NULL THEN 1 ELSE 0 END) AS StreamingTV_nulls,
    SUM(CASE WHEN StreamingMovies IS NULL THEN 1 ELSE 0 END) AS StreamingMovies_nulls,
    SUM(CASE WHEN Contract IS NULL THEN 1 ELSE 0 END) AS Contract_nulls,
    SUM(CASE WHEN PaperlessBilling IS NULL THEN 1 ELSE 0 END) AS PaperlessBilling_nulls,
    SUM(CASE WHEN PaymentMethod IS NULL THEN 1 ELSE 0 END) AS PaymentMethod_nulls,
    SUM(CASE WHEN MonthlyCharges IS NULL THEN 1 ELSE 0 END) AS MonthlyCharges_nulls,
    SUM(CASE WHEN TotalCharges IS NULL THEN 1 ELSE 0 END) AS TotalCharges_nulls,
    SUM(CASE WHEN Churn IS NULL THEN 1 ELSE 0 END) AS Churn_nulls
FROM telco_customer_churn ;



