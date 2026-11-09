


.\.venv\Scripts\python.exe -m database.comparison.py2026_source_equivalence
PY2026 SOURCE EQUIVALENCE (read-only, aggregates only)
Enrollments_TEST: exists=True rows=2330683 policies=1688696 persons=1320502
Enrollments_TEST_TEMP: exists=True rows=2330683 policies=1688696 persons=1320502
Enrollments_PY2526_10312026: exists=True rows=2330683 policies=1688696 persons=1320502
Enrollments_TEST vs Enrollments_TEST_TEMP: schema=SCHEMA_IDENTICAL aggregates_equal=True keys=2324955/2324955 both=2324955 a_only=0 b_only=0 field_diffs=0 row_count_diffs=0 ambiguous=3669 -> MATCH_WITH_AMBIGUITY
  field differences: {'enrollment_status_description': 0, 'enrollee_status_description': 0, 'enrollment_create_date': 0, 'enrollment_confirmation_date': 0, 'enrollment_last_update_date': 0, 'benefit_effective_date': 0, 'benefit_end_date': 0, 'hios_issuer_id': 0, 'application_type': 0}
Enrollments_TEST vs Enrollments_PY2526_10312026: schema=SCHEMA_IDENTICAL aggregates_equal=True keys=2324955/2324955 both=2324955 a_only=0 b_only=0 field_diffs=0 row_count_diffs=0 ambiguous=3669 -> MATCH_WITH_AMBIGUITY
  field differences: {'enrollment_status_description': 0, 'enrollee_status_description': 0, 'enrollment_create_date': 0, 'enrollment_confirmation_date': 0, 'enrollment_last_update_date': 0, 'benefit_effective_date': 0, 'benefit_end_date': 0, 'hios_issuer_id': 0, 'application_type': 0}
Enrollments_TEST_TEMP vs Enrollments_PY2526_10312026: schema=SCHEMA_IDENTICAL aggregates_equal=True keys=2324955/2324955 both=2324955 a_only=0 b_only=0 field_diffs=0 row_count_diffs=0 ambiguous=3669 -> MATCH_WITH_AMBIGUITY
  field differences: {'enrollment_status_description': 0, 'enrollee_status_description': 0, 'enrollment_create_date': 0, 'enrollment_confirmation_date': 0, 'enrollment_last_update_date': 0, 'benefit_effective_date': 0, 'benefit_end_date': 0, 'hios_issuer_id': 0, 'application_type': 0}
Decision: IDENTICAL_COPIES_AUTHORITY_UNPROVEN - TEST and TEST_TEMP hold the same PY2026 policy-member records and both match the Oct-31 snapshot. Authority is not proven by data equality or by name.


{
  "report_kind": "PY2026_SOURCE_EQUIVALENCE",
  "scope": [
    "dbo.Enrollments_TEST",
    "dbo.Enrollments_TEST_TEMP",
    "dbo.Enrollments_PY2526_10312026"
  ],
  "plan_year_filter": "coverage_year = 2026",
  "key": "policy-member (enrollment_id, enrollee_id); compared inside SQL Server",
  "fields": [
    "enrollment_status_description",
    "enrollee_status_description",
    "enrollment_create_date",
    "enrollment_confirmation_date",
    "enrollment_last_update_date",
    "benefit_effective_date",
    "benefit_end_date",
    "hios_issuer_id",
    "application_type"
  ],
  "tables": {
    "Enrollments_TEST": {
      "exists": true,
      "column_count": 57,
      "missing_required": [],
      "profile": {
        "rows_2026": 2330683,
        "distinct_policies": 1688696,
        "distinct_persons": 1320502,
        "null_key_rows": 0,
        "distinct_issuers": 16,
        "min_enrollment_create_date": "2025-10-16",
        "max_enrollment_create_date": "2026-11-01",
        "min_enrollment_confirmation_date": "2025-10-16",
        "max_enrollment_confirmation_date": "2026-11-01",
        "min_enrollment_last_update_date": "2025-10-16",
        "max_enrollment_last_update_date": "2026-11-01",
        "min_benefit_effective_date": "2026-01-01",
        "max_benefit_effective_date": "2026-12-01",
        "min_benefit_end_date": "2026-01-01",
        "max_benefit_end_date": "2026-12-31"
      },
      "status_distribution": {
        "enrollment_status_description": {
          "Cancelled": 697361,
          "Pending": 11681,
          "Pend": 220,
          "Enrolled": 928518,
          "Terminated": 679443,
          "Pend canceled": 13460
        },
        "enrollee_status_description": {
          "Cancelled": 700615,
          "Pending": 11597,
          "Pend": 220,
          "Enrolled": 909211,
          "Terminated": 695552,
          "Pend canceled": 13460,
          "Aborted": 28
        }
      }
    },
    "Enrollments_TEST_TEMP": {
      "exists": true,
      "column_count": 57,
      "missing_required": [],
      "profile": {
        "rows_2026": 2330683,
        "distinct_policies": 1688696,
        "distinct_persons": 1320502,
        "null_key_rows": 0,
        "distinct_issuers": 16,
        "min_enrollment_create_date": "2025-10-16",
        "max_enrollment_create_date": "2026-11-01",
        "min_enrollment_confirmation_date": "2025-10-16",
        "max_enrollment_confirmation_date": "2026-11-01",
        "min_enrollment_last_update_date": "2025-10-16",
        "max_enrollment_last_update_date": "2026-11-01",
        "min_benefit_effective_date": "2026-01-01",
        "max_benefit_effective_date": "2026-12-01",
        "min_benefit_end_date": "2026-01-01",
        "max_benefit_end_date": "2026-12-31"
      },
      "status_distribution": {
        "enrollment_status_description": {
          "Cancelled": 697361,
          "Pending": 11681,
          "Pend": 220,
          "Enrolled": 928518,
          "Terminated": 679443,
          "Pend canceled": 13460
        },
        "enrollee_status_description": {
          "Cancelled": 700615,
          "Pending": 11597,
          "Pend": 220,
          "Enrolled": 909211,
          "Terminated": 695552,
          "Pend canceled": 13460,
          "Aborted": 28
        }
      }
    },
    "Enrollments_PY2526_10312026": {
      "exists": true,
      "column_count": 57,
      "missing_required": [],
      "profile": {
        "rows_2026": 2330683,
        "distinct_policies": 1688696,
        "distinct_persons": 1320502,
        "null_key_rows": 0,
        "distinct_issuers": 16,
        "min_enrollment_create_date": "2025-10-16",
        "max_enrollment_create_date": "2026-11-01",
        "min_enrollment_confirmation_date": "2025-10-16",
        "max_enrollment_confirmation_date": "2026-11-01",
        "min_enrollment_last_update_date": "2025-10-16",
        "max_enrollment_last_update_date": "2026-11-01",
        "min_benefit_effective_date": "2026-01-01",
        "max_benefit_effective_date": "2026-12-01",
        "min_benefit_end_date": "2026-01-01",
        "max_benefit_end_date": "2026-12-31"
      },
      "status_distribution": {
        "enrollment_status_description": {
          "Cancelled": 697361,
          "Pending": 11681,
          "Pend": 220,
          "Enrolled": 928518,
          "Terminated": 679443,
          "Pend canceled": 13460
        },
        "enrollee_status_description": {
          "Cancelled": 700615,
          "Pending": 11597,
          "Pend": 220,
          "Enrolled": 909211,
          "Terminated": 695552,
          "Pend canceled": 13460,
          "Aborted": 28
        }
      }
    }
  },
  "pairs": {
    "Enrollments_TEST vs Enrollments_TEST_TEMP": {
      "a": "Enrollments_TEST",
      "b": "Enrollments_TEST_TEMP",
      "schema": {
        "status": "SCHEMA_IDENTICAL",
        "columns_a": 57,
        "columns_b": 57,
        "shared_columns": 57,
        "only_in_a": [],
        "only_in_b": [],
        "type_differences": [],
        "nullability_differences": [],
        "ordinal_differences": []
      },
      "aggregates": {
        "all_equal": true,
        "metrics": {
          "distinct_issuers": true,
          "distinct_persons": true,
          "distinct_policies": true,
          "max_benefit_effective_date": true,
          "max_benefit_end_date": true,
          "max_enrollment_confirmation_date": true,
          "max_enrollment_create_date": true,
          "max_enrollment_last_update_date": true,
          "min_benefit_effective_date": true,
          "min_benefit_end_date": true,
          "min_enrollment_confirmation_date": true,
          "min_enrollment_create_date": true,
          "min_enrollment_last_update_date": true,
          "null_key_rows": true,
          "rows_2026": true,
          "status_distribution_enrollment_status_description": true,
          "status_distribution_enrollee_status_description": true
        }
      },
      "status": "MATCH_WITH_AMBIGUITY",
      "reason": "All keys match; 3669 ambiguous keys match only by row count and a non-cryptographic row signature.",
      "counts": {
        "keys_a": 2324955,
        "keys_b": 2324955,
        "keys_both": 2324955,
        "a_only": 0,
        "b_only": 0,
        "rows_a": 2330683,
        "rows_b": 2330683,
        "repeated_keys_a": 5146,
        "repeated_keys_b": 5146,
        "ambiguous_keys_a": 3669,
        "ambiguous_keys_b": 3669,
        "shared_multiplicity_differs": 0,
        "shared_ambiguous": 3669,
        "shared_ambiguous_signature_equal": 3669,
        "shared_comparable": 2321286,
        "shared_any_field_differs": 0
      },
      "field_differences": {
        "enrollment_status_description": 0,
        "enrollee_status_description": 0,
        "enrollment_create_date": 0,
        "enrollment_confirmation_date": 0,
        "enrollment_last_update_date": 0,
        "benefit_effective_date": 0,
        "benefit_end_date": 0,
        "hios_issuer_id": 0,
        "application_type": 0
      },
      "fields_not_compared": []
    },
    "Enrollments_TEST vs Enrollments_PY2526_10312026": {
      "a": "Enrollments_TEST",
      "b": "Enrollments_PY2526_10312026",
      "schema": {
        "status": "SCHEMA_IDENTICAL",
        "columns_a": 57,
        "columns_b": 57,
        "shared_columns": 57,
        "only_in_a": [],
        "only_in_b": [],
        "type_differences": [],
        "nullability_differences": [],
        "ordinal_differences": []
      },
      "aggregates": {
        "all_equal": true,
        "metrics": {
          "distinct_issuers": true,
          "distinct_persons": true,
          "distinct_policies": true,
          "max_benefit_effective_date": true,
          "max_benefit_end_date": true,
          "max_enrollment_confirmation_date": true,
          "max_enrollment_create_date": true,
          "max_enrollment_last_update_date": true,
          "min_benefit_effective_date": true,
          "min_benefit_end_date": true,
          "min_enrollment_confirmation_date": true,
          "min_enrollment_create_date": true,
          "min_enrollment_last_update_date": true,
          "null_key_rows": true,
          "rows_2026": true,
          "status_distribution_enrollment_status_description": true,
          "status_distribution_enrollee_status_description": true
        }
      },
      "status": "MATCH_WITH_AMBIGUITY",
      "reason": "All keys match; 3669 ambiguous keys match only by row count and a non-cryptographic row signature.",
      "counts": {
        "keys_a": 2324955,
        "keys_b": 2324955,
        "keys_both": 2324955,
        "a_only": 0,
        "b_only": 0,
        "rows_a": 2330683,
        "rows_b": 2330683,
        "repeated_keys_a": 5146,
        "repeated_keys_b": 5146,
        "ambiguous_keys_a": 3669,
        "ambiguous_keys_b": 3669,
        "shared_multiplicity_differs": 0,
        "shared_ambiguous": 3669,
        "shared_ambiguous_signature_equal": 3669,
        "shared_comparable": 2321286,
        "shared_any_field_differs": 0
      },
      "field_differences": {
        "enrollment_status_description": 0,
        "enrollee_status_description": 0,
        "enrollment_create_date": 0,
        "enrollment_confirmation_date": 0,
        "enrollment_last_update_date": 0,
        "benefit_effective_date": 0,
        "benefit_end_date": 0,
        "hios_issuer_id": 0,
        "application_type": 0
      },
      "fields_not_compared": []
    },
    "Enrollments_TEST_TEMP vs Enrollments_PY2526_10312026": {
      "a": "Enrollments_TEST_TEMP",
      "b": "Enrollments_PY2526_10312026",
      "schema": {
        "status": "SCHEMA_IDENTICAL",
        "columns_a": 57,
        "columns_b": 57,
        "shared_columns": 57,
        "only_in_a": [],
        "only_in_b": [],
        "type_differences": [],
        "nullability_differences": [],
        "ordinal_differences": []
      },
      "aggregates": {
        "all_equal": true,
        "metrics": {
          "distinct_issuers": true,
          "distinct_persons": true,
          "distinct_policies": true,
          "max_benefit_effective_date": true,
          "max_benefit_end_date": true,
          "max_enrollment_confirmation_date": true,
          "max_enrollment_create_date": true,
          "max_enrollment_last_update_date": true,
          "min_benefit_effective_date": true,
          "min_benefit_end_date": true,
          "min_enrollment_confirmation_date": true,
          "min_enrollment_create_date": true,
          "min_enrollment_last_update_date": true,
          "null_key_rows": true,
          "rows_2026": true,
          "status_distribution_enrollment_status_description": true,
          "status_distribution_enrollee_status_description": true
        }
      },
      "status": "MATCH_WITH_AMBIGUITY",
      "reason": "All keys match; 3669 ambiguous keys match only by row count and a non-cryptographic row signature.",
      "counts": {
        "keys_a": 2324955,
        "keys_b": 2324955,
        "keys_both": 2324955,
        "a_only": 0,
        "b_only": 0,
        "rows_a": 2330683,
        "rows_b": 2330683,
        "repeated_keys_a": 5146,
        "repeated_keys_b": 5146,
        "ambiguous_keys_a": 3669,
        "ambiguous_keys_b": 3669,
        "shared_multiplicity_differs": 0,
        "shared_ambiguous": 3669,
        "shared_ambiguous_signature_equal": 3669,
        "shared_comparable": 2321286,
        "shared_any_field_differs": 0
      },
      "field_differences": {
        "enrollment_status_description": 0,
        "enrollee_status_description": 0,
        "enrollment_create_date": 0,
        "enrollment_confirmation_date": 0,
        "enrollment_last_update_date": 0,
        "benefit_effective_date": 0,
        "benefit_end_date": 0,
        "hios_issuer_id": 0,
        "application_type": 0
      },
      "fields_not_compared": []
    }
  },
  "decision": {
    "decision": "IDENTICAL_COPIES_AUTHORITY_UNPROVEN",
    "reason": "TEST and TEST_TEMP hold the same PY2026 policy-member records and both match the Oct-31 snapshot. Authority is not proven by data equality or by name.",
    "oct31_relationship": {
      "test_vs_oct31": "MATCH_WITH_AMBIGUITY",
      "test_temp_vs_oct31": "MATCH_WITH_AMBIGUITY"
    }
  },
  "definitions": {
    "EXACT_MATCH": "Same keys, same rows per key, same value in every compared field.",
    "MATCH_WITH_AMBIGUITY": "As above, except ambiguous keys match only by row count and row signature.",
    "KEYS_MATCH_FIELDS_INCOMPLETE": "Keys match but some business fields exist in only one table.",
    "DIFFERENT": "Any one-sided key, field difference, row-count difference or unmatched ambiguous key.",
    "ambiguous": "A key whose rows in one table disagree on a field. Never collapsed to one value.",
    "null": "N/A: the query did not run. Never zero."
  },
  "production_comparable": false,
  "failures": [],
  "notes": [
    "Only the three named tables are queried. No discovery, no PY2027, no 834/inbound/RCNI/SFTP.",
    "Identifier values never leave SQL Server; only aggregate counts are returned.",
    "Equal data does not prove provenance or authority, and a table name is not evidence."
  ],
  "command": ".\\.venv\\Scripts\\python.exe -m database.comparison.py2026_source_equivalence"
}

Wrote: C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\comparison\py2026_source_equivalence.json
Wrote: C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation\reports\comparison\py2026_source_equivalence.html
PS C:\Users\SelmaKazanci\Downloads\project\oe_trend_pipeline_automation> 
