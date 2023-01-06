//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_container_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_container_status.g.dart';

/// ContainerStatus contains details for the current status of this container.
///
/// Properties:
/// * [containerID] - Container's ID in the format '<type>://<container_id>'.
/// * [image] - The image the container is running. More info: https://kubernetes.io/docs/concepts/containers/images.
/// * [imageID] - ImageID of the container's image.
/// * [lastState] 
/// * [name] - This must be a DNS_LABEL. Each container in a pod must have a unique name. Cannot be updated.
/// * [ready] - Specifies whether the container has passed its readiness probe.
/// * [restartCount] - The number of times the container has been restarted.
/// * [started] - Specifies whether the container has passed its startup probe. Initialized as false, becomes true after startupProbe is considered successful. Resets to false when the container is restarted, or if kubelet loses state temporarily. Is always true when no startupProbe is defined.
/// * [state] 
@BuiltValue()
abstract class IoK8sApiCoreV1ContainerStatus implements Built<IoK8sApiCoreV1ContainerStatus, IoK8sApiCoreV1ContainerStatusBuilder> {
  /// Container's ID in the format '<type>://<container_id>'.
  @BuiltValueField(wireName: r'containerID')
  String? get containerID;

  /// The image the container is running. More info: https://kubernetes.io/docs/concepts/containers/images.
  @BuiltValueField(wireName: r'image')
  String get image;

  /// ImageID of the container's image.
  @BuiltValueField(wireName: r'imageID')
  String get imageID;

  @BuiltValueField(wireName: r'lastState')
  IoK8sApiCoreV1ContainerState? get lastState;

  /// This must be a DNS_LABEL. Each container in a pod must have a unique name. Cannot be updated.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Specifies whether the container has passed its readiness probe.
  @BuiltValueField(wireName: r'ready')
  bool get ready;

  /// The number of times the container has been restarted.
  @BuiltValueField(wireName: r'restartCount')
  int get restartCount;

  /// Specifies whether the container has passed its startup probe. Initialized as false, becomes true after startupProbe is considered successful. Resets to false when the container is restarted, or if kubelet loses state temporarily. Is always true when no startupProbe is defined.
  @BuiltValueField(wireName: r'started')
  bool? get started;

  @BuiltValueField(wireName: r'state')
  IoK8sApiCoreV1ContainerState? get state;

  IoK8sApiCoreV1ContainerStatus._();

  factory IoK8sApiCoreV1ContainerStatus([void updates(IoK8sApiCoreV1ContainerStatusBuilder b)]) = _$IoK8sApiCoreV1ContainerStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ContainerStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ContainerStatus> get serializer => _$IoK8sApiCoreV1ContainerStatusSerializer();
}

class _$IoK8sApiCoreV1ContainerStatusSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ContainerStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ContainerStatus, _$IoK8sApiCoreV1ContainerStatus];

  @override
  final String wireName = r'IoK8sApiCoreV1ContainerStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ContainerStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.containerID != null) {
      yield r'containerID';
      yield serializers.serialize(
        object.containerID,
        specifiedType: const FullType(String),
      );
    }
    yield r'image';
    yield serializers.serialize(
      object.image,
      specifiedType: const FullType(String),
    );
    yield r'imageID';
    yield serializers.serialize(
      object.imageID,
      specifiedType: const FullType(String),
    );
    if (object.lastState != null) {
      yield r'lastState';
      yield serializers.serialize(
        object.lastState,
        specifiedType: const FullType(IoK8sApiCoreV1ContainerState),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'ready';
    yield serializers.serialize(
      object.ready,
      specifiedType: const FullType(bool),
    );
    yield r'restartCount';
    yield serializers.serialize(
      object.restartCount,
      specifiedType: const FullType(int),
    );
    if (object.started != null) {
      yield r'started';
      yield serializers.serialize(
        object.started,
        specifiedType: const FullType(bool),
      );
    }
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(IoK8sApiCoreV1ContainerState),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1ContainerStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ContainerStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'containerID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.containerID = valueDes;
          break;
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.image = valueDes;
          break;
        case r'imageID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.imageID = valueDes;
          break;
        case r'lastState':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ContainerState),
          ) as IoK8sApiCoreV1ContainerState;
          result.lastState.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'ready':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ready = valueDes;
          break;
        case r'restartCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.restartCount = valueDes;
          break;
        case r'started':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.started = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ContainerState),
          ) as IoK8sApiCoreV1ContainerState;
          result.state.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1ContainerStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ContainerStatusBuilder();
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

