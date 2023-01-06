//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_container_state_terminated.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_container_state_waiting.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_container_state_running.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_container_state.g.dart';

/// ContainerState holds a possible state of container. Only one of its members may be specified. If none of them is specified, the default one is ContainerStateWaiting.
///
/// Properties:
/// * [running] 
/// * [terminated] 
/// * [waiting] 
@BuiltValue()
abstract class IoK8sApiCoreV1ContainerState implements Built<IoK8sApiCoreV1ContainerState, IoK8sApiCoreV1ContainerStateBuilder> {
  @BuiltValueField(wireName: r'running')
  IoK8sApiCoreV1ContainerStateRunning? get running;

  @BuiltValueField(wireName: r'terminated')
  IoK8sApiCoreV1ContainerStateTerminated? get terminated;

  @BuiltValueField(wireName: r'waiting')
  IoK8sApiCoreV1ContainerStateWaiting? get waiting;

  IoK8sApiCoreV1ContainerState._();

  factory IoK8sApiCoreV1ContainerState([void updates(IoK8sApiCoreV1ContainerStateBuilder b)]) = _$IoK8sApiCoreV1ContainerState;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ContainerStateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ContainerState> get serializer => _$IoK8sApiCoreV1ContainerStateSerializer();
}

class _$IoK8sApiCoreV1ContainerStateSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ContainerState> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ContainerState, _$IoK8sApiCoreV1ContainerState];

  @override
  final String wireName = r'IoK8sApiCoreV1ContainerState';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ContainerState object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.running != null) {
      yield r'running';
      yield serializers.serialize(
        object.running,
        specifiedType: const FullType(IoK8sApiCoreV1ContainerStateRunning),
      );
    }
    if (object.terminated != null) {
      yield r'terminated';
      yield serializers.serialize(
        object.terminated,
        specifiedType: const FullType(IoK8sApiCoreV1ContainerStateTerminated),
      );
    }
    if (object.waiting != null) {
      yield r'waiting';
      yield serializers.serialize(
        object.waiting,
        specifiedType: const FullType(IoK8sApiCoreV1ContainerStateWaiting),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1ContainerState object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ContainerStateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'running':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ContainerStateRunning),
          ) as IoK8sApiCoreV1ContainerStateRunning;
          result.running.replace(valueDes);
          break;
        case r'terminated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ContainerStateTerminated),
          ) as IoK8sApiCoreV1ContainerStateTerminated;
          result.terminated.replace(valueDes);
          break;
        case r'waiting':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ContainerStateWaiting),
          ) as IoK8sApiCoreV1ContainerStateWaiting;
          result.waiting.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1ContainerState deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ContainerStateBuilder();
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

