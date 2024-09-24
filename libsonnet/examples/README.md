# Examples

This directory contains a handful of examples on how to use the jsonnet library. First, you'll need to install the 
tooling and dependencies.

```shell
# required tooling... theres *nix alternatives, just don't know them off the top of my head
brew install go-jsonnet jsonnet-bundler

# install dependencies from jsonnetfile.json
jb install
```

Once that's installed, you'll need to run `jsonnet` and point it at the appropriate vendor directory. `-S` outputs the
raw query string.

```shell
jsonnet -J vendor -S gauge.jsonnet
jsonnet -J vendor -S grouped.jsonnet

# not yet working...
jsonnet -J vendor -S sum.jsonnet
```
