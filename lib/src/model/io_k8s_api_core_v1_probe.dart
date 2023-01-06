//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_grpc_action.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_tcp_socket_action.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_http_get_action.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_exec_action.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_probe.g.dart';

/// Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
///
/// Properties:
/// * [exec] 
/// * [failureThreshold] - Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
/// * [grpc] 
/// * [httpGet] 
/// * [initialDelaySeconds] - Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
/// * [periodSeconds] - How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.
/// * [successThreshold] - Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1.
/// * [tcpSocket] 
/// * [terminationGracePeriodSeconds] - Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is a beta field and requires enabling ProbeTerminationGracePeriod feature gate. Minimum value is 1. spec.terminationGracePeriodSeconds is used if unset.
/// * [timeoutSeconds] - Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
@BuiltValue()
abstract class IoK8sApiCoreV1Probe implements Built<IoK8sApiCoreV1Probe, IoK8sApiCoreV1ProbeBuilder> {
  @BuiltValueField(wireName: r'exec')
  IoK8sApiCoreV1ExecAction? get exec;

  /// Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  @BuiltValueField(wireName: r'failureThreshold')
  int? get failureThreshold;

  @BuiltValueField(wireName: r'grpc')
  IoK8sApiCoreV1GRPCAction? get grpc;

  @BuiltValueField(wireName: r'httpGet')
  IoK8sApiCoreV1HTTPGetAction? get httpGet;

  /// Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  @BuiltValueField(wireName: r'initialDelaySeconds')
  int? get initialDelaySeconds;

  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.
  @BuiltValueField(wireName: r'periodSeconds')
  int? get periodSeconds;

  /// Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1.
  @BuiltValueField(wireName: r'successThreshold')
  int? get successThreshold;

  @BuiltValueField(wireName: r'tcpSocket')
  IoK8sApiCoreV1TCPSocketAction? get tcpSocket;

  /// Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is a beta field and requires enabling ProbeTerminationGracePeriod feature gate. Minimum value is 1. spec.terminationGracePeriodSeconds is used if unset.
  @BuiltValueField(wireName: r'terminationGracePeriodSeconds')
  int? get terminationGracePeriodSeconds;

  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  @BuiltValueField(wireName: r'timeoutSeconds')
  int? get timeoutSeconds;

  IoK8sApiCoreV1Probe._();

  factory IoK8sApiCoreV1Probe([void updates(IoK8sApiCoreV1ProbeBuilder b)]) = _$IoK8sApiCoreV1Probe;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ProbeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1Probe> get serializer => _$IoK8sApiCoreV1ProbeSerializer();
}

class _$IoK8sApiCoreV1ProbeSerializer implements PrimitiveSerializer<IoK8sApiCoreV1Probe> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1Probe, _$IoK8sApiCoreV1Probe];

  @override
  final String wireName = r'IoK8sApiCoreV1Probe';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1Probe object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.exec != null) {
      yield r'exec';
      yield serializers.serialize(
        object.exec,
        specifiedType: const FullType(IoK8sApiCoreV1ExecAction),
      );
    }
    if (object.failureThreshold != null) {
      yield r'failureThreshold';
      yield serializers.serialize(
        object.failureThreshold,
        specifiedType: const FullType(int),
      );
    }
    if (object.grpc != null) {
      yield r'grpc';
      yield serializers.serialize(
        object.grpc,
        specifiedType: const FullType(IoK8sApiCoreV1GRPCAction),
      );
    }
    if (object.httpGet != null) {
      yield r'httpGet';
      yield serializers.serialize(
        object.httpGet,
        specifiedType: const FullType(IoK8sApiCoreV1HTTPGetAction),
      );
    }
    if (object.initialDelaySeconds != null) {
      yield r'initialDelaySeconds';
      yield serializers.serialize(
        object.initialDelaySeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.periodSeconds != null) {
      yield r'periodSeconds';
      yield serializers.serialize(
        object.periodSeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.successThreshold != null) {
      yield r'successThreshold';
      yield serializers.serialize(
        object.successThreshold,
        specifiedType: const FullType(int),
      );
    }
    if (object.tcpSocket != null) {
      yield r'tcpSocket';
      yield serializers.serialize(
        object.tcpSocket,
        specifiedType: const FullType(IoK8sApiCoreV1TCPSocketAction),
      );
    }
    if (object.terminationGracePeriodSeconds != null) {
      yield r'terminationGracePeriodSeconds';
      yield serializers.serialize(
        object.terminationGracePeriodSeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.timeoutSeconds != null) {
      yield r'timeoutSeconds';
      yield serializers.serialize(
        object.timeoutSeconds,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1Probe object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ProbeBuilder result,
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
        case r'failureThreshold':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.failureThreshold = valueDes;
          break;
        case r'grpc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1GRPCAction),
          ) as IoK8sApiCoreV1GRPCAction;
          result.grpc.replace(valueDes);
          break;
        case r'httpGet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1HTTPGetAction),
          ) as IoK8sApiCoreV1HTTPGetAction;
          result.httpGet.replace(valueDes);
          break;
        case r'initialDelaySeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.initialDelaySeconds = valueDes;
          break;
        case r'periodSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.periodSeconds = valueDes;
          break;
        case r'successThreshold':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.successThreshold = valueDes;
          break;
        case r'tcpSocket':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1TCPSocketAction),
          ) as IoK8sApiCoreV1TCPSocketAction;
          result.tcpSocket.replace(valueDes);
          break;
        case r'terminationGracePeriodSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.terminationGracePeriodSeconds = valueDes;
          break;
        case r'timeoutSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.timeoutSeconds = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1Probe deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ProbeBuilder();
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

