

Hi Hari,
We consolidated the reconciliation into a single normalized master population so that the 2026 inbound CONFIRM records and the relevant prior-year carry-forward records can be reviewed together.
The final master population contains 906,064 distinct entities:
- 501,324 – 2026 CONFIRM evidence only
- 404,695 – 2025 carry-forward evidence only
- 45 – evidence in both 2025 and 2026
After removing the cross-year overlap, the final combined population is 906,064 distinct entities.
The reconciliation categories within this master population are:
- 744,875 – Exact Policy + Enrollee match
- 74,439 – Same Enrollee / Different Policy
- 824 – Same Policy / Different Enrollee
- 85,926 – No Policy/Enrollee evidence in the 2026 FFM Enrolled/Pending target
All validation controls passed.
I also performed a UI spot check on one of the Same Policy / Different Enrollee records, and it provides a useful example of why these differences may require business-level validation rather than being treated automatically as mismatches.
Example – Issuer 13535
- Policy ID: 210690902
- FFM Enrollee ID: 1004451621
- Inbound 834 Enrollee ID: 1004451622
- FFM Status: Enrolled
- Inbound Status: CONFIRM
- Coverage effective date: 01/01/2026
When I checked this policy in the UI, both members are present under the same policy. The enrollee ending in 21 is the parent/subscriber record, while the enrollee ending in 22 is the child record that we received in the inbound 834.
So in this example, the policy is the same and both members exist in the UI, but the reconciliation selected different enrollee IDs. This suggests that at least some of the 824 Same Policy / Different Enrollee cases may represent household/member-level relationships rather than an actual missing enrollment.
I also have a question regarding the larger carry-forward population.
For 2025, we had approximately 1.65 million distinct inbound CONFIRM entities. If an existing confirmed enrollment can continue into the following plan year without necessarily generating another inbound 834, what should we use as the correct distinguisher to identify the 2025 CONFIRM policies that were not cancelled or terminated and continued into 2026?
Should we use the auto-renewal/renewal indicator from Vimo, or is there another field or business rule that can tell us that a 2025 CONFIRM policy remained active in 2026 without requiring a new inbound 834?
Having that indicator would allow us to distinguish:
- legitimate carry-forward/auto-renewed policies,
- policies that were subsequently cancelled or terminated, and
- records where expected inbound activity may actually be missing.
Thanks,
