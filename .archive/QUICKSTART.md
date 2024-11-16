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

```shell
helm repo add cognative https://cognative.work
helm upgrade -i cognative cognative/cognative
```
