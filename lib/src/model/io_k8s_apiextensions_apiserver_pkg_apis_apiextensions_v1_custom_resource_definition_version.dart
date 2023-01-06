//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_validation.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_column_definition.dart';
import 'package:k8s/src/model/io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_subresources.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apiextensions_apiserver_pkg_apis_apiextensions_v1_custom_resource_definition_version.g.dart';

/// CustomResourceDefinitionVersion describes a version for CRD.
///
/// Properties:
/// * [additionalPrinterColumns] - additionalPrinterColumns specifies additional columns returned in Table output. See https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.
/// * [deprecated] - deprecated indicates this version of the custom resource API is deprecated. When set to true, API requests to this version receive a warning header in the server response. Defaults to false.
/// * [deprecationWarning] - deprecationWarning overrides the default warning returned to API clients. May only be set when `deprecated` is true. The default warning indicates this version is deprecated and recommends use of the newest served version of equal or greater stability, if one exists.
/// * [name] - name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at `/apis/<group>/<version>/...` if `served` is true.
/// * [schema] 
/// * [served] - served is a flag enabling/disabling this version from being served via REST APIs
/// * [storage] - storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.
/// * [subresources] 
@BuiltValue()
abstract class IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion implements Built<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion, IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersionBuilder> {
  /// additionalPrinterColumns specifies additional columns returned in Table output. See https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.
  @BuiltValueField(wireName: r'additionalPrinterColumns')
  BuiltList<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceColumnDefinition>? get additionalPrinterColumns;

  /// deprecated indicates this version of the custom resource API is deprecated. When set to true, API requests to this version receive a warning header in the server response. Defaults to false.
  @BuiltValueField(wireName: r'deprecated')
  bool? get deprecated;

  /// deprecationWarning overrides the default warning returned to API clients. May only be set when `deprecated` is true. The default warning indicates this version is deprecated and recommends use of the newest served version of equal or greater stability, if one exists.
  @BuiltValueField(wireName: r'deprecationWarning')
  String? get deprecationWarning;

  /// name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at `/apis/<group>/<version>/...` if `served` is true.
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'schema')
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation? get schema;

  /// served is a flag enabling/disabling this version from being served via REST APIs
  @BuiltValueField(wireName: r'served')
  bool get served;

  /// storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.
  @BuiltValueField(wireName: r'storage')
  bool get storage;

  @BuiltValueField(wireName: r'subresources')
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources? get subresources;

  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion._();

  factory IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion([void updates(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersionBuilder b)]) = _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion> get serializer => _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersionSerializer();
}

class _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersionSerializer implements PrimitiveSerializer<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion> {
  @override
  final Iterable<Type> types = const [IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion, _$IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion];

  @override
  final String wireName = r'IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.additionalPrinterColumns != null) {
      yield r'additionalPrinterColumns';
      yield serializers.serialize(
        object.additionalPrinterColumns,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceColumnDefinition)]),
      );
    }
    if (object.deprecated != null) {
      yield r'deprecated';
      yield serializers.serialize(
        object.deprecated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.deprecationWarning != null) {
      yield r'deprecationWarning';
      yield serializers.serialize(
        object.deprecationWarning,
        specifiedType: const FullType(String),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.schema != null) {
      yield r'schema';
      yield serializers.serialize(
        object.schema,
        specifiedType: const FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation),
      );
    }
    yield r'served';
    yield serializers.serialize(
      object.served,
      specifiedType: const FullType(bool),
    );
    yield r'storage';
    yield serializers.serialize(
      object.storage,
      specifiedType: const FullType(bool),
    );
    if (object.subresources != null) {
      yield r'subresources';
      yield serializers.serialize(
        object.subresources,
        specifiedType: const FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'additionalPrinterColumns':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceColumnDefinition)]),
          ) as BuiltList<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceColumnDefinition>;
          result.additionalPrinterColumns.replace(valueDes);
          break;
        case r'deprecated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.deprecated = valueDes;
          break;
        case r'deprecationWarning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deprecationWarning = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'schema':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation),
          ) as IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation;
          result.schema.replace(valueDes);
          break;
        case r'served':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.served = valueDes;
          break;
        case r'storage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.storage = valueDes;
          break;
        case r'subresources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources),
          ) as IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources;
          result.subresources.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersionBuilder();
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

