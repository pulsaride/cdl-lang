# P0-003 — Structured Typed Expressions

## Metadata
- **Status:** Draft
- **Priority:** P0
- **Target release:** 2.0.0-alpha.1 candidate
- **Roadmap:** P0 item 3; Day 5
- **Architecture:** Structured expressions
- **Depends on:** P0-002
- **Approval required:** Yes — expression semantics and built-in function scope

## Objective
Represent expressions as deterministic typed nodes with references, literals, operators, conditionals, result types and source locations.

## Non-goals
No complete general-purpose language, floating-point semantics, implicit conversion, TM1 formula interpretation or arbitrary function loading.

## Requirements
- **FR-01:** Preserve original text as provenance only.
- **FR-02:** Define literal, reference, unary, arithmetic, boolean, comparison and conditional node kinds.
- **FR-03:** Infer and store result type, unit/currency dimensions and precision policy.
- **FR-04:** Derive reference dependencies from expression nodes.
- **FR-05:** Define precedence, associativity, short-circuiting, missing values, rounding and typed errors.
- **NFR-01:** Canonical serialization is independent of whitespace and semantically irrelevant source spelling.

## Acceptance criteria
- [ ] Valid arithmetic/boolean/conditional fixtures normalize to expected nodes.
- [ ] Invalid operands produce V2 diagnostics with source ranges.
- [ ] Dependency extraction includes all and only semantic references.
- [ ] Existing constraint strings migrate through a compatible source adapter.

## Tasks
- [ ] Approve expression grammar subset.
- [ ] Write canonical node fixtures.
- [ ] Implement parser/normalizer and serializer.
- [ ] Add type inference and dependency traversal tests.

## Verification
V1 structure, V2 typing and V3 seed evaluation vectors. V4/V5 excluded.

## Risks and open questions

- The approved decimal, missing-value and rounding profile is unresolved.
- Existing metadata-string expressions may contain ambiguous legacy syntax.

## Delivery evidence

- Commits/PRs: none
- Tests: none
- Reports/artifacts: none
- Review result: none

## Change log

- 2026-11-22 — Converted to an executable increment specification.

## Backward compatibility

Legacy constraint text remains available as source provenance and continues through a compatibility adapter. Existing accepted constraint syntax must not be rejected solely because it lacks a new semantic form.

## User scenarios

### US-01 — Author valid typed expression

Given a supported arithmetic or conditional expression, normalization produces deterministic typed nodes and reference edges.

### US-02 — Reject invalid operand type

Given incompatible operands or dimensions, V2 reports the operator, expected type and source range without attempting implicit coercion.
