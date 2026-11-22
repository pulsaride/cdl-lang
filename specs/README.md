# Incremental SDD Specifications

This directory turns the canonical [roadmap](../ROADMAP.md) into reviewable and implementable increments.

## Ownership

- `ROADMAP.md` owns strategic direction, priorities and release milestones.
- `ARCHITECTURE.md` owns target architecture and non-negotiable boundaries.
- `specs/increments/` owns incremental behavior, acceptance criteria, implementation slices, evidence and delivery status.
- CEPs own language or public-contract changes requiring governance approval.
- Generated reports and changelog entries never become specification sources of truth.

Do not copy roadmap status into multiple documents. Each increment links back to the roadmap item it implements and records its own delivery state.

## Spec lifecycle

`Draft` → `Approved` → `Implementing` → `Verification` → `Complete`

A spec may become `Deferred` or `Rejected` only with a recorded rationale.

## Increment IDs

- `P0-xxx`: semantic foundation.
- `P1-xxx`: interoperability and evidence.
- `P2-xxx`: ecosystem integrations.
- `P3-xxx`: advanced capabilities, only after an evidence-based value decision.

IDs are immutable. Use a new spec for materially different behavior; use a change section for clarification within the same objective.

## Required traceability

Every increment contains:

- Roadmap and architecture references.
- Bounded objective and explicit non-goals.
- User-visible scenarios.
- Acceptance criteria.
- Test and evidence plan.
- Task breakdown.
- Risks, approvals and backward compatibility.
- A decision/evidence log with links to commits, issues and verification output.

## Working rules

1. Start with tests and compatibility fixtures.
2. Deliver the smallest executable vertical slice.
3. Preserve current CLI, grammar and OpenAPI behavior unless a spec has explicit approval for a break.
4. Separate V1 structural, V2 semantic, V3 reference-evaluation, V4 implementation-conformance and V5 legacy-parity results.
5. Stop at documented approval gates.
6. Mark planned capabilities as planned; do not infer completion from implementation activity.

## Index

| Increment | Priority | Status | Objective |
|---|---|---|---|
| [P0-001](increments/p0/P0-001-compatibility-baseline.md) | P0 | Draft | Backward-compatibility baseline and parser diagnostics |
| [P0-002](increments/p0/P0-002-sir-v1-contract.md) | P0 | Draft | Versioned immutable SIR contract |
| [P0-003](increments/p0/P0-003-typed-expressions.md) | P0 | Draft | Structured typed expressions and expression references |
| [P0-004](increments/p0/P0-004-semantic-resolution-validation.md) | P0 | Draft | Symbol resolution, typing and deterministic diagnostics |
| [P0-005](increments/p0/P0-005-dependency-graph.md) | P0 | Draft | Dependency graph and prohibited cycles |
| [P0-006](increments/p0/P0-006-reference-evaluator.md) | P0 | Draft | Bounded deterministic reference evaluator |
| [P0-007](increments/p0/P0-007-semantic-diff-impact.md) | P0 | Draft | Semantic diff and transitive impact |
| [P0-008](increments/p0/P0-008-verification-traceability.md) | P0 | Draft | Evidence, obligations, V1-V5 and traceability |
| [P0-009](increments/p0/P0-009-developer-vertical-slice.md) | P0 | Draft | Executable 30-day developer workflow |
| [P1-001](increments/p1/P1-001-json-yaml-inputs.md) | P1 | Draft | Versioned structured inputs |
| [P1-002](increments/p1/P1-002-markdown-sdd.md) | P1 | Draft | Markdown SDD and embedded CDL |
| [P1-003](increments/p1/P1-003-context-authoring-skill.md) | P1 | Draft | Bounded agent context and authoring skill |
| [P1-004](increments/p1/P1-004-behavioral-verification.md) | P1 | Draft | Acceptance scenarios and conformance evidence |
| [P1-005](increments/p1/P1-005-tm1-reference-adapter.md) | P1 | Draft | Synthetic TM1 adapter |
| [P1-006](increments/p1/P1-006-competitive-benchmark.md) | P1 | Draft | Reproducible A/B/C semantic SDD benchmark |
| [P2-001](increments/p2/P2-001-ecosystem-integrations.md) | P2 | Draft | MCP, CI/CD and IDE integrations |
| [P3-001](increments/p3/P3-001-advanced-capabilities-backlog.md) | P3 | Deferred | Gated backlog for discovery, visualization, registries and property testing |

The implementation order and current starting slice are maintained in [EXECUTION.md](EXECUTION.md).

## Creating an increment

Copy `templates/INCREMENT.md`, assign the next immutable ID, link every requirement to a roadmap item, and keep the non-goals explicit. Add it to the index only after its objective and acceptance criteria are reviewable.
