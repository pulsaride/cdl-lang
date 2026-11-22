# P0-009 — 30-Day Developer Vertical Slice

## Metadata
- **Status:** Draft
- **Priority:** P0
- **Target release:** 2.0.0-alpha.1 acceptance gate
- **Roadmap:** Early developer experience and 30-day plan
- **Depends on:** P0-001 through P0-008, with P0-006 evaluation optional
- **Approval required:** No for internal demo; yes for public milestone claim

## Objective
Demonstrate a small synthetic domain end to end before completing every architectural abstraction.

## User scenario
A developer authors a bounded financial specification, validates it, inspects dependencies, changes one rule, and receives a deterministic impact report.

## Requirements
- **FR-01:** Author and normalize one synthetic CDL specification.
- **FR-02:** Show V1 and V2 diagnostics separately.
- **FR-03:** Export expression-derived dependencies.
- **FR-04:** Perform bounded V3 evaluation if P0-006 is accepted.
- **FR-05:** Produce semantic diff and transitive impact for one rule change.
- **FR-06:** Include explicit unresolved or unsupported behavior.
- **NFR-01:** Demo runs from a clean checkout and does not call an LLM.

## Acceptance criteria
- [ ] Existing v0.6 CTK remains green.
- [ ] Demo detects at least one structural and one semantic defect.
- [ ] Demo reports dependencies and one transitive impact.
- [ ] Report says exactly which V levels were demonstrated.
- [ ] No complete-runtime, parity or full-TM1 claim appears.

## Tasks
- [ ] Select synthetic finance fixture.
- [ ] Add one-command demo script.
- [ ] Capture machine-readable reports.
- [ ] Add README/docs walkthrough.
- [ ] Independent review and approval decision.

## Verification
The demo publishes V1/V2 evidence, optional V3, and explicitly marks V4/V5 as not established.

## Risks and open questions

- The demo may overstate maturity unless every displayed result includes its V-level and scope.
- If P0-006 is deferred, the workflow must explicitly label V3 as unavailable rather than simulate it.

## Delivery evidence

- Commits/PRs: none
- Tests: none
- Reports/artifacts: none
- Review result: none

## Change log

- 2026-11-22 — Converted to an executable increment specification.

## Non-goals
No full application generation, complete TM1 extraction, general runtime, automatic business approval or V4/V5 claim. The vertical slice demonstrates only the capabilities implemented by the listed dependent increments.

## Backward compatibility

The demo must run against the current v0.7.0 compatibility baseline and preserve all CTK outputs. Any new command is additive and cannot repurpose existing command meanings.

## User scenarios

### US-02 — Run one-command semantic walkthrough

Given a clean checkout, one documented command compiles the synthetic fixture, emits V1/V2 reports, exports dependencies, performs optional V3 and reports impact after a prepared rule change.
