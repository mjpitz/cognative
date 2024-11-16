# Getting Started

## Docker

Currently, in order to deploy docker, you will need to clone the repository and deploy the stack as if you were
contributing code to the project. This will require a few system dependencies (including [NodeJS][] and [PNPM][]).

[NodeJS]: https://nodejs.org
[PNPM]: https://pnpm.io

```shell
git clone https://github.com/mjpitz/cognative.git
cd cognative

# install dependencies
pnpm install

# provision a certificate
pnpm docker:cert

# deploy the stack
pnpm docker:deploy
```

### Kubernetes

Currently, the [Helm](https://helm.sh) charts for deploying Cognative are hosted out of my personal Helm repository.
This repository contains a few more deployment configurations as means to demonstrate a variety of configurations.

```shell
helm repo add mya https://mya.sh
helm upgrade -i cognative mya/cognative
```
