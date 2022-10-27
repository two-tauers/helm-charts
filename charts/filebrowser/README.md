# Filebrowser

Helm chart for running [Filebrowser](https://filebrowser.org/) on kubernetes. Uses `filebrowser/filebrowser` container image (source: [github](https://github.com/filebrowser/filebrowser), [dockerhub](https://hub.docker.com/r/filebrowser/filebrowser)) by default.

## Prerequisites

- The pod should be running on a node with the share (set `nodeSelector`)
- Shared path needs to be owned by an smb user:group (set `podSecurityContext.fsGroup`)

## Install

The smb user credentials secret is created automatically, there is currently no support for using an existing one. To avoid writing creds to a file, you can supply the values in CLI when installing/upgrading the helm chart, e.g. add `--set "filebrowser.users[0].username=<USERNAME>" --set "filebrowser.users[0].password=<PASSWORD>"`

### From helm repo

```
helm repo add two-tauers https://two-tauers.github.io/helm-charts
helm install filebrowser two-tauers/filebrowser --namespace filebrowser --create-namespace
```

### From this repo

```
helm install filebrowser . --namespace filebrowser --create-namespace
```

## Uninstall

```
helm delete filebrowser -n filebrowser
```
