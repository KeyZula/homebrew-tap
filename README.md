# KeyZula Homebrew Tap

Homebrew tap for the [KeyZula](https://keyzula.com) command-line tool: vault access
(`login`, `list`, `get`), secrets for scripts and CI (`read`, `run`, `inject` with `kz://` references),
a built-in SSH agent that serves the SSH keys stored in your KeyZula vault, and an MCP server
(`keyzula mcp`) that lets AI assistants use secrets without seeing them.

## Install

```sh
brew install keyzula/tap/keyzula
```

Supported: macOS (Apple Silicon and Intel) and Linux (x86_64 and arm64). The binaries are
self-contained; Node.js is not required.

Windows (x64): download `keyzula-<version>-windows-x64.zip` from the
[latest release](https://github.com/KeyZula/homebrew-tap/releases/latest); it contains a single `keyzula.exe`.

## Update

```sh
brew update
brew upgrade keyzula
```

## Getting started

```sh
keyzula login you@example.com
keyzula ssh-agent --daemon      # start the SSH agent in the background
keyzula ssh add-config          # prints the SSH_AUTH_SOCK / ~/.ssh/config snippet
claude mcp add keyzula -- keyzula mcp   # connect Claude Code (setup for other assistants: keyzula.com/en/ai/)
keyzula --help
```

Documentation: https://keyzula.com

## About this repository

This repository only contains the Homebrew formula and the release binaries. The KeyZula source
code is not public; the binaries are built and published by KeyZula
(Netlen İnternet Hizmetleri Ltd. Şti.). Each release lists SHA-256 checksums (`SHA256SUMS`),
which Homebrew verifies on install.

---

## Türkçe

KeyZula komut satırı aracı için Homebrew deposu.

```sh
brew install keyzula/tap/keyzula   # kurulum
brew upgrade keyzula               # güncelleme
```

macOS (Apple Silicon ve Intel) ve Linux (x86_64, arm64) desteklenir; Node.js gerekmez.
Windows (x64) için son yayındaki `keyzula-<sürüm>-windows-x64.zip` dosyasını indirin.
KeyZula'nın kaynak kodu açık değildir; bu depoda yalnızca formül ve derlenmiş ikililer bulunur.
İkililer KeyZula (Netlen İnternet Hizmetleri Ltd. Şti.) tarafından derlenip yayımlanır.
Ayrıntılar: https://keyzula.com
