# Add local binaries
export PATH="$HOME/bin:$PATH"

# Install NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Install Android Sdk
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

# if [ -f ~/.git-completion.bash ]; then
#  . ~/.git-completion.bash
# fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="/Users/michael/.sdkman"
# [[ -s "/Users/michael/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/michael/.sdkman/bin/sdkman-init.sh"

# Install pip executables
# export PATH="$PATH:`python -m site --user-base`/bin"

if [ -d ~/.cargo ]; then
  export PATH="$HOME/.cargo/bin:$PATH"

  # Add rustup tools
  source $HOME/.cargo/env
fi

if [ -d ~/.rvm ]; then
  # Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
  export PATH="$PATH:$HOME/.rvm/bin"
fi

# Install rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# including this ensures that new gnome-terminal tabs keep the parent `pwd` !
if [ -e /etc/profile.d/vte.sh ]; then
    . /etc/profile.d/vte.sh
fi

if [ -d ~/go ]; then
  PATH="$PATH:$HOME/go/bin"
fi

export PATH="$HOME/.cargo/bin:$PATH"

# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"
