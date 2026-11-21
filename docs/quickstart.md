# Getting Started

## Prerequisites

- Java 21 for the verified build and container configuration.
- A POSIX shell or the platform-equivalent Gradle wrapper command.

No external Gradle installation is required.

## Local installation

```bash
git clone https://github.com/pulsaride/cdl-lang.git
cd cdl-lang
./gradlew clean build installDist
```

The generated CLI is:

```bash
./build/install/cdl-lang/bin/cdl-lang
```

## Validate an existing example

```bash
./build/install/cdl-lang/bin/cdl-lang lint sample.cdl
```

The current lint command accepts a positional file argument. A successful banner validates only checks implemented by the v0.6 compiler; it is not proof of complete syntax recovery, semantic validity or business correctness.

## Generate OpenAPI

```bash
./build/install/cdl-lang/bin/cdl-lang gen openapi sample.cdl /tmp/sample.openapi.yaml
```

## Create a minimal supported CDL file

```cdl
type STRING
end

type DECIMAL
end

type PaymentRequest
  account_id: STRING
  amount: DECIMAL
end

type PaymentResponse
  payment_id: STRING
end

intent CREATE_PAYMENT
  goal: "Create a payment record"
  inputs: "[account_id: STRING, amount: DECIMAL]"
  outputs: "[payment_id: STRING]"
end

mapping CREATE_PAYMENT -> "api POST /api/payments"
  request: "PaymentRequest"
  response: "PaymentResponse"
end
```

Save it as `my-payment.cdl`, then run:

```bash
./build/install/cdl-lang/bin/cdl-lang lint my-payment.cdl
./build/install/cdl-lang/bin/cdl-lang gen openapi my-payment.cdl /tmp/my-payment.openapi.yaml
```

## Current CLI surface

| Command | Verified form |
|---|---|
| Build/parse facade | `cdl-lang build FILE.cdl` |
| Generate OpenAPI | `cdl-lang gen openapi INPUT.cdl OUTPUT.yaml` |
| Lint | `cdl-lang lint FILE.cdl` |
| Format | `cdl-lang fmt FILE.cdl` prints a success message; formatting is not implemented |

The README-style `-i/-o` flags are fully supported for `gen openapi`; they are not consistently implemented for `build`, `lint`, or `fmt`.

## Container status

A migration to `ghcr.io/pulsaride/cdl-lang` is prepared, but the organization image has not been verified as publicly available. Use the local build until publication is approved and smoke-tested.

## Next steps

- Read [Concepts](concepts.md).
- Review [Language Reference](spec.md).
- Check [Supported Capabilities](capabilities.md).
- Follow [SDD Integration](sdd-integration.md).
