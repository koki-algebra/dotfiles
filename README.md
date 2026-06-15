# dotfiles

## セットアップ（新マシン）

```sh
git clone https://github.com/koki-algebra/dotfiles.git ~/workspaces/dotfiles
make init
```

`make init` は以下を順に実行する：

1. Homebrew のインストール
2. Xcode Command Line Tools のインストール
3. chezmoi のインストール
4. `chezmoi apply`（dotfiles の配置・Homebrew パッケージインストール・macOS 設定）

## 日常的な使い方

| コマンド | 内容 |
| --- | --- |
| `chezmoi apply` / `make apply` | dotfiles を適用 |
| `chezmoi diff` / `make diff` | 変更内容をプレビュー |
| `mise install` | Go ツールをインストール・更新 |

## ファイル構成

```
dotfiles/
├── dot_Brewfile          # ~/.Brewfile（Homebrew パッケージ一覧）
├── dot_gitconfig         # ~/.gitconfig
├── dot_zshrc             # ~/.zshrc
├── dot_claude/           # ~/.claude/（Claude Code 設定）
├── dot_config/
│   ├── gh/               # gh CLI 設定
│   ├── git/              # グローバル gitignore
│   ├── karabiner/        # Karabiner-Elements 設定
│   ├── mise/             # mise 設定（Go ツール含む）
│   ├── nvim/             # Neovim 設定
│   └── wezterm/          # WezTerm 設定
├── Library/
│   └── Application Support/Code/User/
│       └── settings.json # VS Code 設定
├── .chezmoiscripts/
│   ├── run_onchange_after_brew.sh.tmpl   # Brewfile 変更時に brew bundle を実行
│   └── run_once_after_defaults.sh        # macOS システム設定（初回のみ）
└── .bin/
    └── init.sh           # 新マシン向けブートストラップスクリプト
```

## dotfiles の編集

chezmoi がソースとして直接このリポジトリを参照しているため、ファイルを編集後に `chezmoi apply` を実行するだけでよい。

```sh
# 例: .zshrc を編集して即時反映
vim ~/workspaces/dotfiles/dot_zshrc
chezmoi apply
```

## Homebrew パッケージの追加

`dot_Brewfile` にパッケージを追記して `chezmoi apply` を実行すると、`brew bundle` が自動で走る。

## Go ツールの追加

`dot_config/mise/config.toml` に追記して `mise install` を実行する。

```toml
[tools]
"go:example.com/some/tool" = "latest"
```
