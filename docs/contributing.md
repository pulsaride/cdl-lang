# Contributing

## Development setup

```bash
git clone https://github.com/pulsaride/cdl-lang.git
cd cdl-lang
./gradlew clean build
./test_ctk.sh
```

## Documentation

Documentation is built with Material for MkDocs:

```bash
python3 -m venv .venv
. .venv/bin/activate
pip install mkdocs mkdocs-material
mkdocs build --strict
```

Documentation changes must:

- Label current, limited, experimental and planned capabilities accurately.
- Preserve existing attribution and licensing.
- Use relative links within the documentation tree where practical.
- Use `pulsaride/cdl-lang` for repository links.
- Avoid organization-container commands until a published image is verified.
- Validate examples against the documented compiler version.

## Governance

Language or semantic-contract changes use the CEP process described in the repository [governance documents](https://github.com/pulsaride/cdl-lang/tree/master/governance/CEPs). Do not publish package images, change package identifiers or modify licensing without the applicable approval.
