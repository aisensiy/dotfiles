set fish_greeting ""

set -gx TERM xterm-256color

set PATH $HOME/.jenv/bin $PATH

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH /opt/homebrew/bin $PATH
set -gx PATH $HOME/.cargo/bin $PATH

set -gx EDITOR nvim

if status is-interactive
    # Commands to run in interactive sessions can go here
    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    eval ~/miniconda3/bin/conda "shell.fish" "hook" $argv | source
    # <<< conda initialize <<<

    source (jenv init -|psub)
end

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

alias vim=nvim
alias k=kubectl
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
bass source ~/.nvm/nvm.sh
nvm use lts

direnv hook fish | source

switch (uname)
  case Darwin
    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    # Do nothing
  case '*'
    source (dirname (status --current-filename))/config-windows.fish
end


