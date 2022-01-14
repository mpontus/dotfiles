# Reclaim ^s
stty -ixon

# Disable audible bell
set bell-style none

# Very big history
export HISTSIZE=100000
export HISTFILESIZE=100000

# Ignore duplicate history entiries
export HISTCONTROL=ignoredups:erasedups

# Add timestamp to history entires
export HISTTIMEFORMAT="[%F %T] "

# Save and reload history after each command
export PROMPT_COMMAND="history -a; history -c; history -r"

# Append to history instead of overriding it
shopt -s histappend

# Shortcut for switching to newly created directory
function mkcd {
    mkdir -p $@
    cd $@
}

# Create an alias for accessing clipboard
alias clip="xclip -selection clipboard"

# Beep does not always produce sound
alias beep="notify-send Beep"

# Enable Ctrl-O
stty discard undef

if [ -f ~/.bash_profile ]; then
  source ~/.bash_profile
fi

# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"
PATH=/home/mpontus/.npm-packages/bin:$PATH
