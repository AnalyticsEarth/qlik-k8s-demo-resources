How to create a new subchart:
1. navigate to qlik-k8s-demo-resources/charts
1. helm create <chartname>
1. Update chart templates

To publish a new version of the chart:
1. helm package -d docs/ qlik-k8s-demo-resources
1. helm repo index docs/ --url https://analyticsearth.github.io/qlik-k8s-demo-resources/
