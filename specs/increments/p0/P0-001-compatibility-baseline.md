# P0-001 — Compatibility Baseline and Diagnostics

## Metadata
- **Status:** Draft
- **Priority:** P0
- **Target release:** 2.0.0-SNAPSHOT development baseline
- **Roadmap:** P0 item 1; Days 1–2
- **Architecture:** Compatibility architecture
- **Depends on:** none
- **Approval required:** No, unless public behavior changes

## Objective
Make existing v0.6 behavior reproducible and executable before semantic-core changes.

## Non-goals
No grammar break, parser replacement, SIR implementation, new dependency or correction of all historical parser recovery behavior in this increment.

## Requirements
- **FR-01:** Capture accepted CLI forms and exit behavior.
- **FR-02:** Preserve all 10 CTK OpenAPI outputs byte-for-byte.
- **FR-03:** Add Gradle tests for grammar/AST/IR/generator compatibility.
- **FR-04:** Separate parser, symbol and type diagnostics in a structured internal result.
- **NFR-01:** Tests run from a clean checkout with existing dependencies.

## Acceptance criteria
- [ ] Every CTK case passes unchanged.
- [ ] A fixture records malformed input behavior and intended parser-failure policy.
- [ ] Duplicate, unknown-type and type-cycle fixtures have expected diagnostics.
- [ ] Existing `Compiler.compile(String)`, CLI forms and Java package remain intact.

## Tasks
- [ ] Inventory existing fixtures and CLI output.
- [ ] Add RED compatibility tests.
- [ ] Normalize diagnostic aggregation behind existing facade.
- [ ] Run Gradle, CTK and docs gates.

## Backward compatibility

`Compiler.compile(String)`, the Java package, current CLI commands and all 10 OpenAPI golden outputs are compatibility boundaries. Parser recovery remains observable as current behavior until a separately approved stricter profile exists.

## User scenarios

### US-01 — Existing consumer recompiles

Given a clean v0.7.0 checkout, when the compatibility suite runs, existing accepted CTK inputs produce the same OpenAPI bytes and compiler facade remains usable.

### US-02 — Maintainer diagnoses invalid input

Given malformed, duplicate, unknown-type or cyclic input, validation exposes the applicable parser/symbol/type evidence through a repeatable report without relying on console text alone.

## Verification
V1 captures syntax/parse evidence; V2 captures current semantic checks. V3–V5 are not applicable.

## Risks and open questions
Changing parser recovery into a failure may break existing consumers; require a reviewed compatibility flag if needed.

## Delivery evidence

- Commits/PRs: none
- Tests: none
- Reports/artifacts: none
- Review result: none

## Change log

- 2026-11-22 — Converted to an executable increment specification.
