//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_resource_quota_status.g.dart';

/// ResourceQuotaStatus defines the enforced hard limits and observed use.
///
/// Properties:
/// * [hard] - Hard is the set of enforced hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/
/// * [used] - Used is the current observed total usage of the resource in the namespace.
@BuiltValue()
abstract class IoK8sApiCoreV1ResourceQuotaStatus implements Built<IoK8sApiCoreV1ResourceQuotaStatus, IoK8sApiCoreV1ResourceQuotaStatusBuilder> {
  /// Hard is the set of enforced hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/
  @BuiltValueField(wireName: r'hard')
  BuiltMap<String, String>? get hard;

  /// Used is the current observed total usage of the resource in the namespace.
  @BuiltValueField(wireName: r'used')
  BuiltMap<String, String>? get used;

  IoK8sApiCoreV1ResourceQuotaStatus._();

  factory IoK8sApiCoreV1ResourceQuotaStatus([void updates(IoK8sApiCoreV1ResourceQuotaStatusBuilder b)]) = _$IoK8sApiCoreV1ResourceQuotaStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ResourceQuotaStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ResourceQuotaStatus> get serializer => _$IoK8sApiCoreV1ResourceQuotaStatusSerializer();
}

class _$IoK8sApiCoreV1ResourceQuotaStatusSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ResourceQuotaStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ResourceQuotaStatus, _$IoK8sApiCoreV1ResourceQuotaStatus];

  @override
  final String wireName = r'IoK8sApiCoreV1ResourceQuotaStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ResourceQuotaStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.hard != null) {
      yield r'hard';
      yield serializers.serialize(
        object.hard,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.used != null) {
      yield r'used';
      yield serializers.serialize(
        object.used,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1ResourceQuotaStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ResourceQuotaStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hard':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.hard.replace(valueDes);
          break;
        case r'used':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.used.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1ResourceQuotaStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ResourceQuotaStatusBuilder();
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

