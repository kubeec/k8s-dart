[![k8s-dart Logo][k8s_dart_logo]][k8s_dart_link]

[![CI][ci_badge]][ci_link]
[![Coverage][coverage_badge]][coverage_link]
[![License: MIT][license_badge]][license_link]
[![pub][pub_badge]][pub_link]

---

A Dart library for the [Kubernetes](https://kubernetes.io/) API.

> [!WARNING]
> Work in Progress
>
> We keep working on it until we have all the features of the officially-supported [Kubernetes JavaScript client][kubernetes_javascript_client_link].

Developed with 💙 by Kubeec Team

## Installation 💻

For quick start, please use this package as a library

With Dart:

```sh
dart pub add k8s
```

With Flutter:

```sh
flutter pub add k8s
```

For more information, please visit the [pub.dev](https://pub.dev/packages/k8s/install)

## Quick Start 🚀

List pods for all namespaces:

```dart
import 'package:k8s/k8s.dart';

Future<void> main() async {
  final kubernetes = Kubernetes();
  await kubernetes.initDefault();
  final coreV1Api = kubernetes.client.getCoreV1Api();
  final pods = await coreV1Api.listPodForAllNamespaces();
  print('All namespaces have ${pods.data?.items.length} pods.');
}
```

[k8s_dart_logo]: https://raw.githubusercontent.com/kubeec/k8s-dart/main/assets/logo.svg
[k8s_dart_link]: https://github.com/kubeec/k8s-dart
[ci_badge]: https://github.com/kubeec/k8s-dart/actions/workflows/ci.yml/badge.svg?branch=main
[ci_link]: https://github.com/kubeec/k8s-dart/actions/workflows/ci.yml
[coverage_badge]: https://codecov.io/github/kubeec/k8s-dart/graph/badge.svg?token=HJNIIKONS2
[coverage_link]: https://codecov.io/github/kubeec/k8s-dart
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[pub_badge]: https://img.shields.io/pub/v/k8s
[pub_link]: https://pub.dev/packages/k8s
[kubernetes_javascript_client_link]: https://github.com/kubernetes-client/javascript
