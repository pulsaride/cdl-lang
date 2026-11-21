# Evidence and Provenance Mapping

All evidence references below point to the synthetic repository example. No identifier denotes production legacy evidence unless independently added and reviewed later.

| Evidence ID | Source | Location | Claim supported | Reliability |
|---|---|---|---|---|
| EX-SEPA-001 | `examples/banking/sepa-payment.cdl` | Business Context | The example is framed as SEPA credit transfer processing with regulatory and privacy concerns | Documented synthetic context |
| EX-SEPA-002 | `examples/banking/sepa-payment.cdl` | `type Money` | Amount is non-negative and currency is EUR | Explicit example statement |
| EX-SEPA-003 | `examples/banking/sepa-payment.cdl` | `type SepaPaymentRequest` | Candidate request fields and types | Explicit example statement |
| EX-SEPA-004 | `examples/banking/sepa-payment.cdl` | `type SepaPaymentResponse` | Candidate response fields and types | Explicit example statement |
| EX-SEPA-005 | `examples/banking/sepa-payment.cdl` | `intent PROCESS_SEPA_PAYMENT` | Candidate capability, inputs, outputs and evidence identifiers | Explicit example statement |
| EX-SEPA-006 | `examples/banking/sepa-payment.cdl` | `rule IBAN_MUST_BE_VALID` | Both IBANs are required to be valid | Explicit example statement |
| EX-SEPA-007 | `examples/banking/sepa-payment.cdl` | `test_hints` under IBAN rule | Invalid IBAN candidate response is HTTP 400 / IBAN_INVALID | Candidate verification hint only |
| EX-SEPA-008 | `examples/banking/sepa-payment.cdl` | `rule AMOUNT_WITHIN_LIMITS` | Candidate range is EUR 0.01 through EUR 1,000,000 | Explicit example statement |
| EX-SEPA-009 | `examples/banking/sepa-payment.cdl` | `test_hints` under amount rule | Amounts outside the range should be rejected | Candidate verification hint only |
| EX-SEPA-010 | `examples/banking/sepa-payment.cdl` | `rule SAME_CURRENCY_REQUIRED` | SEPA payment currency must be EUR | Explicit example statement |
| EX-SEPA-011 | `examples/banking/sepa-payment.cdl` | `policy GDPR_DATA_MINIMIZATION` | Only necessary personal data should be processed | Explicit example statement |
| EX-SEPA-012 | `examples/banking/sepa-payment.cdl` | `mapping PROCESS_SEPA_PAYMENT` | Documented HTTP implementation mapping | Technical mapping, not business meaning |

## Evidence interpretation policy

- A named external evidence token in the source, such as `psd2_regulation_eu_2018_843`, is preserved as an unresolved claim only. The external source was not retrieved or verified during this extraction.
- Evidence identifiers in `domain.cdl` are local trace labels because the supported metadata model accepts strings but does not validate external references.
- If real legacy source files, tests or runtime captures are supplied, replace or augment these rows with immutable source locations and extraction hashes.
