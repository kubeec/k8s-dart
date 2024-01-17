//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_exec_action.dart';
import 'package:k8s/src/model/v1_grpc_action.dart';
import 'package:k8s/src/model/v1_http_get_action.dart';
import 'package:k8s/src/model/v1_tcp_socket_action.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_probe.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1Probe {
  /// Returns a new [V1Probe] instance.
  V1Probe({

     this.exec,

     this.failureThreshold,

     this.grpc,

     this.httpGet,

     this.initialDelaySeconds,

     this.periodSeconds,

     this.successThreshold,

     this.tcpSocket,

     this.terminationGracePeriodSeconds,

     this.timeoutSeconds,
  });

  @JsonKey(
    
    name: r'exec',
    required: false,
    includeIfNull: false
  )


  final V1ExecAction? exec;



      /// Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  @JsonKey(
    
    name: r'failureThreshold',
    required: false,
    includeIfNull: false
  )


  final int? failureThreshold;



  @JsonKey(
    
    name: r'grpc',
    required: false,
    includeIfNull: false
  )


  final V1GRPCAction? grpc;



  @JsonKey(
    
    name: r'httpGet',
    required: false,
    includeIfNull: false
  )


  final V1HTTPGetAction? httpGet;



      /// Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  @JsonKey(
    
    name: r'initialDelaySeconds',
    required: false,
    includeIfNull: false
  )


  final int? initialDelaySeconds;



      /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.
  @JsonKey(
    
    name: r'periodSeconds',
    required: false,
    includeIfNull: false
  )


  final int? periodSeconds;



      /// Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1.
  @JsonKey(
    
    name: r'successThreshold',
    required: false,
    includeIfNull: false
  )


  final int? successThreshold;



  @JsonKey(
    
    name: r'tcpSocket',
    required: false,
    includeIfNull: false
  )


  final V1TCPSocketAction? tcpSocket;



      /// Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is a beta field and requires enabling ProbeTerminationGracePeriod feature gate. Minimum value is 1. spec.terminationGracePeriodSeconds is used if unset.
  @JsonKey(
    
    name: r'terminationGracePeriodSeconds',
    required: false,
    includeIfNull: false
  )


  final int? terminationGracePeriodSeconds;



      /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  @JsonKey(
    
    name: r'timeoutSeconds',
    required: false,
    includeIfNull: false
  )


  final int? timeoutSeconds;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1Probe &&
     other.exec == exec &&
     other.failureThreshold == failureThreshold &&
     other.grpc == grpc &&
     other.httpGet == httpGet &&
     other.initialDelaySeconds == initialDelaySeconds &&
     other.periodSeconds == periodSeconds &&
     other.successThreshold == successThreshold &&
     other.tcpSocket == tcpSocket &&
     other.terminationGracePeriodSeconds == terminationGracePeriodSeconds &&
     other.timeoutSeconds == timeoutSeconds;

  @override
  int get hashCode =>
    exec.hashCode +
    failureThreshold.hashCode +
    grpc.hashCode +
    httpGet.hashCode +
    initialDelaySeconds.hashCode +
    periodSeconds.hashCode +
    successThreshold.hashCode +
    tcpSocket.hashCode +
    terminationGracePeriodSeconds.hashCode +
    timeoutSeconds.hashCode;

  factory V1Probe.fromJson(Map<String, dynamic> json) => _$V1ProbeFromJson(json);

  Map<String, dynamic> toJson() => _$V1ProbeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

