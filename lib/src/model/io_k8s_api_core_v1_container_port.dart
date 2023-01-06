//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_container_port.g.dart';

/// ContainerPort represents a network port in a single container.
///
/// Properties:
/// * [containerPort] - Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536.
/// * [hostIP] - What host IP to bind the external port to.
/// * [hostPort] - Number of port to expose on the host. If specified, this must be a valid port number, 0 < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this.
/// * [name] - If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services.
/// * [protocol] - Protocol for port. Must be UDP, TCP, or SCTP. Defaults to \"TCP\".  
@BuiltValue()
abstract class IoK8sApiCoreV1ContainerPort implements Built<IoK8sApiCoreV1ContainerPort, IoK8sApiCoreV1ContainerPortBuilder> {
  /// Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536.
  @BuiltValueField(wireName: r'containerPort')
  int get containerPort;

  /// What host IP to bind the external port to.
  @BuiltValueField(wireName: r'hostIP')
  String? get hostIP;

  /// Number of port to expose on the host. If specified, this must be a valid port number, 0 < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this.
  @BuiltValueField(wireName: r'hostPort')
  int? get hostPort;

  /// If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Protocol for port. Must be UDP, TCP, or SCTP. Defaults to \"TCP\".  
  @BuiltValueField(wireName: r'protocol')
  String? get protocol;

  IoK8sApiCoreV1ContainerPort._();

  factory IoK8sApiCoreV1ContainerPort([void updates(IoK8sApiCoreV1ContainerPortBuilder b)]) = _$IoK8sApiCoreV1ContainerPort;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ContainerPortBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ContainerPort> get serializer => _$IoK8sApiCoreV1ContainerPortSerializer();
}

class _$IoK8sApiCoreV1ContainerPortSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ContainerPort> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ContainerPort, _$IoK8sApiCoreV1ContainerPort];

  @override
  final String wireName = r'IoK8sApiCoreV1ContainerPort';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ContainerPort object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'containerPort';
    yield serializers.serialize(
      object.containerPort,
      specifiedType: const FullType(int),
    );
    if (object.hostIP != null) {
      yield r'hostIP';
      yield serializers.serialize(
        object.hostIP,
        specifiedType: const FullType(String),
      );
    }
    if (object.hostPort != null) {
      yield r'hostPort';
      yield serializers.serialize(
        object.hostPort,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.protocol != null) {
      yield r'protocol';
      yield serializers.serialize(
        object.protocol,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1ContainerPort object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ContainerPortBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'containerPort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.containerPort = valueDes;
          break;
        case r'hostIP':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hostIP = valueDes;
          break;
        case r'hostPort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.hostPort = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'protocol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.protocol = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1ContainerPort deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ContainerPortBuilder();
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

