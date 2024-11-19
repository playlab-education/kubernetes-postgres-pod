### Postgres pod bundle

This bundle was designed for deploying a Postgres docker image onto a Kubernetes cluster so that it can be exec'd into.

### Steps to deploy

1. Deploy this bundle connected to your Kubernetes cluster.

2. `exec` into your Kubernetes cluster using `KUBECONFIG` and `kubectl` using `kubectl exec -it <name of postgres pod> -- sh`

For a guide on how to do this, go [here](https://docs.massdriver.cloud/runbooks/kubernetes/access)

3. Connect to your Postgres database using `psql -h <hostname> -U <username> -p <port> -d <database>`.

**Note**: You can find your `hostname`, `username`, `port`, and `password` by downloading the artifact for your Postgres manifest, under your `Artifact` tab. If it's a new Postgres deployment, the `database` is most likely `postgres`.
