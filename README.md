# 🍬 Manis
[![Lint](https://github.com/daryawritescode/manis/actions/workflows/lint.yml/badge.svg?branch=dev)](https://github.com/daryawritescode/manis/actions/workflows/lint.yml)
[![Test](https://github.com/daryawritescode/manis/actions/workflows/test.yml/badge.svg?branch=dev)](https://github.com/daryawritescode/manis/actions/workflows/test.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

**Manis** (*Malay for "sweet"*) is a focused suite of terminal utilities designed for speed, portability, and readability. It provides critical system insights and disk analysis with a zero-configuration ethos.

---

## 🛠️ Installation

### 1. Build and Install
Manis uses a standard `Makefile` to deploy binaries and libraries to your local environment (defaults to `~/.local`).

```bash
git clone https://github.com/daryawritescode/manis.git
cd manis
make install
```

### 2. Shell Integration
To enable the high-productivity aliases and helpers, source the Manis library in your shell profile (`.zshrc`, `.bashrc`, etc.):

```bash
# Sourcing Manis productivity tools
[[ -f ~/.local/lib/manis/aliases.sh ]] && source ~/.local/lib/manis/aliases.sh
```

---

## 🧱 Component Reference

### `sysinfo`
A high-signal system diagnostic tool providing a consolidated view of host metadata, hardware specs, and network status.
- **Features**: macOS/Linux portability, IPv4/IPv6 detection, real-time memory calculation (using `vm_stat` on macOS).
- **Usage**: Simply run `sysinfo` or the `info` alias.

### `heavy`
A high-speed disk usage utility for identifying storage bottlenecks.
- **Features**: Filters for directories exceeding 1GB, human-readable sorting.
- **Usage**: `heavy [path]` or the `chonk`/`bigs` aliases.

### Productivity Aliases
Manis includes a curated set of aliases for:
- **Git**: `gst` (status), `gco` (checkout), `gl` (log graph).
- **Docker**: `dcu` (compose up), `dlogs` (logs), `dprune` (clean).
- **Navigation**: `take` (mkdir + cd), `..` (parent), `ll` (formatted ls).

---

## 🧪 Development & CI/CD

### Testing
Manis utilizes the **[BATS-core](https://github.com/bats-core/bats-core)** framework for functional testing. Tests are located in the `tests/` directory.

To run tests locally:
```bash
bats tests/
```

### CI/CD
Automated checks are executed via GitHub Actions on every push to the `dev` branch:
- **Linting**: Enforced via `shellcheck` for POSIX and Bash compliance.
- **Functional Check**: Automated `bats` execution on `ubuntu-latest` and `macos-latest`.

---

## 🖋️ Colophon

The name **Manis** refers to the "sweet spot" in developer experience—where tools are powerful enough to be useful, but quiet enough to stay out of your way. While it sounds like the Latin *manus* (hands), the phonetic similarity is a welcomed "happy accident," as these tools are designed to be fundamentally "handy."

## 📄 License
Licensed under the [MIT License](LICENSE).
