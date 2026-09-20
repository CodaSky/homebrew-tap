# CodaURL CLI Homebrew Tap

Install the CodaURL command-line client with Homebrew.

## Install

```bash
brew install CodaSky/homebrew-tap/codaurl
```

## Authenticate

```bash
codaurl login
```

The CLI stores the login token in the local credential store. For automation,
you can provide a token through `CODAURL_TOKEN`.

## Common commands

```bash
codaurl whoami --json
codaurl list --json
codaurl get <id> --json
codaurl check <id> --json
codaurl add --url https://example.com --json
codaurl logout
```

Use `--json` when another tool or agent will parse the output. JSON output is
written to stdout; diagnostics are written to stderr.

## Configuration

```bash
export CODAURL_TOKEN="your-token"
export CODAURL_API_BASE="https://api.codaurl.com"
```

Show all available commands and flags:

```bash
codaurl --help
codaurl <command> --help
```
