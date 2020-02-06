eval $(awk -F '\t' '{print "alias "$1"=""\047"$2"\047;"}' $HOME/.shrc/alias)

export PATH=$(tr "\n" ":" < ~/.shrc/path)
