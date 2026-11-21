# Diagnostics

The current compiler defines `CDError` codes, but diagnostics are not consistently exposed or located.

| Code | Meaning in implementation | Current limitation |
|---|---|---|
| E001 | Duplicate ID | Source location is effectively zeroed; CLI lint does not combine all symbol-table errors |
| E002 | Invalid type | Limited checks |
| E003 | Missing evidence | Defined but not emitted by the audited implementation |
| E004 | Type not found | Emitted for limited type-reference cases |
| E005 | Invalid constraint | String/substring checks; no structured expression typing |
| E006 | Circular reference | Type-reference cycles only |
| E007 | Parameter type mismatch | Defined, but not a complete parameter conformance model |

## Current CLI behavior

`cdl lint FILE` invokes compilation and exits unsuccessfully only for selected `TypeChecker` errors. ANTLR parser diagnostics are printed to the console but do not reliably fail compilation. Therefore a lint banner is not sufficient evidence of structural validity for arbitrary malformed input.

## Planned diagnostic contract

The SIR architecture targets stable machine-readable diagnostics containing:

- Rule/code and severity.
- Source URI plus line/column/range.
- Stable semantic subject ID where available.
- Human message and remediation hint.
- Verification level and deterministic ordering.

V1 structural, V2 semantic, V3 reference-evaluation, V4 implementation-conformance and V5 legacy-parity results remain separate. Machine-readable reporting is planned, not available today.
