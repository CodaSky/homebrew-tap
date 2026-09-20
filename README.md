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

The CLI uses the OAuth Device Flow and stores short-lived credentials in the
local credential store.

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

For local development, set `CODAURL_API_BASE` when using a non-production API.

Show all available commands and flags:

```bash
codaurl --help
codaurl <command> --help
```
