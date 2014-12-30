parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
COLOR_L_PURPLE='\[\e[1;35m\]'
COLOR_L_CYAN='\[\e[1;36m\]'
COLOR_DEFAULT='\[\e[0m\]'
COLOR_L_BLUE='\[\e[1;34m\]'
COLOR_L_GREEN='\[\e[1;32m\]'
COLOR_GRAY='\[\e[1;2m\]'
COLOR_YELLOW='\[\e[1;93m\]'

alias cd_apache2_virtual='cd /private/etc/apache2/other'
alias apache2_restart='sudo apachectl restart'
export PS1="$COLOR_L_CYAN\u$COLOR_DEFAULT $COLOR_GRAY at $COLOR_DEFAULT $COLOR_YELLOW\w$COLOR_DEFAULT\[\033[32m\]\$(parse_git_branch)\[\033[00m\]$COLOR_L_PURPLE$ $COLOR_DEFAULT"
