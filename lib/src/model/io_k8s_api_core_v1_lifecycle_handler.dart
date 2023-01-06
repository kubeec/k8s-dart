//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_tcp_socket_action.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_http_get_action.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_exec_action.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_lifecycle_handler.g.dart';

/// LifecycleHandler defines a specific action that should be taken in a lifecycle hook. One and only one of the fields, except TCPSocket must be specified.
///
/// Properties:
/// * [exec] 
/// * [httpGet] 
/// * [tcpSocket] 
@BuiltValue()
abstract class IoK8sApiCoreV1LifecycleHandler implements Built<IoK8sApiCoreV1LifecycleHandler, IoK8sApiCoreV1LifecycleHandlerBuilder> {
  @BuiltValueField(wireName: r'exec')
  IoK8sApiCoreV1ExecAction? get exec;

  @BuiltValueField(wireName: r'httpGet')
  IoK8sApiCoreV1HTTPGetAction? get httpGet;

  @BuiltValueField(wireName: r'tcpSocket')
  IoK8sApiCoreV1TCPSocketAction? get tcpSocket;

  IoK8sApiCoreV1LifecycleHandler._();

  factory IoK8sApiCoreV1LifecycleHandler([void updates(IoK8sApiCoreV1LifecycleHandlerBuilder b)]) = _$IoK8sApiCoreV1LifecycleHandler;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1LifecycleHandlerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1LifecycleHandler> get serializer => _$IoK8sApiCoreV1LifecycleHandlerSerializer();
}

class _$IoK8sApiCoreV1LifecycleHandlerSerializer implements PrimitiveSerializer<IoK8sApiCoreV1LifecycleHandler> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1LifecycleHandler, _$IoK8sApiCoreV1LifecycleHandler];

  @override
  final String wireName = r'IoK8sApiCoreV1LifecycleHandler';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1LifecycleHandler object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.exec != null) {
      yield r'exec';
      yield serializers.serialize(
        object.exec,
        specifiedType: const FullType(IoK8sApiCoreV1ExecAction),
      );
    }
    if (object.httpGet != null) {
      yield r'httpGet';
      yield serializers.serialize(
        object.httpGet,
        specifiedType: const FullType(IoK8sApiCoreV1HTTPGetAction),
      );
    }
    if (object.tcpSocket != null) {
      yield r'tcpSocket';
      yield serializers.serialize(
        object.tcpSocket,
        specifiedType: const FullType(IoK8sApiCoreV1TCPSocketAction),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1LifecycleHandler object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1LifecycleHandlerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'exec':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ExecAction),
          ) as IoK8sApiCoreV1ExecAction;
          result.exec.replace(valueDes);
          break;
        case r'httpGet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1HTTPGetAction),
          ) as IoK8sApiCoreV1HTTPGetAction;
          result.httpGet.replace(valueDes);
          break;
        case r'tcpSocket':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1TCPSocketAction),
          ) as IoK8sApiCoreV1TCPSocketAction;
          result.tcpSocket.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1LifecycleHandler deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1LifecycleHandlerBuilder();
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

