# bash から移行した場合は $PATH を変更する必要があるかもしれません。
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Oh My Zsh のインストールディレクトリへのパス。
export ZSH="$HOME/.oh-my-zsh"

# 読み込むテーマ名を設定します。"random" にすると、
# Oh My Zsh を読み込むたびにランダムなテーマが選ばれ、
# どのテーマが選ばれたか確認するには `echo $RANDOM_THEME` を実行します。
# 詳しくは https://github.com/ohmyzsh/ohmyzsh/wiki/Themes を参照してください。
ZSH_THEME="bira"

# ランダム読み込み時に候補とするテーマのリストを設定します。
# ZSH_THEME=random のときにこの変数を設定すると、zsh はここで指定したテーマから読み込みます。
# その場合 `$ZSH/themes/` を探すのではなく、この変数で指定したテーマを使います。
# 空の配列を設定すると、この変数は効果を持ちません。
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# 以下の行のコメントを外すと大文字小文字を区別する補完になります。
# CASE_SENSITIVE="true"

# 以下の行のコメントを外すと、ハイフンの有無を区別しない補完になります。
# この場合は大文字小文字の区別を無効にする必要があり、`_` と `-` を同一視します。
# HYPHEN_INSENSITIVE="true"

# 自動アップデートの挙動を変えたい場合は、以下のいずれかの行のコメントを外します。
# zstyle ':omz:update' mode disabled  # 自動更新を無効化
# zstyle ':omz:update' mode auto      # 確認なしで自動更新
# zstyle ':omz:update' mode reminder  # 更新時に通知のみ

# 自動アップデートの周期（日数）を変えるには、以下の行のコメントを外します。
# zstyle ':omz:update' frequency 13

# URL やその他のテキストを貼り付けたときに乱れる場合は、以下の行のコメントを外します。
# DISABLE_MAGIC_FUNCTIONS="true"

# `ls` で色表示を無効にしたい場合は、以下の行のコメントを外します。
# DISABLE_LS_COLORS="true"

# ターミナルタイトルの自動設定を止めたい場合は、以下の行のコメントを外します。
# DISABLE_AUTO_TITLE="true"

# コマンドの自動修正を有効にしたい場合は、以下の行のコメントを外します。
# ENABLE_CORRECTION="true"

# 補完を待っている間に赤いドットを表示したい場合は、以下の行のコメントを外します。
# デフォルトの赤いドットの代わりに別の文字列を表示することもできます。
# 例: COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# 注意: この設定は zsh 5.7.1 未満では複数行プロンプトに問題を起こす場合があります (#5765 を参照)。
# COMPLETION_WAITING_DOTS="true"

# 追跡されていないファイルを表示しないようにしたい場合は、以下の行のコメントを外します。
# VCS 上で未追跡ファイルをダーティ扱いしなくなり、大きなリポジトリでの状態確認が速くなります。
# 非常に高速になります。
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# コマンドの実行時刻を履歴に表示する形式を変えたい場合は、以下の行のコメントを外します。
# これは `history` コマンドの出力での時刻表示に影響します。
# 次の 3 つの形式から選択できます。
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# あるいは `strftime` の書式指定を用いてカスタム形式を設定できます。
# 詳細は `man strftime` を参照してください。
# HIST_STAMPS="mm/dd/yyyy"

# `$ZSH/custom` 以外のカスタムフォルダを使いたい場合の設定です。
# ZSH_CUSTOM=/path/to/new-custom-folder

# 読み込みたいプラグインを指定します。
# 標準プラグインは `$ZSH/plugins/` にあります。
# カスタムプラグインは `$ZSH_CUSTOM/plugins/` に追加できます。
# 記述例: plugins=(rails git textmate ruby lighthouse)
# プラグインを入れすぎるとシェルの起動が遅くなるので注意してください。
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# ユーザー設定

# export MANPATH="/usr/local/man:$MANPATH"

# 言語環境を手動で設定する必要がある場合があります。
# export LANG=en_US.UTF-8

# ローカルおよびリモート接続時に利用する好みのエディタを設定します。
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# コンパイルフラグ
# export ARCHFLAGS="-arch $(uname -m)"

# 個人用のエイリアスを設定します。Oh My Zsh のライブラリやプラグイン、テーマの設定を上書きします。
# エイリアスはここに書いても構いませんが、一般的には `$ZSH_CUSTOM` のルートにある拡張子 .zsh のファイルで定義することが推奨されています。例:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# 有効なエイリアスの一覧は `alias` を実行して確認できます。
#
# エイリアス例
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

. "$HOME/.local/bin/env"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
