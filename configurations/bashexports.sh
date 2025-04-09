export EDITOR='vim'

# Colors for less
export LESS_TERMCAP_mb=$(tput bold; tput setaf 1) # green
export LESS_TERMCAP_md=$(tput bold; tput setaf 108)
export LESS_TERMCAP_me=$(tput bold; tput sgr0)
export LESS_TERMCAP_so=$(tput bold; tput setaf 16; tput setab 219) # yellow on blue
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7) # white
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
export LESS_TERMCAP_mr=$(tput rev)
export LESS_TERMCAP_mh=$(tput dim)
export LESS_TERMCAP_ZN=$(tput ssubm)
export LESS_TERMCAP_ZV=$(tput rsubm)
export LESS_TERMCAP_ZO=$(tput ssupm)
export LESS_TERMCAP_ZW=$(tput rsupm)
export GROFF_NO_SGR=1         # For Konsole and Gnome-terminal

# Less colors
LS_COLORS="di=38;5;219:"  # Directory Color
LS_COLORS+="ln=38;5;30:"  # Symlink Color
LS_COLORS+="mi=1;94:"     # Missing Symlink Color
LS_COLORS+="ex=38;5;108:" # Executable Color
export LS_COLORS

export JAVA_HOME='/usr/lib/jvm/java-8-openjdk-amd64'
export PATH=$JAVA_HOME/bin:$PATH
