# Concepts

CDL organizes approved business knowledge around three objectives.

## 1. Semantic integrity

Specifications should expose deterministic inconsistencies without asking an AI model to reconstruct the domain. Examples include undefined type references, invalid supported expression types, incompatible dimensions, duplicate identifiers and prohibited dependency cycles.

The v0.6 compiler provides only a limited subset today: duplicate symbol collection, type-name checks, string-based constraint checks and type-cycle detection. The capability matrix identifies unsupported semantic checks as planned rather than available.

## 2. Semantic evolution

A specification is versioned engineering data. Changing a type or rule should allow tools to identify semantic changes, affected dependencies and required regression scenarios. SIR, semantic diff and impact analysis are architectural targets, not implemented v0.6 features.

## 3. Behavioral conformance

Compilation proves only that the compiler accepted supported syntax and validations. It does not prove an implementation behaves like the approved specification or like a legacy system. Independent executable observations are required for implementation conformance and legacy parity.

## Semantic core and interfaces

The semantic core is the intended product. Native CDL syntax is a first-class authoring interface; versioned structured inputs and agent integrations are additional interfaces. Markdown remains the human-readable SDD interface around that core.

## Human and AI responsibilities

- AI tools may propose candidate business knowledge or extraction.
- Humans approve business meaning and resolve ambiguity.
- CDL validates deterministic relationships over approved structured semantics.
- Coding agents implement approved contracts.
- Independent tests provide behavioral evidence.

This separation allows CDL to remain useful without an AI model.
