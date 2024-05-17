## Banking customer churn analysis
This dataset was obtained from [Kaggle](https://www.kaggle.com/datasets/saurabhbadole/bank-customer-churn-prediction-dataset?resource=download)

### About the dataset (owner's dscription)
"This dataset contains information about bank customers and their churn status, which indicates whether they have exited the bank or not. It is suitable for exploring and analyzing factors influencing customer churn in banking institutions and for building predictive models to identify customers at risk of churning"

My aim is to explore the data, create a dashboard in Tableau as well as conducting a descriptive analysis in Python using matplotlib and seaborn libraries. Then will perform a predictive analysis using classification models. Next I will try to integrate the best classification model in the dashboard

### About the Churn_Modelling.csv file
* RowNumber: The sequential number assigned to each row in the dataset.
* CustomerId: A unique identifier for each customer.
* Surname: The surname of the customer.
* CreditScore: The credit score of the customer.
* Geography: The geographical location of the customer (e.g., country or region).
* Gender: The gender of the customer.
* Age: The age of the customer.
* Tenure: The number of years the customer has been with the bank.
* Balance: The account balance of the customer.
* NumOfProducts: The number of bank products the customer has.
* HasCrCard: Indicates whether the customer has a credit card (binary: yes/no).
* IsActiveMember: Indicates whether the customer is an active member (binary: yes/no).
* EstimatedSalary: The estimated salary of the customer.
* Exited: Indicates whether the customer has exited the bank (binary: yes/no).

### Proposed models
Loan status is a binary variable (approved/rejected) and thus it results in a clear classification issue. For classification purposes, most commonly used models are:

1) Logistic Regression
2) Decision Trees
3) Random Forest
4) Gradient Boosting Models
5) Support Vector Machines (SVM)
6) Neural Networks

My aim for this project will be to test all these models using pipes and GridSearchCV 

###  Model performance 

Model performance will be evaluated through ROC-AUC curve and classification matrix. In this particular case, it is preferrable to incorrectly reject applications that should have been approved (false negatives) rather than approving loans to applicants who will not pay the loan (false positives). The first situation results in losing potential payers, which indeed would not be good for business. However the former results in lending money to potential defaulters, that is, people who will not pay for the loans. This is a worst scenario compared to losing potential clients. Thus it would be more adequate to train a more conservative model.


### Analysis procedure
1) Exploratory analysis of the dataset, imputation of missing data (data_cleansing.ipynb)
2) Descriptive analysis of the target, features and their relationship (descriptive_analysis.ipynb)
3) Create control dashboard in Tableau
4) Prepare the data so datatypes and structure are appropriate for the proposed machine learning models, investigate correlations and feature importance (pre_modelling_process.ipynb)
5) Fit the proposed models and evaluate their performance (model_fitting.ipynb)
