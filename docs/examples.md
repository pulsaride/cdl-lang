# Examples

Examples marked **executable v0.6** can be passed directly to the current CLI. Files containing Markdown prose and fenced CDL are documentation examples, not direct compiler inputs.

## Minimal payment — executable v0.6

```cdl
type Money
  amount: decimal where amount >= 0
  currency: string
end

type PaymentRequest
  amount: Money
  account: string
end

type PaymentResponse
  id: string
  status: string
end

intent PAYMENT_INTENT
  goal: "Process a payment"
  inputs: "[amount: Money, account: string]"
  outputs: "[id: string]"
  evidence: "[legacy_code]"
  tags: "[finance]"
end

mapping PAYMENT_INTENT -> "api POST /api/payments"
  request: "PaymentRequest"
  response: "PaymentResponse"
end
```

This corresponds to the structure in [`sample.cdl`](https://github.com/pulsaride/cdl-lang/blob/master/sample.cdl).

## Customer validation — executable v0.6

```cdl
type Customer
  id: string
  name: string where length(name) >= 2
  email: Email
  age: int where age >= 18
end

intent CREATE_CUSTOMER
  goal: "Create a new customer account"
  inputs: "[customer: Customer]"
  outputs: "[customerId: string]"
  evidence: "[customer_registration_policy]"
  tags: "[customer, registration]"
end
```

OpenAPI generation requires a mapping and request/response types. The current compiler only applies limited string-based constraint checks, so this demonstrates accepted syntax rather than complete semantic verification.

## Business rule metadata — limited v0.6

```cdl
rule CUSTOMER_AGE_VALIDATION
  statement: "Customer must be of legal age"
  applies_to: "CREATE_CUSTOMER"
  evidence: "[gdpr_age_verification]"
  test_hints: "Age below 18 should be rejected"
  category: "validation"
end
```

The rule parses, but `applies_to`, evidence and `test_hints` are not resolved or executed semantically.

## Proposed examples

The following require future structured expressions, SIR or adapters and must not be copied as current executable syntax:

- Java business-rule extraction.
- Order discount calculation with typed decision rules.
- Financial profitability and consolidation.
- Currency and unit compatibility.
- Semantic dependency and impact analysis.
- Rule evolution across specification versions.
- Synthetic TM1 modernization.
- V4 implementation conformance and V5 legacy parity.

See [Java Modernization](java-modernization.md), [TM1 Modernization](tm1-modernization.md), and [Roadmap](roadmap.md) for status and boundaries.

## Repository examples

- [`example.cdl`](https://github.com/pulsaride/cdl-lang/blob/master/example.cdl) — plain CDL payment example.
- [`sample.cdl`](https://github.com/pulsaride/cdl-lang/blob/master/sample.cdl) — minimal plain CDL example.
- [`extraction/sepa/domain.cdl`](https://github.com/pulsaride/cdl-lang/blob/master/extraction/sepa/domain.cdl) — candidate synthetic SEPA extraction requiring human approval.
- [`examples/banking/sepa-payment.cdl`](https://github.com/pulsaride/cdl-lang/blob/master/examples/banking/sepa-payment.cdl) — Markdown-wrapped example; extract the fenced block before compilation.

Do not treat synthetic examples or candidate extraction as approved business requirements.
