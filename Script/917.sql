coverage_year	raw_physical_row_count	distinct_enrollment_id	distinct_enrollee_id	distinct_coverage_year_enrollment_id_enrollee_id_pairs	number_of_issuers	physical_rows_collapsed_by_dedup	enrolled_pending_distinct_pairs_independent_check	control_status
2026	2268819	1645980	1298829	2263972	16	4847	960531	OK





enrollment_status_description	enrollee_status_description	distinct_pair_count	pct_of_total_2026_distinct_population
Enrolled	Enrolled	931164	41.1297
Cancelled	Cancelled	683560	30.1930
Terminated	Terminated	605715	26.7545
Pending	Pending	15450	0.6824
Enrolled	Terminated	13480	0.5954
Pend canceled	Pend canceled	12007	0.5304
Terminated	Cancelled	1878	0.0830
Enrolled	Cancelled	395	0.0174
Pend	Pend	273	0.0121
Pending	Cancelled	21	0.0009
Pending	Terminated	21	0.0009
Terminated	Pending	5	0.0002
Cancelled	Aborted	1	0.0000
Cancelled	Pending	1	0.0000
Terminated	Aborted	1	0.0000





enrollment_status_description	distinct_policy_enrollee_count	pct_of_total_2026_distinct_population
Enrolled	945039	41.7425
Cancelled	683562	30.1930
Terminated	607599	26.8377
Pending	15492	0.6843
Pend canceled	12007	0.5304
Pend	273	0.0121




hios_issuer_id	total_distinct_2026_policy_enrollee_pairs	enrolled_count	pending_count	all_other_status_count
70893	819771	226094	2619	591058
58081	471207	192333	2190	276684
89942	314272	184394	4398	125480
45334	182616	92610	936	89070
49046	171011	91371	1083	78557
83761	142035	86771	1826	53438
60224	42931	20889	303	21739
43802	33146	12850	549	19747
15105	31932	11232	26	20674
68806	18705	6908	1190	10607
86637	16386	9030	180	7176
37001	8354	4338	49	3967
37301	5789	3196	47	2546
13535	2747	1170	64	1513
83502	1793	920	14	859
64357	1277	933	18	326













filter_definition	complete_2026_distinct_pairs	enrolled_pending_distinct_pairs	complete_minus_enrolled_pending	pct_of_complete_2026_population
enrollment_status_description IN (Enrolled, Pending)	2263972	960531	1303441	42.4268
