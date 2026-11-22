# P1-003 — Bounded Agent Context and Authoring Skill

## Metadata
- **Status:** Draft
- **Priority:** P1
- **Depends on:** P0-005, P0-008
- **Approval required:** No for draft skill; yes for official publication claims

## Objective
Allow external agents to consume bounded approved semantics and author supported candidate CDL without CDL depending on a particular harness.

## Non-goals
No discovery engine, model orchestration, automatic semantic approval or credentials/secrets storage.

## Requirements
- **FR-01:** `context` selects approved rules/types/evidence/contracts/scenarios/obligations by semantic distance and scope.
- **FR-02:** Context includes provenance and excludes unapproved or irrelevant nodes by policy.
- **FR-03:** The skill teaches supported syntax, evidence preservation, observed/documented/inferred labels and compiler validation.
- **FR-04:** Java and synthetic TM1 extraction examples remain lightweight and non-confidential.

## Acceptance criteria
- [ ] Same scope budget produces deterministic bounded context.
- [ ] Context never includes an unapproved semantic candidate under approved-only policy.
- [ ] Skill output reports unresolved questions and unsupported behavior.
- [ ] No model/provider dependency is required.

## Tasks

- [ ] TASK-01 — Define scope, semantic-distance and token/size budget policies.
- [ ] TASK-02 — Add deterministic approved-only context fixtures.
- [ ] TASK-03 — Implement bounded context generation over resolved dependencies.
- [ ] TASK-04 — Draft and test the authoring skill against supported syntax.
- [ ] TASK-05 — Add lightweight Java and synthetic TM1 extraction examples.

## Verification

| Level | Evidence | Command/report |
|---|---|---|
| V1 | Context schema and deterministic size limits | Context fixture report |
| V2 | Approval/provenance filtering and dependency selection | Security/relevance test report |
| V3-V5 | Not claimed | Downstream verification only |

## Delivery evidence

- Commits/PRs: none
- Tests: none
- Reports/artifacts: none
