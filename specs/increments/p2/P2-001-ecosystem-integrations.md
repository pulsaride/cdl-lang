# P2-001 — Ecosystem Integrations

## Metadata
- **Status:** Draft
- **Priority:** P2
- **Depends on:** Stable P0 APIs and selected P1 contracts
- **Approval required:** Per adapter, dependency and publication surface

## Objective
Expose proven semantic capabilities to MCP, CI/CD and IDE consumers without coupling the core to a particular agent or platform.

## Non-goals
No new semantic source of truth, provider-specific core logic or broad enterprise dashboard.

## Requirements
- **FR-01:** Define neutral request/response contracts for validate, dependencies, context, trace and verify.
- **FR-02:** Provide MCP and CI adapters over the same semantic services.
- **FR-03:** IDE diagnostics consume stable source-mapped reports.
- **NFR-01:** Adapters require no new compiler semantic dependency and preserve model independence.

## Acceptance criteria
- [ ] Adapter tests use the same canonical fixtures as CLI commands.
- [ ] MCP/CI/IDE outputs agree on codes and severity.
- [ ] Adapter failures do not mutate or approve semantics.
- [ ] Packaging and licensing review passes before external publication.

## Tasks

- [ ] TASK-01 — Define neutral adapter contracts for validate/dependencies/context/trace/verify.
- [ ] TASK-02 — Add shared contract fixtures before implementation.
- [ ] TASK-03 — Implement one CI adapter as the vertical slice.
- [ ] TASK-04 — Evaluate MCP and IDE adapters against the same fixtures.
- [ ] TASK-05 — Complete permissions, licensing and publication review.

## Verification

| Level | Evidence | Command/report |
|---|---|---|
| V1 | Adapter request/response schemas | Contract tests |
| V2 | Shared codes, severity and semantic IDs | Cross-adapter conformance report |
| V3-V5 | Delegated to consumed semantic services | No independent claim |

## Delivery evidence

- Commits/PRs: none
- Tests: none
- Reports/artifacts: none
