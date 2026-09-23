

ffm_target_count	expected_ffm_target_count	ffm_target_check	existing_exact_match_count	expected_exact_match_count	exact_match_check	exact_match_percentage	distinct_matched_policy_enrollee_pairs	control_status
960531	960531	PASS	755548	755548	PASS	78.6594	755548	PASS


ffm_coverage_year	inbound_coverage_year	year_bucket	exact_match_count	pct_of_exact_755548
2026	2025	FFM_2026_TO_INBOUND_2025	404740	53.5691
2026	2026	FFM_2026_TO_INBOUND_2026	350808	46.4309


FFM_Enrollment_Status	FFM_Enrollee_Status	inbound_enrolleeStatus	inbound_coverage_year	exact_match_count	pct_of_exact_755548
Enrolled	Enrolled	CONFIRM	2025	398119	52.6927
Enrolled	Enrolled	CONFIRM	2026	324785	42.9867
Enrolled	Enrolled	TERM	2026	9908	1.3114
Pending	Pending	CONFIRM	2026	6757	0.8943
Enrolled	Terminated	CONFIRM	2025	6200	0.8206
Enrolled	Terminated	CONFIRM	2026	4115	0.5446
Enrolled	Enrolled	CANCEL	2026	3098	0.4100
Pending	Pending	CANCEL	2026	1931	0.2556
Enrolled	Enrolled	CANCEL	2025	313	0.0414
Enrolled	Cancelled	CONFIRM	2026	140	0.0185
Enrolled	Cancelled	CONFIRM	2025	86	0.0114
Pending	Pending	TERM	2026	43	0.0057
Enrolled	Enrolled	UNMAPPED	2026	23	0.0030
Enrolled	Enrolled	UNMAPPED	2025	20	0.0026
Enrolled	Terminated	TERM	2026	4	0.0005
Pending	Terminated	CONFIRM	2026	2	0.0003
Enrolled	Aborted	CONFIRM	2026	1	0.0001
Enrolled	Aborted	CONFIRM	2025	1	0.0001
Enrolled	Terminated	UNMAPPED	2025	1	0.0001
Pending	Cancelled	CONFIRM	2026	1	0.0001

Lifecycle_Diagnostic	exact_match_count	pct_of_exact_755548
2025_ONLY_EXACT_INBOUND_EVIDENCE	403446	53.3978
2026_CONFIRM_STATUS_ALIGNED	328096	43.4249
FFM_ENROLLED_WITH_INBOUND_TERM	9912	1.3119
FFM_PENDING_WITH_INBOUND_CONFIRM	6760	0.8947
FFM_ENROLLED_WITH_INBOUND_CANCEL	3411	0.4515
2026_EXACT_ID_STATUS_DISAGREE	1997	0.2643
2025_AND_2026_EXACT_INBOUND_EVIDENCE	1926	0.2549

history_year_pattern	exact_match_count	pct_of_exact_755548	pairs_with_2025_confirm	pairs_with_2025_cancel	pairs_with_2025_term	pairs_with_2026_confirm	pairs_with_2026_cancel	pairs_with_2026_term
2025_ONLY_EXACT	403714	53.4333	403477	273	0	0	0	0
2026_ONLY_EXACT	346183	45.8188	0	0	0	339136	5440	8562
BOTH_2025_AND_2026_EXACT	5651	0.7479	5531	172	0	1044	345	4358

year_transition_category	pair_count	pct_of_exact
A_2025_EXACT_NO_2026_EXACT	403714	53.4333
B_2025_CONFIRM_NO_2026_CONFIRM	407982	53.9982
C_BOTH_YEARS_LIFECYCLE_CHANGED	4682	0.6197
D_FFM_ENROLLED_SELECTED_CANCEL_OR_TERM	13323	1.7634
E_FFM_PENDING_WITH_INBOUND_LIFECYCLE	8734	1.1560

FFM_Enrollment_Status	Selected_Inbound_Status_Raw	Selected_Inbound_Coverage_Year	pair_count	pct_of_exact
Enrolled	TERM	2026	9912	1.3119
Enrolled	CANCEL	2026	3098	0.4100
Enrolled	CANCEL	2025	313	0.0414

FFM_Enrollment_Status	Selected_Inbound_Status_Raw	Selected_Inbound_Coverage_Year	pair_count	pct_of_exact
Pending	CONFIRM	2026	6760	0.8947
Pending	CANCEL	2026	1931	0.2556
Pending	TERM	2026	43	0.0057

Continuation_2026_Finding	pair_count	pct_of_2025_only_exact
no 2026 inbound evidence	374459	92.7535
same enrollee + different issuer	23405	5.7974
same enrollee + different policy	3966	0.9824
policy only	1884	0.4667



