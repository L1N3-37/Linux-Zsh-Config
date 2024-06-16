# -- Welcome to My Zshrc config --

WORDCHARS=${WORDCHARS//\/} # Don't consider certain characters part of the word

# Load .dircolors if it exists
if [ -f ~/.dircolors ]; then
    eval "$(dircolors ~/.dircolors)"
fi

# ----------------------- Report the status of background jobs immediately ----------------------
setopt notify
setopt correct
setopt PROMPT_SUBST
#
#
# ---------------------------------- Adding git repo to prompt ----------------------------------
# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
#
# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git*' formats "- [%F{white}%r/%S%F{cyan}] -> [%b] %m%u%c"
#
# -----------------------------------------------------------------------------------------------
#
#
# Determine if color prompt should be enabled based on terminal type
#case "$TERM" in
#    xterm-color|*-256color) color_prompt=yes;;
#esac
#
#
# --------------------------------------- Terminal Prompt ---------------------------------------
# Set up the prompt with git branch name [conditional brackets only show when git repo is active]
PROMPT=''$'\n%F{cyan}┌─ [%F{white}${PWD/#$HOME/~}%F{cyan}] ${vcs_info_msg_0_}'$'\n└─── > '
#
# -----------------------------------------------------------------------------------------------
#
#
# enable color support of ls, less and man, and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    export LS_COLORS="$LS_COLORS:ow=30;44:" # fix ls color for folders with 777 permissions

    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias diff='diff --color=auto'
    alias ip='ip --color=auto'
    # Take advantage of $LS_COLORS for completion as well
    zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
    zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
fi

# enable syntax-highlighting
if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    . /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
    ZSH_HIGHLIGHT_STYLES[default]=none
    ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=#ff6961,underline
    ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=cyan,bold
    ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=#8CD867i,underline
    ZSH_HIGHLIGHT_STYLES[global-alias]=fg=#8CD867,bold
    ZSH_HIGHLIGHT_STYLES[precommand]=fg=#ff6961
    ZSH_HIGHLIGHT_STYLES[commandseparator]=fg=cyan,bold
    ZSH_HIGHLIGHT_STYLES[autodirectory]=fg=#8CD867,underline
    ZSH_HIGHLIGHT_STYLES[path]=bold
    ZSH_HIGHLIGHT_STYLES[path_pathseparator]=
    ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]=
    ZSH_HIGHLIGHT_STYLES[globbing]=fg=cyan,bold
    ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=cyan,bold
    ZSH_HIGHLIGHT_STYLES[command-substitution]=none
    ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]=fg=magenta,bold
    ZSH_HIGHLIGHT_STYLES[process-substitution]=none
    ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]=fg=magenta,bold
    ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=#8B80F9
    ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=#8B80F9
    ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
    ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]=fg=blue,bold
    ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=#8CD867
    ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=#8CD867
    ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]=fg=#8CD867
    ZSH_HIGHLIGHT_STYLES[rc-quote]=fg=magenta
    ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=magenta,bold
    ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=magenta,bold
    ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]=fg=magenta,bold
    ZSH_HIGHLIGHT_STYLES[assign]=none
    ZSH_HIGHLIGHT_STYLES[redirection]=fg=blue,bold
    ZSH_HIGHLIGHT_STYLES[comment]=fg=black,bold
    ZSH_HIGHLIGHT_STYLES[named-fd]=none
    ZSH_HIGHLIGHT_STYLES[numeric-fd]=none
    ZSH_HIGHLIGHT_STYLES[arg0]=fg=cyan
    ZSH_HIGHLIGHT_STYLES[bracket-error]=fg=red,bold
    ZSH_HIGHLIGHT_STYLES[bracket-level-1]=fg=blue,bold
    ZSH_HIGHLIGHT_STYLES[bracket-level-2]=fg=green,bold
    ZSH_HIGHLIGHT_STYLES[bracket-level-3]=fg=magenta,bold
    ZSH_HIGHLIGHT_STYLES[bracket-level-4]=fg=yellow,bold
    ZSH_HIGHLIGHT_STYLES[bracket-level-5]=fg=cyan,bold
    ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]=standout
fi





# Alias
alias td500='/mnt/c/Users/TD500'
alias mega='mega-cmd'
alias .zshrc='~/.config/custom/.zshrc'
