alias l='ls -la'

#short git aliases
alias gid='git diff'
alias gis='git shorty'
alias gif='git links'
alias giz='git z'
alias gam='git ac'
alias gitclean='git tidy'

#cli display share (just | tb)
alias tb="nc termbin.com 9999"

#cli file share tool (transfer path/to/file.sh)
transfer() { if [ $# -eq 0 ]; then echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi 
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; } 

#git coding
alias stable="git checkout master && gif && git pull"
alias did='git staaash && git checkout -b $1 && git stash pop && git add --all && git commit -am "[$1] $2" && git push -u origin $1 && stable'

#mop rpi
rpi() {
	if [ 0 != "$#" ]; then
		ssh $1@femtopixel.hd.free.fr
	else
		ssh femtopixel.hd.free.fr
	fi
}

#search in files
search() {
  find . -type f -exec grep -H "$1" {} \; | grep "$1"
}

source ~/.these_aliases
