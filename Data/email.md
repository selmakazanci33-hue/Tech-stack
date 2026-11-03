Hi Mital, I wanted to share an initial working version of the Open Enrollment Historical Trend Dashboard and the supporting automated data pipeline based on our discussion.

I completed the first end-to-end run against Azure this morning. The pipeline now automatically queries, processes, validates, and visualizes the historical Enrollment, Cancellation, and Termination trends for PY2025 and PY2026.

As part of the validation, I also added independent SQL recounts so the dashboard totals are checked directly against the source data rather than relying only on the visualization calculations. The Level 1 validations are currently matching across all six year/metric combinations.

I’m continuing with the deeper validation, particularly issuer-level enrollment distribution and status/event categorization.

For PY2027, the current pipeline does not display any values because an authoritative backend enrollment source for PY2027 has not yet been identified. Rather than displaying an unsupported zero or incomplete trend, I’ve intentionally marked PY2027 as Source Pending until the appropriate source is confirmed.

EDE is being handled similarly and remains Validation Pending until I confirm the authoritative partner-permissions relationship.

I wanted to share the current version with you so you can see the progress and overall direction. I’ll continue refining the remaining validation points as the source relationships are confirmed.
