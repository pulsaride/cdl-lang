# P0-002 — SIR v1 Contract

## Metadata
- **Status:** Draft
- **Priority:** P0
- **Target release:** 2.0.0-alpha.1 candidate
- **Roadmap:** P0 item 2; Days 3–4 and 7–8
- **Architecture:** Semantic Intermediate Representation
- **Depends on:** P0-001
- **Approval required:** Yes — public identity, versioning, canonical ordering and compatibility

## Objective
Define and prototype a versioned immutable SIR preserving current semantics without replacing the compatibility facade.

## Non-goals
No mandatory grammar adoption, arbitrary JSON semantics, runtime engine or removal of existing `IR` consumers.

## Requirements
- **FR-01:** SIR contains specification version, durable IDs, types, intents, rules, policies, flows, mappings, evidence and source locations.
- **FR-02:** Equivalent inputs produce byte-stable canonical JSON.
- **FR-03:** Provenance is distinct from semantic identity.
- **FR-04:** Existing AST converts to SIR and SIR projects to the legacy IR/OpenAPI output.
- **FR-05:** Extension and unknown-field behavior is explicit.
- **NFR-01:** No new runtime dependency before approval.

## Acceptance criteria
- [ ] SIR schema version and migration policy are documented.
- [ ] Canonical round-trip fixtures are deterministic across ordering changes.
- [ ] The 10 CTK OpenAPI outputs remain unchanged through SIR projection.
- [ ] Unsupported/lossy AST fields are reported, not silently dropped.

## Tasks
- [ ] Draft schema and immutable Java model.
- [ ] Add ordering and semantic-hash tests.
- [ ] Implement CDL AST normalization.
- [ ] Implement SIR → legacy IR compatibility adapter.
- [ ] Record human approval or deferral.

## Backward compatibility

Preserve `Compiler.Result`, the existing internal `IR` and all current OpenAPI bytes. SIR is introduced behind a new normalization boundary; no existing consumer is required to migrate in this increment.

## User scenarios

### US-01 — Equivalent input produces stable SIR

Given semantically equivalent source documents with different non-semantic ordering, canonical SIR bytes are identical.

### US-02 — Legacy consumer remains functional

Given current CTK input, SIR normalization and legacy projection produce the exact existing OpenAPI output.

## Verification
V1 validates schema/canonical form; V2 validates resolved SIR invariants. V3 is only applicable to later expression evaluation.

## Risks and open questions

- Stable IDs, rename identity and provenance separation require human approval.
- Premature public guarantees could preserve a lossy or unusable model.

## Delivery evidence

- Commits/PRs: none
- Tests: none
- Reports/artifacts: none
- Review result: none

## Change log

- 2026-11-22 — Converted to an executable increment specification.
