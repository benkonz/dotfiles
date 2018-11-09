# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/bkonz/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# opam configuration
test -r /home/bkonz/.opam/opam-init/init.zsh && . /home/bkonz/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

PS1="%n@%M %~: "
# Add .NET Core SDK tools
export PATH="$PATH:/home/bkonz/.dotnet/tools"
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
