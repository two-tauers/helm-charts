# Simple rsync cronjob

Rsync cronjob to sync between two drives on the same node. Uses `ghcr.io/two-tauers/rsync` container image built from [eea's repo](https://github.com/eea/eea.docker.rsync) (to add arm builds).

## Prerequisites

- The pod should be running on a node with the both source and target mounts (set `nodeSelector`)

## Install

### From helm repo

```
helm repo add two-tauers https://two-tauers.github.io/helm-charts
helm install rsync two-tauers/rsync --namespace rsync --create-namespace
```

### From this repo

```
helm install rsync . --namespace rsync --create-namespace
```

## Uninstall

```
helm delete rsync -n rsync
```
