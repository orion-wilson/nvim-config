# nvim config

Personal Neovim configuration.

## Dependencies (Ubuntu)

### System packages

```sh
sudo apt update
sudo apt install -y \
  git \
  build-essential \
  nodejs \
  npm \
  ripgrep \
  fd-find \
  fzf
```

> On Ubuntu, `fd` is installed as `fdfind`. Symlink it if needed:
> ```sh
> sudo ln -s $(which fdfind) /usr/local/bin/fd
> ```

### lazygit

```sh
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm lazygit lazygit.tar.gz
```

### Rust toolchain

Required for `rust_analyzer` and `rustfmt`:

```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

### prettier

```sh
npm install -g prettier
```

### LSPs and formatters (via Mason)

The following are installed automatically by Mason on first launch:

- `lua_ls` — Lua language server
- `rust_analyzer` — Rust language server
- `stylua` — Lua formatter

### Tree-sitter parsers

Compiled automatically on first launch. Requires `gcc` (included in `build-essential`).

Parsers: `lua`, `rust`, `javascript`, `typescript`, `json`, `toml`, `bash`, `markdown`

## Flash (jump anywhere on screen)

Press `s` in normal mode, type 2 characters of where you want to jump, then press the letter label that appears on your target. You land there instantly.

Example: to jump to a variable named `config`, press `s`, type `co`, then press whatever label appears next to it.

`S` works the same way but selects a treesitter node at the target location instead of just moving the cursor.
