# v0.7.0 Release Readiness

**Status:** Prepared; publication and tag push require human approval  
**Proposed tag:** `v0.7.0`  
**Proposed release title:** `CDL v0.7.0 — The Semantic-First Foundation`

## Scope assessment

Pending work is a strategic transition: architecture, roadmap, governance, verified capability audit, organization migration, documentation modernization, synthetic extraction artifacts and release metadata. No SIR, semantic evaluator, dependency graph or grammar implementation is introduced in this release.

## Version consistency

| Component | v0.7.0 policy |
|---|---|
| Gradle project/artifact | `0.7.0` |
| CLI output | `0.7.0` from a single constant |
| Docker COPY input | `cdl-0.7.0.jar` |
| CTK/docs/demo scripts | `cdl-0.7.0.jar` |
| Changelog/release notes | `0.7.0` |
| Historical v0.6 language/capability docs | Retain v0.6 because they describe compatibility baseline |
| VS Code extension | Retain independent `0.6.0-alpha` |
| SIR schema | No versioned implementation exists; no release version assigned |

Java package `com.cdl`, Gradle group/artifact IDs, CLI names, license and extension identifiers remain unchanged.

## Publishing readiness

- GitHub workflow derives image ownership from `${{ github.repository_owner }}`.
- Preferred image is `ghcr.io/pulsaride/cdl-lang`.
- Workflow is prepared for semantic version tags and Linux/amd64 plus Linux/arm64 builds.
- Container metadata derives release tags from Git tags; the container workflow currently publishes on master pushes, which is broader than immutable-tag-only publication and must be reviewed before approval.
- Organization image availability and package permissions were not verified as publish-ready.
- No existing published version tag may be overwritten.
- Documentation installation remains local-build based until `v0.7.0` is published and its manifest is verified.
- GitHub Pages uses the official Pages artifact/deploy actions and an environment; repository/organization deployment settings require administrator confirmation.

## Compatibility

Acceptance baseline:

- Grammar and Java public packages unchanged.
- CLI command names and supported positional/`gen openapi -i/-o` forms unchanged.
- 10 OpenAPI CTK fixtures remain byte-compatible.
- Existing limited diagnostics behavior remains unchanged except version branding.
- Rego remains experimental and formatter remains no-op/placeholder.

## Required checks

- Gradle build/test.
- 10 CTK golden cases.
- Docker build and mounted-file CLI smoke test.
- Strict MkDocs and docs reference/example validation.
- Canonical ownership scan.
- CLI version output smoke test.
- Final release review for unsupported CDL 2.0 claims.

## Verification results (2026-11-21)

- `./gradlew clean build installDist`: passed; `cdl-0.7.0.jar` and distribution produced.
- `./test_ctk.sh`: passed all 10 golden cases with CLI version `0.7.0`.
- Docker build: passed with `eclipse-temurin:21-jre`; local tag `cdl-lang:0.7.0-local`.
- Mounted container lint smoke test: passed for `extraction/sepa/domain.cdl`.
- `mkdocs build --strict`: passed through `scripts/validate-docs.sh`.
- Canonical ownership and unverified-container instruction scans: passed.
- Active legacy-owner reference scan outside migration history: passed.
- Core grammar, AST, compiler pipeline and generator code remained unchanged apart from CLI release branding.
- The Gradle build still reports pre-existing deprecated Gradle configuration usage; no test source suite exists, and CTK remains the executable compatibility suite.

## Pending publication decisions

- Validate workflow behavior on an actual `v0.7.0` tag before publishing a package.
- Confirm GHCR organization package permissions and visibility.
- Confirm that `${{ github.ref_type }}`/semver metadata produces tags `0.7.0` and `0.7` and that `latest` is enabled for the stable tag.
- Confirm protected GitHub Pages environment settings.
- Approve tag push, GitHub release creation, package publication and Pages deployment separately.

## Approval gates

- Tag and push approval required before `git tag v0.7.0` is shared.
- GitHub release creation requires human approval.
- GHCR/package publication requires human approval.
- GitHub Pages deployment requires human approval and verified settings.
- `2.0.0-SNAPSHOT` changes must be a separate commit after successful release publication.
