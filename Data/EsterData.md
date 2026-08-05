Re: DQ - Duplicate SSN list for PY2025 and PY2026

Hari Venkatachalam

​Esther Anjorin;​Balasubramani Chandrasekar​
​Jakeise Moody;​Taylor Pickett;​Selma Kazanci;​Swathi Bharatwaj​
This is very clear explanation, Esther. Exactly what I wanted to know.  I will wait for Chandra's assessment on his query and whether we need to get one more version from him. 

Hariprakash Venkatachalam
Director of Technology
Office of Commissioner John F. King
Georgia Access
Two Martin Luther King Jr Drive SE
Suite 702 West Tower
Atlanta, Georgia 30334
C: 678.708.3135
HVenkatachalam@georgiaaccess.ga.gov



From: Esther Anjorin <eanjorin@georgiaaccess.ga.gov>
Sent: Tuesday, August 4, 2026 5:17 PM
To: Hari Venkatachalam <HVenkatachalam@georgiaaccess.ga.gov>; Balasubramani Chandrasekar <bchandrasekar@georgiaaccess.ga.gov>
Cc: Jakeise Moody <jmoody@georgiaaccess.ga.gov>; Taylor Pickett <tpickett@georgiaaccess.ga.gov>; Selma Kazanci <skazanci@georgiaaccess.ga.gov>; Swathi Bharatwaj <sbharatwaj@georgiaaccess.ga.gov>
Subject: Re: DQ - Duplicate SSN list for PY2025 and PY2026
 
Hi Hari,

Chandra and I have reviewed the gap between his report and mine, and we were able to isolate the discrepancies. I have shared some SSN samples with him so he can see exactly where the gaps are in his query.

Here is a quick summary of my findings:

1. The ~130 SSNs (In Chandra's report but excluded from mine) My script excluded all 130 of these records because they are false positives.
Dummy SSNs (5): Five of them are placeholder SSNs (e.g., 888888888) which my script is built to automatically filter out so they don't inflate our High-Risk numbers.
Zero-Day Overlaps (125): The remaining 125 are people who legally switched policies, but have zero days of actual double-billing. When I analyzed these 125 people, I found that they were flagged by Chandra because of two types of handoffs:
Mid-Month Handoffs: (e.g., Policy A ends Jan 25, Policy B starts Jan 26). Chandra's script likely flags these because both policies happen to touch the same month (January).
End-of-Month Handoffs: (e.g., Policy A ends March 31, Policy B starts April 1). Because these don't even touch the same month, it seems Chandra's script is simply flagging anyone who has >1 active policy on their record, regardless of the dates.



Example of a Zero-Day Overlap (SSN 11531024): 
Policy
Status
Start Date
End Date
Policy A (Oscar)
Terminated
1-Jan-26
25-Jan-26
Policy B (Oscar)
Enrolled
26-Jan-26
31-Dec-26
Example of an End-of-Month Handoff (SSN 081896955)
Policy A (Alliant)
Terminated
21-Jan-26
31-Mar-26
Policy B (Alliant)
Enrolled
1-Apr-26
31-Dec-26

2. The 20 SSNs (In my report but missed by Chandra) I believe these 20 records are True High-Risk overlaps that Chandra's report completely missed. Bear in mind my script maps every policy chronologically rather than dropping identical start dates.
When I dug into the raw data, I found a specific pattern - in all 20 cases, the enrollee had multiple active policies that started on the exact same day (e.g., Jan 1st). It appears that Chandra's query has a preliminary step that groups by Start Date and drops duplicates, without factoring in whether it's a zero-day overlap or a massive double-billing error. Chandra is checking his query to see if it accidentally removes these overlapping policies upfront.



Example 1 - (SSN 698736404) : Chandra's query dropped identical dates. (17 SSN in this category)
Policy
Status
Start Date
End Date
Policy A (Kaiser)
Enrolled
1-Feb-26
31-Dec-26
Policy B (Oscar)
Enrolled
1-Feb-26
31-Dec-26
Example 2 - (SSN 119981150): Chandra's query dropped matching Start Dates - (1 SSN in this category)
Policy A (Ambetter)
Enrolled
1-Jan-26
31-Dec-26
Policy B (Ambetter)
Terminated
1-Jan-26
30-Apr-26
Example 3: Multi-Policy Overlaps (SSN 254696970) - (2 SSN in this category)
Policy A (Kaiser)
Enrolled
1-Jan-26
31-Dec-26
Policy B (Kaiser)
Terminated
1-Jan-26
30-Apr-26
Policy C (Kaiser)
Enrolled
1-May-26
31-Dec-26


Best Regards,
Esther Anjorin
Partner Integration Lead/Project Manager
Office of Commissioner John F. King | Georgia Access 
2 Martin Luther King Jr Drive SE

Suite 702 West Tower | Atlanta, Georgia 30334

📞 (470) 581-7666 | 📧 eanjorin@georgiaaccess.ga.gov



From: Esther Anjorin <eanjorin@georgiaaccess.ga.gov>
Sent: Tuesday, August 4, 2026 9:45 AM
To: Hari Venkatachalam <HVenkatachalam@georgiaaccess.ga.gov>; Balasubramani Chandrasekar <bchandrasekar@georgiaaccess.ga.gov>
Cc: Jakeise Moody <jmoody@georgiaaccess.ga.gov>; Taylor Pickett <tpickett@georgiaaccess.ga.gov>; Selma Kazanci <skazanci@georgiaaccess.ga.gov>; Swathi Bharatwaj <sbharatwaj@georgiaaccess.ga.gov>
Subject: Re: DQ - Duplicate SSN list for PY2025 and PY2026
 
Sure, Hari. I will analyze the gap and share my findings. Since Josh has declined today's meeting, I may need to cancel our planned discussion and either reschedule for another day or we address the final findings during our next bi-weekly meeting.

Best Regards,
Esther Anjorin
Partner Integration Lead/Project Manager
Office of Commissioner John F. King | Georgia Access 
2 Martin Luther King Jr Drive SE

Suite 702 West Tower | Atlanta, Georgia 30334

📞 (470) 581-7666 | 📧 eanjorin@georgiaaccess.ga.gov



From: Hari Venkatachalam <HVenkatachalam@georgiaaccess.ga.gov>
Sent: Tuesday, August 4, 2026 7:20 AM
To: Esther Anjorin <eanjorin@georgiaaccess.ga.gov>; Balasubramani Chandrasekar <bchandrasekar@georgiaaccess.ga.gov>
Cc: Jakeise Moody <jmoody@georgiaaccess.ga.gov>; Taylor Pickett <tpickett@georgiaaccess.ga.gov>; Selma Kazanci <skazanci@georgiaaccess.ga.gov>; Swathi Bharatwaj <sbharatwaj@georgiaaccess.ga.gov>
Subject: Re: DQ - Duplicate SSN list for PY2025 and PY2026
 
Thanks Esther.  I'm going to bring in the last open item - 

Chandra also has been working to "tweak" his list, and he finally got the list revamped, just like yours.

Good news - more than 95% of data matches between your report and his report, as naturally, both of you are using 07/01 report.

But, I do see ~130 members not found in your "high-risk" report, but in his report, whereas ~20 members NOT in his report, but only in your high-risk list.

Can you both please do a review and see what exactly is the gap? This way, you are ready to present our final results to Josh in today's afternoon call. 

​Duplicate_SSN_PY2026_07012026_v.7.xlsx​

Hariprakash Venkatachalam
Director of Technology
Office of Commissioner John F. King
Georgia Access
Two Martin Luther King Jr Drive SE
Suite 702 West Tower
Atlanta, Georgia 30334
C: 678.708.3135
HVenkatachalam@georgiaaccess.ga.gov


From: Esther Anjorin <eanjorin@georgiaaccess.ga.gov>
Sent: Wednesday, July 29, 2026 2:28 PM
To: Hari Venkatachalam <HVenkatachalam@georgiaaccess.ga.gov>
Cc: Balasubramani Chandrasekar <bchandrasekar@georgiaaccess.ga.gov>; Jakeise Moody <jmoody@georgiaaccess.ga.gov>; Taylor Pickett <tpickett@georgiaaccess.ga.gov>; Selma Kazanci <skazanci@georgiaaccess.ga.gov>; Swathi Bharatwaj <sbharatwaj@georgiaaccess.ga.gov>
Subject: Re: DQ - Duplicate SSN list for PY2025 and PY2026
 
Hi Hari,

Good catch on those three SSNs! I was able uncover the specific logic gap in the script.

Previously, if an enrollee had an active Anthem policy and a cancelled Ambetter policy, the script saw two companies and stamped them with a "Cross-Issuer" label. However, once we filtered out the cancelled policies, that enrollee only had Anthem left. Because they were stuck with the "Cross-Issuer" label, the script failed to test them for "Same-Issuer" overlaps, and they completely fell through the cracks.

So Instead of labeling people upfront, the script now cross-evaluates every single active policy on a person's record against each other. This caught all three of your examples:

22560164 & 22914866: Both of these are now correctly captured on the Same-Issuer sheet, as their active overlapping policies are entirely same issuer (Anthem and Oscar, respectively).

11665461: The Ambetter and Anthem policies on this record didn't actually overlap chronologically (Jan 31 termination vs Feb 1 start). However, this person actually had two different Ambetter policies that perfectly overlapped with each other in January! So, this one is also correctly captured on the Same-Issuer sheet.

I was able to rescue over 2,200 "Same Issuer" Overlaps across both years that had previously been hidden by cancelled policies.

Here are the final updated metrics from the attached files:


Metrics
PY 2025
PY 2026
Total Data Entries Analysed
32,829
14,976
Total Dummy SSN Records Identified
34
194
Total Unique REAL SSNs with Duplicates
9,183
4,186
REAL SSNs: Same Issuer Overlap
3,415
1,712
REAL SSNs: Different Issuers Overlap (Cross-Issuer)
5,768
2,474
True High Risk (Cross-Issuer): Dual-Enrollment
4,115
1,894
True High Risk (Same Issuer): Double-Billing
4,494
2,090
Valid Split Coverage (Health vs Dental): Excluded False Positives
62
30

Please let me know if you have any questions.

Best Regards,
Esther Anjorin
Partner Integration Lead/Project Manager
Office of Commissioner John F. King | Georgia Access 
2 Martin Luther King Jr Drive SE

Suite 702 West Tower | Atlanta, Georgia 30334

📞 (470) 581-7666 | 📧 eanjorin@georgiaaccess.ga.gov



From: Swathi Bharatwaj <sbharatwaj@georgiaaccess.ga.gov>
Sent: Wednesday, July 29, 2026 11:42 AM
To: Hari Venkatachalam <HVenkatachalam@georgiaaccess.ga.gov>; Esther Anjorin <eanjorin@georgiaaccess.ga.gov>
Cc: Balasubramani Chandrasekar <bchandrasekar@georgiaaccess.ga.gov>; Jakeise Moody <jmoody@georgiaaccess.ga.gov>; Taylor Pickett <tpickett@georgiaaccess.ga.gov>; Selma Kazanci <skazanci@georgiaaccess.ga.gov>
Subject: RE: DQ - Duplicate SSN list for PY2025 and PY2026
 
Hello Hari,

 

One possible reason an enrollee might appear with two enrollee IDs is when a medical policy includes embedded dental coverage. At the system level, this can generate two separate enrollment snapshots, even if they belong to the same policy.

 

However, beyond this embedded‑coverage scenario, there is no logical case where the same person should have two enrollee IDs for the same policy. To validate this, I spot‑checked the records in Production, and here are the findings:

 

The enrollee IDs in question are unique.
They belong to two different individuals, not the same person.
 




 

 

I am unsure of why our data points would display these two enrollee IDs with the same person. AT UI level they belong to 2 different people. We surely need to investigate this further

 

Swathi Raghuram Bharatwaj

User Acceptance Test Lead

Office of Commissioner John F. King

Georgia Access

Two Martin Luther King Jr Drive SE

Suite 702 West Tower

Atlanta, Georgia 30334

C: 470-859-7872

sbharatwaj@georgiaaccess.ga.gov



 

From: Hari Venkatachalam <HVenkatachalam@georgiaaccess.ga.gov>
Sent: Wednesday, July 29, 2026 7:38 AM
To: Esther Anjorin <eanjorin@georgiaaccess.ga.gov>; Swathi Bharatwaj <sbharatwaj@georgiaaccess.ga.gov>
Cc: Balasubramani Chandrasekar <bchandrasekar@georgiaaccess.ga.gov>; Jakeise Moody <jmoody@georgiaaccess.ga.gov>; Taylor Pickett <tpickett@georgiaaccess.ga.gov>; Selma Kazanci <skazanci@georgiaaccess.ga.gov>
Subject: Re: DQ - Duplicate SSN list for PY2025 and PY2026

 

This is great progress, Esther. Appreciate the detailed summarization here.

 

One quick question though - When I compared my last summary that was sent to Josh to yours for PY2026, good amount of details are in sync, but I still find that the summary sent to Josh included some false positives (which I expected).

 

But, based on the steps you have taken, I was hoping that your report would not miss out any true overlaps. With a quick spot-check, I noticed these 3 examples of Soc Sec #, not called out in your high-risk profile - all for PY2026 - but, I believe they do have overlaps. 11665461, 22560164 and 22914866. 

 

Can you check these examples, and see if any "final tweaking" done in your logic to get them (and any other Ids in the similar trend) also included in your high risk profile? With this last step, I believe your summary may turn to be latest and accurate for overlaps.

 

On a related note, @Swathi Bharatwaj, Could you please explain what it means for a policy to have two enrollee Ids for the same person?

 

For example - 1000193017 Policy ID has "1000782390" and "1000782392" as two enrollee Ids for the same person, per data report, with same cov span as 05/01 to 12/31. Our report brought it as dups, but I don't understand how a person can have two enrollee Ids both being enrolled in the same policy ID. 

 

Same situation for Policy ID - 1000003006, with two enrollee Ids - 1007062326 and 1007062327 for the same person.

 

Could you please check these out? May be - this could turn to be an example of "false positive". 

 

Good news is - Esther report eliminated this combo from "high risk" overlap list.  

 

Hariprakash Venkatachalam

Director of Technology

Office of Commissioner John F. King

Georgia Access

Two Martin Luther King Jr Drive SE

Suite 702 West Tower

Atlanta, Georgia 30334

C: 678.708.3135

HVenkatachalam@georgiaaccess.ga.gov



 

 

From: Esther Anjorin <eanjorin@georgiaaccess.ga.gov>
Sent: Tuesday, July 28, 2026 5:33 PM
To: Hari Venkatachalam <HVenkatachalam@georgiaaccess.ga.gov>
Cc: Swathi Bharatwaj <sbharatwaj@georgiaaccess.ga.gov>; Balasubramani Chandrasekar <bchandrasekar@georgiaaccess.ga.gov>; Jakeise Moody <jmoody@georgiaaccess.ga.gov>; Taylor Pickett <tpickett@georgiaaccess.ga.gov>; Selma Kazanci <skazanci@georgiaaccess.ga.gov>
Subject: Re: DQ - Duplicate SSN list for PY2025 and PY2026

 

Hi Hari,

 

I've updated the analysis to incorporate the new logic, and using the v.5 files Chandra sent over. The analysis now prioritizes Enrollee Dates (rather than Policy Dates) to calculate overlaps, cross-references both the Enrollee and Policy statuses for accuracy, and retains 'Terminated' statuses in the active pool to catch historical overlaps. (See Attached Files.)

 

 

Here’s where we landed on the final numbers:

 

First, using the fractional apportionment by splitting the SSN shares (e.g., 50/50 for two issuers), the percentages in the matrix now perfectly sum to 100%.

 

Also, including "Terminated" policies in our High-Risk overlaps - across both years, I caught over 7,700 High-Risk overlaps that involved a terminated policy. (cases where dual enrollment occurred for several months before one policy was finally terminated)

 

Second, the new enrollee_ssn column allowed me to clean up the baseline data. In the older files, if a primary subscriber had a duplicate SSN, the export also included their dependents. By filtering those extra family members out, we dropped over 16,000 rows across both years, so now only analyzing the exact individuals causing the overlaps.

 

Finally, while looking through the data for Health vs. Dental - Previously, if someone had an active Health policy at Ambetter and an active Dental policy at Anthem, they were flagged as a cross-issuer duplicate if their dates overlapped. Since that is perfectly valid split-coverage, I added a rule to ensure we only flag overlaps of the same insurance type. This cleared out 106 false positives from the High-Risk pool. (I’ve added a Valid_Split_Coverage_H_D sheet to the Excel files, so we don't lose track of those).

 

Here is the consolidated breakdown for both years:



Metrics

PY 2025

PY 2026

Total Data Entries Analysed

32,829

14,976

Total Dummy SSN Records Identified

34

194

Total Unique REAL SSNs with Duplicates

9,183

4,186

REAL SSNs: Same Issuer Overlap

3,415

1,712

REAL SSNs: Different Issuers Overlap (Cross-Issuer)

5,768

2,474

True High Risk (Cross-Issuer): Dual-Enrollment

4,115

1,894

True High Risk (Same Issuer): Double-Billing

2,883

1,436

Valid Split Coverage (Health vs Dental): Excluded False Positives

71

35

Please let me know if you have any questions.

 

 

Best Regards,

Esther Anjorin

Partner Integration Lead/Project Manager

Office of Commissioner John F. King | Georgia Access 

2 Martin Luther King Jr Drive SE

Suite 702 West Tower | Atlanta, Georgia 30334

📞 (470) 581-7666 | 📧 eanjorin@georgiaaccess.ga.gov

 



 

 

From: Esther Anjorin <eanjorin@georgiaaccess.ga.gov>
Sent: Tuesday, July 28, 2026 11:41 AM
To: Hari Venkatachalam <HVenkatachalam@georgiaaccess.ga.gov>; Swathi Bharatwaj <sbharatwaj@georgiaaccess.ga.gov>; Balasubramani Chandrasekar <bchandrasekar@georgiaaccess.ga.gov>; Jakeise Moody <jmoody@georgiaaccess.ga.gov>; Taylor Pickett <tpickett@georgiaaccess.ga.gov>; Selma Kazanci <skazanci@georgiaaccess.ga.gov>
Subject: Re: DQ - Duplicate SSN list for PY2025 and PY2026

 

Thank you, Hari. I will incorporate your suggestions and provide updates.

 

Best,

Esther Anjorin

Partner Integration Lead/Project Manager

Office of Commissioner John F. King | Georgia Access 

2 Martin Luther King Jr Drive SE

Suite 702 West Tower | Atlanta, Georgia 30334

📞 (470) 581-7666 | 📧 eanjorin@georgiaaccess.ga.gov

 



 

From: Hari Venkatachalam <HVenkatachalam@georgiaaccess.ga.gov>
Sent: Tuesday, July 28, 2026 9:50 AM
To: Esther Anjorin <eanjorin@georgiaaccess.ga.gov>; Swathi Bharatwaj <sbharatwaj@georgiaaccess.ga.gov>; Balasubramani Chandrasekar <bchandrasekar@georgiaaccess.ga.gov>; Jakeise Moody <jmoody@georgiaaccess.ga.gov>; Taylor Pickett <tpickett@georgiaaccess.ga.gov>; Selma Kazanci <skazanci@georgiaaccess.ga.gov>
Subject: Re: DQ - Duplicate SSN list for PY2025 and PY2026

 

That's a great point, Esther. I understand how you see this, and get your point of view.

 

My suggestion though - it's not easy for others to get this concept, as I'm sure - they would struggle on how they can see more than 100% share. Alternatively, if an SSN is shared by let's say 4 issuers, then we are referring them to 400% and so on - which doesn't help when we look at that % share. 

 

Instead, my simple solution is - if an SSN is shared by 1 issuer, it's naturally 100% to that issuer. But, if an SSN is shared by 2 issuers, then - apportion 50% to each. If an SSN is shared by 3 issuers, 33.33% share for each, and so on. This will help us to get the overall number always at 100%. And, when we add all the SSN's share, then that truly reflect the issuers share by simply looking at that % number alone. 

 

With this change, and with the change I suggested last Friday (in terms of including the terminated policies?), please make those changes, and I hope we will arrive at "true" dups count. 

 

Chandra actually has added the SSN for corresponding enrollee ID, and hopefully it will help you to focus only on those enrollees whose SSN is identified as duplicate.

 

With all these changes, I'm sure we will be at final dups report.

 

Hariprakash Venkatachalam

Director of Technology

Office of Commissioner John F. King

Georgia Access

Two Martin Luther King Jr Drive SE

Suite 702 West Tower

Atlanta, Georgia 30334

C: 678.708.3135

HVenkatachalam@georgiaaccess.ga.gov



 

From: Esther Anjorin <eanjorin@georgiaaccess.ga.gov>
Sent: Friday, July 24, 2026 12:19 PM
To: Hari Venkatachalam <HVenkatachalam@georgiaaccess.ga.gov>; Swathi Bharatwaj <sbharatwaj@georgiaaccess.ga.gov>; Balasubramani Chandrasekar <bchandrasekar@georgiaaccess.ga.gov>; Jakeise Moody <jmoody@georgiaaccess.ga.gov>; Taylor Pickett <tpickett@georgiaaccess.ga.gov>; Selma Kazanci <skazanci@georgiaaccess.ga.gov>
Subject: Re: DQ - Duplicate SSN list for PY2025 and PY2026

 

Hari,

 

The percentages should not equal 100% for the Overall or Cross-Issuer columns. Here is why:

 

The denominator for these percentages is the Total Number of Unique SSNs (e.g., 858 people in the PY2026 cross-issuer group).

 

By definition, a "Cross-Issuer" error involves two different insurance companies fighting over the exact same person. If John Doe is double enrolled at Ambetter and Anthem, John Doe counts as 1 SSN in the denominator. However, because both companies are 'involved' in the error, Ambetter gets +1 to their count, and Anthem also gets +1 to their count. Because every single SSN in this bucket involves at least two companies, the sum of the percentages mathematically must equal exactly 200% (or slightly higher if a person has 3 insurers).
Conversely, a "Same-Issuer" error is entirely internal. If John Doe is double-billed internally by Ambetter, Ambetter gets +1 to their count, but no other company is involved. Therefore, 1 SSN equals 1 company count, and the column perfectly sums to 100%.
Because the overall pool contains a mix of Cross-Issuer cases (which add 200% to the pool) and Same-Issuer cases (which add 100% to the pool), the total column naturally lands in the middle at 172%.
 

The percentages do not represent a slice of a single pie. They represent "What percentage of the total affected people is this specific company involved with?" Because two companies can be involved with the same person, the totals will always exceed 100%."

 

I hope this helps.

 

 

Best Regards,

Esther Anjorin

Partner Integration Lead/Project Manager

Office of Commissioner John F. King | Georgia Access 

2 Martin Luther King Jr Drive SE

Suite 702 West Tower | Atlanta, Georgia 30334

📞 (470) 581-7666 | 📧 eanjorin@georgiaaccess.ga.gov

 



 

From: Hari Venkatachalam <HVenkatachalam@georgiaaccess.ga.gov>
Sent: Friday, July 24, 2026 11:43 AM
To: Esther Anjorin <eanjorin@georgiaaccess.ga.gov>; Swathi Bharatwaj <sbharatwaj@georgiaaccess.ga.gov>; Balasubramani Chandrasekar <bchandrasekar@georgiaaccess.ga.gov>; Jakeise Moody <jmoody@georgiaaccess.ga.gov>; Taylor Pickett <tpickett@georgiaaccess.ga.gov>; Selma Kazanci <skazanci@georgiaaccess.ga.gov>
Subject: Re: DQ - Duplicate SSN list for PY2025 and PY2026

 

Here is the one I presented.

 

I added a tab for issuers % and I still have a question for Esther on how % totals don't align! This is in addition to the tweaking of the logic we discussed during internal call just before 11 AM.

 

Also, I think - Chandra can take a quick review for orange highlighted item, as how we can have single policy being there.

 

 

Hariprakash Venkatachalam

Director of Technology

Office of Commissioner John F. King

Georgia Access

Two Martin Luther King Jr Drive SE

Suite 702 West Tower

Atlanta, Georgia 30334

C: 678.708.3135

HVenkatachalam@georgiaaccess.ga.gov



 

From: Hari Venkatachalam <HVenkatachalam@georgiaaccess.ga.gov>
Sent: Friday, July 24, 2026 10:48 AM
To: Esther Anjorin <eanjorin@georgiaaccess.ga.gov>; Swathi Bharatwaj <sbharatwaj@georgiaaccess.ga.gov>; Balasubramani Chandrasekar <bchandrasekar@georgiaaccess.ga.gov>; Jakeise Moody <jmoody@georgiaaccess.ga.gov>; Taylor Pickett <tpickett@georgiaaccess.ga.gov>; Selma Kazanci <skazanci@georgiaaccess.ga.gov>
Subject: Re: DQ - Duplicate SSN list for PY2025 and PY2026

 

Thanks. This helps a lot, Esther.

 

Couple of potential gaps:

 

While we can eliminate "Cancel" status, we should not eliminate "Term", as you may have a situation wherein two policies may have overlapping coverage (let's say - Jan thru Mar for each of those policies) and one or both may have got terminated. We don't want to eliminate those.
"benefit_effective_date" and "benefit_end_date" refers to Policy start and end date, whereas ideally we want to focus on "enrollee_start_date" and "enrollee_end_date". 
We may have a situation wherein Policy status may be slightly off from Enrollee status, and as we are focusing on individual's overlapping coverage, we may need to keep our eyes on both those, and not just at Policy level
 

Bottomline: While the thought-process is directionally correct, we may need to tweak the logic little bit more, and it potentially could "expand" your high risk numbers. Let me know if you think otherwise.

 

If needed, let's get into a 5 or 10 min call before 11 AM on how we can provide the progress update to Josh and team. Can one of you send a quick invite for the same?

 

 

Hariprakash Venkatachalam

Director of Technology

Office of Commissioner John F. King

Georgia Access

Two Martin Luther King Jr Drive SE

Suite 702 West Tower

Atlanta, Georgia 30334

C: 678.708.3135

HVenkatachalam@georgiaaccess.ga.gov



 

From: Esther Anjorin <eanjorin@georgiaaccess.ga.gov>
Sent: Friday, July 24, 2026 10:40 AM
To: Hari Venkatachalam <HVenkatachalam@georgiaaccess.ga.gov>; Swathi Bharatwaj <sbharatwaj@georgiaaccess.ga.gov>; Balasubramani Chandrasekar <bchandrasekar@georgiaaccess.ga.gov>; Jakeise Moody <jmoody@georgiaaccess.ga.gov>; Taylor Pickett <tpickett@georgiaaccess.ga.gov>; Selma Kazanci <skazanci@georgiaaccess.ga.gov>
Subject: Re: DQ - Duplicate SSN list for PY2025 and PY2026

 

Hi Hari, 

 

The logic did a calendar check on every person's record and: 

Ignores any policy marked as "Cancelled" or "Terminated." It only looks at active "Enrolled" policies.
It then maps the benefit_effective_date and benefit_end_date for those active policies.
So a person is only flagged as High Risk if they have multiple active "Enrolled" policies whose calendar dates mathematically overlap by at least one day.

 

 

Best Regards,

Esther Anjorin

Partner Integration Lead/Project Manager

Office of Commissioner John F. King | Georgia Access 

2 Martin Luther King Jr Drive SE

Suite 702 West Tower | Atlanta, Georgia 30334

📞 (470) 581-7666 | 📧 eanjorin@georgiaaccess.ga.gov

 



 

From: Hari Venkatachalam <HVenkatachalam@georgiaaccess.ga.gov>
Sent: Friday, July 24, 2026 4:07 AM
To: Esther Anjorin <eanjorin@georgiaaccess.ga.gov>; Swathi Bharatwaj <sbharatwaj@georgiaaccess.ga.gov>; Balasubramani Chandrasekar <bchandrasekar@georgiaaccess.ga.gov>; Jakeise Moody <jmoody@georgiaaccess.ga.gov>; Taylor Pickett <tpickett@georgiaaccess.ga.gov>; Selma Kazanci <skazanci@georgiaaccess.ga.gov>
Subject: Re: DQ - Duplicate SSN list for PY2025 and PY2026

 

This is a good analysis, Esther. Would like to understand little bit more on how you grouped policies into High risk, though. May be, we can catch up at 9.15 AM, to ensure that - we have a game-plan for 11 AM call. 

 

On a related note, I had done the analysis on PY2026, trying to find "human touch" for cross-issuers, and for same issuers. I didn't evaluate if the enrollee really has overlapping coverage or not. In other words, I assumed that the list has overlapping coverage for all the members listed. 

 

Hariprakash Venkatachalam

Director of Technology

Office of Commissioner John F. King

Georgia Access

Two Martin Luther King Jr Drive SE

Suite 702 West Tower

Atlanta, Georgia 30334

C: 678.708.3135

HVenkatachalam@georgiaaccess.ga.gov



 

From: Esther Anjorin <eanjorin@georgiaaccess.ga.gov>
Sent: Thursday, July 23, 2026 7:04 PM
To: Swathi Bharatwaj <sbharatwaj@georgiaaccess.ga.gov>; Balasubramani Chandrasekar <bchandrasekar@georgiaaccess.ga.gov>; Jakeise Moody <jmoody@georgiaaccess.ga.gov>; Taylor Pickett <tpickett@georgiaaccess.ga.gov>; Selma Kazanci <skazanci@georgiaaccess.ga.gov>
Cc: Hari Venkatachalam <HVenkatachalam@georgiaaccess.ga.gov>
Subject: Re: DQ - Duplicate SSN list for PY2025 and PY2026

 

All,

 

I did a bit of analysis on the latest data the Chandra sent and here is what I found in case it might be useful for our discussion tomorrow. See attached docs for reference. Below are the high-level metrics for both PY 2025 & PY 2026.

 



Metrics

PY 2025

PY 2026

Total Data Entries Analysed

43,326

20,523

Total Dummy SSN Records Identified

69

432

Total Unique REAL SSNs with Duplicates

9,217

4,210

REAL SSNs: Same Issuer Overlap 

3,449

1,736

REAL SSNs: Different Issuers Overlap (Cross-Issuer)

5,768

2,474

True High Risk (Cross-Issuer): Dual-Enrollment

1,727

858

True High Risk (Same Issuer): Double-Billing

1,672

495

 

 

To ensure we are focusing only on true financial risk, I cleaned up the data and mapped out the calendar dates:

 

First, quarantined all "Dummy SSNs" (e.g., system placeholders or missing leading zeros) to stop them from artificially inflating our metrics.
Second, I ran a chronological overlap analysis to filter out harmless sequential policy transfers.
 

The result is a massive reduction in operational noise: For example, if you look at the PY2025 table above, there were 9,217 real individuals with duplicate records in the system. By mapping the exact calendar dates of their active policies, I found that only 3,399 of them actually have overlapping coverage dates (1,727 Cross-Issuer + 1,672 Same Issuer). This means the remaining 5,818 cases were just harmless sequential transfers or cancellations. By isolating the True High-Risk cases, I think we will just save Operations from wasting time on chasing nearly 6,000 false positives.

 

In the Issuer_Responsibility_Matrix tab in both workbooks, this matrix reveals exactly which insurance companies are driving the most High-Risk errors so we can hold specific vendor systems accountable.

 

The Real_High_Risk_Cross_Issuer and Real_High_Risk_Same_Issuer tabs serve as exact, precise "Hit Lists" for operations to begin resolving these actively overlapping policies immediately.

 

Please let me know if you have any questions.

 

Best Regards,

Esther Anjorin

Partner Integration Lead/Project Manager

Office of Commissioner John F. King | Georgia Access 

2 Martin Luther King Jr Drive SE

Suite 702 West Tower | Atlanta, Georgia 30334

📞 (470) 581-7666 | 📧 eanjorin@georgiaaccess.ga.gov

 



 

From: Swathi Bharatwaj <sbharatwaj@georgiaaccess.ga.gov>
Sent: Thursday, July 23, 2026 1:33 PM
To: Balasubramani Chandrasekar <bchandrasekar@georgiaaccess.ga.gov>; Jakeise Moody <jmoody@georgiaaccess.ga.gov>; Taylor Pickett <tpickett@georgiaaccess.ga.gov>; Selma Kazanci <skazanci@georgiaaccess.ga.gov>; Esther Anjorin <eanjorin@georgiaaccess.ga.gov>
Cc: Hari Venkatachalam <HVenkatachalam@georgiaaccess.ga.gov>
Subject: RE: DQ - Duplicate SSN list for PY2025 and PY2026

 

Thanks Chandra!!

 

Swathi Raghuram Bharatwaj

User Acceptance Test Lead

Office of Commissioner John F. King

Georgia Access

Two Martin Luther King Jr Drive SE

Suite 702 West Tower

Atlanta, Georgia 30334

C: 470-859-7872

sbharatwaj@georgiaaccess.ga.gov



 

From: Balasubramani Chandrasekar <bchandrasekar@georgiaaccess.ga.gov>
Sent: Thursday, July 23, 2026 1:32 PM
To: Jakeise Moody <jmoody@georgiaaccess.ga.gov>; Taylor Pickett <tpickett@georgiaaccess.ga.gov>; Selma Kazanci <skazanci@georgiaaccess.ga.gov>; Esther Anjorin <eanjorin@georgiaaccess.ga.gov>; Swathi Bharatwaj <sbharatwaj@georgiaaccess.ga.gov>
Cc: Hari Venkatachalam <HVenkatachalam@georgiaaccess.ga.gov>
Subject: Re: DQ - Duplicate SSN list for PY2025 and PY2026

 

FYI...

Uploaded DUPDOB files for PY2025 and PY2026 to the SharePoint folder.

 

Thanks,

Chandra Sekar

Technology - Data Reporting Manager

Cell:  (770)-694-2231

bchandrasekar@georgiaaccess.ga.gov



 

 

 

From: Balasubramani Chandrasekar <bchandrasekar@georgiaaccess.ga.gov>
Sent: Wednesday, July 22, 2026 9:47 PM
To: Jakeise Moody <jmoody@georgiaaccess.ga.gov>; Taylor Pickett <tpickett@georgiaaccess.ga.gov>; Selma Kazanci <skazanci@georgiaaccess.ga.gov>; Esther Anjorin <eanjorin@georgiaaccess.ga.gov>; Swathi Bharatwaj <sbharatwaj@georgiaaccess.ga.gov>
Cc: Hari Venkatachalam <HVenkatachalam@georgiaaccess.ga.gov>
Subject: DQ - Duplicate SSN list for PY2025 and PY2026

 

All,

I have uploaded the new versions of DUPSSN, _v.4 for PY25 and PY26. DUPDOB for both PY25 and PY26 will be uploaded as soon as they are ready.

This will have a lookup tab with all the information requested.

​​PY2025 & PY2026 Duplicates​​

 

Thanks,

Chandra Sekar

Technology - Data Reporting Manager

Cell:  (770)-694-2231

bchandrasekar@georgiaaccess.ga.gov



 

 

 

From: Balasubramani Chandrasekar <bchandrasekar@georgiaaccess.ga.gov>
Sent: Sunday, July 19, 2026 9:07 PM
To: Jakeise Moody <jmoody@georgiaaccess.ga.gov>; Hari Venkatachalam <HVenkatachalam@georgiaaccess.ga.gov>; Taylor Pickett <tpickett@georgiaaccess.ga.gov>; Selma Kazanci <skazanci@georgiaaccess.ga.gov>; Esther Anjorin <eanjorin@georgiaaccess.ga.gov>; Swathi Bharatwaj <sbharatwaj@georgiaaccess.ga.gov>
Subject: Re: DQ - Check in re: Duplicates

 

I have uploaded the new versions of our files _v.3 and moved the previous files to archive. This will have a lookup tab with all the information requested. 

For last update, the empty cells mean there is no update by an individual. 

​​​PY2025 & PY2026 Duplicates​​​

 

Please let me know if you have questions.

 

Thanks,

Chandra Sekar

Technology - Data Reporting Manager

Cell:  (770)-694-2231

bchandrasekar@georgiaaccess.ga.gov



 

From: Jakeise Moody <jmoody@georgiaaccess.ga.gov>
Sent: Wednesday, July 15, 2026 12:19 PM
To: Joshua Holizna <jholizna@georgiaaccess.ga.gov>; Anika Washington <Awashington@georgiaaccess.ga.gov>; Lavinia Lowe <llowe@georgiaaccess.ga.gov>; Hari Venkatachalam <HVenkatachalam@georgiaaccess.ga.gov>; Balasubramani Chandrasekar <bchandrasekar@georgiaaccess.ga.gov>; Taylor Pickett <tpickett@georgiaaccess.ga.gov>; Selma Kazanci <skazanci@georgiaaccess.ga.gov>; Esther Anjorin <eanjorin@georgiaaccess.ga.gov>; Swathi Bharatwaj <sbharatwaj@georgiaaccess.ga.gov>
Subject: RE: DQ - Check in re: Duplicates

 

Hi all – Thanks again for todays’ discussion. Below are a few next steps on this effort.

 

-          Schedule Working Session (Jakeise)

-          Identify high level buckets for decisioning/discussion in advance of working session (Jakeise)

-          Elements to add to lookup tab & share link with update in advance of working session (Chandra)

-          Issuer

-          Enrollment Coverage start

-          Enrollment Coverage end

-          Enrollee Coverage Start

-          Enrollee Coverage End

-          Last updated date

-          Last Updated User (In Progress - ETA TBD)

 

Thanks,

 

Jakeise Moody

Functional Lead

Office of Commissioner John F. King

Georgia Access

Two Martin Luther King Jr Drive SE

West Tower

Atlanta, Georgia 30334

C: 770.243.3282

jmoody@georgiaaccess.ga.gov



 

-----Original Appointment-----
From: Jakeise Moody
Sent: Tuesday, July 14, 2026 10:05 AM
To: Jakeise Moody; Joshua Holizna; Anika Washington; Lavinia Lowe; Hari Venkatachalam; Balasubramani Chandrasekar; Taylor Pickett; Selma Kazanci; Esther Anjorin; Swathi Bharatwaj
Subject: DQ - Check in re: Duplicates
When: Wednesday, July 15, 2026 11:00 AM-11:30 AM (UTC-05:00) Eastern Time (US & Canada).
Where: Microsoft Teams Meeting

 

*

________________________________________________________________________________

Microsoft Teams meeting

Join: https://teams.microsoft.com/meet/240476434122430?p=zbwIdAYOKVrP76e0sW

Meeting ID: 240 476 434 122 430

Passcode: Qm2x7HG3

Need help? | System reference

Dial in by phone

+1 312-549-8285,,57096362# United States, Chicago

Find a local number

Phone conference ID: 570 963 62#

For organizers: Meeting options | Reset dial-in PIN

________________________________________________________________________________

 
