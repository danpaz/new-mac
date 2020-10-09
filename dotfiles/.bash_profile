export PATH="/usr/local/bin:/usr/local/sbin:$PATH:~/bin"
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
shopt -s extglob
shopt -s globstar
export PATH="$HOME/.cargo/bin:$PATH"
source "$(npm root -g)/@mapbox/mbxcli/bin/mapbox.sh"

# emscripten sdk
#source $HOME/code/emsdk/emsdk_env.sh


export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PATH="$HOME/.poetry/bin:$PATH"

export PATH="/usr/local/opt/binutils/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH"
