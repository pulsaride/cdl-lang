# CDL Roadmap

## Direction

CDL is evolving from the current v0.6-era DSL into a **Semantic Specification Compiler** for AI-driven software engineering. The semantic core is the product; the native CDL language, versioned JSON/YAML, Markdown and agent integrations are interfaces around it.

This roadmap is a proposed migration, not a claim that CDL 2.0 capabilities already exist.

## Verified baseline (2026-11-21)

- Java/Gradle application with ANTLR 4 parser and mutable AST.
- Basic symbol collection, type-name checks and circular type-reference detection.
- Lossy intermediate representation containing types, intents and API mappings only.
- Deterministic OpenAPI text generation covered by 10 golden CTK cases.
- Placeholder Rego output and an incomplete/no-op formatter command.
- Gradle test task, but no `src/test` suite; `test_ctk.sh` is the effective executable test.
- Docker distribution and VS Code syntax-highlighting extension.
- Apache-2.0 repository license; dependency and distribution licensing still require a complete audit.

See `governance/STRATEGIC-DELTA.md` and `ARCHITECTURE.md` for migration details.

Implementation work is decomposed into incremental, testable SDD specifications under [`specs/`](specs/). `ROADMAP.md` remains the source of strategic priority; each increment owns its bounded behavior, acceptance criteria, tasks and verification evidence. The traceability index is maintained in [`specs/TRACEABILITY.md`](specs/TRACEABILITY.md).

## Priority model

### P0 — Semantic foundation

1. Baseline audit and backward-compatibility fixtures.
2. Versioned Semantic Intermediate Representation (SIR).
3. Structured types and typed expression nodes.
4. Formal expression semantics and feasibility of a bounded reference evaluator.
5. Symbol/reference resolution and deterministic diagnostics.
6. Dependency graph and prohibited-cycle detection.
7. Semantic diff and transitive impact analysis.
8. Verification taxonomy (V1-V5), obligations, evidence traceability and artifact drift.

### P1 — Interoperability

1. Markdown SDD integration with explicit artifact ownership.
2. Versioned JSON and YAML inputs normalized to SIR.
3. Bounded semantic context generation.
4. Evidence-oriented discovery contracts and Agent Skills.
5. Synthetic behavioral verification.
6. Optional TM1 reference adapter.
7. Experimental official CDL authoring/extraction skill with Java and synthetic TM1 examples.
8. Markdown-embedded CDL interoperability profile.

### P2 — Ecosystem

- MCP interoperability.
- CI/CD and external coding-agent adapters.
- IDE diagnostics backed by the semantic compiler.

### P3 — Advanced capabilities

- Dedicated AI discovery engine.
- Visual domain modeling.
- Enterprise dashboards and specification registries.
- Property-based generation for supported expression domains, integrated with a mature library after approval.

These P3 capabilities are deferred until measurable need exists. Runtime interpretation, full application generation and a complete TM1 calculation engine are not initial roadmap objectives.

## 90-day plan

### Days 1-30 — Reproducible contract and baseline

- Freeze current CLI, grammar and CTK compatibility behavior.
- Add Gradle unit tests and promote parser/type/symbol errors to failing diagnostics.
- Publish a verified capability inventory and audit claims in docs.
- Draft SIR v1: objects, stable IDs, expression nodes, provenance, extensions and canonical serialization.
- Define expression precedence, missing values, exact numeric precision, rounding, conditional evaluation and explicit error semantics.
- Complete a bounded evaluator complexity spike before committing `cdl evaluate` to the public v1 contract.
- Define V1 structural, V2 semantic, V3 reference-evaluation, V4 implementation-conformance and V5 legacy-parity reporting.
- Deliver a small executable vertical slice: author, compile, validate, inspect dependencies, evaluate where accepted, and diff a semantic change.
- Prototype the experimental authoring skill contract and the smallest Markdown-embedded CDL profile.
- Define the versioned JSON/YAML input schema and compatibility policy.
- Define deterministic diagnostic schema and preserve E001-E007 where possible.
- Obtain human approval for the public SIR and compatibility contract.

**Exit criteria:** all current CTK cases remain valid; one synthetic domain demonstrates author → compile → diagnostics → dependencies → optional V3 evaluation → semantic diff; V1-V5 outputs remain separate; SIR examples round-trip canonically; no grammar break or new dependency is introduced without approval.

### Days 31-60 — Deterministic semantic core

- Normalize existing CDL AST data into SIR while retaining current facade APIs.
- Implement structured expression typing and scope/reference validation.
- Derive dependency edges from semantic references in structured expressions.
- Implement the approved bounded evaluator subset—arithmetic, boolean, comparison, conditional and typed values with explicit errors—behind `evaluate`; do not build a general runtime.
- Generate implementation conformance vectors for supported V3 cases.
- Add domain consistency checks, including bounded currency and unit compatibility.
- Implement semantic dependency graph and prohibited-cycle checks.
- Implement semantic diff and direct/transitive impact analysis.
- Emit machine-readable diagnostics with stable ordering and source locations.
- Add `validate`, `diff`, `impact` and `dependencies` without removing existing commands.

**Exit criteria:** the synthetic financial fixture detects supported defects deterministically with no LLM call, and the accepted V3 subset has reproducible reference evaluation without host-language arithmetic ambiguity.

### Days 61-90 — Traceability and verification MVP

- Model evidence/provenance, implementation mappings and verification obligations in SIR.
- Add `trace`, `context`, `verify` and `coverage`.
- Generate SIR, OpenAPI and bounded semantic-context artifacts from verified SIR.
- Implement artifact hashes and drift checks.
- Link acceptance scenarios to observed results without claiming full equivalence.
- Expand CTK with negative semantic fixtures and synthetic financial planning scenarios.
- Add V4 implementation conformance reports and bounded V5 legacy comparison fixtures where independently captured evidence exists.
- Evaluate Markdown block locations, cross-document references and ownership diagnostics.
- Publish the experimental CDL authoring skill with Java and synthetic TM1 extraction examples; keep it outside the compiler runtime.
- Integrate A/B/C benchmark definitions; publish no claims until independently reviewed.

**Exit criteria:** one synthetic financial model demonstrates deterministic validation, change impact, traceability and failed behavioral scenarios; independent review approves measured results.

## First 10-day sprint

1. **Day 1:** Capture current CLI behavior, exit codes and all 10 OpenAPI golden cases.
2. **Day 2:** Add a failing unit-test baseline for parser diagnostics and current compatibility fixtures.
3. **Day 3:** Inventory every AST/IR field and identify semantic information currently discarded.
4. **Day 4:** Draft SIR v1 domain model, stable identity, provenance and extension rules.
5. **Day 5:** Define structured typed expression nodes, semantic references, precedence, typed literals, conditionals, precision/error policy, and currency/unit representation.
6. **Day 6:** Add canonical JSON ordering, schema-version and semantic-hash design tests; estimate bounded evaluator complexity and record a scope recommendation.
7. **Day 7:** Prototype CDL AST → SIR normalization behind a new API; preserve `Compiler.compile`.
8. **Day 8:** Prototype SIR → legacy IR/OpenAPI projection; add dependency extraction and prove existing CTK output compatibility.
9. **Day 9:** Create the synthetic financial fixture with expected diagnostics and, if the spike is accepted, one reference-evaluation conformance vector.
10. **Day 10:** Review SIR and compatibility ADR; stop for human approval before public-contract implementation, grammar changes or dependencies.

## Synthetic financial demonstrator

The P0 demonstrator must contain and detect, without an LLM:

- Undefined rule references.
- Invalid expression operand/result types.
- Incompatible currencies.
- Incompatible units of measurement.
- Prohibited circular semantic dependencies.
- Missing mandatory verification obligations.
- Conflicting constraints within the supported formal subset.
- Obsolete generated contracts.
- Failed behavioral scenarios.
- Changed business rules with transitive dependencies.
- A typed conditional/arithmetic reference-evaluation case when the P0 complexity spike is accepted.
- Separate V1 and V2 outcomes for structural and semantic defects.

The first implementation should solve only formally supported cases. Unsupported formulas and business ambiguity remain explicit.

## Early developer experience

Within the first 30 days, one executable end-to-end demonstration must show:

1. A supported CDL domain is authored.
2. Canonical SIR is compiled.
3. V1/V2 diagnostics are emitted separately.
4. Expression-derived dependencies are exported.
5. A supported rule is evaluated deterministically if the bounded-evaluator spike is accepted.
6. A rule change produces a semantic diff and impact report.

This vertical slice takes precedence over completing abstract registries, visualization or broad adapter coverage.

## Markdown-embedded CDL

Evaluate explicitly labeled formal CDL blocks in existing Markdown specifications. The profile must define ownership, block IDs, source ranges, cross-document references, partial compilation and generated-versus-human authority. Natural-language sections are never silently interpreted as formal semantics, and normative rules must not be duplicated across prose and CDL blocks.

## AI authoring skill

An experimental official skill teaches external agents supported authoring constructs, evidence preservation, observed/documented/inferred labels, compiler execution, diagnostic reporting and unresolved-question capture. It includes lightweight Java and synthetic TM1 extraction examples. It is an interface skill, not an AI orchestration engine or a dedicated discovery runtime.

## Property-based verification

Property-based testing is a future extension after expression semantics, value policies and V3 evaluation are stable. Evaluate mature Java libraries rather than building a property engine. Initial targets are boundary generation, typed invariants and differential reference/implementation checks, with reproducible seeds and counterexamples.

## Competitive benchmark

Compare equivalent work under the same tasks, models, repositories and execution budget:

- **A:** Markdown SDD.
- **B:** Markdown SDD plus structured YAML/JSON and conventional validation tooling.
- **C:** Markdown SDD plus the CDL semantic compiler.

Measure business-rule coverage, functional correctness, independently verified behavioral parity, inconsistencies, context consumption, human interventions, traceability, regression detection, implementation effort and maintenance effort. Publish limitations and negative results; do not assume CDL wins by virtue of being a DSL.

## TM1 sequence

After P0:

1. Deterministic extraction of synthetic cube, dimension, rule, feeder and dependency metadata.
2. Preserve source locations and raw evidence.
3. Report unsupported expressions explicitly.
4. Add human-approved interpretations before normalized SIR rules.
5. Extend toward TurboIntegrator, chores, security, MDX and views only when needed by a bounded scenario.
6. Add differential testing and modernization coverage without claiming equivalence from extraction alone.

TM1 constructs remain outside the generic core. External or corporate connections require human approval.

## Approval gates

Stop before:

- Breaking grammar changes.
- Major repository restructuring or compiler replacement.
- New runtime dependencies.
- Committing a public SIR compatibility policy.
- External or corporate TM1 access.
- Implementing a full calculation engine.
- Promoting `cdl evaluate` beyond the approved bounded subset.
- Adopting a property-testing dependency without compatibility and licensing review.
- Making AI-assisted Markdown interpretation authoritative.
- Publishing benchmark claims.

## Milestones and versioning

- **0.6 compatibility:** preserve current CLI, grammar and OpenAPI fixtures.
- **2.0 foundation:** public SIR v1 contract and deterministic semantic core.
- **2.x interoperability:** SDD, JSON/YAML, context, verification and evidence adapters.
- **Post-MVP:** evaluated TM1, agent ecosystem and optional advanced capabilities.

Versioning follows semantic compatibility. Language syntax, SIR schema and generated contracts have independently tracked versions until a later governance decision unifies them.
