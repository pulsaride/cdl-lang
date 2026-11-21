# Repository Ownership and Distribution Migration

**Previous repository:** `https://github.com/lsalihi/cdl-lang`  
**Canonical repository:** `https://github.com/pulsaride/cdl-lang`  
**Preferred image:** `ghcr.io/pulsaride/cdl-lang`  
**Status:** Active references prepared; no package publication or deletion performed

## 1. Audit classification

| Classification | Occurrences found and action |
|---|---|
| Repository ownership references | README badges, clone/community links, specification links, docs, examples, MkDocs and VS Code metadata were migrated to `pulsaride/cdl-lang` |
| Distribution namespace | Documentation and GitHub Actions used `ghcr.io/lsalihi/cdl-lang`; active references now use `ghcr.io/pulsaride/cdl-lang` or `${{ github.repository_owner }}` |
| Publishing configuration | `.github/workflows/ci.yml` was migrated to dynamic repository ownership, scoped to trusted default-branch pushes, and prepared for multi-architecture GHCR publication |
| Internal implementation identifiers | Java package `com.cdl`, group `com.cdl`, archive name `cdl`, CLI command `cdl`, and extension command IDs were preserved |
| Historical references | Git history, `.git` reflogs and historical attribution were not modified; the old URL remains valid as transfer/migration history |
| Author attribution | Original authorship, contact identity and repository authors are preserved. No `lsalihi` personal ownership link remains in active tracked files |
| License/copyright | Apache-2.0 text and notices were not modified. OCI labels identify Apache-2.0 and the canonical source |

The local `.git/config` already points to `https://github.com/pulsaride/cdl-lang.git`. Local reflogs and commit identity contain the name `lsalihi`; these are local/history facts and must not be rewritten.

## 2. Modified tracked files

- `.github/workflows/ci.yml`
- `README.md`
- `CONTRIBUTING.md`
- `Dockerfile`
- `docs/index.md`
- `docs/quickstart.md`
- `examples/README.md`
- `mkdocs.yml`
- `lsp/vscode-extension/package.json`
- `spec/CDL-Language-Definition-v0.5.md`

No Gradle publishing plugin exists, so no Maven publishing coordinates or distribution repository were changed. No Docker Compose configuration was present.

## 3. Intentional remaining legacy references

- Git commit and reflog metadata, including original author/committer identity.
- The previous URL as historical transfer context in this report and release notes, if later added.
- Existing published images under `ghcr.io/lsalihi/cdl-lang` must remain available until a separately approved compatibility window ends.
- Local paths and build reports containing `/home/lsalihi/...` are generated/local-only and are not ownership metadata.

A search of tracked active source/documentation should report no `lsalihi/cdl-lang`, `ghcr.io/lsalihi/cdl-lang`, or `lsalihi.github.io/cdl-lang` references after this migration.

## 4. Container distribution audit

Observed on 2026-11-21 without authenticating to the package API:

| Namespace/tag | Result |
|---|---|
| `ghcr.io/lsalihi/cdl-lang:latest` | Publicly resolvable single-platform Linux/amd64 manifest |
| `ghcr.io/lsalihi/cdl-lang:0.5` | Publicly resolvable single-platform Linux/amd64 manifest |
| `ghcr.io/lsalihi/cdl-lang:v0.6.0` | Manifest not found; documentation previously advertised it but its publication was not verifiable |
| `ghcr.io/pulsaride/cdl-lang:latest` | Manifest not found at audit time |

The package API could not be inspected because the available GitHub token lacks `read:packages`; therefore package visibility settings and complete tag inventory require an organization/package administrator. No Docker Hub namespace was found in tracked configuration or documentation.

The new workflow prepares Linux/amd64 and Linux/arm64 manifests. This does **not** preserve arm64 from an old publication because the audited old tags were amd64-only; it adds arm64 for future organizational tags.

## 5. Container migration plan

1. Create/claim the `cdl-lang` GHCR package in organization `pulsaride` with public visibility only if approved.
2. Enable the repository workflow to write packages and confirm package-to-repository linkage.
3. Reproduce approved existing tags under `ghcr.io/pulsaride/cdl-lang` from immutable commit sources. Start with a new untrusted/migration tag or a digest-level copy to verify permissions.
4. Publish each release tag once; never overwrite an existing version tag without explicit approval.
5. Move `latest` only after the versioned organizational image has passed smoke tests.
6. Preserve supported architectures and add Linux/arm64 only through a clearly identified new build.
7. Announce the old namespace as a compatibility alias/documentation redirect if GitHub package transfer does not provide one.
8. After an approved retention period, decide separately whether to retire old tags. Do not delete packages as part of migration preparation.

The workflow remains a proposal until tested in GitHub Actions. Local preparation does not authenticate or publish anything.

## 6. Publishing permissions checklist

Repository API observations:

- Repository: public.
- Default branch: `master`.
- GitHub Actions: enabled, with all actions allowed.
- Repository workflow-token default: read-only.
- The package workflow explicitly grants `packages: write`.
- `github-pages` environment exists.
- No repository environment for container release approval was found.

Administrator checks required before first publication:

- [ ] Organization permits GitHub Actions to publish packages.
- [ ] Repository is allowed to create and write organization GHCR packages.
- [ ] `GITHUB_TOKEN` workflow permission and package linkage are accepted.
- [ ] A protected `github-pages` publishing path remains functional.
- [ ] A protected `release`/`container-publish` environment is added if human approval is required.
- [ ] Organization SSO or package policy does not block `GITHUB_TOKEN`.
- [ ] GHCR package visibility is confirmed public/private.
- [ ] Tag immutability/approval rules are documented.
- [ ] Provenance/attestation requirements are decided before enabling attestations.
- [ ] Cross-repository package administration permissions are explicit.

## 7. Backward compatibility assessment

Preserved unchanged:

- Java package names (`com.cdl`).
- Gradle group/version/artifact name (`com.cdl`, `0.7.0`, `cdl`).
- CLI names and public invocation surfaces.
- VS Code publisher, extension name and command IDs (`pulsaride`, `cdl-vscode`, `cdl.*`).
- Apache-2.0 licensing.
- Original authorship, attribution, Git history and historical changelog.
- Existing legacy image namespace remains untouched.

Repository URLs and distribution documentation intentionally changed. Maven coordinates were not changed because no organization migration decision is required for the current non-publishing Gradle configuration. VS Code package identifiers were not changed because doing so would migrate the Marketplace identity and is outside this transfer fix.

## 8. Approval boundary

Stop for human approval before:

- Publishing any organizational GHCR image or moving `latest`.
- Re-tagging or overwriting an existing immutable version tag.
- Deleting or retiring legacy images.
- Changing Java/Maven coordinates, VS Code publisher/extension identity, or other public package IDs.
- Changing license, copyright, authorship or Git history.
