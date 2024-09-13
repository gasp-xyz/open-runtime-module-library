#!/usr/bin/env bash

set -e

COMMAND=$1
shift

set -x

DIRS=(
	"asset-registry/Cargo.toml"
	"traits/Cargo.toml"
	"tokens/Cargo.toml"
	"utilities/Cargo.toml"
)

for file in ${DIRS[@]}; do
	cargo $COMMAND $@ --manifest-path "$file"
done
