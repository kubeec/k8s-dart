import 'dart:io';
import 'package:dio/dio.dart';
import 'package:k8s/k8s.dart';

Future<void> main(List<String> args) async {
  final kubernetes = Kubernetes();
  await kubernetes.initDefault();

  final versionApi = kubernetes.client.getVersionApi();
  final coreV1Api = kubernetes.client.getCoreV1Api();
  final appsV1Api = kubernetes.client.getAppsV1Api();

  // get cluster version
  final response1 = await versionApi.getCode();
  print('Cluster version: ${response1.data?.gitVersion}');

  // list pods for all namespaces
  final response2 = await coreV1Api.listPodForAllNamespaces();
  print('Pod count for all namespaces: ${response2.data?.items.length}');

  // read a deployment
  V1Deployment? existingDeployment;
  try {
    final response3 = await appsV1Api.readNamespacedDeployment(
      name: 'nginx-example',
      namespace: 'default',
    );
    existingDeployment = response3.data;
    print('Deployment UID: ${response3.data?.metadata!.uid}');
  } on DioException {
    print('nginx-example deployment not found');
  }

  if (existingDeployment != null) {
    // delete a deployment
    final response4 = await appsV1Api.deleteNamespacedDeployment(
      namespace: 'default',
      name: 'nginx-example',
    );
    print('Deployment delete status code: ${response4.statusCode}');
  }

  // new deployment object
  final newDeployment = V1Deployment(
    apiVersion: 'apps/v1',
    kind: StandardKind.deployment,
    metadata: V1ObjectMeta(
      name: 'nginx-example',
      labels: {'app': 'nginx'},
    ),
    spec: V1DeploymentSpec(
      replicas: 0,
      selector: V1LabelSelector(
        matchLabels: {'app': 'nginx'},
      ),
      template: V1PodTemplateSpec(
        metadata: V1ObjectMeta(
          labels: {'app': 'nginx'},
        ),
        spec: V1PodSpec(
          containers: <V1Container>[
            V1Container(
              name: 'nginx',
              image: 'nginx:1.25',
              ports: <V1ContainerPort>[
                V1ContainerPort(
                  containerPort: 80,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );

  // create a deployment with the appsV1Api
  final response5 = await appsV1Api.createNamespacedDeployment(
    namespace: 'default',
    body: newDeployment,
  );
  print('Create deployment status code: ${response5.statusCode}');

  /*
  // create a deployment with the genericClient
  final response6 = await kubernetes.genericClient.create<V1Deployment>(
    group: 'apps',
    version: 'v1',
    plural: StandardKindPlural.deployment,
    spec: newDeployment,
    namespace: 'default',
    throwExceptions: true,
  );
  print('Deployment UID: ${response6.metadata!.uid}');
  */

  exit(0);
}

// ignore_for_file: avoid_print
