export PATH=/Applications/SenchaSDKTools-2.0.0-beta3:/Users/marc/bin:/Users/marc/bin/Sencha/Cmd/5.0.2.270:$PATH

export SENCHA_SDK_TOOLS_2_0_0_BETA3="/Applications/SenchaSDKTools-2.0.0-beta3"

# bash history by day
# export HISTFILE=~/.history/`date +%Y_%m_%d`.hist
export HISTSIZE=100000

alias la="ls -la"
alias ll="ls -l"
alias mkdir='mkdir -pv'
alias mysql.restart="sudo /usr/local/mysql/support-files/mysql.server restart"
alias mysql.start="sudo /usr/local/mysql/support-files/mysql.server start"

alias git.unpushed="git log --branches --not --remotes"

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export PATH=/Applications/SenchaSDKTools-2.0.0-beta3:/Users/marc/bin:/Users/marc/bin/Sencha/Cmd/5.0.2.270:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/mysql/bin

#export PS1="[\u@\h \W]\\$ "
export PS1="\[\e[00;37m\]\u@\H:\w\[\e[0m\]: "

# Shows cur working dir in iterm2 tab title
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

# Sets the iterm tab title manually
function title {
    echo -ne "\033]0;"$*"\007"
}

# Shows a mac os notification by running notify "your message"
function notify {
    s='display notification "'$1'"'

    osascript -e "$s"
}
