# CDL — Compile your business specifications

[![CI](https://github.com/pulsaride/cdl-lang/actions/workflows/ci.yml/badge.svg)](https://github.com/pulsaride/cdl-lang/actions/workflows/ci.yml)
[![CTK](https://img.shields.io/badge/CTK-10%20tests-passing)](ctk)

CDL is evolving from its v0.6 compiler baseline into a Semantic Specification Compiler for Spec-Driven Development and AI-assisted software engineering.

> From business intent to verifiable software.

## v0.7.0 status

v0.7.0 is the strategic foundation release. It preserves the existing ANTLR parser, AST, limited symbol/type checks, internal IR and OpenAPI golden-output behavior while documenting the SIR-first architecture and CDL 2.0 roadmap.

It does not claim that structured semantic expressions, semantic diff, reference evaluation, impact analysis or behavioral verification are implemented.

## Verified capabilities

- ANTLR parsing and AST construction.
- Limited duplicate/type-name, type-cycle and string-based constraint checks.
- Internal types/intents/mappings IR.
- OpenAPI text generation covered by 10 CTK cases.
- Experimental method/path Rego placeholder.
- CLI, Gradle distribution and VS Code syntax-highlighting extension.

See [the capability matrix](docs/capabilities.md), [architecture](ARCHITECTURE.md), and [roadmap](ROADMAP.md).

## Quick start

```bash
./gradlew clean build installDist
./build/install/cdl-lang/bin/cdl-lang lint sample.cdl
./build/install/cdl-lang/bin/cdl-lang gen openapi sample.cdl /tmp/sample.openapi.yaml
```

The parser currently emits diagnostics but may recover from malformed input; inspect stderr and do not treat the success banner as complete validation.

## Container status

`ghcr.io/pulsaride/cdl-lang` is the intended official namespace, but no organization-scoped image is published by this release preparation. Use the local build until publication approval and manifest verification.

See [repository migration](governance/REPOSITORY-MIGRATION.md).

## Verified CLI forms

- `cdl-lang build <input.cdl>`
- `cdl-lang gen openapi <input.cdl> <output.yaml>`
- `cdl-lang gen openapi -i <input.cdl> -o <output.yaml>`
- `cdl-lang lint <input.cdl>`
- `cdl-lang fmt <input.cdl>` — placeholder/no-op

`build` does not write an IR file. `lint` and `fmt` do not support `-i/-o` forms.

## Compatibility verification

```bash
./test_ctk.sh
```

The CTK verifies 10 generated OpenAPI golden outputs; it is not a complete language-semantic or behavioral test suite.

## Documentation

- [Published documentation](https://pulsaride.github.io/cdl-lang/)
- [v0.6 language reference](docs/spec.md)
- [CLI and Java API](docs/api.md)
- [Examples](docs/examples.md)
- [Contributing](CONTRIBUTING.md)
