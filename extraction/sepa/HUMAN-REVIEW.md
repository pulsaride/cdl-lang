# Human Review Package

## Required decisions

- [ ] Is `PROCESS_SEPA_PAYMENT` a confirmed business capability?
- [ ] Are the debtor, creditor, amount, remittance and execution-date fields complete?
- [ ] Is the EUR-only constraint confirmed despite the source's “multi-currency” description?
- [ ] Are the 0.01 and 1,000,000 boundaries inclusive?
- [ ] Which IBAN standard, registry and validation algorithm is authoritative?
- [ ] Is a `0.00` amount rejected despite the base type allowing non-negative values?
- [ ] What decimal scale, precision and rounding policy applies?
- [ ] Are invalid requests rejected, and with which business error model?
- [ ] Which rule executes first when multiple rules fail?
- [ ] Are there exceptions, overrides, fallback actions or authorization checks?
- [ ] Is remittance information mandatory for every payment?
- [ ] What restrictions apply to execution date?
- [ ] Is GDPR data minimization enforced, audited or informational?
- [ ] Which response statuses are approved business outcomes rather than technical API choices?
- [ ] Are external evidence tokens backed by approved source documents?

## Evidence review

- [ ] Replace synthetic example references with real source locations where supplied.
- [ ] Verify that each external regulation/procedure reference is permitted for public storage.
- [ ] Add source hashes for immutable legacy evidence.
- [ ] Record whether each statement is documented, observed or inferred.
- [ ] Do not promote inferred behavior to confirmed status without a business owner.

## Verification review

- [ ] Supply independently captured legacy inputs and outputs.
- [ ] Approve boundary definitions for amount and date fields.
- [ ] Approve precision and rounding expectations.
- [ ] Approve multiple-failure ordering and error aggregation.
- [ ] Approve at least one verification scenario for every rule and policy.
- [ ] Record failures and divergences as evidence, not as permission to silently alter legacy behavior.

## Formalization limitations

The current grammar supports intents, rules, policies, flows, mappings and constrained fields, but its semantic compiler does not yet validate the meaning of metadata such as `applies_to`, currency compatibility, priorities, exceptions or verification obligations. The included verification succeeds formally only at the parser/type-name level.
