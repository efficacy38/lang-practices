# jsonnet-k8s

## k8s-libsonnet

apply jsonnet patchs

```jsonnet
(import "github.com/jsonnet-libs/k8s-libsonnet/1.21/main.libsonnet")
+ (import "github.com/jsonnet-libs/k8s-libsonnet/extensions/<name>.libsonnet")
```

## Reference

1. [official blog post about jsonnet and K8s](https://jsonnet.org/articles/kubernetes.html)
2. [presentation about use jsonnet in production](https://www.youtube.com/watch?v=QIDrdZlEQdw&t=635s)
3. [K8s-libsonnet doc - K8s base object library](https://jsonnet-libs.github.io/k8s-libsonnet/)
4. [K8s-libsonnet source - K8s base object library](https://github.com/jsonnet-libs/k8s-libsonnet)
