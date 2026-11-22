# SDD Traceability Matrix

This matrix maps roadmap work to one implementation spec. The matrix must be updated when an increment is created, split or superseded—not duplicated into the spec status.

| Roadmap outcome | Increment | Main acceptance artifact |
|---|---|---|
| Reproducible v0.6 baseline | P0-001 | Compatibility suite and diagnostic baseline |
| SIR v1 | P0-002 | Versioned canonical SIR fixture |
| Structured expressions | P0-003 | Typed expression schema and fixtures |
| Reference/type/semantic resolution | P0-004 | Deterministic diagnostics |
| Dependency analysis | P0-005 | Stable graph output and cycle reports |
| Bounded evaluator | P0-006 | V3 result vectors and complexity decision |
| Semantic diff/impact | P0-007 | Change report and transitive impact fixture |
| Verification and traceability | P0-008 | V1-V5 machine-readable report |
| 30-day developer vertical slice | P0-009 | One executable author-to-impact workflow |
| JSON/YAML normalization | P1-001 | Equivalent-input canonical SIR tests |
| Markdown SDD | P1-002 | Block/source/ownership diagnostics |
| Agent context and authoring skill | P1-003 | Bounded context fixture and skill examples |
| Behavioral verification | P1-004 | V4 vectors and independent V5 protocol |
| TM1 reference adapter | P1-005 | Synthetic extraction report |
| Competitive benchmark | P1-006 | Approved protocol and independent raw results |
| Ecosystem | P2-001 | Adapter-specific conformance checks |
| Advanced/discovery/visual/property-based backlog | P3-001 | Separate promotion spec and value evidence |

## Status query

Use the `Status` field in each increment as the source of implementation status. The roadmap remains the source of strategic priority. A completed spec must link to its verification evidence before it is marked `Complete`.
