#!/bin/bash

msg=$@
user=$(whoami)

show_usage() {
      echo -e "\nGITFAST - Terminal tool to level up on your GitHub."
      echo -e "\nUSAGE:"
      echo -e "   gitfast [message]"
      echo -e "\nOPTIONS:"
      echo -e "   -h | --help     Show this manual.\n"
      echo -e "Good practices:"
      echo -e "feat: A new feature for the user."
      echo -e "fix: Fixes a bug that affects the user."
      echo -e "perf: Changes that improve site performance."
      echo -e "build: Changes to the build system, deployment or installation tasks."
      echo -e "ci: Changes in continuous integration."
      echo -e "docs: Changes in documentation."
      echo -e "Refactor: Refactoring code as variable or function name changes."
      echo -e "style: Changes of formatting, tabs, spaces or semicolons, etc They do not affect the user."
      echo -e "test: Add tests or refactor an existing one.\n"
      echo -e "EXAMPLE:"
      echo -e "gitfast feat-web: Add new search feature\n"
}

git_pull() {
   git pull && echo -e "\e[32;1m ==> \e[0m your pull was successful"
}

git_fast() {
  git status
  git add .
  git commit -m "$msg"
  echo -e "\e[32;1m ==> \e[0m your commit was successful"
  echo -e "\e[34;1m  -> \e[0m $msg"
  git push && echo -e "\e[32;1m ==> your push was successful\e[0m"
#  git status
}

if [[ $msg = "" ]]
then
  echo -e "\x1b[91;49;1mX\e[0m Empty parameter field"
  echo -e "\x1b[37;49;1m...\e[0m You must put a message in your commit !!"
  echo "   EXAMPLE: gitfast type-scope: description"
  exit
elif [[ $msg == "-h" || $msg == "--help" ]]
then
  show_usage
else
  echo -e "\e[34;1m :: \e[0m $user, your changes will be uploaded"
  git_pull && git_fast
fi
