# Legacy Modernization

CDL can support modernization by separating candidate business semantics from implementation technology and by preserving evidence. It does not extract or prove an entire legacy application automatically.

## Evidence chain

```text
Legacy source or observation
  -> candidate semantic rule
  -> approved requirement
  -> implementation mapping
  -> executable test
  -> observed result
```

Each step has distinct status. Source extraction is not business approval, compilation is not implementation testing, and passing scenarios are not complete behavioral equivalence.

## Initial domains

### Java modernization

A bounded Java workflow may inspect decision methods, configuration and tests to propose types, intents and rules. Technical control flow must not automatically be promoted to a business rule. See [Java Modernization](java-modernization.md).

### IBM Planning Analytics TM1

TM1 remains a reference use case after the generic semantic core. Public work uses synthetic cube, dimension, rule, feeder and process models. TM1 metadata, formulas and interpretations stay outside the generic core where practical. See [TM1 Modernization](tm1-modernization.md).

## Safety rules

- Do not publish confidential source, data, credentials or proprietary specifications.
- Preserve unsupported expressions as unsupported rather than approximating them.
- Record observed and inferred behavior separately.
- Obtain human approval for business meaning.
- Do not claim parity without independent behavioral evidence.
