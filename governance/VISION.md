# CDL Vision

## The Semantic Specification Compiler

**CDL is an open-source Semantic Specification Compiler for AI-driven software engineering.** It adds deterministic semantic validation, dependency analysis, specification evolution, traceability and behavioral verification to existing development practices.

> **From business intent to verifiable software.**

The fundamental product is the semantic core, not the CDL syntax.

## The Model

- AI discovers and interprets candidate business knowledge.
- CDL formalizes and validates approved knowledge.
- Humans approve business meaning.
- AI coding agents implement approved specifications.
- Executable tests independently verify behavior.

CDL must provide meaningful engineering value without calling an LLM.

## Problems CDL Addresses

- Business rules are scattered across Markdown, code, databases and legacy platforms.
- Natural-language specifications drift from implementation and tests.
- Renaming or changing a rule does not reveal all transitive consequences.
- Typed relationships, units, currencies and dependencies are often checked manually.
- Generated technical artifacts are not reliably tied to approved semantics or evidence.
- Test success is confused with proof of complete behavioral equivalence.

## Product Principles

### 1. SIR Is the Central Contract

A versioned Semantic Intermediate Representation (SIR) normalizes native CDL, versioned JSON and versioned YAML. CDL syntax remains a first-class authoring format but is not mandatory when equivalent structured input has the same semantics.

### 2. Deterministic Before Interpretive

Symbol resolution, type checking, expression validation, reference checks, dependency construction, semantic diff, impact analysis, evidence validation and drift checks operate deterministically. Ambiguous interpretation is explicitly escalated for AI-assisted analysis or human approval.

### 3. Markdown Is an Interface, Not a Replacement Target

CDL complements existing Markdown-based Spec-Driven Development, plans, tasks, agents and CI/CD. Markdown remains useful for human communication and can be generated or enriched only under explicit artifact ownership rules.

### 4. Humans Retain Semantic Authority

No tool, model or generator silently changes approved business meaning. Candidate semantics, legacy interpretations and AI-generated extraction remain provisional until approved.

### 5. Verification Is Independent

Compiler validation, test execution and proven properties are distinct outcomes. Coverage supports confidence and prioritization; it does not establish complete behavioral equivalence.

### 6. Technology Independence

The generic semantic core is independent of AI models, coding agents, legacy systems and target frameworks. TM1, OpenAPI, policy engines and agent integrations are adapters around the core.

## Initial Flagship Use Case

IBM Planning Analytics TM1 modernization is the first reference use case. Development starts with synthetic financial planning models and deterministic extraction from metadata and source evidence. TM1 interpretation, unsupported formulas, uncertainty and behavioral evidence remain explicit. No confidential company data or credentials belong in the public repository.

The generic semantic compiler must demonstrate value before extensive TM1 extraction infrastructure is built.

## Success Criteria

CDL succeeds when teams can:

- Validate structured business semantics without an AI model.
- Detect undefined references, invalid expression types, incompatible currencies or units, prohibited cycles and conflicting supported constraints.
- Compare specification versions and identify direct and transitive impact.
- Generate bounded context for coding agents from approved semantics and evidence.
- Trace approved requirements to implementations, verification obligations, executable tests and observed results.
- Detect generated-artifact drift and missing verification.
- Integrate these checks into existing SDD and CI/CD workflows.

## Relationship to Standards and Tools

CDL complements rather than replaces OpenAPI, JSON Schema, Gherkin, OPA/Rego, CUE, TypeSpec and model/formal specification approaches. Competitive validation must test structured YAML/JSON plus conventional tooling against CDL, including cases where simpler formats are sufficient.

## Governance

CDL remains open-source under Apache License 2.0. Public evolution follows backward compatibility, explicit migration and human approval gates. Major grammar changes, compiler replacement, public SIR commitments, new runtime dependencies, external TM1 connections, complete calculation engines and benchmark publication require review.
