# global variables
set -xg PATH /Users/konz/.emacs.d/bin $PATH
set -xg EDITOR emacs -nw
set -xg VISUAL emacs
set -xg CC clang
set -xg CXX clang++

# rust/cargo configuration
source $HOME/.cargo/env
set -xg RUST_SRC_PATH (rustc --print sysroot)/lib/rustlib/src/rust/src

# fish autocomplete for GCP CLI utils
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc

# opam configuration
source /Users/konz/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

# ammonite only works with bash. This wrapper functions inits amm with a bash shell
function amm --description 'Scala REPL'
    sh -c 'amm "$@"' amm $argv
end

function git-root --description 'cd to git root'
  cd (git rev-parse --show-cdup)
end

function cloc-git --description 'CLOC the files not ignored by git'
  cloc (git ls-files)
end

function fish_greeting
end

