<div align="center">
    <img src="assets/PluginIcon.png" alt="Icon" width="128"/>
    <br><br>
    <img src="assets/AssetRelayText.png" alt="Asset Relay" />
    <br><br>
    <a href="https://www.gnu.org/licenses/gpl-3.0"><img src="https://img.shields.io/badge/license-GPL--3.0-yellow" alt="License: GPL-3.0" /></a>
</div>

## Asset Relay

A Roblox Studio plugin + Go CLI that re-uploads assets you use into your own account or group.

Roblox doesn't let you use assets owned by other accounts — Asset Relay finds every asset ID
referenced by your place (animations, audio, meshes) and re-uploads them under your own
ownership, then swaps the IDs in your project so everything just works.

> **Credit where it's due:** Asset Relay is a fork/continuation of
> [Asset-Reuploader](https://github.com/kartFr/Asset-Reuploader) by **kartFr**, licensed under GPL-3.0.

## How it works

1. Run the Asset Relay executable (or host it yourself).
2. In Roblox Studio, open your place and the Asset Relay plugin.
3. Plug in the port from `config.ini` (default `38073`) and authenticate.
4. Pick a tab (Animation / Sound / Mesh), then **Reupload** — the tool re-uploads each asset
   and rewrites the IDs in your place automatically.

## Currently supported assets

- Animations
- Audio
- Meshes

## Project structure

| Path               | What it is                                                      |
| ------------------ | --------------------------------------------------------------- |
| `plugin/`          | Roblox Studio plugin (Luau, built with **Rojo**)                 |
| `cmd/github.com/nerrowes/Asset-Relay/`  | CLI entry point (Go)                                            |
| `internal/`        | Go backend: Roblox API clients, publishing, retry, rate limiting |
| `assets/`          | Icons and images used by the plugin/README                      |
| `plugin_tests/`    | Test fixtures loaded in Studio for development                  |
| `config.ini`       | Runtime configuration (port, cookie file)                       |

## Building

### Plugin

Requires [Aftman](https://github.com/LPGhatguy/aftman) or Rojo directly:

```sh
rojo build plugin --output AssetRelay.rbxm
```

Then import `AssetRelay.rbxm` in Studio (right-click in the Explorer → *Insert from file*).

### CLI

Requires [Go](https://go.dev/) 1.23+:

```sh
go build -o AssetRelay ./cmd/assetrelay
```

Run it next to `config.ini`, then use the plugin to connect.

## Configuration

`config.ini`:

```ini
port=38073
cookie_file=cookie.txt
```

- **port** — the local port the CLI listens on; must match the port set in the plugin's Settings tab.
- **cookie_file** — file where your Roblox `.ROBLOSECURITY` cookie is stored locally.

## Contributing

Contributions are welcome! See [CONTRIBUTING.md](CONTRIBUTING.md). Open an issue or PR in this repo.

## License

Copyright (c) 2024, kartFr (original Asset-Reuploader)

Copyright (c) 2025, Asset Relay contributors

Licensed under the [GPL-3.0](LICENSE) license. See [LICENSE](LICENSE) for the full text.
