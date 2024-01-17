//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_daemon_endpoint.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1DaemonEndpoint {
  /// Returns a new [V1DaemonEndpoint] instance.
  V1DaemonEndpoint({

    required  this.port,
  });

      /// Port number of the given endpoint.
  @JsonKey(
    
    name: r'Port',
    required: true,
    includeIfNull: false
  )


  final int port;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1DaemonEndpoint &&
     other.port == port;

  @override
  int get hashCode =>
    port.hashCode;

  factory V1DaemonEndpoint.fromJson(Map<String, dynamic> json) => _$V1DaemonEndpointFromJson(json);

  Map<String, dynamic> toJson() => _$V1DaemonEndpointToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

