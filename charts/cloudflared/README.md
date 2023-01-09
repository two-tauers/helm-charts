# Cloudflare tunnel agent

CloudflareD agent to route traffic via an existing Cloudflare tunnel.

## Prerequisites

- Existing Cloudflare tunnel (see, e.g. [this guide](https://developers.cloudflare.com/cloudflare-one/tutorials/many-cfd-one-tunnel/))
- Credentials file in the same namespace:
    ```bash
    kubectl create secret generic tunnel-credentials \
    --from-file=credentials.json=$HOME/.cloudflared/<TUNNEL_ID>.json
    ```

## Install

### From helm repo

```
helm repo add two-tauers https://two-tauers.github.io/helm-charts
helm install cloudflared two-tauers/cloudflared --namespace cloudflared --create-namespace
```

### From this repo

```
helm install cloudflared . --namespace cloudflared --create-namespace
```

## Uninstall

```
helm delete cloudflared -n cloudflared
```
