# Changelog

## 1.0.0 — October 2026

Initial release of Asset Relay.

- Based on [Asset-Reuploader](https://github.com/kartFr/Asset-Reuploader) 1.5.0 by kartFr (GPL-3.0)
- Rebranded: plugin, CLI, module paths and build outputs now use `Asset Relay` / `assetrelay`
- Removed update checks against the original creator's plugin asset
- Original update-check logic and Patreon/Discord links removed

All feature work from the original project carries over:

- Animations, audio and mesh re-uploading
- Fixed-window rate limiting for uploads
- Cookie-based authentication with automatic cookie refresh
- Retry logic with configurable attempts and deadtime
- Asset ID filter and in-place ID replacement
