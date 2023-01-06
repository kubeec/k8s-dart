//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apimachinery_pkg_apis_meta_v1_api_resource.g.dart';

/// APIResource specifies the name of a resource and whether it is namespaced.
///
/// Properties:
/// * [categories] - categories is a list of the grouped resources this resource belongs to (e.g. 'all')
/// * [group] - group is the preferred group of the resource.  Empty implies the group of the containing resource list. For subresources, this may have a different value, for example: Scale\".
/// * [kind] - kind is the kind for the resource (e.g. 'Foo' is the kind for a resource 'foo')
/// * [name] - name is the plural name of the resource.
/// * [namespaced] - namespaced indicates if a resource is namespaced or not.
/// * [shortNames] - shortNames is a list of suggested short names of the resource.
/// * [singularName] - singularName is the singular name of the resource.  This allows clients to handle plural and singular opaquely. The singularName is more correct for reporting status on a single item and both singular and plural are allowed from the kubectl CLI interface.
/// * [storageVersionHash] - The hash value of the storage version, the version this resource is converted to when written to the data store. Value must be treated as opaque by clients. Only equality comparison on the value is valid. This is an alpha feature and may change or be removed in the future. The field is populated by the apiserver only if the StorageVersionHash feature gate is enabled. This field will remain optional even if it graduates.
/// * [verbs] - verbs is a list of supported kube verbs (this includes get, list, watch, create, update, patch, delete, deletecollection, and proxy)
/// * [version] - version is the preferred version of the resource.  Empty implies the version of the containing resource list For subresources, this may have a different value, for example: v1 (while inside a v1beta1 version of the core resource's group)\".
@BuiltValue()
abstract class IoK8sApimachineryPkgApisMetaV1APIResource implements Built<IoK8sApimachineryPkgApisMetaV1APIResource, IoK8sApimachineryPkgApisMetaV1APIResourceBuilder> {
  /// categories is a list of the grouped resources this resource belongs to (e.g. 'all')
  @BuiltValueField(wireName: r'categories')
  BuiltList<String>? get categories;

  /// group is the preferred group of the resource.  Empty implies the group of the containing resource list. For subresources, this may have a different value, for example: Scale\".
  @BuiltValueField(wireName: r'group')
  String? get group;

  /// kind is the kind for the resource (e.g. 'Foo' is the kind for a resource 'foo')
  @BuiltValueField(wireName: r'kind')
  String get kind;

  /// name is the plural name of the resource.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// namespaced indicates if a resource is namespaced or not.
  @BuiltValueField(wireName: r'namespaced')
  bool get namespaced;

  /// shortNames is a list of suggested short names of the resource.
  @BuiltValueField(wireName: r'shortNames')
  BuiltList<String>? get shortNames;

  /// singularName is the singular name of the resource.  This allows clients to handle plural and singular opaquely. The singularName is more correct for reporting status on a single item and both singular and plural are allowed from the kubectl CLI interface.
  @BuiltValueField(wireName: r'singularName')
  String get singularName;

  /// The hash value of the storage version, the version this resource is converted to when written to the data store. Value must be treated as opaque by clients. Only equality comparison on the value is valid. This is an alpha feature and may change or be removed in the future. The field is populated by the apiserver only if the StorageVersionHash feature gate is enabled. This field will remain optional even if it graduates.
  @BuiltValueField(wireName: r'storageVersionHash')
  String? get storageVersionHash;

  /// verbs is a list of supported kube verbs (this includes get, list, watch, create, update, patch, delete, deletecollection, and proxy)
  @BuiltValueField(wireName: r'verbs')
  BuiltList<String> get verbs;

  /// version is the preferred version of the resource.  Empty implies the version of the containing resource list For subresources, this may have a different value, for example: v1 (while inside a v1beta1 version of the core resource's group)\".
  @BuiltValueField(wireName: r'version')
  String? get version;

  IoK8sApimachineryPkgApisMetaV1APIResource._();

  factory IoK8sApimachineryPkgApisMetaV1APIResource([void updates(IoK8sApimachineryPkgApisMetaV1APIResourceBuilder b)]) = _$IoK8sApimachineryPkgApisMetaV1APIResource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApimachineryPkgApisMetaV1APIResourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApimachineryPkgApisMetaV1APIResource> get serializer => _$IoK8sApimachineryPkgApisMetaV1APIResourceSerializer();
}

class _$IoK8sApimachineryPkgApisMetaV1APIResourceSerializer implements PrimitiveSerializer<IoK8sApimachineryPkgApisMetaV1APIResource> {
  @override
  final Iterable<Type> types = const [IoK8sApimachineryPkgApisMetaV1APIResource, _$IoK8sApimachineryPkgApisMetaV1APIResource];

  @override
  final String wireName = r'IoK8sApimachineryPkgApisMetaV1APIResource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1APIResource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.categories != null) {
      yield r'categories';
      yield serializers.serialize(
        object.categories,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.group != null) {
      yield r'group';
      yield serializers.serialize(
        object.group,
        specifiedType: const FullType(String),
      );
    }
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'namespaced';
    yield serializers.serialize(
      object.namespaced,
      specifiedType: const FullType(bool),
    );
    if (object.shortNames != null) {
      yield r'shortNames';
      yield serializers.serialize(
        object.shortNames,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'singularName';
    yield serializers.serialize(
      object.singularName,
      specifiedType: const FullType(String),
    );
    if (object.storageVersionHash != null) {
      yield r'storageVersionHash';
      yield serializers.serialize(
        object.storageVersionHash,
        specifiedType: const FullType(String),
      );
    }
    yield r'verbs';
    yield serializers.serialize(
      object.verbs,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1APIResource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApimachineryPkgApisMetaV1APIResourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'categories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.categories.replace(valueDes);
          break;
        case r'group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.group = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'namespaced':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.namespaced = valueDes;
          break;
        case r'shortNames':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.shortNames.replace(valueDes);
          break;
        case r'singularName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.singularName = valueDes;
          break;
        case r'storageVersionHash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.storageVersionHash = valueDes;
          break;
        case r'verbs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.verbs.replace(valueDes);
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApimachineryPkgApisMetaV1APIResource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApimachineryPkgApisMetaV1APIResourceBuilder();
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

