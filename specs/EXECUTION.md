# Increment Execution Board

This board is the working view of what to implement next. Strategic priority remains in `ROADMAP.md`; detailed contracts remain in `specs/increments/`.

## Current objective

Begin CDL 2.0 development from the released `v0.7.0` baseline with the smallest safe P0 sequence.

## Ready sequence

| Order | Increment | Why now | Entry condition | Exit evidence |
|---|---|---|---|---|
| 1 | P0-001 | Protects existing behavior before architectural change | v0.7.0 baseline clean | Gradle/CTK compatibility fixtures and diagnostic baseline |
| 2 | P0-002 | Establishes the stable normalization contract | P0-001 green; SIR public contract approved | Canonical SIR fixture and legacy projection |
| 3 | P0-003 | Enables real typing and reference dependencies | P0-002 approved | Typed expression fixtures |
| 4 | P0-004 | Converts structure into useful deterministic diagnostics | P0-002/P0-003 normalized | V2 diagnostic report |
| 5 | P0-005 | Enables cycle, impact and bounded context analysis | P0-004 resolved SIR | Deterministic graph and cycle report |
| 6 | P0-006 | Feasibility/evaluation spike for V3 | P0-003/P0-004 available; decimal scope approved | Complexity decision and reference vectors |
| 7 | P0-007 | Adds lifecycle change and impact analysis | P0-002/P0-005 stable | Diff and transitive-impact report |
| 8 | P0-008 | Links semantics to evidence and independent verification | P0-004/P0-005/P0-007 available | V1-V5 trace report |
| 9 | P0-009 | Integrates the core into one developer workflow | P0-001 to P0-008 accepted as required; P0-006 optional if deferred | One-command end-to-end demo |

## First implementation slice

Start only with P0-001. It is the next actionable spec because the repository currently lacks `src/test` coverage and parser recovery behavior is not consistently failing.

### P0-001 task order

1. Add compatibility fixtures for current accepted/rejected inputs.
2. Add tests for the 10 CTK OpenAPI outputs.
3. Add parser, duplicate, unknown-type and type-cycle diagnostic fixtures.
4. Preserve `Compiler.compile(String)` and existing Java/CLI surfaces.
5. Define internal diagnostic aggregation without changing public behavior by default.
6. Run Gradle, CTK and docs validation from a clean checkout.

Stop if a test reveals that correcting behavior requires a public CLI or grammar change; record the issue in P0-001 and seek approval before proceeding.

## Status rules

- A spec is `Implementing` only when its entry dependencies are satisfied and tasks have an owner.
- A task may be checked only with a linked commit/PR and reproducible test evidence.
- A spec may be `Complete` only when every acceptance criterion has evidence and backward compatibility is verified.
- Failed or deferred acceptance criteria remain visible; they are not removed.

## Review cadence

For each increment:

1. Update the spec task checkboxes.
2. Link commits and test reports in Delivery evidence.
3. Run an independent review against security, compatibility and maintainability concerns.
4. Update `TRACEABILITY.md` only if the increment mapping or acceptance artifact changed.
5. Do not mark downstream specs ready until their dependencies are accepted.
