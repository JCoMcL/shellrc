input="$HOME/.shrc/alias"
while IFS= read -r line
do
	alias  $(echo $line | awk '{print $1}')="$(echo $line | awk '{$1=""; print $0}')"
done < "$input"

export PATH=$(cat ~/.shrc/path | tr "\n" ":")

export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

export LANG=en_US.UTF-8
export LC_CTYPE=$LANG

