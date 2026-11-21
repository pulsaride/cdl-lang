# Semantic IR (SIR)

SIR is the proposed versioned contract for deterministic semantic tooling. It is **planned**, not a released public format in the current compiler.

## Why SIR is needed

The existing internal IR stores only types, intents and API mappings. It drops rules, policies, flows, evidence and structured expression semantics. The architecture therefore preserves the existing IR as a compatibility concern while defining a richer SIR separately.

## Planned semantic model

- Specification identity and version.
- Business intents and approval state.
- Domain entities and typed fields.
- Structured expression nodes with semantic references.
- Rules, calculations, constraints and invariants.
- Policies and ordered decisions.
- Dependencies and implementation mappings.
- Evidence, provenance and source locations.
- Acceptance scenarios and verification obligations.
- Observed verification results and limitations.

## Structured expressions

Planned SIR expressions must be nodes rather than opaque strings. Nodes carry semantic references, operators, typed literals, conditional branches, result types and source locations. Dependency analysis should follow references rather than text matching.

Expression semantics must define precedence, missing values, decimal precision, rounding, short-circuiting and typed error outcomes before a reference evaluator is accepted.

## Bounded reference evaluation

A future P0 feasibility spike may evaluate a small, pure subset of expressions and ordered decisions. This is not a general runtime, workflow engine, application platform or TM1 calculation engine. A proposed command such as `cdl evaluate RULE_ID --input values.json` is not available in v0.6.

## Stable contract requirements

SIR requires human approval for identity, versioning, canonical ordering, extension behavior and compatibility policy. No public compatibility guarantee exists yet.
