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

if [[ $msg = "" ]]
then
  echo "🚫 Empty parameter field"
  echo "💬 You must put a message in your commit !!"
  echo "   EXAMPLE: gitfast type-scope: description"
  exit
elif [[ $msg == "-h" || $msg == "--help" ]]
then
  show_usage
else
  echo "🧐 $user, Se subirán tus cambios..."
  git status
  git add .
  git commit -m "$msg"
  git push
  git status
fi
