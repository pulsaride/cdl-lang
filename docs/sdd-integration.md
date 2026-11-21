# Spec-Driven Development Integration

CDL is intended to complement Markdown-based SDD rather than replace it. Teams can retain human-readable specifications, plans and tasks while adding structured semantic checks where deterministic tooling provides value.

## Progressive adoption

```text
Markdown SDD
  -> identify and approve business rules
  -> normalize selected semantics into CDL/SIR
  -> deterministic validation and lifecycle analysis
  -> implementation by existing coding agents
  -> independent verification
```

## Artifact ownership

Avoid maintaining the same normative rule in multiple editable locations.

- Human-authored Markdown may own rationale, decisions and narrative context.
- A CDL block or separate CDL document may own the formal rule definition.
- Generated OpenAPI, diagnostics and trace reports are derived artifacts and must not become parallel sources of truth.
- Generated Markdown must be marked as generated and must not overwrite owning human-authored semantics.

## Proposed Markdown-embedded profile

An experimental profile may recognize explicitly labeled CDL blocks while preserving surrounding prose. It must map diagnostics to document, block and line ranges and define cross-document references. Arbitrary Markdown is not silently interpreted as authoritative semantics.

The profile is planned; v0.6 does not compile Markdown files. In particular, files such as the current banking and healthcare examples are Markdown documents containing fenced CDL, not directly executable CDL inputs.

## AI versus deterministic analysis

AI-assisted tools can propose candidate intent, rules and evidence from existing material. The deterministic compiler validates explicit structures; it does not decide ambiguous business meaning. Human approval remains required before candidates become approved semantics.
