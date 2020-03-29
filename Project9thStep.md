## Project 9th Step

## Cloud Application Development, MSSA

### Kaiyuan Wang

### Quantico, Virginia

#### 20200330



## Use Case

#### Trigger

Patient wants to make a payment

#### Precondition

Patient is enrolled in the system

#### Postcondition

Patient's payment is made

#### Basic Course of Action

1. Patient logs in the patient's portal by using username and password
2. Patient can choose the payment tab to view balance, with details like: due amount, due date, minimum amount to pay, the exam and encounter notes that relates to, etc.
3. Patient enters the amount that patient wants to pay.
4. Patient can choose the payment method, e-check or credit card, etc.
5. Patient fills out the payment method
6. Patient can choose whether to save this payment method for future use
7. Payment completes

#### Alternate Course of Action

1. The provided information does not match any record in system, re-enter
2. If there is no payment due, page will show "no payment due"
3. If patient has a overdue payment, system will the prorated amount that needs to be paid with explanation
4. If patient's payment method does not go through, an error will be threw
5. If patient pays more than required amount, credit will be saved



## Functional Requirement

1. Identity Varification:

   Patient needs to log in the system, if username or password does not match, system will throw error message. If more than three consecutive times of wrong input detected, account locked

2. Payment Detail:

   When patient choose to view payment, system will list all the past payments, if any, and future payment if available, with EncounterID and ExamID, etc. also, the due date, due amount, and minimum amount to pay

3. Payment Input:

   Webpage needs to display text input box for patient to type in the payment info, and there needs to be certain format required for bank account, routing number, credit card number, expiration date, etc., if the payment input is invalid, error message needs to be threw

4. Overdue Payment:

   System needs to show the prorated amount of payment, with explanation of how this amount is calculated

5. Payment Verification:

   After contact with the financial institute, if the payment method is invalid or does not have sufficient fund, system needs to send patient a message

6. Saving Payment Method:

   Patient can choose if a payment method is saved for future use or not

7. Payment Made:

   "Thank you"