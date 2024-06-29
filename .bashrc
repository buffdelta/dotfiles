# Display weather at login
# ? = begin of request
# 0 = display current temp
# u = display temp in Fahrenheit
curl wttr.in/?0u
echo "───────────────────────────────────────────────────────────────────────────────────────────"

function git_branch() {
    if git rev-parse --is-inside-work-tree &> /dev/null; then
        branch=$(git branch --show-current)
		echo " ($branch) "
	fi
}
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[01;33m\]`git_branch`\[\033[01;00m\]\$ ' 
