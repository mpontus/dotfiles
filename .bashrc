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


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Enable Ctrl-O
stty discard undef
