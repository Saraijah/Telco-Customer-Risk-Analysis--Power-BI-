
SELECT SeniorCitizen FROM telco_customer_churn;


-- Calculate overall churn rate in the dataset
SELECT COUNT(*) AS TOTAL,
SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)*100.0 / COUNT(*),2) AS Churned_Percentage
FROM telco_customer_churn;

--  Churn rate by contract sum and percentage by contract
SELECT 
Contract,
SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churn_rate,
ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100  / COUNT(*), 2) AS churn_percentage
FROM telco_customer_churn
GROUP BY Contract;

-- Churn rate sum and percentage by payment method
SELECT 
PaymentMethod,
SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churn_rate,
ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100  / COUNT(*), 2) AS churn_percentage
FROM telco_customer_churn
GROUP BY PaymentMethod;


-- Average Monthly charges for churned vs not 
SELECT 
  Churn,
  ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges
FROM telco_customer_churn
GROUP BY Churn;

SELECT 
Churn,
  ROUND(AVG(tenure), 2) as average_tenure_months
  FROM telco_customer_churn
GROUP BY Churn;


-- Churn By Internet Service
SELECT 
  InternetService,
  ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)*100.0 / COUNT(*), 2) AS churn_percentage
FROM telco_customer_churn
GROUP BY InternetService;



-- Churn rate for senior citizen or not

SELECT 
  SeniorCitizen,
  CASE 
    WHEN SeniorCitizen = 1 THEN 'Senior Citizen' 
    ELSE 'Not Senior Citizen' 
  END AS senior_citizen_group,
  SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
  COUNT(*) AS total_customers,
  ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)*100.0 / COUNT(*), 2) AS churn_percentage
FROM telco_customer_churn
GROUP BY SeniorCitizen;



-- Do Senior Citizen on month to month contract churn more

SELECT 
  SeniorCitizen,
  Contract,
  ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_percentage,
    COUNT(*) AS total_customers
FROM telco_customer_churn
GROUP BY SeniorCitizen, Contract
ORDER BY churn_percentage DESC;







