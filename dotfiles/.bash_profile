export PATH="/usr/local/bin:/usr/local/sbin:$PATH:~/bin"
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
shopt -s extglob
shopt -s globstar
export PATH="$HOME/.cargo/bin:$PATH"
