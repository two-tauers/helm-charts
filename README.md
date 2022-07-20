# two-tauers helm charts

## Usage

[Helm](https://helm.sh) must be installed to use the charts.
Please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, add the repo as follows:

```console
helm repo add two-tauers https://two-tauers.github.io/helm-charts
```

If you had already added this repo earlier, run `helm repo update two-tauers` to retrieve the latest versions of the packages.

You can then run `helm search repo two-tauers` to see the charts.

## Charts

### `nfs-provisioner`

NFS storage provisioner for a kubernetes cluster, using a hard drive mounted on a node.

Storage is mounted on one of the nodes.
Label the node that has a drive attached, e.g.:

```
kubectl label node k8s-control-node storage=enabled
```

Default path on the node that NFS server will be sharing is `/storage`.
That and the node selector can be customised in `values.yaml`.

See comments in [charts/nfs-provisioner/values.yaml](values.yaml) for explanation.
