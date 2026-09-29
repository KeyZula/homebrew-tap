# KeyZula Homebrew Tap

Homebrew tap for the [KeyZula](https://keyzula.com) command-line tool: vault access
(`login`, `list`, `get`), secrets for scripts and CI (`read`, `run`, `inject` with `kz://` references)
and a built-in SSH agent that serves the SSH keys stored in your KeyZula vault.

## Install

```sh
brew install keyzula/tap/keyzula
```

Supported: macOS (Apple Silicon and Intel) and Linux (x86_64 and arm64). The binaries are
self-contained; Node.js is not required.

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
KeyZula'nın kaynak kodu açık değildir; bu depoda yalnızca formül ve derlenmiş ikililer bulunur.
İkililer KeyZula (Netlen İnternet Hizmetleri Ltd. Şti.) tarafından derlenip yayımlanır.
Ayrıntılar: https://keyzula.com
