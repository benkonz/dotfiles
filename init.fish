set -xg RUST_SRC_PATH (rustc --print sysroot)/lib/rustlib/src/rust/src
set -xg EDITOR /usr/bin/EDITOR
set -xg VISUAL /usr/bin/VISUAL
eval (opam env)
