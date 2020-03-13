## Project 2nd Step

## Cloud Application Development, MSSA

### Kaiyuan Wang

### Quantico, Virginia

#### 20200127

So back to the conclusion from last paper.

Would it be nice if we can modify MRRS by adding it to Outlook? We don't necessarily to allow someone to edit their own record, but at least by letting them see what will be due or when will be due can help a lot with PHA booking process. For instance, if someone needs to complete a fasting glucose test. A medical staff will send a calendar event to the person and generate a lab order, and when the lab is complete, this person will be removed from the hit list.

I am considering to build an application that keep tracks with people's health record based on a calendar system with a healthcare administration UI. So the data we are gonna use includes, but not limited to patient's demographic info, vaccine records, lab results, vital signs history, encounter note from each clinic visit, etc. The application will consists several version based on user's identity, such as patient, medical staff, provider, etc. Generally, providers will have more options than medical staffs, and medical staffs will have more than patients. When logged in, a patient will be able to see a few tabs on the left, labels as demographic, encounter note, lab results, vaccine history, telephone consult request, etc. Patient will be able to edit patient's own demographic if there is a change in home address, change of communication method, and request a t-con; however, only medical staff and provider can edit vaccine history, lab results. Patient will be able to see when the next lab or vaccine will be due soon, and around 7 days before and after, medical staff can place an lab or vaccine order for the patient like a calendar invite. Patient can go to any nearby clinic or say Walmart, CVS, to have the sample collected. Patient may also make appointment with medical staff enabling patient to see a provider's schedule, just like purchase a flight ticket online.

The general idea is to minimize the effort for patient visiting a medical facility. And by providing a black and white platform for patient to see what is going on, it should be extremely easy for those foreign language speaker.