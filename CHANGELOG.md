# Changelog
All notable changes to CDL will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.7.0] - 2026-11-21 — The Semantic-First Foundation

### Added
- Semantic Specification Compiler positioning for Spec-Driven Development and AI-assisted software engineering.
- SIR-first target architecture with structured expressions, deterministic validation, dependency analysis and verification taxonomy.
- Strategic roadmap, 90-day plan, 10-day sprint and approval gates for incremental CDL 2.0 development.
- Verified capability matrix distinguishing available, limited, experimental and planned behavior.
- Modernized documentation for concepts, SDD, AI-assisted authoring, modernization and release maturity.
- Synthetic SEPA extraction package with evidence, limitations, verification scenarios and human review checklist.
- Documentation quality validation and GitHub Pages readiness workflow.
- Repository and distribution migration documentation for `pulsaride/cdl-lang`.

### Changed
- Repositioned CDL without replacing or redesigning the v0.6 compiler architecture.
- Updated active repository, documentation and package metadata to Pulsaride ownership.
- Prepared dynamic GHCR publishing for `ghcr.io/pulsaride/cdl-lang` without publishing during the transition.
- Synchronized the Gradle artifact, CLI banner, scripts and container build with `0.7.0`.

### Compatibility
- Java package identifiers, public CLI command forms, OpenAPI CTK fixtures and existing grammar remain compatible with v0.6 behavior.
- SIR, semantic diff/impact, reference evaluation and advanced verification remain planned CDL 2.0 capabilities and are not claimed as implemented.
- The VS Code extension remains independently versioned at `0.6.0-alpha`.

## [0.6.0] - 2025-10-30

### Added
- **Initial Type System**: Type definitions with `type` keyword and limited field constraints
- **Built-in Types**: `string`, `int`, `decimal`, `bool`, `date`, `datetime`, `Email`, `Money`
- **Type Constraints**: `where` clauses with functions (`length()`, `contains()`, `today()`, etc.)
- **Typed Intent Parameters**: Strong typing for inputs/outputs instead of string metadata
- **Limited Type Checker**: Selected circular-reference, constraint and type-name checks
- **Enhanced OpenAPI Generation**: Additional schema and reference projection
- **Extended CTK**: 10 OpenAPI golden-output cases
- **VS Code Extension Updates**: Syntax highlighting and extension command scaffolding
- **Code Coverage**: JaCoCo integration with coverage reporting
- **Quality Metrics**: CI/CD pipeline with automated testing and documentation deployment

### Changed
- **Intent Syntax**: Now supports typed parameters: `inputs: "[customer: Customer, amount: Money]"`
- **Type Validation**: Limited compile-time type-name and constraint checks
- **API Generation**: OpenAPI schemas now include type constraints and validations
- **Error Codes**: Extended error model (E001-E007) for comprehensive type checking

### Fixed
- Type reference resolution across complex type graphs
- Constraint validation for all built-in types
- Circular dependency detection in type definitions

## [0.5.0] - 2025-10-29

### Fixed
- N/A
