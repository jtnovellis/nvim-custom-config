# Neovim Keymaps Reference — JTNOVELLIS

> Leader key: `<Space>`

---

## Table of Contents

1. [Vim Fundamentals — Modes](#1-vim-fundamentals--modes)
2. [Navigation — Moving Fast](#2-navigation--moving-fast)
3. [Editing — Insert, Delete, Change](#3-editing--insert-delete-change)
4. [Selection — Visual Mode](#4-selection--visual-mode)
5. [Copy, Paste, Registers](#5-copy-paste-registers)
6. [Search and Replace](#6-search-and-replace)
7. [Text Objects — Surgical Editing](#7-text-objects--surgical-editing)
8. [Multi-Cursor & Repeat](#8-multi-cursor--repeat)
9. [File Navigation](#9-file-navigation)
10. [Buffers & Windows](#10-buffers--windows)
11. [LSP — Code Intelligence](#11-lsp--code-intelligence)
12. [Completions](#12-completions)
13. [Formatting & Linting](#13-formatting--linting)
14. [Search Across Files (Telescope/Snacks)](#14-search-across-files)
15. [Git](#15-git)
16. [Debugging (DAP)](#16-debugging-dap)
17. [Testing (Neotest)](#17-testing-neotest)
18. [Flutter / Dart](#18-flutter--dart)
19. [Python](#19-python)
20. [Diagnostics & Trouble](#20-diagnostics--trouble)
21. [Flash — Jump Anywhere](#21-flash--jump-anywhere)
22. [Terminal](#22-terminal)
23. [Misc & UI](#23-misc--ui)
24. [Vim Power Combos](#24-vim-power-combos)

---

## 1. Vim Fundamentals — Modes

| Key | Action |
|-----|--------|
| `i` | Insert mode (before cursor) |
| `a` | Insert mode (after cursor) |
| `I` | Insert at beginning of line |
| `A` | Insert at end of line |
| `o` | New line below and insert |
| `O` | New line above and insert |
| `v` | Visual mode (character) |
| `V` | Visual mode (line) |
| `<C-v>` | Visual block mode (column select) |
| `R` | Replace mode (overwrite) |
| `<Esc>` / `jk` | Return to Normal mode |
| `:` | Command mode |

---

## 2. Navigation — Moving Fast

### Basic Movement

| Key | Action |
|-----|--------|
| `h` `j` `k` `l` | Left, Down, Up, Right |
| `w` | Next word start |
| `b` | Previous word start |
| `e` | Next word end |
| `W` `B` `E` | Same but for WORDS (whitespace-delimited) |
| `0` | Start of line |
| `^` | First non-blank character |
| `$` | End of line |
| `_` | First non-blank (like `^`) |

### Line Navigation

| Key | Action |
|-----|--------|
| `f{char}` | Jump to next `{char}` on line |
| `F{char}` | Jump to previous `{char}` on line |
| `t{char}` | Jump to just before next `{char}` |
| `T{char}` | Jump to just after previous `{char}` |
| `;` | Repeat last `f`/`F`/`t`/`T` forward |
| `,` | Repeat last `f`/`F`/`t`/`T` backward |

### Screen & File Navigation

| Key | Action |
|-----|--------|
| `gg` | Go to first line |
| `G` | Go to last line |
| `{number}G` | Go to line number |
| `{number}gg` | Go to line number |
| `<C-u>` | Scroll half page up |
| `<C-d>` | Scroll half page down |
| `<C-b>` | Scroll full page up |
| `<C-f>` | Scroll full page down |
| `H` | Move cursor to top of screen |
| `M` | Move cursor to middle of screen |
| `L` | Move cursor to bottom of screen |
| `zz` | Center screen on cursor |
| `zt` | Scroll cursor to top |
| `zb` | Scroll cursor to bottom |
| `%` | Jump to matching bracket `()` `{}` `[]` |
| `{` | Jump to previous empty line (paragraph up) |
| `}` | Jump to next empty line (paragraph down) |

### Jump List

| Key | Action |
|-----|--------|
| `<C-o>` | Jump back (previous location) |
| `<C-i>` | Jump forward (next location) |
| `''` | Jump to last position before jump |
| `gi` | Go to last insert position and enter insert |

---

## 3. Editing — Insert, Delete, Change

### Delete (cuts to register)

| Key | Action |
|-----|--------|
| `x` | Delete character under cursor |
| `X` | Delete character before cursor |
| `dd` | Delete entire line |
| `D` | Delete from cursor to end of line |
| `dw` | Delete word forward |
| `db` | Delete word backward |
| `d$` | Delete to end of line |
| `d0` | Delete to start of line |
| `dG` | Delete to end of file |
| `dgg` | Delete to start of file |
| `dt{char}` | Delete until `{char}` |
| `df{char}` | Delete through `{char}` |

### Change (delete + insert mode)

| Key | Action |
|-----|--------|
| `cc` | Change entire line |
| `C` | Change from cursor to end of line |
| `cw` | Change word forward |
| `cb` | Change word backward |
| `ci"` | Change inside quotes |
| `ci(` | Change inside parentheses |
| `ci{` | Change inside braces |
| `ct{char}` | Change until `{char}` |
| `s` | Delete char and enter insert (substitute) |
| `S` | Delete line and enter insert |

### Undo / Redo

| Key | Action |
|-----|--------|
| `u` | Undo |
| `<C-r>` | Redo |
| `.` | Repeat last edit command |
| `<leader>su` | Undo tree (visual undo history) |

### Indentation

| Key | Action |
|-----|--------|
| `>>` | Indent line right |
| `<<` | Indent line left |
| `>` (visual) | Indent selection right |
| `<` (visual) | Indent selection left |
| `==` | Auto-indent line |
| `=` (visual) | Auto-indent selection |
| `gg=G` | Auto-indent entire file |

### Join & Break Lines

| Key | Action |
|-----|--------|
| `J` | Join current line with next |
| `gJ` | Join without adding space |
| `o` / `O` | Open new line below / above |
| `]<Space>` | Add empty line below cursor |
| `[<Space>` | Add empty line above cursor |

### Case

| Key | Action |
|-----|--------|
| `~` | Toggle case of character |
| `gUU` | Uppercase entire line |
| `guu` | Lowercase entire line |
| `gU{motion}` | Uppercase with motion (e.g. `gUw`) |
| `gu{motion}` | Lowercase with motion (e.g. `guw`) |

---

## 4. Selection — Visual Mode

| Key | Action |
|-----|--------|
| `v` | Character-wise visual |
| `V` | Line-wise visual |
| `<C-v>` | Block visual (column select) |
| `gv` | Re-select last visual selection |
| `o` (in visual) | Jump to other end of selection |
| `vit` | Select inside HTML/JSX tag |
| `vat` | Select around HTML/JSX tag |
| `vi"` | Select inside double quotes |
| `vi'` | Select inside single quotes |
| `` vi` `` | Select inside backticks |
| `vi(` / `vib` | Select inside parentheses |
| `vi{` / `viB` | Select inside braces |
| `vi[` | Select inside brackets |
| `vip` | Select inside paragraph |
| `viw` | Select inside word |
| `V{motion}` | Select lines with motion |
| `<C-Space>` | Treesitter incremental selection (expand) |

---

## 5. Copy, Paste, Registers

### Basic

| Key | Action |
|-----|--------|
| `yy` | Yank (copy) entire line |
| `Y` | Yank from cursor to end of line |
| `yw` | Yank word |
| `y$` | Yank to end of line |
| `y{motion}` | Yank with any motion |
| `p` | Paste after cursor |
| `P` | Paste before cursor |
| `]p` | Paste and auto-indent |

### Registers

| Key | Action |
|-----|--------|
| `"ay` | Yank into register `a` |
| `"ap` | Paste from register `a` |
| `"+y` | Yank to system clipboard |
| `"+p` | Paste from system clipboard |
| `"0p` | Paste last yank (not deleted text) |
| `"_d` | Delete to black hole (don't overwrite register) |
| `<leader>s"` | Browse registers |

**Pro tip:** When you delete with `d`, it overwrites your yank register. Use `"0p` to paste what you last yanked, or `"_d` to delete without overwriting.

### Yank History / Clipboard (yanky.nvim)

| Key | Action |
|-----|--------|
| `<leader>p` | Open yank history picker (browse & paste) |
| `p` | Paste after cursor (enhanced by yanky) |
| `P` | Paste before cursor (enhanced by yanky) |
| `<C-p>` | Cycle to previous yank (after pasting) |
| `<C-n>` | Cycle to next yank (after pasting) |

**Workflow:** Yank multiple things throughout your session, then press `<leader>p` to browse your full clipboard history and pick what to paste. Or paste with `p` and immediately cycle through older yanks with `<C-p>` / `<C-n>`.

### Visual Mode Paste

| Key | Action |
|-----|--------|
| `v{select}p` | Replace selection with register (overwrites register) |
| `v{select}P` | Replace selection without overwriting register |

---

## 6. Search and Replace

### In-File Search

| Key | Action |
|-----|--------|
| `/pattern` | Search forward |
| `?pattern` | Search backward |
| `n` | Next match |
| `N` | Previous match |
| `*` | Search forward for word under cursor |
| `#` | Search backward for word under cursor |
| `<Esc>` | Clear search highlight (LazyVim) |

### Search and Replace

| Key | Action |
|-----|--------|
| `:%s/old/new/g` | Replace all in file |
| `:%s/old/new/gc` | Replace all with confirmation |
| `:s/old/new/g` | Replace all on current line |
| `:%s/old/new/gi` | Replace all case-insensitive |
| `<leader>sr` | Search and Replace (Spectre) |

### Replace Tricks

| Pattern | Action |
|---------|--------|
| `:%s/\<word\>/new/g` | Replace whole word only |
| `:%s/pattern//gn` | Count matches (don't replace) |
| `:5,20s/old/new/g` | Replace in line range 5-20 |
| `:'<,'>s/old/new/g` | Replace in visual selection |
| `:%s/$/;/` | Append `;` to every line |
| `:%s/^\s\+//` | Remove leading whitespace |

---

## 7. Text Objects — Surgical Editing

Text objects work with `d` (delete), `c` (change), `y` (yank), `v` (select).

Format: `{operator}{a/i}{object}`
- `a` = around (includes delimiters)
- `i` = inside (excludes delimiters)

| Text Object | Inside `i` | Around `a` | Description |
|-------------|-----------|-----------|-------------|
| `w` | `ciw` | `caw` | word |
| `W` | `ciW` | `caW` | WORD (whitespace-delimited) |
| `s` | `cis` | `cas` | sentence |
| `p` | `cip` | `cap` | paragraph |
| `"` | `ci"` | `ca"` | double quotes |
| `'` | `ci'` | `ca'` | single quotes |
| `` ` `` | `` ci` `` | `` ca` `` | backticks |
| `(` / `)` / `b` | `ci(` | `ca(` | parentheses |
| `{` / `}` / `B` | `ci{` | `ca{` | curly braces |
| `[` / `]` | `ci[` | `ca[` | square brackets |
| `<` / `>` | `ci<` | `ca<` | angle brackets |
| `t` | `cit` | `cat` | HTML/JSX tag content |

### Common Combos for Web Dev

| Combo | Action |
|-------|--------|
| `cit` | Change content inside JSX/HTML tag |
| `dat` | Delete entire HTML/JSX tag (with element) |
| `ci"` | Change string content |
| `ca"` | Change string including quotes |
| `di{` | Delete inside `{ }` (JSX expression) |
| `ci(` | Change function arguments |
| `yit` | Copy tag content |
| `vat` | Select entire JSX element |

### Surround (mini.surround)

Add, delete, or replace surrounding pairs (quotes, brackets, tags).

| Key | Action | Example |
|-----|--------|---------|
| `gsa{motion}{char}` | Add surrounding | `gsaiw"` → wrap word in `"` |
| `gsd{char}` | Delete surrounding | `gsd"` → remove surrounding `"` |
| `gsr{old}{new}` | Replace surrounding | `gsr"'` → change `"` to `'` |
| `gsf{char}` | Find surrounding (right) | |
| `gsF{char}` | Find surrounding (left) | |
| `gsh{char}` | Highlight surrounding | |

**Common surround combos:**

| Combo | Result |
|-------|--------|
| `gsaiw"` | `word` → `"word"` |
| `gsaiw(` | `word` → `( word )` |
| `gsaiw)` | `word` → `(word)` (no spaces) |
| `gsa2iw<div>` | `some text` → `<div>some text</div>` |
| `gsd"` | `"word"` → `word` |
| `gsr"'` | `"word"` → `'word'` |
| `gsr({` | `(args)` → `{args}` |

---

## 8. Multi-Cursor & Repeat

### The Dot Command (Most Powerful)

| Key | Action |
|-----|--------|
| `.` | Repeat last change |
| `n.` | Find next match and repeat change |
| `ciw` + new word + `Esc` then `n.n.n.` | Find and replace one by one |

### Macros

| Key | Action |
|-----|--------|
| `q{letter}` | Start recording macro into register |
| `q` | Stop recording |
| `@{letter}` | Play macro |
| `@@` | Repeat last macro |
| `10@a` | Play macro `a` 10 times |
| (visual) `:norm @a` | Run macro on each selected line |

### Block Editing (Multi-Cursor Alternative)

1. `<C-v>` — Enter block visual
2. Select column with `j`/`k`
3. `I` to insert at beginning, or `A` to append
4. Type your text
5. `<Esc>` — Applied to all lines

---

## 9. File Navigation

### Oil (File Explorer)

| Key | Action |
|-----|--------|
| `-` | Open parent directory (Oil) |
| `<leader>fo` | Open Oil in floating window |
| `<CR>` | Open file/directory |
| `-` (in Oil) | Go to parent directory |
| `q` | Close Oil |
| `<C-v>` | Open in vertical split |
| `<C-s>` | Open in horizontal split |
| `<C-t>` | Open in new tab |
| `<C-p>` | Preview file |
| `g.` | Toggle hidden files |
| `gs` | Change sort |

### Telescope / Snacks Picker

| Key | Action |
|-----|--------|
| `<leader>ff` | Find files (root dir) |
| `<leader>fF` | Find files (cwd) |
| `<leader>fg` | Find files (git files) |
| `<leader>fr` | Recent files |
| `<leader>fR` | Recent files (cwd) |
| `<leader>fb` | Open buffers |
| `<leader>fc` | Find config files |
| `<leader>fp` | Projects |
| `<leader><space>` | Find files (root dir) |

---

## 10. Buffers & Windows

### Buffers

| Key | Action |
|-----|--------|
| `<leader>,` | Switch buffer (picker) |
| `H` / `[b` | Previous buffer |
| `L` / `]b` | Next buffer |
| `<leader>bd` | Delete buffer |
| `<leader>bD` | Delete buffer (force) |
| `<leader>bo` | Delete other buffers |
| `<leader>bP` | Delete non-pinned buffers |
| `<leader>bp` | Toggle pin buffer |
| `<leader>bj` | Pick buffer |
| `<leader>bl` | Delete buffers to the left |
| `<leader>br` | Delete buffers to the right |

### Windows

| Key | Action |
|-----|--------|
| `<C-h>` | Go to left window |
| `<C-j>` | Go to lower window |
| `<C-k>` | Go to upper window |
| `<C-l>` | Go to right window |
| `<leader>-` | Split window horizontal |
| `<leader>\|` | Split window vertical |
| `<leader>wd` | Delete window |
| `<leader>wm` | Maximize window toggle |
| `<C-Up>` | Increase window height |
| `<C-Down>` | Decrease window height |
| `<C-Left>` | Decrease window width |
| `<C-Right>` | Increase window width |

### Tabs

| Key | Action |
|-----|--------|
| `<leader><tab>l` | Last tab |
| `<leader><tab>f` | First tab |
| `<leader><tab><tab>` | New tab |
| `<leader><tab>d` | Close tab |
| `<leader><tab>]` | Next tab |
| `<leader><tab>[` | Previous tab |

---

## 11. LSP — Code Intelligence

| Key | Action |
|-----|--------|
| `K` | Hover documentation |
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | References |
| `gI` | Go to implementation |
| `gy` | Go to type definition |
| `<leader>ca` | Code action |
| `<leader>cr` | Rename symbol |
| `<leader>cR` | Rename file (TypeScript) |
| `<leader>co` | Organize imports (TypeScript) |
| `<leader>cM` | Add missing imports (TypeScript) |
| `<leader>cs` | Aerial symbols sidebar |
| `<leader>cS` | LSP references/definitions (Trouble) |
| `<C-k>` (insert) | Signature help |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |
| `<leader>cd` | Line diagnostics |
| `<leader>cl` | LSP info |
| `<leader>cm` | Mason (manage LSP servers) |

### Inlay Hints (TypeScript)

| Key | Action |
|-----|--------|
| `<leader>uh` | Toggle inlay hints |

---

## 12. Completions (blink.cmp)

| Key | Action |
|-----|--------|
| `<C-Space>` | Trigger completion / toggle docs |
| `<CR>` | Accept completion |
| `<Tab>` | Next item / snippet jump forward |
| `<S-Tab>` | Previous item / snippet jump backward |
| `<C-e>` | Dismiss completion |
| `<C-b>` | Scroll docs up |
| `<C-f>` | Scroll docs down |

**Features enabled:**
- Ghost text (inline preview)
- Auto-documentation popup
- Signature help while typing
- Auto-brackets after functions
- Sources: LSP > Path > Snippets > Buffer

---

## 13. Formatting & Linting

| Key | Action |
|-----|--------|
| `<leader>cf` | Format document |
| `<leader>cF` | Format injected languages |
| `<leader>ci` | Toggle format on save |

**Prettier** runs on: ts, tsx, js, jsx, css, html, json, yaml, md, graphql
**ESLint** auto-fixes on save (enabled)

---

## 14. Search Across Files

| Key | Action |
|-----|--------|
| `<leader>/` | Grep (root dir) |
| `<leader>sg` | Grep (root dir) |
| `<leader>sG` | Grep (cwd) |
| `<leader>sw` | Search word under cursor (root) |
| `<leader>sW` | Search word under cursor (cwd) |
| `<leader>sb` | Buffer lines search |
| `<leader>sB` | Grep open buffers |
| `<leader>sr` | Search and Replace (Spectre) |
| `<leader>ss` | Goto Symbol |
| `<leader>sS` | Goto Symbol (Workspace) |
| `<leader>sd` | Diagnostics |
| `<leader>sD` | Buffer diagnostics |
| `<leader>sh` | Help pages |
| `<leader>sk` | Keymaps |
| `<leader>sm` | Marks |
| `<leader>s"` | Registers |
| `<leader>sc` | Command history |
| `<leader>sa` | Autocmds |
| `<leader>si` | Icons picker |

---

## 15. Git

### Gitsigns (Hunks)

| Key | Action |
|-----|--------|
| `]h` | Next hunk |
| `[h` | Previous hunk |
| `<leader>ghs` | Stage hunk |
| `<leader>ghr` | Reset hunk |
| `<leader>ghS` | Stage buffer |
| `<leader>ghR` | Reset buffer |
| `<leader>ghp` | Preview hunk |
| `<leader>ghb` | Blame line |
| `<leader>ghd` | Diff this |
| `<leader>ghD` | Diff this (against ~) |
| `<leader>ub` | Toggle blame line |

### Neogit & Git Tools

| Key | Action |
|-----|--------|
| `<leader>gn` | Open Neogit (full git interface) |
| `<leader>gs` | Git status |
| `<leader>gd` | Git diff (hunks) |
| `<leader>gD` | Git diff (origin) |
| `<leader>gp` | GitHub Pull Requests (open) |
| `<leader>gP` | GitHub Pull Requests (all) |
| `<leader>gi` | GitHub Issues (open) |
| `<leader>gI` | GitHub Issues (all) |
| `<leader>gb` | Git blame line |
| `<leader>gB` | Git browse (open in browser) |
| `<leader>gl` | Git log |
| `<leader>gL` | Git log (cwd) |
| `<leader>gf` | Git log (current file) |

---

## 16. Debugging (DAP)

| Key | Action |
|-----|--------|
| `<leader>db` | Toggle breakpoint |
| `<leader>dB` | Breakpoint with condition |
| `<leader>dc` | Run / Continue |
| `<leader>dC` | Run to cursor |
| `<leader>da` | Run with arguments |
| `<leader>di` | Step into |
| `<leader>do` | Step out |
| `<leader>dO` | Step over |
| `<leader>dp` | Pause |
| `<leader>dt` | Terminate |
| `<leader>dr` | Toggle REPL |
| `<leader>ds` | Session |
| `<leader>dl` | Run last |
| `<leader>du` | DAP UI |
| `<leader>de` | Eval expression |
| `<leader>dw` | Widgets |
| `<leader>dj` | Down (stack) |
| `<leader>dk` | Up (stack) |
| `<leader>dg` | Go to line (no execute) |
| `<leader>td` | Debug nearest test |

---

## 17. Testing (Neotest)

| Key | Action |
|-----|--------|
| `<leader>tt` | Run file tests |
| `<leader>tT` | Run all test files |
| `<leader>tr` | Run nearest test |
| `<leader>tl` | Run last test |
| `<leader>ts` | Toggle summary panel |
| `<leader>to` | Show output |
| `<leader>tO` | Toggle output panel |
| `<leader>tS` | Stop tests |
| `<leader>tw` | Toggle watch mode |
| `<leader>ta` | Attach to test |
| `<leader>td` | Debug nearest test |

---

## 18. Flutter / Dart

All Flutter keymaps are under `<leader>F`.

### Run & Reload

| Key | Action |
|-----|--------|
| `<leader>Fr` | Flutter Run (start app) |
| `<leader>Fq` | Flutter Quit (stop app) |
| `<leader>FR` | Flutter Restart (full restart) |
| `<leader>Fh` | Flutter Hot Reload (apply changes) |

### Devices & Emulators

| Key | Action |
|-----|--------|
| `<leader>Fd` | Flutter Devices (pick target device) |
| `<leader>Fe` | Flutter Emulators (launch emulator) |

### DevTools & Debugging

| Key | Action |
|-----|--------|
| `<leader>Ft` | Open Flutter DevTools (browser) |
| `<leader>FT` | Activate Flutter DevTools |
| `<leader>Fc` | Copy Profiler URL |
| `<leader>Fl` | Clear Flutter Log |
| `<leader>Fo` | Toggle Widget Outline |

### Pub Dependencies

| Key | Action |
|-----|--------|
| `<leader>Fp` | Pub Get (install deps) |
| `<leader>FP` | Pub Upgrade (upgrade deps) |
| `<leader>Fa` | Add Pub Package (in pubspec.yaml) |
| `<leader>FA` | Add Pub Dev Package (in pubspec.yaml) |

### Flutter Commands (`:` command mode)

| Command | Action |
|---------|--------|
| `:FlutterRun` | Start Flutter app |
| `:FlutterReload` | Hot reload |
| `:FlutterRestart` | Full restart |
| `:FlutterQuit` | Stop app |
| `:FlutterDevices` | List connected devices |
| `:FlutterEmulators` | List/launch emulators |
| `:FlutterDevTools` | Open DevTools |
| `:FlutterOutlineToggle` | Widget tree outline |
| `:FlutterPubGet` | Run pub get |
| `:FlutterPubUpgrade` | Run pub upgrade |
| `:FlutterLogClear` | Clear dev log |

### Flutter Workflow Tips

1. Open a Flutter project (with `pubspec.yaml`) in nvim
2. `<leader>Fd` to pick your device (or `<leader>Fe` for emulator)
3. `<leader>Fr` to run the app
4. Edit code, then `<leader>Fh` for hot reload (instant)
5. `<leader>FR` for full restart (when hot reload isn't enough)
6. `<leader>Ft` to open DevTools for inspector/profiler
7. Use standard LSP keymaps (`gd`, `K`, `<leader>ca`, etc.) for Dart code intelligence
8. `<leader>cf` to format with `dart format`
9. Standard test keymaps (`<leader>tr`, `<leader>tt`) work with Dart tests via neotest-dart
10. Standard DAP keymaps (`<leader>db`, `<leader>dc`) work for Flutter debugging

---

## 19. Python

### LSP (basedpyright + Ruff)

Standard LSP keymaps work for Python — `gd`, `K`, `gr`, `<leader>ca`, etc.

| Key | Action |
|-----|--------|
| `<leader>co` | Organize imports (Ruff) |
| `<leader>cv` | Select virtual environment |
| `<leader>cf` | Format with Ruff |
| `<leader>ca` | Code actions (auto-fix lint issues) |
| `K` | Hover docs (basedpyright) |
| `gd` | Go to definition |
| `gr` | Find references |
| `<leader>cr` | Rename symbol |
| `<leader>uh` | Toggle inlay hints (type annotations) |

### Debugging (DAP + debugpy)

| Key | Action |
|-----|--------|
| `<leader>dPt` | Debug test method |
| `<leader>dPc` | Debug test class |
| `<leader>db` | Toggle breakpoint |
| `<leader>dc` | Run / Continue |
| `<leader>di` | Step into |
| `<leader>do` | Step out |
| `<leader>dO` | Step over |

### Testing (neotest-python)

| Key | Action |
|-----|--------|
| `<leader>tr` | Run nearest test |
| `<leader>tt` | Run file tests |
| `<leader>tT` | Run all tests |
| `<leader>ts` | Toggle test summary |
| `<leader>td` | Debug nearest test |

### Virtual Environments

| Key / Command | Action |
|---------------|--------|
| `<leader>cv` | Open venv selector picker |
| `:VenvSelect` | Select virtual environment |

The venv selector auto-detects `.venv`, `venv`, conda, poetry, and pyenv environments.

### Python Workflow Tips

1. Open a Python project (with `pyproject.toml` or `requirements.txt`)
2. `<leader>cv` to select virtualenv (auto-detected)
3. LSP starts automatically — basedpyright for types, Ruff for linting
4. `<leader>cf` to format (Ruff formats + organizes imports)
5. `<leader>ca` on a lint warning to auto-fix
6. `<leader>tr` to run the nearest pytest
7. `<leader>db` to set breakpoint, `<leader>dc` to debug
8. `<leader>dPt` to debug a specific test method

### Ruff Lint Rules Enabled

- `E` — pycodestyle errors
- `F` — pyflakes
- `W` — pycodestyle warnings
- `I` — isort (import sorting)
- `N` — pep8-naming
- `UP` — pyupgrade (modernize syntax)
- `B` — flake8-bugbear (common bugs)
- `SIM` — flake8-simplify
- `RUF` — Ruff-specific rules

---

## 20. Diagnostics & Trouble

| Key | Action |
|-----|--------|
| `<leader>xx` | Diagnostics (Trouble) |
| `<leader>xX` | Buffer diagnostics (Trouble) |
| `<leader>xL` | Location list (Trouble) |
| `<leader>xQ` | Quickfix list (Trouble) |
| `<leader>xt` | Todo comments |
| `<leader>xT` | Todo/Fix/Fixme |
| `[q` | Previous quickfix item |
| `]q` | Next quickfix item |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |
| `[t` | Previous todo comment |
| `]t` | Next todo comment |

---

## 21. Flash — Jump Anywhere

| Key | Action |
|-----|--------|
| `s` | Flash (jump to any visible text) |
| `S` | Flash Treesitter (select by syntax node) |
| `r` (operator-pending) | Remote Flash (do action at distant location) |

**How to use Flash:**
1. Press `s`
2. Type 1-2 characters you want to jump to
3. Press the highlighted label letter

---

## 22. Terminal

| Key | Action |
|-----|--------|
| `<leader>ft` | Terminal (root dir) |
| `<leader>fT` | Terminal (cwd) |
| `<C-/>` | Toggle terminal |
| `<C-_>` | Toggle terminal (alt) |
| `<Esc><Esc>` | Exit terminal mode |

---

## 23. Misc & UI

### Toggles

| Key | Action |
|-----|--------|
| `<leader>uf` | Toggle format on save |
| `<leader>us` | Toggle spelling |
| `<leader>uw` | Toggle word wrap |
| `<leader>ul` | Toggle line numbers |
| `<leader>uL` | Toggle relative line numbers |
| `<leader>ud` | Toggle diagnostics |
| `<leader>uc` | Toggle conceal |
| `<leader>uh` | Toggle inlay hints |
| `<leader>uT` | Toggle treesitter highlight |
| `<leader>ub` | Toggle blame line |
| `<leader>uC` | Colorscheme picker |
| `<leader>un` | Dismiss all notifications |

### Notifications

| Key | Action |
|-----|--------|
| `<leader>n` | Notification history |
| `<leader>un` | Dismiss all notifications |

### Sessions

| Key | Action |
|-----|--------|
| `<leader>ql` | Restore last session |
| `<leader>qs` | Restore session |
| `<leader>qS` | Select session |
| `<leader>qd` | Don't save current session |

### Edgy (Window Layouts)

| Key | Action |
|-----|--------|
| `<leader>ue` | Toggle Edgy panels |
| `<leader>uE` | Edgy select window |

### Package Info (in package.json)

| Key | Action |
|-----|--------|
| `<leader>cps` | Show package versions |
| `<leader>cpu` | Update package |
| `<leader>cpd` | Delete package |
| `<leader>cpi` | Install package |
| `<leader>cpc` | Change package version |

### Other

| Key | Action |
|-----|--------|
| `<leader>l` | Open Lazy (plugin manager) |
| `<leader>:` | Command history |
| `<leader>.` | Toggle scratch buffer |
| `<leader>S` | Select scratch buffer |

---

## 24. Vim Power Combos

Patterns that make you fast once they become muscle memory.

### Editing Combos

| Combo | Action |
|-------|--------|
| `ciw` | Change word under cursor |
| `ci"` | Change string contents |
| `cit` | Change JSX/HTML tag content |
| `dit` | Delete JSX/HTML tag content |
| `gsd>` | Delete surrounding tag |
| `gsaiw"` | Surround word with `"` |
| `gsr"'` | Change surrounding `"` to `'` |
| `gsd"` | Delete surrounding `"` |
| `da{` | Delete `{ }` block including braces |
| `yi(` | Yank function arguments |
| `va{V` | Select entire code block (lines) |
| `ggVG` | Select entire file |
| `gg"+yG` | Copy entire file to clipboard |

### Speed Patterns

| Pattern | How |
|---------|-----|
| Delete a function | `V%d` (on opening brace line) |
| Duplicate a line | `yyp` |
| Move line down | `ddp` |
| Move line up | `ddkP` |
| Swap two characters | `xp` |
| Swap two words | `dawwP` |
| Delete until `)` | `dt)` |
| Change function args | `ci(` |
| Select and replace word | `ciw` type new, then `n.n.` to repeat |
| Comment a line | `gcc` |
| Comment a block | `gc` in visual mode |
| Sort lines | (visual select) `:sort` |
| Remove duplicate lines | (visual select) `:sort u` |
| Replace in selection | (visual select) `:s/old/new/g` |

### The Dot Formula (Fastest Refactoring)

1. `/searchterm` — Find what you want to change
2. `cgn` + replacement + `<Esc>` — Change the match
3. `.` — Repeat on next match (skip with `n`)

This is faster than search-and-replace for selective changes.

### Number Manipulation

| Key | Action |
|-----|--------|
| `<C-a>` | Increment number under cursor |
| `<C-x>` | Decrement number under cursor |
| `g<C-a>` (visual) | Create incrementing sequence |

---

> **Tip:** Press `<leader>?` to open which-key and explore all available keymaps interactively.
> Press `<leader>sk` to search keymaps with Telescope.
