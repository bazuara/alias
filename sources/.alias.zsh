#Custom Alias
alias welcome='echo "Welcome $USER."'
alias up='cd .. && ll'
alias reload='vim ~/.oh-my-zsh/custom/alias.zsh && source ~/.oh-my-zsh/custom/alias.zsh'
alias ll='ls -laht'
alias tree="pwd && find . -not -path '*/\.git/*' -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias gaut="git add . && git commit && git push"
alias gs="git status"
alias cd42='cd ~/Documents/42/Ecole/ft_printf/bazuara'
alias cdtool='cd ~/Documents/42/Tools/'
alias deploy-mygit='cp ~/.mygit.sh ./mygit.sh && ./mygit.sh'
alias mygit='git --git-dir=.github'
alias mygaut=" mygit add . && mygit commit  && mygit push"
function mkcd() { mkdir -p "$@" && cd "$@"; }
#End of Custom Alias


