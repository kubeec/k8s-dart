//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_conversion.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_definition_names.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_definition_version.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_definition_spec.g.dart';

/// CustomResourceDefinitionSpec describes how a user wants their resource to appear
///
/// Properties:
/// * [conversion] 
/// * [group] - group is the API group of the defined custom resource. The custom resources are served under `/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).
/// * [names] 
/// * [preserveUnknownFields] - preserveUnknownFields indicates that object fields which are not specified in the OpenAPI schema should be preserved when persisting to storage. apiVersion, kind, metadata and known fields inside metadata are always preserved. This field is deprecated in favor of setting `x-preserve-unknown-fields` to true in `spec.versions[*].schema.openAPIV3Schema`. See https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-resource-definitions/#field-pruning for details.
/// * [scope] - scope indicates whether the defined custom resource is cluster- or namespace-scoped. Allowed values are `Cluster` and `Namespaced`.
/// * [versions] - versions is the list of all API versions of the defined custom resource. Version names are used to compute the order in which served versions are listed in API discovery. If the version string is \"kube-like\", it will sort above non \"kube-like\" version strings, which are ordered lexicographically. \"Kube-like\" versions start with a \"v\", then are followed by a number (the major version), then optionally the string \"alpha\" or \"beta\" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
@BuiltValue()
abstract class IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpec implements Built<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpec, IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpecBuilder> {
  @BuiltValueField(wireName: r'conversion')
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion? get conversion;

  /// group is the API group of the defined custom resource. The custom resources are served under `/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).
  @BuiltValueField(wireName: r'group')
  String get group;

  @BuiltValueField(wireName: r'names')
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames get names;

  /// preserveUnknownFields indicates that object fields which are not specified in the OpenAPI schema should be preserved when persisting to storage. apiVersion, kind, metadata and known fields inside metadata are always preserved. This field is deprecated in favor of setting `x-preserve-unknown-fields` to true in `spec.versions[*].schema.openAPIV3Schema`. See https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-resource-definitions/#field-pruning for details.
  @BuiltValueField(wireName: r'preserveUnknownFields')
  bool? get preserveUnknownFields;

  /// scope indicates whether the defined custom resource is cluster- or namespace-scoped. Allowed values are `Cluster` and `Namespaced`.
  @BuiltValueField(wireName: r'scope')
  String get scope;

  /// versions is the list of all API versions of the defined custom resource. Version names are used to compute the order in which served versions are listed in API discovery. If the version string is \"kube-like\", it will sort above non \"kube-like\" version strings, which are ordered lexicographically. \"Kube-like\" versions start with a \"v\", then are followed by a number (the major version), then optionally the string \"alpha\" or \"beta\" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
  @BuiltValueField(wireName: r'versions')
  BuiltList<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion> get versions;

  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpec._();

  factory IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpec([void updates(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpecBuilder b)]) = _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpec> get serializer => _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpecSerializer();
}

class _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpecSerializer implements PrimitiveSerializer<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpec, _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpec];

  @override
  final String wireName = r'IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.conversion != null) {
      yield r'conversion';
      yield serializers.serialize(
        object.conversion,
        specifiedType: const FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion),
      );
    }
    yield r'group';
    yield serializers.serialize(
      object.group,
      specifiedType: const FullType(String),
    );
    yield r'names';
    yield serializers.serialize(
      object.names,
      specifiedType: const FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames),
    );
    if (object.preserveUnknownFields != null) {
      yield r'preserveUnknownFields';
      yield serializers.serialize(
        object.preserveUnknownFields,
        specifiedType: const FullType(bool),
      );
    }
    yield r'scope';
    yield serializers.serialize(
      object.scope,
      specifiedType: const FullType(String),
    );
    yield r'versions';
    yield serializers.serialize(
      object.versions,
      specifiedType: const FullType(BuiltList, [FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'conversion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion),
          ) as IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion;
          result.conversion.replace(valueDes);
          break;
        case r'group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.group = valueDes;
          break;
        case r'names':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames),
          ) as IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames;
          result.names.replace(valueDes);
          break;
        case r'preserveUnknownFields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.preserveUnknownFields = valueDes;
          break;
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.scope = valueDes;
          break;
        case r'versions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion)]),
          ) as BuiltList<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion>;
          result.versions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionSpecBuilder();
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

