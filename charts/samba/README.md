# Samba server

Helm chart for running Samba share on kubernetes.

## Prerequisites

- The pod should be running on a node with the share (set `nodeSelector`)
- Shared path needs to be owned by an smb user:group (set `podSecurityContext.fsGroup`)

## Install

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
