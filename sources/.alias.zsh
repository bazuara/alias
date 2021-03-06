#Custom Alias
alias welcome='echo "Welcome $USER."'
alias up='cd .. && ll'
alias reload='vim ~/.oh-my-zsh/custom/alias.zsh && source ~/.oh-my-zsh/custom/alias.zsh'
alias ll='ls -lah'
alias tree="pwd && find . -not -path '*/\.git/*' -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias gaut="git add . && git commit && git push"
alias gs="git status"
alias cd42='cd ~/Documents/42/Ecole/ft_printf/bazuara'
alias cdtool='cd ~/Documents/42/Tools/'
alias mygit='git --git-dir=.github'
alias mygaut=" mygit add . && mygit commit  && mygit push"
alias cleanitunes='rm -rf ~/Library/Caches/com.apple.iTunes/SubscriptionPlayCache'
alias gpa='git remote | xargs -L1 -I R git push R master'
alias gpab='git remote | xargs -L1 git push --all'
function mkcd() { mkdir -p "$@" && cd "$@"; }
alias test_server='python -m SimpleHTTPServer'
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias dpsa="docker ps -a"
alias dspa="docker system prune --all"
#End of Custom Alias
