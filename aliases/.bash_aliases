alias l='ls -lah'

#short git aliases
alias gid='git diff'
alias gis='git shorty'
alias gif='git links'
alias giz='git z'
alias gam='git ac'
alias gitclean='git tidy'

#docker aliases
alias updatedocker='sudo curl -sSL https://get.docker.com | sudo sh'
alias dkapache='docker run -dit --name `basename $PWD` -p 80:80 -v "$PWD":/usr/local/apache2/htdocs/ httpd:alpine'

#cli display share (just | tb)
alias tb="nc termbin.com 9999"

#cli file share tool (transfer path/to/file.sh)
transfer() { if [ $# -eq 0 ]; then echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi 
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; } 

#git coding
alias stable="git checkout master && git up"
did() { 
    git stash && git checkout -b $1 && git stash pop && git add --all && git commit -am "[#$1] $2" && git push -u origin $1 && stable
}
fix() { 
    git stash && git checkout -b fix-$RANDOM && git stash pop && git add --all && git commit -am "$1" && git push -u origin $1 && stable
}

#compress list of pdf
compresspdf() {
    mkdir -p compressed
    for file in `ls *.pdf`; do gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile="compressed/${file:0:-4}.pdf" "$file"; done
}

#Update all pip packages
pipup() {
    sudo -H pip freeze — local | grep -v ‘^\-e’ | cut -d = -f 1 | xargs -n1 sudo -H pip install -U
}

#Make a sound in CLI (e.g.: cat toto && ok || ko)
alias ok="paplay /usr/share/sounds/ubuntu/notifications/Positive.ogg --volume=83000"
ko() {
    paplay /usr/share/sounds/ubuntu/stereo/service-logout.ogg --volume=83000
    return 1
}

#Load tmuxx active session or creates a new one
alias mux='tmux a || tmux'

source ~/.these_aliases
