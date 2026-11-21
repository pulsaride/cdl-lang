# Java Modernization

Java modernization is an intended extraction use case, not a delivered Java analyzer.

## Bounded extraction protocol

1. Identify service entry points as candidate capabilities.
2. Identify domain types from DTOs, entities and schemas.
3. Identify explicit guards, branches and calculations as candidate rules.
4. Trace method calls to distinguish technical orchestration from business semantics.
5. Preserve class, method, branch and line references as evidence.
6. Compare tests and documentation with implementation behavior.
7. Record ambiguity, missing policy and unsupported logic.
8. Generate supported CDL for human review.
9. Compile the candidate and retain diagnostics.
10. Propose boundary scenarios before any target implementation is generated.

## Example extraction pattern

A guard such as `if (discount > 0.30) reject();` is technical evidence for a candidate maximum-discount rule. It is not proof that 30 percent is the approved policy, that the threshold is inclusive, or that the same rule applies outside that service.

A future official authoring skill may provide a Java extraction example. No Java extraction command is available in v0.6.

## Verification

Compare independently captured legacy outcomes for approved cases with the proposed target implementation. Compiler validation alone is V1/V2 structural or semantic checking; it is not V4 implementation conformance or V5 legacy behavioral parity.
