# P1-005 — Synthetic TM1 Reference Adapter

## Metadata
- **Status:** Draft
- **Priority:** P1
- **Depends on:** P0-002, P0-003, P0-005, P0-008
- **Approval required:** Yes for external TM1 connection; synthetic-only spike requires no corporate access

## Objective
Demonstrate deterministic extraction from synthetic TM1 metadata while keeping TM1 constructs outside the generic SIR core.

## Non-goals
No corporate connection, confidential data, complete calculation engine, unsupported-expression approximation or complete modernization claim.

## Requirements
- **FR-01:** Extract synthetic cubes, dimensions, hierarchies, attributes, rules, feeders and dependencies.
- **FR-02:** Preserve original source and source locations.
- **FR-03:** Separate deterministic extraction from AI-assisted interpretation.
- **FR-04:** Mark unsupported expressions and uncertain interpretations.
- **FR-05:** Normalize approved interpretations into generic SIR extension/profile data.

## Acceptance criteria
- [ ] Synthetic evidence contains no credentials or confidential content.
- [ ] Each interpretation links to raw source and approval state.
- [ ] Unsupported formulas are reported without approximation.
- [ ] A simple extraction/dependency report is independently reproducible.

## Tasks

- [ ] TASK-01 — Define a synthetic, non-confidential TM1 fixture format.
- [ ] TASK-02 — Extract cubes, dimensions, rules, feeders and raw source references.
- [ ] TASK-03 — Build deterministic cross-object dependencies.
- [ ] TASK-04 — Report unsupported formulas and provisional interpretations separately.
- [ ] TASK-05 — Normalize only approved interpretations into SIR profile data.
- [ ] TASK-06 — Run secret/confidentiality review before publication.

## Verification

| Level | Evidence | Command/report |
|---|---|---|
| V1 | Fixture/schema/source-location completeness | Extraction report |
| V2 | Cross-object references and dependency validity | Dependency report |
| V3-V5 | Not established by extraction | Separate approved verification work |

## Delivery evidence

- Commits/PRs: none
- Tests: none
- Reports/artifacts: none
