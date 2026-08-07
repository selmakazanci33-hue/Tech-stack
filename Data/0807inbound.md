FFM_Enrollee_ID	 Automation_Match_Status	Automation_Policy_ID	Automation_Issuer	First_Name	Last_Name	Automation_Coverage_Year	folder_year	folder_month	Automation_Status	member_maint_effective_date	loaded_at	source_file

1002235950	FOUND	212114278	89942	DWAYNE	WALKER	2025	2025	12	CONFIRM	12/31/2025	22:04.3	from_89942_GA_834_INDV_20251231060346710.xml
1002235950	FOUND	1000046466	89942	DWAYNE	WALKER	2026	2026	2	CONFIRM	2/19/2026	01:29.8	from_89942_GA_834_INDV_20260219060039855.xml
1002235950	FOUND	1000141297	89942	DWAYNE	WALKER	2026	2026	4	CONFIRM	4/2/2026	01:29.8	from_89942_GA_834_INDV_20260402054954384.xml
1002235950	FOUND	1000141297	89942	DWAYNE	WALKER	2026	2026	7	TERM	7/4/2026	01:29.8	from_89942_GA_834_INDV_20260704060256483.xml
1001653059	FOUND	211468256	49046	Patricia	Dewberry	2025	2025	11	CONFIRM	10/17/2025	22:04.3	from_49046_GA_834_INDV_20251112122023.xml
1001653059	FOUND	211468256	49046	PATRICIA	DEWBERRY	2026	2026	2	TERM	NULL	01:29.8	from_49046_GA_834_INDV_20260224153753.xml
1000006964	FOUND	35115947	45334	Jennifer	Norris	2025	2025	1	CONFIRM	1/14/2025	22:04.3	from_45334_GA_834_INDV_20250117073801.xml
1000006964	FOUND	210884035	45334	Jennifer	Norris	2025	2025	11	CONFIRM	10/16/2025	22:04.3	from_45334_GA_834_INDV_20251107145111.xml
1000006964	FOUND	212202305	43802	Jennifer	Norris	2026	2026	1	CONFIRM	1/14/2026	01:29.8	from_43802_GA_834_INDV_20260201013246.xml
1000006964	FOUND	212202304	58081	JENNIFER	NORRIS	2026	2026	2	CONFIRM	2/1/2026	01:29.8	from_58081_GA_834_INDV_20260202151612.xml

I have identified one enrollee that appears in issuer 49046 and it is a  re-enrollment in 10/17/2025 and Term in 2026(02-25-2026 03:00:45)
Now same enrollee exactly appears to be same way enrolled in 37301 and same dates Term (02-09-2026 10:46:17) which means same user even though enrolled for different issuers at the same time and cancelled at the same time, enrollee 37301 834 inbound file not received, but enrollee 834 inbound for 49046 received in UI history and always those end up being terminated or cancelled
 
 
 
 
It seems like the last term transaction for the same enrollee has been added as inbound data by issuers
 
 
We have exactly same observation for enrollee: 1002235950
 
 
Cancellation date for issuer 89942 Kaiser cancellation date: (07-05-2026 03:20:49) last transaction.
 
 
for issuer 37301 no inbound 834 found cancellation date: (03-19-2026 03:30:13)
 
 
Now this seems to be the same case for confirm policies as well and here is the enrollee: 1000006964 with Policy on 58081 is in last transaction confirm status since Last Update Date:02/03/2026 and same enrollee in issuer 37301 EMI seems to be Last Update Date:01/14/2026 this is why again this transaction has been generated the inbound only for the last issuer transaction and this explains why in inbound we do not see all transactions with different issuers, but only issuer team applied latest transactions for those same enrollees who have different policy ids across different issuers
 
 
 
 
 
This is one that matches from both sides with inbound 834 file: 
 
enrollee id: 
 
1000143218
policy for care source: 
 
1000041236 and it is confirm status thats why it is in 834 inbound 
 
 
and this same enrollee in 37301 is cancelled but at a later transaction and thats why it was kept as a final transaction in 37301 834 inbound transactions

Here we have Care source record early record which is confirm status and policy id is 1000041237 and transaction date 
 
02-20-2026 03:01:05
 
and EMI status Cancel and transaction date is the last one: 04-11-2026 03:02:38 enrollee same policy: 
 
1000041237
 
 
 
