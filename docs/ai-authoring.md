# AI-Assisted Authoring

Existing coding agents can assist with candidate CDL specifications without becoming a compiler dependency.

## Recommended agent workflow

1. Inspect approved documentation, source, schema and tests.
2. Identify candidate capabilities, rules and calculations.
3. Preserve source locations for every claim.
4. Label observations, documented statements and inferred meanings separately.
5. Generate only syntax supported by the selected CDL version.
6. Run the compiler and report raw diagnostics.
7. List ambiguities and business questions.
8. Submit candidate semantics for human approval.

Agents must not invent missing currency, precision, rounding, authorization or exception behavior.

## Extraction boundary

- **Observed:** independently demonstrated by source, test or captured runtime evidence.
- **Documented:** explicitly stated in a specification or source comment.
- **Inferred:** derived interpretation that requires confirmation.
- **Unsupported:** source behavior that cannot be represented or verified safely.

## Official skill status

An official experimental authoring/extraction skill is planned. It will be model-independent and will teach agents to use supported constructs, preserve evidence and report unresolved questions. No official skill is currently published from this repository.

CDL does not provide or require a dedicated AI orchestration engine.
