# Proposed Verification Scenarios

These are candidate scenarios, not confirmed requirements and not evidence of current behavior.

| Scenario | Preconditions / input | Expected candidate result | Primary rule | Independent legacy result |
|---|---|---|---|---|
| Valid minimum amount | Valid IBAN pair; EUR 0.01 | Accepted for further processing | AMOUNT_WITHIN_LIMITS | Not available |
| Just below minimum | Valid IBAN pair; EUR 0.009 | Rejected | AMOUNT_WITHIN_LIMITS | Not available |
| Valid maximum amount | Valid IBAN pair; EUR 1,000,000 | Accepted for further processing | AMOUNT_WITHIN_LIMITS | Not available |
| Just above maximum | Valid IBAN pair; EUR 1,000,000.01 | Rejected | AMOUNT_WITHIN_LIMITS | Not available |
| Zero amount | EUR 0.00 | Candidate conflict: type allows zero but amount rule excludes it; expected rejection requires approval | AMOUNT_WITHIN_LIMITS | Not available |
| Negative amount | EUR -0.01 | Rejected | MONEY_EUR / AMOUNT_WITHIN_LIMITS | Not available |
| Non-EUR currency | USD amount otherwise valid | Rejected | SAME_CURRENCY_REQUIRED | Not available |
| Invalid debtor IBAN | Invalid debtor; valid creditor; valid amount | Rejected | IBAN_MUST_BE_VALID | Not available |
| Invalid creditor IBAN | Valid debtor; invalid creditor; valid amount | Rejected | IBAN_MUST_BE_VALID | Not available |
| Currency mismatch in combination | Valid inputs except USD currency | Determine whether currency failure precedes amount validation | Rule priority/fallback | Not available |
| Multiple invalid fields | Invalid IBAN and amount outside range | Determine validation ordering, returned errors and fallback | Rule priority/fallback | Not available |
| Missing remittance information | All required fields except remittance information | Behavior unspecified; do not infer optionality from silence | Open question | Not available |
| Precision boundary | More decimal places than supported | Behavior unspecified; no rounding policy assumed | Open question | Not available |
| Future/past execution date | Boundary dates | Behavior unspecified | Open question | Not available |
| Data-minimization audit | Valid processing trace | Only approved necessary personal fields are processed | GDPR_DATA_MINIMIZATION | Not available |

## Behavioral evidence protocol

1. Obtain an independently executable legacy baseline or sanitized production trace.
2. Record inputs, environment, precision, timezone and exact outputs.
3. Tag each result as observed, not inferred.
4. Compare deterministic expected results from approved CDL semantics.
5. Report differences without silently changing either specification or legacy behavior.
6. Treat passing examples as bounded evidence, never complete behavioral equivalence.
