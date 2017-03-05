alias l='ls -la'
alias gid='git diff'
alias gis='git shorty'
alias gif='git links'
alias giz='git z'
alias gam='git ac'
alias gitclean='git tidy'
alias tb="nc termbin.com 9999"
alias stable="git checkout master && gif && git pull"
alias did='git staaash && git checkout -b $1 && git stash pop && git add --all && git commit -am "$2" && git push -u origin $1 && stable'

rpi() {
	if [ 0 != "$#" ]; then
		ssh $1@femtopixel.hd.free.fr
	else
		ssh femtopixel.hd.free.fr
	fi
}

search() {
  find . -type f -exec grep -H "$1" {} \; | grep "$1"
}

source ~/.these_aliases
