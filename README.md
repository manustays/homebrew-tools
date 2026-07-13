# manustays/homebrew-tools

Homebrew tap for [@manustays](https://github.com/manustays) apps.

## Install

```sh
brew install --cask manustays/tools/quay
```

Or tap once, then install by short name:

```sh
brew tap manustays/tools
brew install --cask quay
```

## Apps

| App | Type | Command |
|-----|------|---------|
| [Quay](https://github.com/manustays/quay) — menubar launcher for CLI coding agents | Cask | `brew install --cask manustays/tools/quay` |

## Notes

- **Quay** ships as an unsigned universal `.dmg`. The cask strips the macOS Gatekeeper quarantine flag on install, so it opens without the "damaged / cannot be verified" prompt.
- Updates are handled in-app (Tauri updater), so `auto_updates true` is set and Homebrew won't clobber the in-app updater.

## Uninstall

```sh
brew uninstall --cask quay          # remove the app
brew uninstall --zap --cask quay    # also remove app data / preferences
```
