# Samba server

Helm chart for running Samba share on kubernetes.

## Prerequisites

- The pod should be running on a node with the share (set `nodeSelector`)
- Shared path needs to be owned by an smb user:group (set `podSecurityContext.fsGroup`)

## Install

The smb user credentials secret is created automatically, there is currently no support for using an existing one. To avoid writing creds to a file, you can supply the values in CLI when installing/upgrading the helm chart, e.g. add `--set "samba.users[0].username=<USERNAME>" --set "samba.users[0].password=<PASSWORD>"`

### From helm repo

```
helm repo add two-tauers https://two-tauers.github.io/helm-charts
helm install samba two-tauers/samba --namespace samba --create-namespace
```

### From this repo

```
helm install samba . --namespace samba --create-namespace
```

## Uninstall

```
helm delete samba -n samba
```
