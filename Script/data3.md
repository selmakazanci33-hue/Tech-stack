Hari,

 

I pulled the Enrollee IDs from the “Match Not Found” records and queried the Enrollments_test table to determine the distribution of enrollment statuses. I also calculated how many of those records were zero‑dollar policies within the “No Match Found” group

 

Below is the summary of the total count filtered only by Enrollment Status

 



             Row Labels

             Enrollee Count

Cancelled

13611

Enrolled

29999

Pend

2

Pend canceled

262

Pending

1981

Terminated

2090

Grand Total

47945

 

Below is the summary of the count for Enrollment status filtered by Net Premium Amount

 



            Row Labels

                         Enrollee Count

Cancelled

607

Enrolled

6806

Pend canceled

41

Pending

173

Terminated

325

Grand Total

7952

 

Based on the metrics above, we should be receiving Inbound 834s for a total of 29,999 enrollees. However, 6,806 of those policies have a $0 premium. After excluding the $0‑dollar policies, we should still be receiving 834s for 23,193 records. We need to investigate further to understand why these files are missing. Attached is the Report with the Pivot Table.

 

@Hari Venkatachalam Let me know if this helps and please advice on next steps

 

 
