# Contributing

Thank you for being interested in contributing to Asset Relay! Contributions of any size are welcome — code, bug reports, docs, or just feedback.

## Bug reports and suggestions

Open a [new issue](https://github.com/nerrowes/Asset-Relay/issues) in this repository. Please include:

- What you were doing when the problem happened
- The version of the plugin and the CLI you're using
- Any console output from Studio or the CLI (redact your cookie!)

## Requirements

There are a few requirements when developing locally.

### Plugin

1. **[Aftman](https://github.com/LPGhatguy/aftman)** — toolchain manager (installs Rojo + Selene).
2. Plugin is edited with **[PluginDebugService](https://create.roblox.com/docs/studio/plugins)** on, so make sure to enable that if you plan on editing the plugin.
3. Run `aftman install`, then `rojo build plugin --output AssetRelay.rbxm`, or `rojo serve` with the dev project for live sync.

### CLI (Go side)

1. **[Go](https://go.dev/)** 1.23+
2. Build with `go build ./cmd/assetrelay`

## Code

- Keep changes consistent with the existing structure (`plugin/src` for Luau, `internal/` for Go).
- Run `selene` over Luau changes if you add new files.
- Update `CHANGELOG.md` for user-facing changes.

## Thank you

Big thanks to kartFr and the original Asset-Reuploader contributors — this project exists because of their work.
