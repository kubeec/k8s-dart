//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_object_meta.dart';
import 'package:k8s/src/model/io_k8s_api_apiserverinternal_v1alpha1_storage_version_status.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_apiserverinternal_v1alpha1_storage_version.g.dart';

/// Storage version of a specific resource.
///
/// Properties:
/// * [apiVersion] - APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
/// * [kind] - Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
/// * [metadata] 
/// * [spec] - StorageVersionSpec is an empty spec.
/// * [status] 
@BuiltValue()
abstract class IoK8sApiApiserverinternalV1alpha1StorageVersion implements Built<IoK8sApiApiserverinternalV1alpha1StorageVersion, IoK8sApiApiserverinternalV1alpha1StorageVersionBuilder> {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'metadata')
  IoK8sApimachineryPkgApisMetaV1ObjectMeta? get metadata;

  /// StorageVersionSpec is an empty spec.
  @BuiltValueField(wireName: r'spec')
  JsonObject get spec;

  @BuiltValueField(wireName: r'status')
  IoK8sApiApiserverinternalV1alpha1StorageVersionStatus get status;

  IoK8sApiApiserverinternalV1alpha1StorageVersion._();

  factory IoK8sApiApiserverinternalV1alpha1StorageVersion([void updates(IoK8sApiApiserverinternalV1alpha1StorageVersionBuilder b)]) = _$IoK8sApiApiserverinternalV1alpha1StorageVersion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiApiserverinternalV1alpha1StorageVersionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiApiserverinternalV1alpha1StorageVersion> get serializer => _$IoK8sApiApiserverinternalV1alpha1StorageVersionSerializer();
}

class _$IoK8sApiApiserverinternalV1alpha1StorageVersionSerializer implements PrimitiveSerializer<IoK8sApiApiserverinternalV1alpha1StorageVersion> {
  @override
  final Iterable<Type> types = const [IoK8sApiApiserverinternalV1alpha1StorageVersion, _$IoK8sApiApiserverinternalV1alpha1StorageVersion];

  @override
  final String wireName = r'IoK8sApiApiserverinternalV1alpha1StorageVersion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiApiserverinternalV1alpha1StorageVersion object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apiVersion != null) {
      yield r'apiVersion';
      yield serializers.serialize(
        object.apiVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ObjectMeta),
      );
    }
    yield r'spec';
    yield serializers.serialize(
      object.spec,
      specifiedType: const FullType(JsonObject),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(IoK8sApiApiserverinternalV1alpha1StorageVersionStatus),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiApiserverinternalV1alpha1StorageVersion object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiApiserverinternalV1alpha1StorageVersionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'apiVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.apiVersion = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ObjectMeta),
          ) as IoK8sApimachineryPkgApisMetaV1ObjectMeta;
          result.metadata.replace(valueDes);
          break;
        case r'spec':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.spec = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiApiserverinternalV1alpha1StorageVersionStatus),
          ) as IoK8sApiApiserverinternalV1alpha1StorageVersionStatus;
          result.status.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiApiserverinternalV1alpha1StorageVersion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiApiserverinternalV1alpha1StorageVersionBuilder();
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

