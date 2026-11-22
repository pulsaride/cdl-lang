# P0-007 — Semantic Diff and Impact Analysis

## Metadata
- **Status:** Draft
- **Priority:** P0
- **Target release:** 2.0.0-alpha.x / beta candidate
- **Roadmap:** P0 item 7
- **Architecture:** Semantic diff and dependency graph
- **Depends on:** P0-002, P0-005
- **Approval required:** Yes — stable identity and rename rules

## Objective
Identify semantic changes and their direct/transitive dependents without reparsing or asking an AI to reconstruct the domain.

## Non-goals
No business-meaning inference, automatic approval, implementation rewrite or text diff replacement.

## Requirements
- **FR-01:** Classify added, removed, changed, moved and renamed semantic objects.
- **FR-02:** Include type, expression, rule, policy, evidence and mapping changes.
- **FR-03:** Traverse reverse dependencies for transitive impact.
- **FR-04:** Mark required regression scenarios and verification obligations.
- **NFR-01:** Exclude formatting/provenance-only changes from semantic identity where configured.

## Acceptance criteria
- [ ] Equivalent source formatting produces no semantic diff.
- [ ] A changed rule lists direct and transitive dependents deterministically.
- [ ] Rename policy is explicit and produces no accidental add/remove when identity is known.
- [ ] Machine-readable report identifies changed-object IDs, reasons and affected obligations.

## Tasks
- [ ] Define change taxonomy and identity policy.
- [ ] Implement structural and semantic diff.
- [ ] Implement reverse graph traversal.
- [ ] Add affected-scenario prioritization.

## Backward compatibility

Diff and impact are additive analysis over canonical SIR. Existing source files and generated artifacts remain unchanged, and formatting-only edits do not alter semantic identity under the approved policy.

## User scenarios

### US-01 — Compare specification revisions

Given two canonical SIR documents, a developer receives stable added, removed, changed and renamed semantic objects.

### US-02 — Understand rule-change impact

Given one changed rule, reverse dependency traversal lists direct and transitive dependents plus affected verification obligations.

## Verification
V1 serialization, V2 semantic identity/dependency checks; executable impact fixture reviewed independently.

## Risks and open questions

- Stable rename matching requires an approved identity strategy.
- Impact prioritization must avoid claiming all affected implementations were discovered.

## Delivery evidence

- Commits/PRs: none
- Tests: none
- Reports/artifacts: none
- Review result: none

## Change log

- 2026-11-22 — Converted to an executable increment specification.
