#PS1="${HOSTNAME}\${PWD##*/} \$ "

#PS1='$(print -n "`logname`@`hostname`:";if [[ "${PWD#$HOME}" != "$PWD" ]] then; print -n "~${PWD#$HOME}"; else; print -n "$PWD";fi;print "\n$ ")'

#prompt 
PS1='$(print -n "\033[34m[`logname`@`hostname` ";if [[ "${PWD#$HOME}" != "$PWD" ]] then; print -n "~${PWD#$HOME}"; else; print -n "$PWD";fi;print "]\033[1;37m ")'


#stuff i added
hexfetch
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias l='exa -al'
alias ll='exa -l'
alias cat='bat'
alias htop='btop -t'
alias top='btop -t'
alias ex='tar -xvf'

#binds
set -o emacs

keybd_trap () {
  case ${.sh.edchar} in
    $'\f')    .sh.edchar=$'\e\f';;  # clear-screen
    $'\e[1~') .sh.edchar=$'\001';;  # Home = beginning-of-line
    $'\e[4~') .sh.edchar=$'\005';;  # End = end-of-line
    $'\e[5~') .sh.edchar=$'\e>';;   # PgUp = history-previous
    $'\e[6~') .sh.edchar=$'\e<';;   # PgDn = history-next
    $'\e[3~') .sh.edchar=$'\004';;  # Delete = delete-char
  esac
}
trap keybd_trap KEYBD
