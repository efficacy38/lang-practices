local k = import 'github.com/jsonnet-libs/k8s-libsonnet/1.30/main.libsonnet';

// initiate resources
local ns = k.core.v1.namespace;
local deploy = k.apps.v1.deployment;
local container = k.core.v1.container;
local vol = k.core.v1.volume;
local volMountPath = k.core.v1.volumeMount;

local svc = k.core.v1.service;
local svcPort = k.core.v1.servicePort;

{
  _config:: {
    name: 'todo',
    namespace: 'todo-app',
    replicas: 3,
    commonLabels: {
      app: 'todo',
      ver: '1.1',
    },
  },

  myDeployment: deploy.new(
                  $._config.name,
                  replicas=$._config.replicas,
                  podLabels=$._config.commonLabels,
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
                ) + deploy.metadata.withNamespace($._config.namespace)
                + deploy.spec.template.spec.withVolumes([
                  vol.fromEmptyDir('runtime-secret', {
                    medium: 'Memory',
                  }),
                ]),

  my_service: svc.new(
    $._config.name,
    selector=$._config.commonLabels,
    ports=[
      svcPort.new(port=80, targetPort=80) + svcPort.withName('http'),
    ]
  ),
}
