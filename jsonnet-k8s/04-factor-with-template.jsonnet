local alphaService = (import './libs/template.libsonnet') + {
  _config:: {
    name: 'todo',
    namespace: 'todo-app',
    replicas: 3,
    commonLabels: {
      app: 'todo',
      ver: '1.1',
      rel: 'alpha',
    },
  },
};

local betaService = (import './libs/template.libsonnet') + {
  _config:: {
    name: 'todo',
    namespace: 'todo-app-nightly',
    replicas: 1,
    commonLabels: {
      app: 'todo-nightly',
      ver: '1.2',
      rel: 'beta',
    },
  },
};

{
  alphaDeploy: alphaService.myDeployment,
  alphaSvc: alphaService.myService,
  betaDeploy: betaService.myDeployment,
  betaSvc: betaService.myService,
}
