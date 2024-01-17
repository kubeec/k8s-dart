//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_port_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PortStatus {
  /// Returns a new [V1PortStatus] instance.
  V1PortStatus({

     this.error,

    required  this.port,

    required  this.protocol,
  });

      /// Error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use   CamelCase names - cloud provider specific error values must have names that comply with the   format foo.example.com/CamelCase.
  @JsonKey(
    
    name: r'error',
    required: false,
    includeIfNull: false
  )


  final String? error;



      /// Port is the port number of the service port of which status is recorded here
  @JsonKey(
    
    name: r'port',
    required: true,
    includeIfNull: false
  )


  final int port;



      /// Protocol is the protocol of the service port of which status is recorded here The supported values are: \"TCP\", \"UDP\", \"SCTP\"
  @JsonKey(
    
    name: r'protocol',
    required: true,
    includeIfNull: false
  )


  final String protocol;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PortStatus &&
     other.error == error &&
     other.port == port &&
     other.protocol == protocol;

  @override
  int get hashCode =>
    error.hashCode +
    port.hashCode +
    protocol.hashCode;

  factory V1PortStatus.fromJson(Map<String, dynamic> json) => _$V1PortStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1PortStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

