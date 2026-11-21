# SEPA Example Extraction Inventory

**Subject:** `examples/banking/sepa-payment.cdl`  
**Status:** Candidate documentation-derived semantics  
**Legacy evidence available:** No real legacy application, source code, schema, tests, runtime traces or TM1 artifacts

## Scope limitation

The source is a synthetic Markdown example containing a fenced CDL fragment. It is not evidence of observed production behavior. Every item below is therefore classified as **candidate/documented**, not confirmed or independently verified.

## Business capability and intent inventory

| ID | Capability | Candidate intent | Inputs | Outputs | Evidence status |
|---|---|---|---|---|---|
| CAP-001 | Process a SEPA credit transfer | `PROCESS_SEPA_PAYMENT` | Debtor IBAN, creditor IBAN, amount, remittance information, execution date | Payment ID, status, processing date | Documented example |

## Business rule inventory

| Rule ID | Candidate semantics | Applies to | Priority | Exceptions / fallback | Status |
|---|---|---|---|---|---|
| IBAN_MUST_BE_VALID | Debtor and creditor IBANs must both be valid | PROCESS_SEPA_PAYMENT | Unspecified | No exception or fallback documented | Candidate |
| AMOUNT_WITHIN_LIMITS | Amount must be between EUR 0.01 and EUR 1,000,000 inclusive | PROCESS_SEPA_PAYMENT | Unspecified | Reject outside limits is inferred from the prose's test hint, not confirmed | Candidate |
| SAME_CURRENCY_REQUIRED | Payment currency must be EUR | PROCESS_SEPA_PAYMENT | Unspecified | Reject non-EUR is inferred from the test hint, not confirmed | Candidate |

## Policy inventory

| Policy ID | Candidate semantics | Status |
|---|---|---|
| GDPR_DATA_MINIMIZATION | Process only necessary personal data | Candidate; scope and enforcement mechanism unspecified |

## Semantic types

- `MONEY_EUR`: decimal amount and text currency; documented non-negative amount and EUR currency.
- `SEPA_PAYMENT_REQUEST`: debtor/creditor IBAN, amount, remittance information and execution date.
- `SEPA_PAYMENT_RESPONSE`: payment identifier, status and processing date.
- `TEXT`, `DECIMAL`, `DATE`, `DATETIME`: conservative semantic placeholders using the supported custom-type grammar. These do not add primitive constraints beyond existing compiler capabilities.

## Dependencies and aggregation

- All three rules depend on `PROCESS_SEPA_PAYMENT`.
- The privacy policy applies to the same intent.
- Currency validation depends on the `MONEY_EUR` currency field.
- No priority ordering, rule conflict resolution, fallback chain, consolidation or aggregation behavior is documented.

## Observed versus inferred behavior

- **Observed:** None. The repository contains no captured legacy results or executable tests for this example.
- **Documented:** Intent, input/output names, rule statements, EUR constraint and privacy statement.
- **Inferred:** Rejection behavior for invalid IBAN, out-of-limit amounts and non-EUR currency comes from `test_hints` prose.
- **Not established:** HTTP status codes, error models, execution-day behavior, settlement behavior, authorization, rounding, precision, duplicate handling, idempotency and fallback policies.

## Unsupported behavior and ambiguities

1. The source calls itself multi-currency while requiring EUR; the intended meaning conflicts.
2. No source defines the authority or algorithm for IBAN validity.
3. No inclusive/exclusive boundary wording exists; the extracted inclusive interpretation follows the example's “between” statement and requires confirmation.
4. EUR precision, scale and rounding are unspecified.
5. Amount `>= 0` in the type conflicts conceptually with the rule minimum of EUR 0.01; both are retained as distinct constraints for review.
6. `test_hints` mention HTTP 400, but CDL metadata does not establish a confirmed technical contract.
7. Status values in the hand-written OpenAPI are not present as CDL rules; they are not adopted as business semantics.
8. No authentication, authorization, fraud, PSD2 control or real-time SLA is concretely defined despite the prose context.
