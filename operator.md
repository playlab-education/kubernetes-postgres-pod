### Postgres pod bundle

This bundle was designed for deploying a Postgres docker image onto a Kubernetes cluster so that it can be exec'd into.

### Steps to deploy

1. [Fork](https://github.com/mclacore/postgres-bundle/fork) this repo.

2. Run `mass bundle publish` to publish the bundle to your Massdriver organization.

3. Drag out onto the canvas and deploy.

4. `exec` into your Kubernetes cluster using `KUBECONFIG` and `kubectl` using `kubectl exec -it <name of postgres pod> -- sh`

For a guide on how to do this, go [here](https://docs.massdriver.cloud/runbooks/kubernetes/access)

5. Connect to your Postgres database using `psql -h <hostname> -U <username> -p <port> -d <database>`.

> [!TIP]
> You can find your `hostname`, `username`, `port`, and `password` by downloading the artifact for your Postgres manifest, under your `Artifact` tab. If it's a new Postgres deployment, the `database` is most likely `postgres`.
