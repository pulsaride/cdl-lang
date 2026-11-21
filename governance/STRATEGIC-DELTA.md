# Strategic Delta: Semantic Core First

**Status:** Proposed for human review  
**Date:** 2026-11-21

This document refines the CDL 2.0 direction without restarting completed work. The repository remains a working v0.6-era Java/ANTLR compiler; the proposals below are a migration plan, not claims about implemented CDL 2.0 capabilities.

## 1. What remains valid

- Preserve the ANTLR grammar, parser, AST, CLI entry point, OpenAPI projection, CTK fixtures and Docker distribution where compatible.
- Preserve the goal of deterministic validation, traceability, evidence, implementation mappings and behavioral verification.
- Preserve Markdown SDD interoperability, with CDL complementing rather than replacing existing `spec.md`, plans and tasks.
- Preserve the TM1 modernization use case as the flagship domain, using synthetic public data and keeping TM1 constructs outside the semantic core.
- Preserve independent verification and the prohibition on claiming behavioral equivalence from test coverage alone.
- Preserve human authority over business meaning and compatibility-first language evolution.

## 2. What needs refinement

- **Product center:** the product is the semantic compiler core; CDL syntax is one authoring interface, not the value proposition.
- **Intermediate representation:** evaluate and extend the existing IR, rather than assume a replacement. A versioned Semantic Intermediate Representation (SIR) becomes the stable internal and public contract.
- **Input formats:** native CDL remains first-class; versioned JSON and YAML adapters normalize into the same SIR. Markdown remains a communication interface and requires structured sections or extraction before compilation.
- **Pipeline:** move deterministic symbol resolution, expression typing, validation, dependency analysis, evidence checks, diff, impact and verification onto SIR.
- **Claims:** distinguish verified capabilities from placeholders. Current README and roadmap claims exceed implementation, notably build output, Rego semantics, formatter behavior, full type checking and test infrastructure.
- **Diagnostics:** introduce machine-readable, deterministic diagnostics while preserving existing E001-E007 codes where practical.
- **Structured expressions:** SIR stores typed expression nodes with semantic references, operators, literals, conditionals, result types and source locations. References derive dependencies; expression semantics define precedence, missing values, precision, rounding and errors.
- **Bounded reference evaluation:** feasibility belongs in P0, but scope is limited to arithmetic, boolean, comparison, conditional, typed-value and ordered-decision semantics. It is not a runtime, workflow engine or TM1 engine.
- **Verification taxonomy:** report V1 structural, V2 semantic, V3 reference evaluation, V4 implementation conformance and V5 legacy parity independently.
- **Developer experience:** deliver a 30-day author-to-validate-to-diff vertical slice before completing every abstraction.
- **Authoring skill:** provide an experimental official skill for supported CDL authoring and Java/TM1 extraction, without building an orchestration engine.
- **Markdown interoperability:** evaluate explicitly identified CDL blocks with stable source mapping and single ownership of normative rules.
- **Property-based verification:** defer until expression semantics are stable, then prefer integration with a mature Java library.

## 3. What should be reprioritized

### P0 — Semantic foundation

1. Reproduce and harden the current compiler baseline.
2. Define SIR v1, including versioning, provenance and extensions.
3. Add structured typed expressions.
4. Define expression semantics and measure bounded-evaluator complexity.
5. Implement reference resolution and expression type validation.
6. Build dependency graphs, cycle detection and deterministic diagnostics.
7. Implement semantic diff and transitive impact analysis.
8. Model V1-V5 verification, obligations and evidence links.
9. Add canonical SIR serialization and drift detection.
10. Deliver an executable 30-day vertical slice.

### P1 — Interoperability and evidence

- Versioned JSON/YAML input adapters.
- Markdown SDD artifacts and ownership rules.
- `context`, `trace`, `verify` and `coverage` workflows.
- Evidence-oriented agent skills.
- Synthetic behavioral verification.
- Bounded TM1 reference adapter after the generic semantic core is credible.
- Experimental CDL authoring/extraction skill with Java and synthetic TM1 examples.
- Explicit Markdown-embedded CDL block profile.

### P2 — Ecosystem

- MCP and external coding-agent adapters.
- CI/CD integration.
- IDE diagnostics based on the semantic core.

### P3 — Advanced capabilities

- Visual modeling, registries and enterprise dashboards.
- Optional discovery tooling only after an evidence-based need is demonstrated.

## 4. What should be deferred

- A dedicated AI intent-discovery engine.
- Runtime interpretation and complete application generation.
- Full TM1 extraction, a complete TM1 calculation engine and connections to real corporate environments.
- Multi-language runtimes, distributed execution and broad enterprise platform features.
- Visual editors, dashboards and specification registries.
- Benchmark publication or performance claims before an independently reproducible benchmark exists.
- Property-based generation before expression/value semantics and an evaluator contract are stable.

## 5. Existing implementation to reuse

| Existing component | Reuse decision |
|---|---|
| ANTLR grammar and generated parser | Reuse as the legacy CDL frontend; avoid syntax changes |
| AST statement model | Temporary frontend/import model, extended only where needed |
| `SymbolTable` concepts | Reuse identifier-resolution ideas behind SIR validation |
| `TypeChecker` and E001-E007 | Preserve error compatibility; replace string-based checks incrementally |
| `IR.java` | Evaluate as a legacy projection or compatibility facade, not a canonical SIR without redesign |
| `Compiler.compile` and `Compiler.Result` | Preserve as a compatibility facade |
| OpenAPI generator | Preserve existing CTK output; migrate input to verified SIR |
| Rego generator | Retain only as an experimental compatibility backend; do not call it a policy compiler |
| 10-case CTK and examples | Preserve as regression baseline; expand with semantic negative tests |
| Gradle, ANTLR, JUnit and Docker | Preserve; do not add runtime dependencies before the SIR contract is approved |

## 6. Deterministic versus interpretive work

Deterministic when semantics and schemas are explicit:

- Symbol and reference resolution.
- Type and typed-expression checking.
- Currency/unit compatibility.
- Dependency construction and prohibited-cycle detection.
- Structural and semantic diff.
- Transitive impact analysis.
- Verification-obligation presence and status aggregation.
- Evidence-reference and provenance validation.
- Generated artifact identity and drift checks.

Potentially interpretive or requiring human approval:

- Whether ambiguous language correctly represents business intent.
- Interpretation of arbitrary Markdown, legacy code or unexplained TM1 formulas.
- Conflicts between competing evidence sources.
- Approval of rule meaning, scope, precision policy and acceptable behavior.
- Attribution of observed failures to business specifications versus implementation defects.

## 7. Architectural decisions requiring human approval

Approval is required before implementation of any item that changes the public contract:

1. Breaking grammar changes or mandatory CDL syntax adoption.
2. Major repository or compiler architecture replacement.
3. SIR visibility, versioning, stable identity and canonical ordering policy.
4. The accepted JSON/YAML schema, extension model and unknown-field behavior.
5. Formal rule/policy meaning and recursive dependency policy.
6. Expression purity and the supported built-in function set.
7. New runtime dependencies or a new serialization/validation library.
8. Any external or corporate TM1 connection.
9. A complete calculation engine or unsupported-expression interpretation policy.
10. Benchmark protocol and publication of benchmark claims.
11. Expanding reference evaluation into a general runtime or calculation engine.
12. A property-testing runtime dependency or externally generated authoritative Markdown semantics.

The first approval gate should cover SIR v1 shape and compatibility policy. No implementation should silently replace the existing parser, grammar or OpenAPI behavior.

## 8. Immediate result

The next implementation increment is **not** a TM1 adapter or AI discovery engine. It is a reproducible semantic baseline followed by an SIR v1 design, canonical serialization, deterministic validation and a synthetic financial planning fixture containing deliberate defects.
