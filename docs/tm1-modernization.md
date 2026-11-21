# TM1 Modernization

IBM Planning Analytics TM1 is the first flagship modernization use case, but its adapter is planned rather than available in v0.6.

## Prioritized source model

A future deterministic adapter may extract synthetic models for:

- Cubes, dimensions, hierarchies and attributes.
- Calculation rules and feeders.
- Cross-cube dependencies.
- TurboIntegrator processes and chores.
- Security policies, MDX expressions and views.

TM1-specific constructs belong in an optional adapter outside the generic semantic core.

## Interpretation boundary

- Preserve original source and source locations.
- Separate metadata extraction from AI-assisted semantic interpretation.
- Mark unsupported expressions and uncertain interpretations explicitly.
- Require human approval before interpreted semantics become authoritative.
- Use synthetic public models for demonstrations.
- Never publish company data, credentials, proprietary models or confidential specifications.

## Verification

TM1 modernization requires independent differential evidence for aggregation, consolidation, currency/unit behavior, null and zero handling, precision and rounding. A limited scenario set cannot establish complete behavioral equivalence.

No TM1 connection, extraction CLI or calculation engine is currently implemented.
