# Supported Capabilities

This matrix describes the verified repository state, not future intent. It is the baseline for documentation claims and is reviewed when implementation changes.

| Capability | Status | Evidence and limitation |
|---|---|---|
| ANTLR parsing of documented top-level blocks | Available | `src/main/antlr/CDL.g4`; current CTK exercises intents, types and mappings |
| Custom type declarations | Available | Grammar, AST and OpenAPI schema projection |
| Intent metadata and typed input/output strings | Available | Parsed from metadata; not a complete typed expression model |
| Rules, policies and flows | Limited | Parser/AST objects exist, but most semantics are retained as metadata or not validated |
| Symbol duplicate detection | Limited | `SymbolTable` detects duplicate top-level IDs; CLI lint does not combine all symbol errors |
| Type-name validation | Limited | Unknown type references and some type cycles are checked |
| Constraint type checking | Limited | Expressions are stored as strings and inspected by substring/parenthesis logic |
| Currency and unit compatibility | Planned | Not implemented by v0.6 |
| OpenAPI 3.0 generation | Limited | Deterministic text output for types and API mappings; 10 CTK golden cases pass |
| Rego generation | Experimental | Generates placeholder method/path allow rules, not policy semantics |
| Formatter | Experimental | Public formatter class is incomplete and the CLI formatter is a no-op |
| IR generation | Limited | Internal IR contains types, intents and mappings; it is not public versioned SIR and drops rules/policies/flows/evidence |
| Machine-readable diagnostics | Planned | Current errors are primarily console text with zero source locations |
| SIR v1 | Planned | Architecture target; no released implementation yet |
| Semantic dependency graph | Planned | Type-cycle logic exists, but no general graph or impact analysis |
| Semantic diff | Planned | Roadmap target |
| JSON/YAML input normalization | Planned | CDL syntax is currently the only compiler input |
| Markdown-embedded CDL | Planned | Interoperability profile is under design |
| Reference evaluation | Planned | Bounded evaluator feasibility is a P0 evaluation item, not current behavior |
| Behavioral conformance | Planned | Scenarios and independent observed results are not executed by the compiler |
| Agent Skills | Planned | Authoring skills may be added as interface documentation, not as compiler dependencies |
| TM1 adapter | Planned | Generic foundation precedes synthetic TM1 extraction |

## Status definitions

- **Available:** implemented, exercised by automated verification and safe to describe as current.
- **Limited:** implemented in part; behavior or coverage is narrower than the name suggests.
- **Experimental:** present for evaluation, incomplete or non-contractual.
- **Planned:** defined by the roadmap or architecture but not implemented.
- **Deprecated:** retained for compatibility and scheduled for removal; none of the audited core CLI commands is currently marked deprecated.

Compiler success, generated artifacts and passing golden tests do not prove complete business correctness or behavioral equivalence.
