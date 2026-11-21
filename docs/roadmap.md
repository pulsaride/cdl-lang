# Roadmap

The canonical project roadmap is maintained in the repository at [ROADMAP.md](https://github.com/pulsaride/cdl-lang/blob/master/ROADMAP.md).

The documentation site intentionally links to that single source instead of maintaining a second roadmap.

## Current direction

- **P0:** SIR, structured expressions, deterministic semantic validation, dependencies, semantic diff, impact, verification and a minimal developer vertical slice.
- **P1:** Markdown SDD and embedded CDL, JSON/YAML inputs, semantic context, authoring skills, synthetic verification and the bounded TM1 reference adapter.
- **P2:** MCP, coding-agent and CI/CD integrations.
- **P3:** optional discovery, visual modeling, enterprise tooling and property-based verification.

## Important status boundary

The roadmap is a plan. The current v0.6 implementation remains an ANTLR-based parser, limited AST/type checks, lossy internal IR, OpenAPI generation, experimental Rego output and CTK golden tests. Planned SIR, semantic lifecycle commands and reference evaluation are not current capabilities.
