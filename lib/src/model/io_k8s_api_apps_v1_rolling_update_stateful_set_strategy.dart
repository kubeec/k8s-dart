//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_apps_v1_rolling_update_stateful_set_strategy.g.dart';

/// RollingUpdateStatefulSetStrategy is used to communicate parameter for RollingUpdateStatefulSetStrategyType.
///
/// Properties:
/// * [maxUnavailable] - IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
/// * [partition] - Partition indicates the ordinal at which the StatefulSet should be partitioned for updates. During a rolling update, all pods from ordinal Replicas-1 to Partition are updated. All pods from ordinal Partition-1 to 0 remain untouched. This is helpful in being able to do a canary based deployment. The default value is 0.
@BuiltValue()
abstract class IoK8sApiAppsV1RollingUpdateStatefulSetStrategy implements Built<IoK8sApiAppsV1RollingUpdateStatefulSetStrategy, IoK8sApiAppsV1RollingUpdateStatefulSetStrategyBuilder> {
  /// IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
  @BuiltValueField(wireName: r'maxUnavailable')
  String? get maxUnavailable;

  /// Partition indicates the ordinal at which the StatefulSet should be partitioned for updates. During a rolling update, all pods from ordinal Replicas-1 to Partition are updated. All pods from ordinal Partition-1 to 0 remain untouched. This is helpful in being able to do a canary based deployment. The default value is 0.
  @BuiltValueField(wireName: r'partition')
  int? get partition;

  IoK8sApiAppsV1RollingUpdateStatefulSetStrategy._();

  factory IoK8sApiAppsV1RollingUpdateStatefulSetStrategy([void updates(IoK8sApiAppsV1RollingUpdateStatefulSetStrategyBuilder b)]) = _$IoK8sApiAppsV1RollingUpdateStatefulSetStrategy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAppsV1RollingUpdateStatefulSetStrategyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAppsV1RollingUpdateStatefulSetStrategy> get serializer => _$IoK8sApiAppsV1RollingUpdateStatefulSetStrategySerializer();
}

class _$IoK8sApiAppsV1RollingUpdateStatefulSetStrategySerializer implements PrimitiveSerializer<IoK8sApiAppsV1RollingUpdateStatefulSetStrategy> {
  @override
  final Iterable<Type> types = const [IoK8sApiAppsV1RollingUpdateStatefulSetStrategy, _$IoK8sApiAppsV1RollingUpdateStatefulSetStrategy];

  @override
  final String wireName = r'IoK8sApiAppsV1RollingUpdateStatefulSetStrategy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAppsV1RollingUpdateStatefulSetStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.maxUnavailable != null) {
      yield r'maxUnavailable';
      yield serializers.serialize(
        object.maxUnavailable,
        specifiedType: const FullType(String),
      );
    }
    if (object.partition != null) {
      yield r'partition';
      yield serializers.serialize(
        object.partition,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAppsV1RollingUpdateStatefulSetStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAppsV1RollingUpdateStatefulSetStrategyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'maxUnavailable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.maxUnavailable = valueDes;
          break;
        case r'partition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.partition = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAppsV1RollingUpdateStatefulSetStrategy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAppsV1RollingUpdateStatefulSetStrategyBuilder();
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

