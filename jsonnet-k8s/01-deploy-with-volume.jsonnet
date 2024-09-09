local k = import 'github.com/jsonnet-libs/k8s-libsonnet/1.30/main.libsonnet';

// initiate resources
local ns = k.core.v1.namespace;
local deploy = k.apps.v1.deployment;
local container = k.core.v1.container;
local vol = k.core.v1.volume;
local volMountPath = k.core.v1.volumeMount;

{
  myDeployment: deploy.new(
                  'test-deploy',
                  replicas=3,
                  containers=[
                    container.new('nginx', 'stable-bookworm')
                    + container.withVolumeMounts(
                      volMountPath.new(
                        'runtime-secret',
                        mountPath='/var/run/demo-secret',
                        readOnly=false
                      )
                    ),
                  ],
                  podLabels={
                    app: 'just-a-nginx',
                    rev: '1.1',
                  }
                ) + deploy.metadata.withNamespace('my-namespace')
                + deploy.spec.template.spec.withVolumes([
                  vol.fromEmptyDir('runtime-secret', {
                    medium: 'Memory',
                  }),
                ]),
}
