To add qlik-k8s-demo-resources to the cluster:

1. `helm repo add demotools https://analyticsearth.github.io/qlik-k8s-demo-resources`
1. `helm repo update`
1. `helm upgrade --install demotools demotools/qlik-k8s-demo-resources`
