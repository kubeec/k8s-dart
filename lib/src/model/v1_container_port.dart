//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_container_port.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ContainerPort {
  /// Returns a new [V1ContainerPort] instance.
  V1ContainerPort({

    required  this.containerPort,

     this.hostIP,

     this.hostPort,

     this.name,

     this.protocol,
  });

      /// Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536.
  @JsonKey(
    
    name: r'containerPort',
    required: true,
    includeIfNull: false
  )


  final int containerPort;



      /// What host IP to bind the external port to.
  @JsonKey(
    
    name: r'hostIP',
    required: false,
    includeIfNull: false
  )


  final String? hostIP;



      /// Number of port to expose on the host. If specified, this must be a valid port number, 0 < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this.
  @JsonKey(
    
    name: r'hostPort',
    required: false,
    includeIfNull: false
  )


  final int? hostPort;



      /// If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services.
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



      /// Protocol for port. Must be UDP, TCP, or SCTP. Defaults to \"TCP\".
  @JsonKey(
    
    name: r'protocol',
    required: false,
    includeIfNull: false
  )


  final String? protocol;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ContainerPort &&
     other.containerPort == containerPort &&
     other.hostIP == hostIP &&
     other.hostPort == hostPort &&
     other.name == name &&
     other.protocol == protocol;

  @override
  int get hashCode =>
    containerPort.hashCode +
    hostIP.hashCode +
    hostPort.hashCode +
    name.hashCode +
    protocol.hashCode;

  factory V1ContainerPort.fromJson(Map<String, dynamic> json) => _$V1ContainerPortFromJson(json);

  Map<String, dynamic> toJson() => _$V1ContainerPortToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

