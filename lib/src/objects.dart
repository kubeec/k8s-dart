import 'package:k8s/src/model/model.dart';

/// {@template kubernetes_object}
/// Standard kubernetes object
/// {@endtemplate}
abstract class KubernetesObject {
  /// {@macro kubernetes_object}
  const KubernetesObject({
    required this.apiVersion,
    required this.kind,
    required this.metadata,
  });

  /// API Version of the kubernetes object
  final String? apiVersion;

  /// Kind of the kubernetes object
  final String? kind;

  /// Object metadata
  final V1ObjectMeta? metadata;
}

/// {@template kubernetes_list_object}
/// Standard kubernetes list object
/// {@endtemplate}
abstract class KubernetesListObject<T extends KubernetesObject> {
  /// {@macro kubernetes_list_object}
  KubernetesListObject({
    required this.apiVersion,
    required this.kind,
    required this.metadata,
    required this.items,
  });

  /// API Version of the kubernetes object
  final String? apiVersion;

  /// Kind of the kubernetes object
  final String? kind;

  /// Object metadata
  final V1ListMeta? metadata;

  /// List items
  final List<T>? items;
}
