# Oh My Zsh のインストールディレクトリへのパス
export ZSH="$HOME/.oh-my-zsh"

# テーマ設定（一覧: https://github.com/ohmyzsh/ohmyzsh/wiki/Themes）
ZSH_THEME="bira"

# 自動アップデート: 確認なしで自動更新
zstyle ':omz:update' mode auto

# 読み込むプラグイン（$ZSH/plugins/ または $ZSH_CUSTOM/plugins/）
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# ==================================================
# ユーザー設定
# ==================================================

# ~/.local/bin/env を読み込み、ローカルにインストールしたツール（uv 等）の環境変数を設定します
. "$HOME/.local/bin/env"

# --- PATH ---

# Homebrew でインストールした Ruby を macOS 標準の Ruby よりも優先して使えるようにします
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

export PATH="/Users/aokidai/.antigravity/antigravity/bin:$PATH"

# --- ランタイムバージョン管理 ---

# mise（旧 rtx）を有効化し、各種ランタイム（Python, Node.js 等）のバージョン管理を行います
eval "$(mise activate zsh)"

# fnm（Node.js バージョン管理ツール）の設定を読み込み
eval "$(fnm env --use-on-cd --shell zsh)"
