# Neovim Keybindings

This document contains all keybindings configured in my Neovim setup, organized by category.

## General

| Keybinding | Description |
|------------|-------------|
| `<Space>` | Leader key |
| `<leader>pv` | Open Netrw file explorer (Ex) |

## Text Manipulation

| Keybinding | Description |
|------------|-------------|
| `J` (visual mode) | Move selected text down one line |
| `K` (visual mode) | Move selected text up one line |
| `J` (normal mode) | Join line below with current line (keeps cursor position) |
| `<C-d>` | Scroll half-page down and center cursor in screen |
| `<C-u>` | Scroll half-page up and center cursor in screen |
| `n` | Go to next search match and center on screen |
| `N` | Go to previous search match and center on screen |
| `=ap` | Format a paragraph while preserving cursor position |
| `<leader>p` (visual) | Paste over selection without copying selected text |

## Telescope

| Keybinding | Description |
|------------|-------------|
| `<leader>pf` | Find files in the current working directory |
| `<C-p>` | Find files tracked by git |
| `<leader>ps` | Project search (grep) with a prompt |

## Git

| Keybinding | Description |
|------------|-------------|
| `<leader>gs` | Open Git status (vim-fugitive) |

### Within Fugitive Status Window

| Keybinding | Description |
|------------|-------------|
| `s` | Stage file/hunk under cursor |
| `u` | Unstage file/hunk under cursor |
| `=` | Toggle inline diff of file under cursor |
| `-` | Toggle stage/unstage of file under cursor |
| `cc` | Create a commit |
| `ca` | Amend previous commit |
| `dv` | View diff of file under cursor in vertical split |
| `ds` | View diff of file under cursor in horizontal split |
| `dd` | View diff of file under cursor |
| `?` | Show help menu |
| `p` | Run `git push` |
| `P` | Run `git pull` |
| `o` | Open file under cursor |
| `gO` | Open file under cursor in a new tab |
| `X` | Discard changes in file under cursor (with confirmation) |

### Additional Git Commands

| Command | Description |
|---------|-------------|
| `:Git blame` | Show git blame for current file |
| `:Git log` | Show git log |
| `:Git difftool` | Open git diff tool |
| `:Git mergetool` | Open git merge tool |
| `:Gclog` | Show commit history for current file |
| `:Gread` | Read the current file from Git (git checkout) |
| `:Gwrite` | Write the current file to Git (git add) |

## LSP (Language Server Protocol)

These keybindings are active when a language server is attached to the current buffer.

| Keybinding | Description |
|------------|-------------|
| `K` | Show hover documentation for symbol under cursor |
| `gd` | Go to definition of symbol under cursor |
| `gD` | Go to declaration of symbol under cursor |
| `gi` | Go to implementation of symbol under cursor |
| `go` | Go to type definition of symbol under cursor |
| `gr` | Show references to symbol under cursor |
| `gs` | Show signature help |
| `<F2>` | Rename symbol under cursor |
| `<F3>` | Format code in current buffer or visual selection |
| `<F4>` | Show code actions for current context |

## Autocompletion

| Keybinding | Description |
|------------|-------------|
| `<C-n>` | Select next item in completion menu |
| `<C-p>` | Select previous item in completion menu |
| `<CR>` (Enter) | Confirm selected completion item |
| `<C-Space>` | Trigger completion menu |
| `<C-d>` | Scroll down in completion documentation |
| `<C-u>` | Scroll up in completion documentation |

## Undotree

| Keybinding | Description |
|------------|-------------|
| `<leader>u` | Toggle Undotree panel |

## Harpoon

| Keybinding | Description |
|------------|-------------|
| `<leader>a` | Add current file to harpoon |
| `<C-e>` | Toggle harpoon quick menu |
| `<C-h>` | Navigate to harpoon file 1 |
| `<C-j>` | Navigate to harpoon file 2 |
| `<C-k>` | Navigate to harpoon file 3 |
| `<C-l>` | Navigate to harpoon file 4 |

## Colors/Theme

The default colorscheme is `rose-pine` with a transparent background. You can change it temporarily using:
