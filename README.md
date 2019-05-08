To add qlik-k8s-demo-resources to the cluster:

helm repo add demotools https://analyticsearth.github.io/qlik-k8s-demo-resources
helm repo update
helm upgrade --install demotools demotools/qlik-k8s-demo-resources
