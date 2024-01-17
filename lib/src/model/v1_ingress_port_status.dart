//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_ingress_port_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1IngressPortStatus {
  /// Returns a new [V1IngressPortStatus] instance.
  V1IngressPortStatus({

     this.error,

    required  this.port,

    required  this.protocol,
  });

      /// error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use   CamelCase names - cloud provider specific error values must have names that comply with the   format foo.example.com/CamelCase.
  @JsonKey(
    
    name: r'error',
    required: false,
    includeIfNull: false
  )


  final String? error;



      /// port is the port number of the ingress port.
  @JsonKey(
    
    name: r'port',
    required: true,
    includeIfNull: false
  )


  final int port;



      /// protocol is the protocol of the ingress port. The supported values are: \"TCP\", \"UDP\", \"SCTP\"
  @JsonKey(
    
    name: r'protocol',
    required: true,
    includeIfNull: false
  )


  final String protocol;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1IngressPortStatus &&
     other.error == error &&
     other.port == port &&
     other.protocol == protocol;

  @override
  int get hashCode =>
    error.hashCode +
    port.hashCode +
    protocol.hashCode;

  factory V1IngressPortStatus.fromJson(Map<String, dynamic> json) => _$V1IngressPortStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1IngressPortStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

