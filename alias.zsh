#Custom Alias
alias welcome='echo "Welcome $USER."'
alias up='cd .. && ll'
alias reload='vim ~/.oh-my-zsh/custom/alias.zsh && source ~/.oh-my-zsh/custom/alias.zsh'
alias ll='ls -lah'
alias tree="pwd && find . -not -path '*/\.git/*' -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias gp="git add . && git commit -m 'Subida automática' && git push"
alias gs="git status"
alias cd42='cd ~/Documents/42/Ecole/'
function mkcd() { mkdir -p "$@" && cd "$@"; }
#End of Custom Alias

