

Hi Team,

I wanted to share an update on the progress of our 834 inbound and outbound data processing and data availability.

We have completed the loading of the available 834 Inbound records, including the most recent files, into Azure SQL. The inbound automation framework processes the source 834 files, captures the enrollment/enrollee-level data, and maintains separate run- and file-level tracking for validation and audit purposes.

The primary inbound tables currently available are:

dbo.inbound_automation – Parsed 834 inbound enrollment/enrollee records

dbo.inbound_automation_run_log – Pipeline run-level processing and audit information

dbo.inbound_automation_file_log – Individual source file processing, status, and duplicate/file-hash tracking

The inbound dataset includes fields such as coverage year, issuer/HIOS ID, policy and enrollee identifiers, enrollment status, maintenance effective dates, premium/APTC/CSR information, rating area, insurance type, and other available 834 attributes.

In addition to the database records, we have also added the 834 Inbound source files for all available years to SharePoint, so the original files are available alongside the structured database records for validation, reconciliation, and historical reference.

834 Outbound

We have also completed the initial 834 Outbound data structure and processing framework. Since the outbound files have their own content and structural characteristics, we created a separate outbound data model rather than mixing these records with the inbound dataset.

The outbound framework currently uses four logical data components/tables for the outbound content, processing, and audit structure, including the main outbound record structure and supporting processing/audit information. The core SQL tables currently include:

dbo.outbound_automation – Parsed outbound 834 records

dbo.outbound_automation_run_log – Outbound pipeline run-level tracking

dbo.outbound_automation_file_log – Outbound source-file processing and audit tracking

Outbound content/file structure layer – Used to preserve and process the outbound-specific file/content structure separately from inbound processing

We have started processing the available outbound records file by file and are currently working through the October and November 2026 outbound files.

For example, the outbound source includes files such as:

to_15105_GA_834_INDV_20260930230937.xml
to_15105_GA_834_INDV_20261001231008.xml

These files are being processed independently from the inbound FROM files so that we can maintain clear source lineage and distinguish what was received inbound from what was generated/sent outbound.

We will also add the available October and November outbound source files to SharePoint, providing both the original file-level records and the corresponding structured database data as processing continues.

With this structure, the team will be able to review both 834 Inbound and 834 Outbound records in Azure SQL while also having access to the underlying source files in SharePoint. This should provide a much stronger foundation for reconciliation, issuer-level analysis, historical research, and inbound-versus-outbound comparisons.

We will continue loading the remaining outbound files incrementally and validating the results as each period is completed.

Thank you,
