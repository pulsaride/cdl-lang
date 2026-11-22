# P1-006 — Competitive Semantic SDD Benchmark

## Metadata

- **Status:** Draft
- **Priority:** P1
- **Owner:** TBD
- **Target release:** 2.0.0-beta evidence gate
- **Roadmap references:** `ROADMAP.md` — Competitive benchmark and verification requirements
- **Architecture references:** Evidence chain, verification taxonomy, AI interoperability
- **Depends on:** P0-009, P1-004
- **Approval required:** Yes — benchmark protocol and all publication claims

## Objective

Measure, without assuming a winner, whether CDL adds value over equivalent Markdown SDD and structured YAML/JSON workflows.

## In scope

- Equivalent tasks, fixtures, repositories and execution budgets for approaches A, B and C.
- Independent result verification.
- Reproducible metrics, raw observations, limitations and negative results.

## Non-goals

No performance marketing, cherry-picked tasks, unpublished scoring, LLM-only judgment, or behavioral-equivalence claims from test counts.

## Backward compatibility

The benchmark must not require changing the v0.6 grammar or existing CLI solely to improve benchmark outcomes.

## User scenarios

### US-01 — Independent comparison

Given the same synthetic domain and budget, each approach runs the same tasks and independent reviewers score the predefined metrics.

### US-02 — Negative result

When CDL adds no measurable benefit for a task, the report records that result and the conditions under which a simpler format is sufficient.

## Requirements

### FR-01 — Controlled matrix

Define Markdown-only, Markdown plus structured YAML/JSON, and Markdown plus CDL variants.

### FR-02 — Metrics

Measure rule coverage, functional correctness, bounded parity, inconsistencies, context consumption, human interventions, traceability, regression detection, implementation effort and maintenance effort.

### FR-03 — Reproducibility

Record model/tool versions, prompts, budgets, repository commits, fixture hashes, execution logs and independent reviewer decisions.

### FR-04 — Evidence separation

Report V4 implementation conformance and V5 legacy parity separately from compiler and reference-evaluation success.

### NFR-01 — Publication integrity

Publish raw data, protocol limitations, failures and reviewer conflicts before any comparison summary.

## Acceptance criteria

- [ ] Protocol receives human approval before benchmark execution.
- [ ] Each approach uses equivalent fixtures, tools and budgets.
- [ ] Independent verification is documented.
- [ ] Negative and inconclusive results remain visible.
- [ ] No benchmark publication occurs without a separate approval gate.

## Technical approach

Use synthetic versioned fixtures and immutable run manifests. Keep scoring scripts independent from the semantic compiler implementation. Prefer rerunnable local artifacts over hosted benchmark infrastructure.

## Tasks

- [ ] TASK-01 — Draft protocol and metric definitions.
- [ ] TASK-02 — Build A/B/C fixture and run manifests.
- [ ] TASK-03 — Execute pilot and calibrate independent reviewers.
- [ ] TASK-04 — Record raw results and limitations.
- [ ] TASK-05 — Review for publication approval.

## Verification

| Level | Evidence | Command/report |
|---|---|---|
| V1 | Protocol schema and fixture hashes | TBD |
| V2 | Metric/identity consistency | TBD |
| V3 | Reference vectors when applicable | TBD |
| V4 | Implementation results | TBD |
| V5 | Independent bounded legacy fixture only | TBD |

## Risks and open questions

- LLM/provider variability; mitigate with pinned versions and disclosed budgets.
- Reviewer bias; mitigate with independent scoring and conflict disclosure.
- Benchmark complexity may exceed initial value; narrow the task set before expanding.

## Delivery evidence

- Commits/PRs: none
- Tests: none
- Reports/artifacts: none
- Review result: none

## Change log

- 2026-11-22 — Drafted.
