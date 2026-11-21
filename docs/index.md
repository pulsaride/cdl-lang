# CDL — Compile your business specifications

**An open-source semantic specification compiler for Spec-Driven Development and AI-assisted software engineering.**

> **From business intent to verifiable software.**

CDL is evolving from a v0.6-era domain language into a deterministic semantic core for AI-driven software engineering. The semantic core is the intended product; native CDL syntax, structured inputs, Markdown interfaces and agent integrations are ways to interact with it.

!!! note "Current maturity"
    The published repository still contains the v0.6 compiler baseline. SIR, semantic diff, dependency impact, JSON/YAML normalization, Markdown-embedded CDL and reference evaluation are roadmap capabilities, not released features. See [Supported Capabilities](capabilities.md).

## Three objectives

### Semantic integrity

Validate explicit types, references, constraints and domain relationships deterministically wherever semantics are fully defined.

### Semantic evolution

Identify changed meaning, dependencies and transitive impact as specifications evolve, without requiring an AI model to reconstruct the domain.

### Behavioral conformance

Link approved specifications to independent implementation tests and observed results. Compilation and test coverage do not establish complete legacy equivalence by themselves.

## Complements Markdown SDD

CDL does not replace existing Markdown specifications, plans or tasks. A team can progressively formalize selected business rules while retaining Markdown for rationale and communication:

```text
Markdown SDD
  -> Formalized business rules
  -> CDL semantic compilation
  -> Implementation
  -> Independent verification
```

AI tools may help extract candidates and generate supported specifications. CDL provides deterministic analysis after the knowledge is explicit; humans retain authority over business meaning.

## Verified today

- ANTLR parser for v0.6 CDL blocks.
- AST construction and top-level symbol collection.
- Limited type-name, constraint and type-cycle checks.
- OpenAPI text generation exercised by 10 golden CTK cases.
- Experimental Rego output for method/path allow rules.
- CLI build, OpenAPI generation and lint entry points.
- VS Code syntax-highlighting extension.

The formatter command is not a complete formatter, the internal IR is lossy, and general semantic validation is not yet available. Read the [capability matrix](capabilities.md) before choosing a feature.

## Start locally

```bash
git clone https://github.com/pulsaride/cdl-lang.git
cd cdl-lang
./gradlew clean build
./build/install/cdl-lang/bin/cdl-lang gen openapi sample.cdl /tmp/sample.openapi.yaml
```

To create the install distribution:

```bash
./gradlew installDist
```

The organization-scoped container `ghcr.io/pulsaride/cdl-lang` has not yet been verified as published, so installation documentation does not present it as an available image. Container migration and publishing require separate approval.

## Explore the project

- [Getting Started](quickstart.md)
- [Concepts](concepts.md)
- [v0.6 Language Reference](spec.md)
- [Supported Capabilities](capabilities.md)
- [Compiler Architecture](architecture.md)
- [Roadmap](roadmap.md)

## Community

- [Repository](https://github.com/pulsaride/cdl-lang)
- [Issues](https://github.com/pulsaride/cdl-lang/issues)
- [Discussions](https://github.com/pulsaride/cdl-lang/discussions)
- [Contributing](contributing.md)
