## Loan status prediction
This dataset was obtained from [Kaggle](https://www.kaggle.com/datasets/bhavikjikadara/loan-status-prediction)

### About the dataset
* In this Loan Status Prediction dataset, we have the data of applicants who previously applied for the loan based on the property which is a Property Loan.
* The bank will decide whether to give a loan to the applicant based on some factors such as Applicant Income, Loan Amount, previous Credit History, Co-applicant Income, etc…
* The goal is to predict the loan to be approved (Y) or to be rejected (N) for an applicant.

### About the loan_data.csv file
* Loan_ID: A unique loan ID.
* Gender: Either male or female.
* Married: Weather Married(yes) or Not Marttied(No).
* Dependents: Number of persons depending on the client.
* Education: Applicant Education(Graduate or Undergraduate).
* Self_Employed: Self-employed (Yes/No).
* ApplicantIncome: Applicant income.
* CoapplicantIncome: Co-applicant income.
* LoanAmount: Loan amount in thousands.
* Loan_Amount_Term: Terms of the loan in months.
* Credit_History: Credit history meets guidelines.
* Property_Area: Applicants are living either Urban, Semi-Urban or Rural.
* Loan_Status: Loan approved (Y/N).

### Proposed models
Loan status is a binary variable (approved/rejected) and thus it results in a clear classification issue. For classification purposes, most commonly used models are:

1) Logistic Regression
2) Decision Trees
3) Random Forest
4) Gradient Boosting Models
5) Support Vector Machines (SVM)
6) Neural Networks

###  Model performance 
Model performance will be evaluated through ROC-AUC curve and classification matrix. In this particular case, it is preferrable to incorrectly reject applications that should have been approved (false negatives) rather than approving loans to applicants who will not pay the loan (false positives). The first situation results in losing potential payers, which indeed would not be good for business. However the former results in lending money to potential defaulters, that is, people who will not pay for the loans. This is a worst scenario compared to losing potential clients. Thus it would be more adequate to train a more conservative model.


### Analysis procedure
1) Exploratory analysis of the dataset, imputation of missing data and description of the target, features and their relationship (descriptive_analysis.ipynb)
2) Prepare the data so datatypes and structure are appropriate for the proposed machine learning models, investigate correlations and feature importance (pre_modelling_process.ipynb)
3) Fit the proposed models and evaluate their performance (model_fitting.ipynb)
