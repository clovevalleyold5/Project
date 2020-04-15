## Project 11th Step

## Cloud Application Development, MSSA

### Kaiyuan Wang

### Quantico, Virginia

#### 20200413



## Use Case

#### Trigger

Provider needs to upload an encounter note after seeing a patient

#### Precondition

Patient exists in the system

#### Postcondition

Encounter saved and uploaded

#### Basic Course of Action

1. Provider logs in the provider's portal by using username and password
2. Provider can see today's schedule
3. Provider opens this hour's appointment
4. Patient's related lab results, vaccine records, checked vital signs are preloaded in the encounter.
5. Provider writes the encounter note
6. Provider saves the note and upload the note

#### Alternate Course of Action

1. The provided information does not match any record in system, re-enter

2. Appointment is not available, either no-show, patient cancelled, facility cancelled, or left without being seen

3. Appointment is completed, or a follow-up, or a referral is required

   

## Functional Requirement

1. Identity Verification:

   Provider needs to log in the system, if username or password does not match, system will throw error message. If more than three consecutive times of wrong input detected, account locked

2. Calendar:

   A full list of today's schedule, with patients' identification, appointment time, appointment type

3. Starts Appointment:

   Provider opens the appointment on the calendar, takes provider to another page, with all the lab works which have the related ExamID are listed. Provider can goes into each lab, medicine, or other histories to read more. Provider can start typing the encounter note. Not sure if private video chat is allowed or not.

4. Completes Appointment:

   Once the appointment is completed, provider can save the note and upload into the cloud drive, for instance, OneDrive. Provider can edit the note later on.

5. Patient's Access:

   Once the note is fully completed, patient will be able to see the encounter note from patient's portal

   
