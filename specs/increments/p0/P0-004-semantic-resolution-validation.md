# P0-004 — Semantic Resolution and Validation

## Metadata
- **Status:** Draft
- **Priority:** P0
- **Target release:** 2.0.0-alpha.x
- **Roadmap:** P0 item 5; Days 31–60
- **Depends on:** P0-002, P0-003
- **Approval required:** Yes for stricter default validation behavior

## Objective
Resolve symbols and references, type structured expressions, and emit deterministic machine-readable V2 diagnostics.

## Non-goals
No AI judgment, application execution, complete formal theorem proving or silent migration of ambiguous semantics.

## Requirements
- **FR-01:** Resolve type, intent, rule, policy, mapping, flow and evidence references.
- **FR-02:** Detect unknown, ambiguous and duplicate symbols.
- **FR-03:** Check expression operand/result typing without implicit coercion.
- **FR-04:** Check supported unit/currency compatibility.
- **FR-05:** Emit stable codes, locations, subject IDs and remediation hints.
- **NFR-01:** Diagnostic ordering is deterministic across map/input ordering.

## Acceptance criteria
- [ ] Unknown references fail V2 with source locations.
- [ ] Currency/unit mismatches are independently detectable where dimensions are explicit.
- [ ] Conflicting supported numeric constraints are reported.
- [ ] Existing valid CTK inputs continue to compile.
- [ ] E001–E007 identities are preserved where applicable.

## Tasks
- [ ] Build resolution index from SIR.
- [ ] Add strict and compatibility diagnostic profiles.
- [ ] Implement expression typing and selected domain checks.
- [ ] Add JSON/text diagnostic renderers.

## Backward compatibility

Current valid CTK inputs and E001–E007 identities remain accepted. Stricter reference checks are introduced under an explicit profile if default behavior changes.

## User scenarios

### US-01 — Resolve valid semantic references

Given a valid SIR document, all type, rule, policy, flow, mapping and evidence references resolve deterministically.

### US-02 — Report deterministic semantic defects

Given unknown references, mismatched operands or incompatible explicit units, V2 emits stable machine-readable diagnostics independent of map iteration order.

## Verification
V1 schema validity and V2 semantic validity. No V4/V5 claim from this spec.

## Risks and open questions

- Some metadata keys have historically been informational and may not be safe to resolve by default.
- Conflict detection is limited to supported formal semantics.

## Delivery evidence

- Commits/PRs: none
- Tests: none
- Reports/artifacts: none
- Review result: none

## Change log

- 2026-11-22 — Converted to an executable increment specification.
