# P1-001 — Versioned JSON and YAML Inputs

## Metadata
- **Status:** Draft
- **Priority:** P1
- **Depends on:** P0-002, P0-004
- **Approval required:** Yes — input schema, scalar and unknown-field policy

## Objective
Normalize explicitly versioned structured JSON/YAML inputs into the same SIR as native CDL.

## Non-goals
Arbitrary JSON/YAML interpretation, YAML execution, implicit schema inference or syntax replacement mandate.

## Requirements
- **FR-01:** Documents declare schema/input version.
- **FR-02:** JSON and YAML with equivalent semantics normalize to identical canonical SIR.
- **FR-03:** Unknown fields, duplicate keys, scalar coercion and extensions have explicit policies.
- **FR-04:** Diagnostics retain source document, path and line/column.

## Acceptance criteria
- [ ] Equivalent CDL, JSON and YAML fixtures generate canonical-equal SIR.
- [ ] Duplicate/unknown/invalid version cases fail deterministically.
- [ ] No dependency is added without license/compatibility approval.

## Tasks

- [ ] TASK-01 — Define the versioned input schema and unknown-field/scalar policies.
- [ ] TASK-02 — Add equivalent CDL/JSON/YAML fixtures and negative duplicate/version cases.
- [ ] TASK-03 — Implement JSON normalization without a new dependency.
- [ ] TASK-04 — Evaluate and, if approved, add YAML normalization.
- [ ] TASK-05 — Document source paths and diagnostic mapping.

## Verification

| Level | Evidence | Command/report |
|---|---|---|
| V1 | Input schema and source-location validation | `validate` fixtures |
| V2 | Canonical-equivalent SIR and reference resolution | Canonical comparison report |
| V3-V5 | Not established | Not in scope |

## Delivery evidence

- Commits/PRs: none
- Tests: none
- Reports/artifacts: none
