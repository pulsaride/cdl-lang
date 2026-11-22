# P1-004 — Behavioral Verification

## Metadata
- **Status:** Draft
- **Priority:** P1
- **Depends on:** P0-006, P0-008
- **Approval required:** Yes for V4/V5 reporting and parity claims

## Objective
Link supported scenarios to executable tests and independently observed implementation or legacy results.

## Non-goals
No complete equivalence claim, target implementation generation or uncontrolled test execution.

## Requirements
- **FR-01:** Represent acceptance scenarios, typed inputs, expected outcomes and required precision/null/zero policies.
- **FR-02:** Generate bounded reference vectors when V3 is available.
- **FR-03:** Import V4 implementation observations through an explicit report schema.
- **FR-04:** Import V5 legacy observations with independent evidence identifiers.
- **FR-05:** Report regression and modernization coverage with limitations.

## Acceptance criteria
- [ ] Every scenario links to an approved rule/obligation.
- [ ] Failed and passed results remain visible independently of compiler success.
- [ ] V4 and V5 workload/scope boundaries are present in every report.
- [ ] No “behaviorally equivalent” summary is emitted from scenario count alone.

## Tasks

- [ ] TASK-01 — Define acceptance scenario and observation report schemas.
- [ ] TASK-02 — Add typed precision, null, zero and expected-error fixtures.
- [ ] TASK-03 — Link scenarios to rules, obligations and test execution evidence.
- [ ] TASK-04 — Add V4 implementation-conformance ingestion.
- [ ] TASK-05 — Add independently captured V5 legacy evidence protocol and coverage report.

## Verification

| Level | Evidence | Command/report |
|---|---|---|
| V1-V2 | Scenario structure and semantic references | Validation report |
| V3 | Bounded reference vectors | Evaluator report |
| V4 | Independent implementation observations | Conformance report |
| V5 | Independent legacy observations and scope | Parity report with limitations |

## Delivery evidence

- Commits/PRs: none
- Tests: none
- Reports/artifacts: none
