//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_apiserverinternal_v1alpha1_storage_version_condition.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_apiserverinternal_v1alpha1_server_storage_version.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_apiserverinternal_v1alpha1_storage_version_status.g.dart';

/// API server instances report the versions they can decode and the version they encode objects to when persisting objects in the backend.
///
/// Properties:
/// * [commonEncodingVersion] - If all API server instances agree on the same encoding storage version, then this field is set to that version. Otherwise this field is left empty. API servers should finish updating its storageVersionStatus entry before serving write operations, so that this field will be in sync with the reality.
/// * [conditions] - The latest available observations of the storageVersion's state.
/// * [storageVersions] - The reported versions per API server instance.
@BuiltValue()
abstract class IoK8sApiApiserverinternalV1alpha1StorageVersionStatus implements Built<IoK8sApiApiserverinternalV1alpha1StorageVersionStatus, IoK8sApiApiserverinternalV1alpha1StorageVersionStatusBuilder> {
  /// If all API server instances agree on the same encoding storage version, then this field is set to that version. Otherwise this field is left empty. API servers should finish updating its storageVersionStatus entry before serving write operations, so that this field will be in sync with the reality.
  @BuiltValueField(wireName: r'commonEncodingVersion')
  String? get commonEncodingVersion;

  /// The latest available observations of the storageVersion's state.
  @BuiltValueField(wireName: r'conditions')
  BuiltList<IoK8sApiApiserverinternalV1alpha1StorageVersionCondition>? get conditions;

  /// The reported versions per API server instance.
  @BuiltValueField(wireName: r'storageVersions')
  BuiltList<IoK8sApiApiserverinternalV1alpha1ServerStorageVersion>? get storageVersions;

  IoK8sApiApiserverinternalV1alpha1StorageVersionStatus._();

  factory IoK8sApiApiserverinternalV1alpha1StorageVersionStatus([void updates(IoK8sApiApiserverinternalV1alpha1StorageVersionStatusBuilder b)]) = _$IoK8sApiApiserverinternalV1alpha1StorageVersionStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiApiserverinternalV1alpha1StorageVersionStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiApiserverinternalV1alpha1StorageVersionStatus> get serializer => _$IoK8sApiApiserverinternalV1alpha1StorageVersionStatusSerializer();
}

class _$IoK8sApiApiserverinternalV1alpha1StorageVersionStatusSerializer implements PrimitiveSerializer<IoK8sApiApiserverinternalV1alpha1StorageVersionStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiApiserverinternalV1alpha1StorageVersionStatus, _$IoK8sApiApiserverinternalV1alpha1StorageVersionStatus];

  @override
  final String wireName = r'IoK8sApiApiserverinternalV1alpha1StorageVersionStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiApiserverinternalV1alpha1StorageVersionStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.commonEncodingVersion != null) {
      yield r'commonEncodingVersion';
      yield serializers.serialize(
        object.commonEncodingVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiApiserverinternalV1alpha1StorageVersionCondition)]),
      );
    }
    if (object.storageVersions != null) {
      yield r'storageVersions';
      yield serializers.serialize(
        object.storageVersions,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiApiserverinternalV1alpha1ServerStorageVersion)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiApiserverinternalV1alpha1StorageVersionStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiApiserverinternalV1alpha1StorageVersionStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'commonEncodingVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.commonEncodingVersion = valueDes;
          break;
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiApiserverinternalV1alpha1StorageVersionCondition)]),
          ) as BuiltList<IoK8sApiApiserverinternalV1alpha1StorageVersionCondition>;
          result.conditions.replace(valueDes);
          break;
        case r'storageVersions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiApiserverinternalV1alpha1ServerStorageVersion)]),
          ) as BuiltList<IoK8sApiApiserverinternalV1alpha1ServerStorageVersion>;
          result.storageVersions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiApiserverinternalV1alpha1StorageVersionStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiApiserverinternalV1alpha1StorageVersionStatusBuilder();
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

