# P1-002 — Markdown SDD Interoperability

## Metadata
- **Status:** Draft
- **Priority:** P1
- **Depends on:** P0-002, P0-004
- **Approval required:** Yes — fence/profile and ownership contract

## Objective
Process explicitly identified CDL blocks within existing Markdown SDD without duplicating normative semantics.

## Non-goals
AI interpretation of arbitrary prose, mandatory Markdown methodology or overwriting human-authored Markdown.

## Requirements
- **FR-01:** Recognize explicit CDL block labels/profile metadata.
- **FR-02:** Preserve document, block ID, source range and content hash in provenance.
- **FR-03:** Resolve cross-document references using stable semantic/document IDs.
- **FR-04:** Detect competing authoritative definitions and ambiguous ownership.
- **FR-05:** Map diagnostics to original Markdown locations.

## Acceptance criteria
- [ ] Standalone and embedded equivalent semantics normalize to the same SIR.
- [ ] A prose edit outside a CDL block does not change semantic identity.
- [ ] Duplicate ownership produces a deterministic diagnostic.
- [ ] Generated Markdown cannot silently replace an owned block.

## Tasks

- [ ] TASK-01 — Define fence/profile syntax, block IDs and document identity.
- [ ] TASK-02 — Add embedded-standalone equivalence and ownership-conflict fixtures.
- [ ] TASK-03 — Preserve Markdown source ranges through normalization and diagnostics.
- [ ] TASK-04 — Implement cross-document resolution and partial-compilation policy.
- [ ] TASK-05 — Document human/generated ownership rules.

## Verification

| Level | Evidence | Command/report |
|---|---|---|
| V1 | Block extraction and source-range report | Markdown fixture output |
| V2 | Equivalent SIR and ownership diagnostics | Canonical comparison report |
| V3-V5 | Not established | Requires downstream evaluation evidence |

## Delivery evidence

- Commits/PRs: none
- Tests: none
- Reports/artifacts: none
