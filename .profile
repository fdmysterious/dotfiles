export PATH=$PATH:$HOME/software/dmenu:$HOME/.local/bin:$HOME/toolchain/gcc-arm-none-eabi-10.3-2021.10/bin/
export PS1="\n\[`tput bold``tput setaf 3`\]\$\[`tput sgr0`\] \w \[`tput bold`\] \n>\[`tput sgr0`\] "

alias pdftk="java -jar \"$HOME/software/jar/pdftk-all.jar\""
alias sshw="ssh docker-user@s-build-yocto"
alias valmount="sshfs -o allow_other -p 2503 florian@home.mugcat.fr:/ $HOME/valbrout"
alias valmountjo="sshfs -o allow_other -p 2503 josephine@home.mugcat.fr:/ $HOME/valbrout"
alias today="date +%Y-%m-%d"
alias genpasswd="tr -cd '[:alnum:][!]_!)(-' < /dev/urandom | fold -w12 | head -n1"
alias valssh="ssh -p 2503 mysterious@home.mugcat.fr"
export _JAVA_AWT_WM_NONREPARTENTING=1
alias jcurl="curl -X \"$1\" \"$2\" -H 'Content-Type: application:json'"

pacaur() {
	git clone "https://aur.archlinux.org/$1.git" "$HOME/pkg/$1"
}

pacs() {
	package-query -s -S -A $1
}


#Query alpm database and/or AUR
#Usage: package-query [options] [targets ...]
#
#Options:
#	-1 --just-one        show the first answer only
#	--delimiter          define list separator
#	-f --format <format>
#	-h --help            show this help
#	-q --quiet           quiet
#	-x --escape          escape " on output
#	--nocolor            output without colors
#	--sort <parameter>   sort search results by a parameter
#	--rsort <parameter>  sort search results in reverse order
#	--show-size          show package size
#	--insecure           perform insecure ssl connection (curl)
#
#	-A --aur             query AUR database
#	-Q --query           search in local database
#	-S --sync            search in sync databases
#	-L --list-repo       list configured repository
#
#	-b --dbpath <path>   default: /var/lib/pacman/
#	-c --config <file>   default: /etc/pacman.conf
#	-r --root <path>     default: /
#
#Modifiers:
#	-i --info            search by name
#	--maintainer         search by maintainer (AUR only)
#	--pkgbase            limit info to pkgbase (AUR only)
#	-g --groups          list groups or packages contained in a group
#	-l --list            list repository content
#	-m --foreign         search for foreign packages
#	-n --native          search for native packages
#	-p --file            query a package file
#	--qdepends           depends on one of the targets
#	--qconflicts         conflicts with one of the targets
#	--qprovides          provides one of the targets
#	--qreplaces          replaces one of the targets
#	--qrequires          required by one of the targets
#	-s --search          search
#	--nameonly           search in package names only
#	-t --unrequired      search for unrequired packages (-tt for optional deps)
#	-u --upgrades        list updates available
#
#Formats (man for more infos): 
#	a: arch
#	d: description
#	i: if AUR, show the ID
#	l: local version
#	n: name
#	o: out of date (0,1)
#	r: repo name
#	s: (sync) repo name
#	t: target
#	v: version, depends on search target
#	V: (sync) version
#	w: votes
#
#Sorting parameters: 
#	n, name: name
#	w, vote: AUR votes
#	p, pop:  AUR popularity
#	r, rel:  search relevance
#	1, date: install date
#	2, size: install size
