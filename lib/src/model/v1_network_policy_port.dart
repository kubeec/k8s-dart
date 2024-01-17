//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_network_policy_port.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NetworkPolicyPort {
  /// Returns a new [V1NetworkPolicyPort] instance.
  V1NetworkPolicyPort({

     this.endPort,

     this.port,

     this.protocol,
  });

      /// endPort indicates that the range of ports from port to endPort if set, inclusive, should be allowed by the policy. This field cannot be defined if the port field is not defined or if the port field is defined as a named (string) port. The endPort must be equal or greater than port.
  @JsonKey(
    
    name: r'endPort',
    required: false,
    includeIfNull: false
  )


  final int? endPort;



      /// port represents the port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched.
  @JsonKey(
    
    name: r'port',
    required: false,
    includeIfNull: false
  )


  final Object? port;



      /// protocol represents the protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.
  @JsonKey(
    
    name: r'protocol',
    required: false,
    includeIfNull: false
  )


  final String? protocol;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NetworkPolicyPort &&
     other.endPort == endPort &&
     other.port == port &&
     other.protocol == protocol;

  @override
  int get hashCode =>
    endPort.hashCode +
    port.hashCode +
    protocol.hashCode;

  factory V1NetworkPolicyPort.fromJson(Map<String, dynamic> json) => _$V1NetworkPolicyPortFromJson(json);

  Map<String, dynamic> toJson() => _$V1NetworkPolicyPortToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

