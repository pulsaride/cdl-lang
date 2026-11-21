# CDL v0.7.0 — The Semantic-First Foundation

CDL v0.7.0 establishes the strategic and architectural foundation for CDL 2.0.

CDL is evolving from a domain-specific language into a **Semantic Specification Compiler** for Spec-Driven Development and AI-assisted software engineering.

## Highlights

- New positioning: from business intent to verifiable software.
- SIR-first target architecture and structured-expression model.
- Deterministic validation, semantic evolution and behavioral-verification strategy.
- Markdown SDD and AI-assisted authoring interoperability vision.
- Verified v0.6 compiler capability inventory and transparent maturity matrix.
- Updated 90-day roadmap, 10-day sprint and human approval gates.
- Synthetic SEPA evidence/extraction and verification package.
- Modernized Material for MkDocs documentation.
- Repository, metadata, documentation and distribution references migrated to Pulsaride.
- GHCR publishing workflow prepared for `ghcr.io/pulsaride/cdl-lang` without publishing from this release preparation.

## Compatibility

This release preserves the existing grammar, Java package identifiers, CLI forms and v0.6 OpenAPI CTK baseline. The Gradle artifact and CLI identify as `0.7.0`.

## Maturity boundary

This release does **not** claim that CDL 2.0 semantic compilation is already implemented. SIR, structured typed-expression evaluation, semantic diff and impact analysis, JSON/YAML normalization, Markdown-embedded CDL, reference evaluation and full behavioral verification remain roadmap objectives.

The current implementation still provides:

- ANTLR parsing and AST construction.
- Limited symbol/type/constraint checks.
- Internal types/intents/mappings IR.
- OpenAPI generation covered by 10 golden CTK cases.
- Experimental placeholder Rego generation.
- CLI and VS Code extension scaffolding.

## Verification

- Gradle build and tests.
- All 10 CTK golden cases.
- Local Docker build and CLI smoke test.
- Strict MkDocs build and documentation reference checks.
- No public package identifiers, license, author attribution or Git history changed.

## Next development cycle

After approval and publication, development moves to a separate `2.0.0-SNAPSHOT` cycle. Language syntax, SIR schema and generated-contract compatibility remain independently governed.