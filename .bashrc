RED='\033[0;31m'
GREEN='\033[0;32m'

# Turn bell off
set bell-style none

# Environment variables
# Java
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/ 
export PATH=$JAVA_HOME/bin:$PATH

#eval 'dircolors /home/christopher/.dir_colors/dircolors >/dev/null'

echo ""

neofetch

COLS=$(tput cols)
for ((i = 0; i < COLS; i++)); do
	echo -n "─";
done

echo ""

# Display weather at login
# ? = begin of request
# 0 = display current temp
# u = display temp in Fahrenheit
curl wttr.in/Fort+Collins?0u

# Print horizontal barrier based off the size of the current terminal screen
for ((i = 0; i < COLS; i++)); do
	echo -n "─";
done

function git_branch() {

    if git rev-parse --is-inside-work-tree &> /dev/null; then
		color=$RED
		if git add . && git diff --quiet && git diff --cached --quiet; then 	
			color=$GREEN 
		fi
		branch=$(git branch --show-current)
		echo -e " $color($branch)"
	fi

}

# Display git branch
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]`git_branch`\[\033[01;00m\] \$ ' 
