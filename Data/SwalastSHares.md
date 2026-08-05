834 Cross validation for Educators Health Plans Life, Accident and Health, Inc 
From: Selma Kazanci <skazanci@georgiaaccess.ga.gov>
Sent: Tuesday, July 28, 2026 5:20 PM
To: Hari Venkatachalam <HVenkatachalam@georgiaaccess.ga.gov>; Swathi Bharatwaj <sbharatwaj@georgiaaccess.ga.gov>
Cc: Taylor Pickett <tpickett@georgiaaccess.ga.gov>; Balasubramani Chandrasekar <bchandrasekar@georgiaaccess.ga.gov>
Subject: Missing Enrollee IDS Identification

 

Hi Hari,

We have identified missing 130 enrollee ids from Automation Records cross-validating them with UI:

Thanks, Swathi, for all support on UI records identifications!

There are several key findings:

1- One is that we have those enrollee ids as per our observations, they are all same day cancellations or same month cancellation records, and they are all available in UI records as cancellation
2- Because they have not been part of enrollment, some of them have been created in SFTP files as only policy ids, no enrollee ids were identified in sftp inbound records.
3- Some of these enrollee ids are created as outbound data as to_filename and they were never created in sftp files.

4- Our automation pipeline mapped all policy ids and enrollee ids that were available in SFTP files, so some enrollee policy ids are available in our records, but their enrollee ids as cancelled, were not in those sftp files.

5- As Swathi mentioned that non-payment enrollees should have been inserted by issuers, we could find some examples as non-payment cancellation, but their enrollee ids were not also inserted in SFTP files by issuers.

So those missing enrollees are all cancelled around same time period and never are inserted by issuers, but still, they are available
in UI. 
Here I attach the examples we have: 

These records as non-payment were canceled and we have these records in automation as Policy id, but enrollee ids were not 
in these files:

Policy ID 212213749
from_83502_GA_834_INDV_20260617110750.xml
This policy was canceled due to non-payment so 834 was received.

1002226107  
Policy ID 212225733
from_83502_GA_834_INDV_20260617110750.xml
This policy was canceled due to non-payment so 834 was received.

 

enrollee id : 1000320577
policy id: 212238524
file name: from_83502_GA_834_INDV_20260311124823.xml

 

enrollee id: 1000534867
policy id: 212061197
file name: from_83502_GA_834_INDV_20260211171936.xml

policy id: 1000067853
enrollee id: 1000139813

The second types are never in SFTP files found, but they were in UI and we only saw outbound data as to..fileName going to issuers
no incoming records for those so far were identified here:

 

enrollee ids:
1000963464
1001475165
1000320577
1000380036
1000534867
1006953176
1006953231
1007080338

Thanks,

 

Selma Kazanci

Data Integration Analyst  |  Georgia access

 

skazanci@georgiaacces.ga.gov

+1 470 810 1573


Swathi Bharatwaj
Wed 7/29/2026 4:54 PM
@Selma Kazanci I have attached the Report for Educators Health Plans Life, Accident and Health, Inc for us to get started with the cross validation

You
Wed 7/29/2026 7:34 PM
Here are the remaining ones: Care Source - 18856 Humana - 4399 Cigna - 11806 Dominion - 1454​​Thanks, Selma Kazanci Data Integration Analyst Office of Commissioner John F. King Georgia Access Two Martin Luther King Jr Drive SE Suite 702

You
Thu 7/30/2026 7:12 AM
Hi Hari, I have same observations about the gap between Enrollment_Test records and automation records: First thing overall, GETINSURED UI has most of the records on both tables which seems the best of source of truth so far. ISSUER : 37301
Swathi Bharatwaj
Thu 7/30/2026 10:23 AM
@Hari Venkatachalam Let us know if this summarization accurately represents what we talked about. Thank you Hari once again for your time and guidance. Great work @Selma Kazanci. Thank you @Taylor Pickett in advance for your help.
Taylor Pickett
Thu 7/30/2026 10:48 AM
Hi all, I wanted to flag an important consideration as we continue working through the missing counts. As the volume of missing policies increases, the effort required to locate these records in Sisense grows as well. As we all know, Sisense has notable
Swathi Bharatwaj
Thu 7/30/2026 11:28 AM
Hey Taylor As per our discussion we need to 1. Break down each policy to identify the enrollees 2. Get the SSNs for each enrollee 3. see which enrollee SSN has been in our system since 2024 4. Tracking bssed on SSN is not reliable tha

Taylor Pickett
Thu 7/30/2026 12:28 PM
Hello, None of the missing enrollments from Selma's list are for coverage year 2024. I have attached the report above. Best, Taylor B. Pickett Information Technology, Application Data Specialist Georgia Access C: (470) 858-1936 TPic
Swathi Bharatwaj
Thu 7/30/2026 2:47 PM
Hey Taylor, I compared the UI findings for the SSN listed below with the information shown in your report. I spot‑checked SSN 1234 in the UI, and below are the findings: 1. For PY 2025, the UI shows 2 canceled policies and 2 confirmed policies
Swathi Bharatwaj
Thu 7/30/2026 2:59 PM
Hey Taylor, I compared the UI findings for the SSN listed below with the information shown in your report. I spot‑checked SSN 219192656 in HH ID 408 and below are the findings: 1. For PY 2025, the UI shows 2 canceled policies (178826 and 179092
Taylor Pickett
Thu 7/30/2026 3:57 PM
Hi, If you only need to verify whether an enrollee originated in 2024, you can use the [dbo].[PY242526_Applicants_test] table in SQL. The applicant_guid field corresponds directly to the enrollee ID. Sisense can also be used to check this, but the proces

Taylor Pickett
Thu 7/30/2026 4:00 PM
Hi, If you only need to verify whether an enrollee originated in 2024, you can use the [dbo].[PY242526_Applicants_test] table in SQL. The applicant_guid field corresponds directly to the enrollee ID. Sisense can also be used to check this, but the proces
Swathi Bharatwaj
Thu 7/30/2026 4:22 PM
Thanks @Taylor Pickett. I can get started with these and get back to you if I have any questions. ________________________________ From: Taylor Pickett <tpickett@georgiaaccess.ga.gov> Sent: Thursday, July 30, 2026 4:00 PM To: Swathi Bharatwaj

Swathi Bharatwaj
Thu 7/30/2026 7:54 PM
Hey Hari, Selma and Taylor I ran the query in SQL using Applicants_Test table just like Taylor suggested and attached are the results and the query I used @Hari Venkatachalam we spot checked 3 of them to ensure they were migrated from FFM. We wa

You
Sun 8/2/2026 6:45 PM
Hi Hari, Swathi, and Taylor Following our investigation into the gaps between Automation (raw inbound 834 data) and Enrollments_TEST/UI, we completed a detailed record-level analysis for Issuer 37301 (Educators Health Plans Life, Accident and Health, Inc

Swathi Bharatwaj
Mon 8/3/2026 8:06 PM
Thank you @Taylor Pickett and @Selma Kazanci for all your support. Thanks @Hari Venkatachalam

1
Taylor Pickett
Tue 8/4/2026 8:52 AM
Hi Swathi, Since Sisense and the Enrollments_Test table ultimately return the same underlying data, I want to confirm whether the goal is simply to replicate the SQL-based approach you’ve been using so we can validate that our results align. Here’s how

Swathi Bharatwaj

​Taylor Pickett;​Hari Venkatachalam;​Selma Kazanci​
Hello,

 

Thank you @Taylor Pickett for all the inputs. I was able to pull all the Policy IDs for the SSNs that migrated from the FFMs. The record count shows 6,168 because the report includes all enrollees linked to each Policy ID. We spot‑checked some entries and confirmed they are all associated with EMI Health.

 

Attached is the file. @Selma Kazanci let me know if you need additional details.

 

Swathi Raghuram Bharatwaj

User Acceptance Test Lead

Office of Commissioner John F. King

Georgia Access

Two Martin Luther King Jr Drive SE

Suite 702 West Tower

Atlanta, Georgia 30334

C: 470-859-7872

sbharatwaj@georgiaaccess.ga.gov




Swathi Bharatwaj

​Taylor Pickett;​Hari Venkatachalam;​Selma Kazanci​
Hello,

 

Thank you @Taylor Pickett for all the inputs. I was able to pull all the Policy IDs for the SSNs that migrated from the FFMs. The record count shows 6,168 because the report includes all enrollees linked to each Policy ID. We spot‑checked some entries and confirmed they are all associated with EMI Health.

 

Attached is the file. @Selma Kazanci let me know if you need additional details.

 

@Hari Venkatachalam Our next step is to verify whether all Policy IDs in the FFM list are present in Selma’s data. Once Selma completes this check, we should be able to confirm our theory.

 

Swathi Raghuram Bharatwaj

User Acceptance Test Lead

Office of Commissioner John F. King

Georgia Access

Two Martin Luther King Jr Drive SE

Suite 702 West Tower

Atlanta, Georgia 30334

C: 470-859-7872

sbharatwaj@georgiaaccess.ga.gov




Selma Kazanci

​Swathi Bharatwaj;​Taylor Pickett;​Hari Venkatachalam​
Thank you Swathi and I will investigate these policies where and how they are mapped.

Regards,

Selma Kazanci
Data Integration Analyst
Office of Commissioner John F. King
Georgia Access
Two Martin Luther King Jr Drive SE
Suite 702 West Tower
Atlanta, Georgia 30334
C: 470-810-1573
skazanci@georgiaaccess.ga.gov


Swathi Bharatwaj

​Selma Kazanci;​Taylor Pickett;​Hari Venkatachalam​
Sounds good Selma.

 

Swathi Raghuram Bharatwaj

User Acceptance Test Lead

Office of Commissioner John F. King

Georgia Access

Two Martin Luther King Jr Drive SE

Suite 702 West Tower

Atlanta, Georgia 30334

C: 470-859-7872

sbharatwaj@georgiaaccess.ga.gov

