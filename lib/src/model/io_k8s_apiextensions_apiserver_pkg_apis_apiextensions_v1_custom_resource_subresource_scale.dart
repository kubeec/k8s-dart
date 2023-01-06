//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_subresource_scale.g.dart';

/// CustomResourceSubresourceScale defines how to serve the scale subresource for CustomResources.
///
/// Properties:
/// * [labelSelectorPath] - labelSelectorPath defines the JSON path inside of a custom resource that corresponds to Scale `status.selector`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.status` or `.spec`. Must be set to work with HorizontalPodAutoscaler. The field pointed by this JSON path must be a string field (not a complex selector struct) which contains a serialized label selector in string form. More info: https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the custom resource, the `status.selector` value in the `/scale` subresource will default to the empty string.
/// * [specReplicasPath] - specReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `spec.replicas`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.spec`. If there is no value under the given path in the custom resource, the `/scale` subresource will return an error on GET.
/// * [statusReplicasPath] - statusReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `status.replicas`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.status`. If there is no value under the given path in the custom resource, the `status.replicas` value in the `/scale` subresource will default to 0.
@BuiltValue()
abstract class IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale implements Built<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale, IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScaleBuilder> {
  /// labelSelectorPath defines the JSON path inside of a custom resource that corresponds to Scale `status.selector`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.status` or `.spec`. Must be set to work with HorizontalPodAutoscaler. The field pointed by this JSON path must be a string field (not a complex selector struct) which contains a serialized label selector in string form. More info: https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the custom resource, the `status.selector` value in the `/scale` subresource will default to the empty string.
  @BuiltValueField(wireName: r'labelSelectorPath')
  String? get labelSelectorPath;

  /// specReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `spec.replicas`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.spec`. If there is no value under the given path in the custom resource, the `/scale` subresource will return an error on GET.
  @BuiltValueField(wireName: r'specReplicasPath')
  String get specReplicasPath;

  /// statusReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `status.replicas`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.status`. If there is no value under the given path in the custom resource, the `status.replicas` value in the `/scale` subresource will default to 0.
  @BuiltValueField(wireName: r'statusReplicasPath')
  String get statusReplicasPath;

  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale._();

  factory IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale([void updates(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScaleBuilder b)]) = _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScaleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale> get serializer => _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScaleSerializer();
}

class _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScaleSerializer implements PrimitiveSerializer<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale> {
  @override
  final Iterable<Type> types = const [IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale, _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale];

  @override
  final String wireName = r'IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.labelSelectorPath != null) {
      yield r'labelSelectorPath';
      yield serializers.serialize(
        object.labelSelectorPath,
        specifiedType: const FullType(String),
      );
    }
    yield r'specReplicasPath';
    yield serializers.serialize(
      object.specReplicasPath,
      specifiedType: const FullType(String),
    );
    yield r'statusReplicasPath';
    yield serializers.serialize(
      object.statusReplicasPath,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScaleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'labelSelectorPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.labelSelectorPath = valueDes;
          break;
        case r'specReplicasPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.specReplicasPath = valueDes;
          break;
        case r'statusReplicasPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.statusReplicasPath = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScaleBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

