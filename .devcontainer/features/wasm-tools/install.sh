#!/bin/bash
set -e
rustup target add wasm32-wasi
curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash
cargo binstall -y wasm-tools
curl https://wasmtime.dev/install.sh -sSf | sudo -u $_REMOTE_USER bash -s
