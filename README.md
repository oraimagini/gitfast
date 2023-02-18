GITFAST - Terminal tool to level up on your GitHub.

USAGE:
   gitfast [message]

OPTIONS:
   -h | --help     Show this manual.

Good practices:
feat: A new feature for the user.
fix: Fixes a bug that affects the user.
perf: Changes that improve site performance.
build: Changes to the build system, deployment or installation tasks.
ci: Changes in continuous integration.
docs: Changes in documentation.
Refactor: Refactoring code as variable or function name changes.
style: Changes of formatting, tabs, spaces or semicolons, etc They do not affect the user.
test: Add tests or refactor an existing one.

EXAMPLE:
gitfast feat-web: Add new search feature



## Required 

* [`git`](https://github.com/git/git)



## Install 

### Debian
```
sudo apt update
sudo apt install git
git --version
```

### Fedora
```
sudo dnf upgrade --refresh
sudo dnf install git -y
```

### Arch
```
$ sudo pacman -Syyu
sudo pacman -S git
```



## Config Global
### The first step is to provide your name that will be set Globally.
```
git config --global user.name "YOUR NAME"
```
### Next, select your e-mail; this can be fake if you prefer.
```
git config --global user.email "YOUR EMAIL"
```
#### then create a directory for users who want to create a new directory strictly for GIT and you're good to go.



## RUN
```
gitfast [message]
```

### or
```
gitup
```

