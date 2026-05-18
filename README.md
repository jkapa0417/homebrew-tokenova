# Homebrew Tokenova

Homebrew tap for [Tokenova](https://github.com/jkapa0417/tokenova), a
menubar/tray token-usage tracker for Claude Code / Codex CLI / OpenCode.

## Install

```sh
brew install --cask jkapa0417/tokenova/tokenova
```

Or tap once and then install by short name:

```sh
brew tap jkapa0417/tokenova
brew install --cask tokenova
```

## How this tap is maintained

`Casks/tokenova.rb` is generated and bumped automatically by the
[tokenova release workflow](https://github.com/jkapa0417/tokenova/blob/main/.github/workflows/release.yml)
whenever a stable tag (`v*` without a `-rc` / `-beta` suffix) is
pushed. The job:

1. Waits for the macOS DMG asset to land on the GitHub Release.
2. Downloads the DMG and computes its sha256.
3. Rewrites `version` / `sha256` in `Casks/tokenova.rb` (or creates the
   file on first run).
4. Commits the change here via a fine-grained personal access token
   (`HOMEBREW_TAP_TOKEN`) stored as a secret on the tokenova repo.

Manual edits should be limited to layout/metadata fields (`name`,
`desc`, `homepage`, `zap` paths). The version + sha256 lines will be
overwritten on the next stable release.

Pre-release tags (`v0.1.0-rc.7`, `v0.2.0-beta.1`, …) are intentionally
skipped — Homebrew users get only stable builds.

## App not yet released

This tap was created before the first stable release of Tokenova.
Until `v0.1.0` ships and the auto-bump workflow runs, `brew install
--cask tokenova` will fail because `Casks/tokenova.rb` does not exist
yet. If you want to try Tokenova in the meantime, grab a build from
the [GitHub Releases page](https://github.com/jkapa0417/tokenova/releases).
