//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_grpc_action.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1GRPCAction {
  /// Returns a new [V1GRPCAction] instance.
  V1GRPCAction({

    required  this.port,

     this.service,
  });

      /// Port number of the gRPC service. Number must be in the range 1 to 65535.
  @JsonKey(
    
    name: r'port',
    required: true,
    includeIfNull: false
  )


  final int port;



      /// Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).  If this is not specified, the default behavior is defined by gRPC.
  @JsonKey(
    
    name: r'service',
    required: false,
    includeIfNull: false
  )


  final String? service;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1GRPCAction &&
     other.port == port &&
     other.service == service;

  @override
  int get hashCode =>
    port.hashCode +
    service.hashCode;

  factory V1GRPCAction.fromJson(Map<String, dynamic> json) => _$V1GRPCActionFromJson(json);

  Map<String, dynamic> toJson() => _$V1GRPCActionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

