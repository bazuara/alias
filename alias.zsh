#Custom Alias
alias welcome='echo "Welcome $USER."'
alias compi_lib='gcc -c -Wall -Wextra -Werror *.c && echo "Norminette :" && rm ./*.o && normi'
alias compi_run='gcc  -Wall -Wextra -Werror *.c && echo "Norminette :" && normi && ./a.out | cat -e && echo "\nCompilado, ejecutado y borrado, $USER" && rm ./a.out'
alias compi_run_keep='gcc  -Wall -Wextra -Werror *.c && echo "Norminette :" && normi && echo "\nCompilado, $USER"'
alias normi='norminette -R CheckForbiddenSourceHeader'
alias up='cd .. && ll'
alias reload='vim ~/.zshrc && source ~/.zshrc'
alias ll='ls -lah'
alias tree="pwd && find . -not -path '*/\.git/*' -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias gitpush="git add . && git commit -m 'cambios menores' && git push"
alias cd42='cd ~/Documents/42/Escuela/'
function mkcd() { mkdir -p "$@" && cd "$@"; }
#End of Custom Alias

