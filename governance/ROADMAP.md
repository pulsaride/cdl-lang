# CDL Roadmap

The canonical project roadmap is maintained at [`../ROADMAP.md`](../ROADMAP.md).

It now prioritizes the deterministic semantic core in this order:

1. **P0 — Semantic foundation:** SIR, structured expressions, expression semantics, bounded evaluator feasibility, validation, dependencies, semantic diff, impact analysis, V1-V5 verification and a 30-day executable vertical slice.
2. **P1 — Interoperability:** Markdown SDD and embedded CDL blocks, JSON/YAML inputs, semantic context, evidence, an experimental CDL authoring skill, bounded TM1 reference extraction and synthetic verification.
3. **P2 — Ecosystem:** MCP, coding-agent and CI/CD integrations.
4. **P3 — Advanced capabilities:** dedicated discovery, visual modeling, property-based verification, enterprise platforms and specification registries.

The detailed 90-day plan, first 10-day sprint, approval gates and demonstrator criteria are in the canonical roadmap. Architecture and migration decisions are documented in [`../ARCHITECTURE.md`](../ARCHITECTURE.md) and [`STRATEGIC-DELTA.md`](STRATEGIC-DELTA.md).

## Roadmap governance

- Preserve backward compatibility unless an explicit CEP and human approval authorize a break.
- Track syntax, SIR schema and generated-artifact compatibility independently.
- Require reproducible evidence before publishing benchmark or capability claims.
- Review roadmap changes when major SIR or semantic-compiler contracts change.
