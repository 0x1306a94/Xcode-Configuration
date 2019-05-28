#!/bin/sh


function sync_local() {
	if [[ ! -d "./File\ Templates/" ]]; then
		mkdir -p ./File\ Templates/
	fi

	if [[ ! -d "./CodeSnippets/" ]]; then
		mkdir -p ./CodeSnippets/
	fi

	cp -rf ~/Library/Developer/Xcode/Templates/File\ Templates/* ./File\ Templates/ || error_exit "copy local file templates error"

	if [[ $(ls -l ~/Library/Developer/Xcode/UserData/CodeSnippets | grep -c '.codesnippet') != 0 ]]; then
		cp -f ~/Library/Developer/Xcode/UserData/CodeSnippets/*.codesnippet ./CodeSnippets/ || error_exit "copy local codesnippet error"
	fi
	
}

function sync_remote() {
	if [[ ! -d "~/Library/Developer/Xcode/Templates/File\ Templates/" ]]; then
		mkdir -p ~/Library/Developer/Xcode/Templates/File\ Templates/
	fi

	if [[ ! -d "~/Library/Developer/Xcode/UserData/CodeSnippets/" ]]; then
		mkdir -p ~/Library/Developer/Xcode/UserData/CodeSnippets/
	fi
	cp -rf ./File\ Templates/* ~/Library/Developer/Xcode/Templates/File\ Templates/ || error_exit "copy remote file templates error"
	if [[ $(ls -l ./CodeSnippets | grep -c '.codesnippet') != 0  ]]; then
		cp -f ./CodeSnippets/*.codesnippet ~/Library/Developer/Xcode/UserData/CodeSnippets/ || error_exit "copy remote codesnippet error"
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
	echo "script.sh local or remote"
fi