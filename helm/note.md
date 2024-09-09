# Helm

## small example

1. deploy without any config
   - `helm install -n test-ns --create-namespace hello-world hello-world-ppony/hello-world`
2. check note about this helm chart
   - `helm get notes -n test-ns hello-world`
3. upgrade with values.yaml
   - `helm upgrade -n test-ns hello-world-ppony/hello-world -f values.yaml`
4. check release history
   - `helm history -n test-ns hello-world`
5. rollback to specific release revision 1
   - `helm rollback -n test-ns hello-world 1`
