# Documentation Website Audit

**Audit date:** 2026-11-21  
**Site:** `https://pulsaride.github.io/cdl-lang/`  
**Repository:** `https://github.com/pulsaride/cdl-lang`

## Audit scope

Reviewed `mkdocs.yml`, `docs/`, `examples/README.md`, `README.md`, `.github/workflows/docs.yml`, language/specification files and the executable compiler/CTK baseline.

## Findings and disposition

| Finding | Previous state | Disposition |
|---|---|---|
| Outdated ownership | Personal owner references had been partly migrated | Active docs now use `pulsaride/cdl-lang` |
| Broken Roadmap navigation | MkDocs navigated outside `docs/`, initially using an external GitHub URL | Added an in-site `docs/roadmap.md` page linking to the single canonical root roadmap |
| Unpublished organizational image | Docs advertised `ghcr.io/pulsaride/cdl-lang` despite no resolvable manifest | Removed as a currently usable install option; retained migration status |
| Incorrect CLI classpath commands | Docs used manual classpath examples | Replaced with verified Gradle `installDist` scripts |
| Incorrect `-i/-o` claims | Applied to all commands in documentation | Limited flag-form documentation to `gen openapi` |
| Formatter claim | Documented as functional | Marked experimental/no-op CLI behavior |
| Type system claim | “Complete type system” and full constraints | Marked limited, with string-based checks |
| IR claim | Complete JSON semantic IR | Corrected to lossy internal types/intents/mappings projection |
| Rego claim | Policy compilation | Marked experimental method/path allow-rule output |
| Behavioral execution claim | “Executable specifications” and generated tests | Removed from current-capability claims; planned verification is explicit |
| OpenAPI claim | Complete schemas and validation | Limited to current generator and 10 golden CTK tests |
| Test coverage claim | Broad testing | Clarified that Gradle had no `src/test`; CTK is the executable suite |
| Markdown examples | Fenced CDL treated as executable file | Labeled as documentation source requiring block extraction |
| Version mismatch | v0.5 docs, v0.6 implementation and CDL 2.0 vision mixed | Site identifies v0.6 as current and future pages as planned/proposed |

## Capability evidence

The capability matrix is in `docs/capabilities.md`. It is based on the parser, AST, symbol table, type checker, IR, generators, CLI and executable CTK, not specification prose.

## Documentation architecture

The new navigation is progressive:

- Home and Getting Started.
- Concepts.
- v0.6 language, CLI and diagnostics.
- Current architecture, planned SIR and capability transparency.
- SDD and AI-assisted authoring.
- Legacy, Java and TM1 modernization.
- Examples.
- Single-source roadmap and contributing.

No empty placeholder pages were added.

## Versioning assessment

Recommended without new deployment tooling:

- Keep `master` documentation as development/current documentation.
- Preserve v0.6 under `docs/spec.md` until a stable release snapshot is needed.
- On the first CDL 2.0 stable release, evaluate MkDocs Material versioning or Mike as a separate dependency decision.
- Do not add Mike now; the project does not yet have the stable release cadence or approved deployment complexity to justify it.

## Organization references

Active documentation now points to:

- `https://github.com/pulsaride/cdl-lang`
- `https://pulsaride.github.io/cdl-lang/`

Original authorship and historical repository identity remain unchanged. `ghcr.io/pulsaride/cdl-lang` appears only as migration status, not as an available installation command, until a public manifest is verified.

## Deployment readiness

- Strict local MkDocs validation is scripted through `scripts/validate-docs.sh`.
- Pull requests validate docs without deployment permissions.
- Master pushes upload and deploy to the existing `github-pages` environment using GitHub's official Pages actions.
- The repository Pages environment exists, but organization rules and the selected Pages source must be verified by a repository administrator.
- No deployment is performed as part of this documentation modernization task.

This workflow introduces no new runtime dependency in the compiler; MkDocs tooling remains a CI/docs-only concern.

## Remaining work

- Add executable code-fence extraction tests.
- Add automated canonical-reference and obsolete-instruction checks to CI.
- Confirm organization GHCR package publication and then update installation examples with a verified version tag.
- Review GitHub Pages deployment ownership and permissions after an approved deployment.
