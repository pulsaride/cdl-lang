# Specification

## Overview

CDL (Cognitive Domain Language) is a DSL for defining business logic in a declarative, traceable, and executable way. It focuses on intents, rules, policies, flows, and mappings with metadata for evidence and trust. Version 0.6.0 adds a complete type system for type-safe specifications.

## Concepts

- **Intent**: Describes a business goal with typed inputs, outputs, evidence, and trust scores.
- **Rule**: Defines validation or business rules with conditions.
- **Policy**: Governance policies for compliance.
- **Flow**: Sequences of steps with guards.
- **Mapping**: Binds intents to external APIs or systems.
- **Type**: Custom data types with field constraints (v0.6.0+).

## Type System (v0.6.0)

### Built-in Types
- `string`: Text values
- `int`: Integer numbers
- `decimal`: Decimal numbers
- `bool`: Boolean values
- `date`: Date values (YYYY-MM-DD)
- `datetime`: DateTime values (ISO 8601)
- `Email`: Email addresses with validation
- `Money`: Monetary values (amount + currency)

### Type Definitions
```cdl
type Customer
  id: string
  name: string where length(name) >= 2
  email: Email
  age: int where age >= 18
end
```

### Constraints
- Comparison operators: `>`, `<`, `>=`, `<=`, `==`, `!=`
- String functions: `length()`, `contains()`, `startsWith()`, `endsWith()`
- Logical operators: `and`, `or`, `not`
- Special functions: `today()`, `in [values]`

### Typed Intents
```cdl
intent CREATE_USER
  inputs: "[profile: Customer, password: string]"
  outputs: "[userId: string, token: string]"
end
```

## Grammar

See `src/main/antlr/CDL.g4` for the ANTLR grammar.

## IR (Intermediate Representation)

JSON structure with type information:
```json
{
  "types": [...],
  "intents": [...],
  "mappings": [...]
}
```

## Backends

- **OpenAPI 3.0**: Generates type-safe API specs with validation schemas
- **Rego**: Generates OPA policies with type constraints

## Error Codes

- E001: Duplicate ID
- E002: Invalid type
- E003: Missing evidence
- E004: Type not found
- E005: Invalid constraint
- E006: Circular type reference
- E007: Parameter type mismatch

## Versioning

SemVer: v0.6.0 (Type System)

# v0.6 Language Reference

This page describes the syntax and current implementation baseline. It is not the proposed CDL 2.0 specification.

## Grammar

The authoritative grammar is [`src/main/antlr/CDL.g4`](https://github.com/pulsaride/cdl-lang/blob/master/src/main/antlr/CDL.g4).

A document contains zero or more of:

- `intent`
- `rule`
- `policy`
- `flow`
- `mapping`
- `type`

Identifiers use uppercase words (`ID`), while field names and function names use lowercase identifiers (`LOWER_ID`). Newlines are insignificant whitespace.

## Type definitions

```cdl
type Customer
  id: string
  name: string where length(name) >= 2
  email: Email
  age: int where age >= 18
end
```

Built-in names recognized by the current checker are `string`, `int`, `decimal`, `bool`, `date`, `datetime`, `Email` and `Money`.

!!! warning "Validation scope"
    The grammar accepts a limited expression form and the checker performs string-based validation. It does not provide a structured expression AST, complete operand typing, unit/currency compatibility, full function typing or semantic constraint solving.

Parameterized types exist in the grammar, but representation and OpenAPI handling are incomplete. Do not rely on `Money(EUR)` behavior as a stable contract in v0.6.

## Intent

```cdl
intent CREATE_CUSTOMER
  goal: "Create a customer"
  inputs: "[customer: Customer]"
  outputs: "[customerId: string]"
  evidence: "[registration_policy]"
  tags: "[customer, registration]"
end
```

The AST extracts typed inputs and outputs from the metadata string. Arbitrary metadata is stored in a map; semantic interpretation is limited.

## Rule and policy

```cdl
rule CUSTOMER_AGE_VALIDATION
  statement: "Customer must be of legal age"
  applies_to: "CREATE_CUSTOMER"
  evidence: "[age_policy]"
  test_hints: "Age below 18 should be rejected"
end
```

Rules and policies parse, but their metadata is not semantically resolved or evaluated. The grammar-level `type` keyword is reserved, so rule categories should not use `type:` as a metadata key; use descriptive supported metadata keys such as `category:` if needed.

## Flow

```cdl
flow CUSTOMER_ONBOARDING
  start CREATE_CUSTOMER
  then NOTIFY_CUSTOMER
end
```

Flow syntax is present, and a `Flow` AST object exists. Step population and semantic execution are incomplete, so flows should be treated as limited syntax rather than behavioral execution.

## Mapping

```cdl
mapping CREATE_CUSTOMER -> "api POST /api/customers"
  request: "CustomerRequest"
  response: "CustomerResponse"
end
```

Mappings produce OpenAPI path entries. Request and response names are emitted as component references.

## Internal IR

The current Java IR is an internal projection containing:

- Type and field records.
- Intents and typed input/output maps.
- API mappings.

It omits rules, policies, flows, evidence relationships, provenance and structured expressions. It has no published versioned SIR compatibility guarantee.

## OpenAPI output

The current generator emits OpenAPI 3.0-like JSON text for mappings and component schemas. The CTK checks 10 deterministic golden outputs. It does not validate the complete OpenAPI specification or generate operation IDs, complete response descriptions or all documented constraints.

## Rego output

`RegoGenerator` emits method/path placeholder allow rules. It does not compile CDL rules or policies into policy semantics and must be treated as experimental.

## Diagnostics

See [Diagnostics](diagnostics.md) and [Supported Capabilities](capabilities.md) for implemented and planned validation behavior.

## Version boundary

- The stable reference here is the current v0.6-era implementation.
- CDL 2.0 SIR and structured semantic features remain proposed.
- Historical specifications under `spec/` preserve earlier claims and must not override this implementation-based reference.
