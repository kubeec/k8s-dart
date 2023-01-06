//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_apps_v1_rolling_update_daemon_set.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_apps_v1_daemon_set_update_strategy.g.dart';

/// DaemonSetUpdateStrategy is a struct used to control the update strategy for a DaemonSet.
///
/// Properties:
/// * [rollingUpdate] 
/// * [type] - Type of daemon set update. Can be \"RollingUpdate\" or \"OnDelete\". Default is RollingUpdate.  
@BuiltValue()
abstract class IoK8sApiAppsV1DaemonSetUpdateStrategy implements Built<IoK8sApiAppsV1DaemonSetUpdateStrategy, IoK8sApiAppsV1DaemonSetUpdateStrategyBuilder> {
  @BuiltValueField(wireName: r'rollingUpdate')
  IoK8sApiAppsV1RollingUpdateDaemonSet? get rollingUpdate;

  /// Type of daemon set update. Can be \"RollingUpdate\" or \"OnDelete\". Default is RollingUpdate.  
  @BuiltValueField(wireName: r'type')
  String? get type;

  IoK8sApiAppsV1DaemonSetUpdateStrategy._();

  factory IoK8sApiAppsV1DaemonSetUpdateStrategy([void updates(IoK8sApiAppsV1DaemonSetUpdateStrategyBuilder b)]) = _$IoK8sApiAppsV1DaemonSetUpdateStrategy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAppsV1DaemonSetUpdateStrategyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAppsV1DaemonSetUpdateStrategy> get serializer => _$IoK8sApiAppsV1DaemonSetUpdateStrategySerializer();
}

class _$IoK8sApiAppsV1DaemonSetUpdateStrategySerializer implements PrimitiveSerializer<IoK8sApiAppsV1DaemonSetUpdateStrategy> {
  @override
  final Iterable<Type> types = const [IoK8sApiAppsV1DaemonSetUpdateStrategy, _$IoK8sApiAppsV1DaemonSetUpdateStrategy];

  @override
  final String wireName = r'IoK8sApiAppsV1DaemonSetUpdateStrategy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAppsV1DaemonSetUpdateStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.rollingUpdate != null) {
      yield r'rollingUpdate';
      yield serializers.serialize(
        object.rollingUpdate,
        specifiedType: const FullType(IoK8sApiAppsV1RollingUpdateDaemonSet),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAppsV1DaemonSetUpdateStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAppsV1DaemonSetUpdateStrategyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rollingUpdate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAppsV1RollingUpdateDaemonSet),
          ) as IoK8sApiAppsV1RollingUpdateDaemonSet;
          result.rollingUpdate.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAppsV1DaemonSetUpdateStrategy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAppsV1DaemonSetUpdateStrategyBuilder();
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

