# API Reference

## CLI Commands

### cdl build

Parse CDL to IR.

```bash
cdl build <input.cdl>
```

### cdl gen openapi

Generate OpenAPI spec.

```bash
cdl gen openapi -i <input.cdl> -o <output.yaml>
```

### cdl fmt

Format CDL file.

```bash
cdl fmt <input.cdl>
```

### cdl lint

Lint for errors.

```bash
cdl lint <input.cdl>
```

## Java API

### Compiler

```java
import com.cdl.Compiler;

Compiler.Result result = Compiler.compile("file.cdl");
String openapi = result.openapi;
```

`Compiler.Result` exposes `program`, `symbolTable`, `typeChecker`, `ir`, `openapi` and `rego`. This is a Java compatibility facade, not a published stable semantic API.

### Backends

```java
import com.cdl.backends.OpenAPIGenerator;
import com.cdl.backends.RegoGenerator;
import com.cdl.ir.IR;

String openapi = OpenAPIGenerator.generate(ir);
String rego = RegoGenerator.generate(ir);
```

- OpenAPI: limited but exercised by CTK.
- Rego: experimental method/path allow-rule placeholder.

## Error Codes

- E001: Duplicate ID
- E002: Invalid type

## Exit behavior

The CLI uses process exit codes for explicit argument, I/O and selected lint failures. Because parser recovery is not propagated consistently, callers must also inspect stderr when integrating validation into CI.

## Planned CLI

`validate`, `diff`, `impact`, `dependencies`, `context`, `trace`, `verify`, `coverage`, and `evaluate` are architectural roadmap commands. They are not implemented in v0.6.

See [Diagnostics](diagnostics.md) for the current error model.
