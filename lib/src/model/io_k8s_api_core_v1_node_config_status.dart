//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_node_config_source.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_node_config_status.g.dart';

/// NodeConfigStatus describes the status of the config assigned by Node.Spec.ConfigSource.
///
/// Properties:
/// * [active] 
/// * [assigned] 
/// * [error] - Error describes any problems reconciling the Spec.ConfigSource to the Active config. Errors may occur, for example, attempting to checkpoint Spec.ConfigSource to the local Assigned record, attempting to checkpoint the payload associated with Spec.ConfigSource, attempting to load or validate the Assigned config, etc. Errors may occur at different points while syncing config. Earlier errors (e.g. download or checkpointing errors) will not result in a rollback to LastKnownGood, and may resolve across Kubelet retries. Later errors (e.g. loading or validating a checkpointed config) will result in a rollback to LastKnownGood. In the latter case, it is usually possible to resolve the error by fixing the config assigned in Spec.ConfigSource. You can find additional information for debugging by searching the error message in the Kubelet log. Error is a human-readable description of the error state; machines can check whether or not Error is empty, but should not rely on the stability of the Error text across Kubelet versions.
/// * [lastKnownGood] 
@BuiltValue()
abstract class IoK8sApiCoreV1NodeConfigStatus implements Built<IoK8sApiCoreV1NodeConfigStatus, IoK8sApiCoreV1NodeConfigStatusBuilder> {
  @BuiltValueField(wireName: r'active')
  IoK8sApiCoreV1NodeConfigSource? get active;

  @BuiltValueField(wireName: r'assigned')
  IoK8sApiCoreV1NodeConfigSource? get assigned;

  /// Error describes any problems reconciling the Spec.ConfigSource to the Active config. Errors may occur, for example, attempting to checkpoint Spec.ConfigSource to the local Assigned record, attempting to checkpoint the payload associated with Spec.ConfigSource, attempting to load or validate the Assigned config, etc. Errors may occur at different points while syncing config. Earlier errors (e.g. download or checkpointing errors) will not result in a rollback to LastKnownGood, and may resolve across Kubelet retries. Later errors (e.g. loading or validating a checkpointed config) will result in a rollback to LastKnownGood. In the latter case, it is usually possible to resolve the error by fixing the config assigned in Spec.ConfigSource. You can find additional information for debugging by searching the error message in the Kubelet log. Error is a human-readable description of the error state; machines can check whether or not Error is empty, but should not rely on the stability of the Error text across Kubelet versions.
  @BuiltValueField(wireName: r'error')
  String? get error;

  @BuiltValueField(wireName: r'lastKnownGood')
  IoK8sApiCoreV1NodeConfigSource? get lastKnownGood;

  IoK8sApiCoreV1NodeConfigStatus._();

  factory IoK8sApiCoreV1NodeConfigStatus([void updates(IoK8sApiCoreV1NodeConfigStatusBuilder b)]) = _$IoK8sApiCoreV1NodeConfigStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1NodeConfigStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1NodeConfigStatus> get serializer => _$IoK8sApiCoreV1NodeConfigStatusSerializer();
}

class _$IoK8sApiCoreV1NodeConfigStatusSerializer implements PrimitiveSerializer<IoK8sApiCoreV1NodeConfigStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1NodeConfigStatus, _$IoK8sApiCoreV1NodeConfigStatus];

  @override
  final String wireName = r'IoK8sApiCoreV1NodeConfigStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1NodeConfigStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.active != null) {
      yield r'active';
      yield serializers.serialize(
        object.active,
        specifiedType: const FullType(IoK8sApiCoreV1NodeConfigSource),
      );
    }
    if (object.assigned != null) {
      yield r'assigned';
      yield serializers.serialize(
        object.assigned,
        specifiedType: const FullType(IoK8sApiCoreV1NodeConfigSource),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastKnownGood != null) {
      yield r'lastKnownGood';
      yield serializers.serialize(
        object.lastKnownGood,
        specifiedType: const FullType(IoK8sApiCoreV1NodeConfigSource),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1NodeConfigStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1NodeConfigStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1NodeConfigSource),
          ) as IoK8sApiCoreV1NodeConfigSource;
          result.active.replace(valueDes);
          break;
        case r'assigned':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1NodeConfigSource),
          ) as IoK8sApiCoreV1NodeConfigSource;
          result.assigned.replace(valueDes);
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
          break;
        case r'lastKnownGood':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1NodeConfigSource),
          ) as IoK8sApiCoreV1NodeConfigSource;
          result.lastKnownGood.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1NodeConfigStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1NodeConfigStatusBuilder();
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

