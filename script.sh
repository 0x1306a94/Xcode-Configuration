#!/bin/sh


function sync_local() {
	if [[ ! -d "./File\ Templates/" ]]; then
		mkdir -p ./File\ Templates/
	fi

	if [[ ! -d "./CodeSnippets/" ]]; then
		mkdir -p ./CodeSnippets/
	fi

	if [[ ! -d "./FontAndColorThemes/" ]]; then
		mkdir -p ./FontAndColorThemes/
	fi

	cp -rf ~/Library/Developer/Xcode/Templates/File\ Templates/* ./File\ Templates/ || error_exit "copy local file templates error"

	if [[ $(ls -l ~/Library/Developer/Xcode/UserData/CodeSnippets | grep -c '.codesnippet') != 0 ]]; then
		cp -f ~/Library/Developer/Xcode/UserData/CodeSnippets/*.codesnippet ./CodeSnippets/ || error_exit "copy local codesnippet error"
	fi

	if [[ $(ls -l ~/Library/Developer/Xcode/UserData/FontAndColorThemes | grep -c '.xccolortheme') != 0 ]]; then
		cp -f ~/Library/Developer/Xcode/UserData/FontAndColorThemes/*.xccolortheme ./FontAndColorThemes/ || error_exit "copy local xccolortheme error"
	fi

	if [ -n "$(git status -s)" ]; then
		git add .
		git commit -m "update"
		git push origin master
	fi
	
}

function sync_remote() {
	if [[ ! -d "~/Library/Developer/Xcode/Templates/File\ Templates/" ]]; then
		mkdir -p ~/Library/Developer/Xcode/Templates/File\ Templates/
	fi

	if [[ ! -d "~/Library/Developer/Xcode/UserData/CodeSnippets/" ]]; then
		mkdir -p ~/Library/Developer/Xcode/UserData/CodeSnippets/
	fi

	if [[ ! -d "~/Library/Developer/Xcode/UserData/FontAndColorThemes/" ]]; then
		mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
	fi

	cp -rf ./File\ Templates/* ~/Library/Developer/Xcode/Templates/File\ Templates/ || error_exit "copy remote file templates error"
	if [[ $(ls -l ./CodeSnippets | grep -c '.codesnippet') != 0  ]]; then
		cp -f ./CodeSnippets/*.codesnippet ~/Library/Developer/Xcode/UserData/CodeSnippets/ || error_exit "copy remote codesnippet error"
	fi

	if [[ $(ls -l ./FontAndColorThemes | grep -c '.xccolortheme') != 0  ]]; then
		cp -f ./FontAndColorThemes/*.xccolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/ || error_exit "copy remote codesnippet error"
	fi
}

function error_exit {
  echo "$1" 1>&2
  # exit 1
}

if [[ $1 == "local" ]]; then
	sync_local
elif [[ $1 == "remote" ]]; then
	sync_remote
else
	echo "script.sh local(将本地同步到远端) or remote(将远端同步到本地)"
fi