# 🍬 Manis
[![Lint](https://github.com/daryawritescode/manis/actions/workflows/lint.yml/badge.svg?branch=dev)](https://github.com/daryawritescode/manis/actions/workflows/lint.yml)
[![Test](https://github.com/daryawritescode/manis/actions/workflows/test.yml/badge.svg?branch=dev)](https://github.com/daryawritescode/manis/actions/workflows/test.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Manis is a focused collection of shell scripts, aliases, and functions designed to unify and accelerate terminal workflows. It prioritizes portability and immediate utility over complex configuration.

## 🧱 Components

### Core Scripts

| Script    | Utility                                                                                          |
| :-------- | :----------------------------------------------------------------------------------------------- |
| `heavy`   | **Disk Analysis.** Fast identification of directories exceeding 1GB.                             |
| `sysinfo` | **Environment Summary.** A consolidated view of OS, network status, and memory.                  |

### Aliases & Functions

A library of optimized shortcuts for Git, Docker, and filesystem navigation, designed to reduce repetitive keystrokes.

*Complete definitions are available in [lib/aliases.sh](lib/aliases.sh).*

---

## ⚙️ Optional Requirements

- `sysinfo` requires curl for network checks

## 🚀 Installation

```bash
make install
```

`make` will install the aliases to `~/.local/lib/manis` and the commands to `~/.local/bin`. Once installed source the alias library into your shell config.

```bash
# Manis Toolset
[[ -f ~/.local/lib/manis/aliases.sh ]] && source ~/.local/lib/manis/aliases.sh
```

## About the Name

**Manis** is the Malay word for **"sweet"** and it fit the idea of a "sweet" set of tools.

## 📄 License

Licensed under the [MIT License](LICENSE).
