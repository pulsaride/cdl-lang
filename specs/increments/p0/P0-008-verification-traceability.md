# P0-008 — Verification Obligations and Traceability

## Metadata
- **Status:** Draft
- **Priority:** P0
- **Target release:** 2.0.0-beta candidate
- **Roadmap:** P0 item 8
- **Architecture:** Verification model and taxonomy
- **Depends on:** P0-004, P0-005, P0-007
- **Approval required:** Yes for V4/V5 evidence policy

## Objective
Represent evidence-to-rule-to-implementation-to-test-to-result traceability and report V1–V5 separately.

## Non-goals
No automatic business approval, complete-equivalence claim, generated target application or replacement of independent test execution.

## Requirements
- **FR-01:** Model evidence/provenance, mappings, obligations, scenarios and observations.
- **FR-02:** Detect missing mandatory obligations.
- **FR-03:** Report V1 structural, V2 semantic, V3 reference, V4 implementation and V5 legacy results independently.
- **FR-04:** Compute linkage coverage with explicit scope.
- **FR-05:** Detect generated artifact hash drift.
- **NFR-01:** Results include evidence, limitations and deterministic status ordering.

## Acceptance criteria
- [ ] Missing obligation and orphaned verification nodes are reported.
- [ ] A failed scenario remains distinct from compiler validity.
- [ ] V3 completion does not imply V4 or V5.
- [ ] Trace report follows every approved rule to available evidence and implementation/test links.

## Tasks
- [ ] Define trace entities and relation types.
- [ ] Implement obligation and coverage aggregation.
- [ ] Add artifact identity/drift report.
- [ ] Add negative fixture and independent review checklist.

## Verification
V1–V5 statuses are report subjects; this increment must include examples of each without conflating them.

## Risks and open questions

- Coverage denominators and mandatory-obligation profiles require approval.
- Imported V4/V5 evidence must remain immutable, independently attributable and scope-bounded.

## Delivery evidence

- Commits/PRs: none
- Tests: none
- Reports/artifacts: none
- Review result: none

## Change log

- 2026-11-22 — Converted to an executable increment specification.

## Backward compatibility

Verification metadata is additive. Existing compiler success does not become V4 or V5, and legacy `test_hints` may seed candidate obligations only when explicitly mapped.

## User scenarios

### US-01 — Trace an approved rule

Given an approved rule, a report shows linked evidence, implementation mapping, obligation, test and observed result while exposing missing links.

### US-02 — Distinguish failed validation from failed behavior

Given a valid specification and failed executable scenario, compiler V2 remains valid while the scenario result is failed.
