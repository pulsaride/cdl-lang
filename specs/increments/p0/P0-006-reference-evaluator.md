# P0-006 — Bounded Reference Evaluator

## Metadata
- **Status:** Draft
- **Priority:** P0
- **Target release:** 2.0.0-alpha.x after feasibility approval
- **Roadmap:** P0 structured-expression/evaluator work
- **Architecture:** Bounded reference evaluator
- **Depends on:** P0-003, P0-004
- **Approval required:** Yes — final subset and decimal policy

## Objective
Provide deterministic reference behavior for supported pure expressions and ordered decisions, solely for V3 and implementation conformance.

## Non-goals
No workflows, services, state mutation, arbitrary code, TM1 calculation engine or general runtime.

## Requirements
- **FR-01:** Evaluate typed literals/references, arithmetic, boolean, comparison and conditionals.
- **FR-02:** Use explicit decimal precision, scale and rounding policy.
- **FR-03:** Return `value`, `missing`, `rejected` or `error` with trace and normalized code.
- **FR-04:** Ordered decisions select the first match and require explicit no-match behavior.
- **FR-05:** Proposed command: `cdl evaluate RULE_ID --input values.json`.
- **NFR-01:** Record complexity, implementation size and dependency cost before commitment.

## Acceptance criteria
- [ ] Complexity spike recommends proceed, narrow or defer.
- [ ] Arithmetic/conditional conformance vectors are reproducible.
- [ ] Division-by-zero, missing-value and unsupported-operation outcomes are typed and stable.
- [ ] V3 reports never claim V4/V5 correctness.

## Tasks
- [ ] Define value model and decimal policy.
- [ ] Measure implementation and test-vector complexity.
- [ ] Implement the approved minimum subset.
- [ ] Add CLI and machine-readable trace output.

## Backward compatibility

`evaluate` is a new optional command. Existing compiler commands do not invoke the evaluator, and unsupported expressions remain rejected rather than approximated.

## User scenarios

### US-01 — Reproduce approved rule outcome

Given a supported typed expression, an input JSON document and an approved policy, the evaluator returns a deterministic V3 outcome with a branch/reference trace.

### US-02 — Report typed evaluation error

Given division by zero, missing required data or an unsupported operation, evaluation returns a structured error and never falls back to host-language behavior.

## Verification
V3 evaluator result. V4 only after independent implementation fixtures; V5 requires separate legacy evidence.

## Risks and open questions

- Exact decimal, date and overflow dependencies may exceed the intended complexity budget.
- A green V3 result must not be summarized as implementation or legacy correctness.

## Delivery evidence

- Commits/PRs: none
- Tests: none
- Reports/artifacts: none
- Complexity decision: none
- Review result: none

## Change log

- 2026-11-22 — Converted to an executable increment specification.
