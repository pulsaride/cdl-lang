# P0-005 — Dependency Graph

## Metadata
- **Status:** Draft
- **Priority:** P0
- **Target release:** 2.0.0-alpha.x
- **Roadmap:** P0 item 6
- **Depends on:** P0-002, P0-003, P0-004
- **Approval required:** Yes for which cycles are prohibited

## Objective
Build a deterministic directed graph of semantic dependencies from resolved references and structured expressions.

## Non-goals
No workflow scheduling, runtime orchestration or implicit dependencies inferred from prose.

## Requirements
- **FR-01:** Nodes have stable semantic IDs and kinds.
- **FR-02:** Edges carry relation type and source-location evidence.
- **FR-03:** Type, rule, policy, flow, evidence, mapping and expression dependencies are included.
- **FR-04:** Prohibited cycles are detected with stable paths.
- **NFR-01:** Graph serialization is deterministic and supports DOT/JSON projections.

## Acceptance criteria
- [ ] Direct dependencies match source references exactly.
- [ ] A permitted cycle policy differs from prohibited-cycle diagnostics.
- [ ] A multi-node cycle reports the same path independent of input order.
- [ ] Reverse lookup supports later impact analysis.

## Tasks
- [ ] Define relation taxonomy.
- [ ] Build graph from resolved SIR.
- [ ] Add DFS/SCC cycle detection.
- [ ] Add JSON/diagnostic fixtures and command adapter.

## Backward compatibility

Graph generation is additive and does not replace current compilation. Existing type-cycle reporting remains available through the compatibility facade.

## User scenarios

### US-01 — Inspect direct and reverse dependencies

Given resolved SIR, a developer receives deterministic direct and reverse edges for a selected semantic object.

### US-02 — Diagnose prohibited cycle

Given a multi-node prohibited cycle, the same canonical cycle path is reported regardless of source ordering.

## Verification
V1 graph schema, V2 cycle and reference validation.

## Risks and open questions

- The permitted/prohibited cycle policy differs by relation type and requires approval.
- Graph serialization must not expose unapproved or confidential semantic detail by default.

## Delivery evidence

- Commits/PRs: none
- Tests: none
- Reports/artifacts: none
- Review result: none

## Change log

- 2026-11-22 — Converted to an executable increment specification.
