//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_daemon_endpoint.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_node_daemon_endpoints.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NodeDaemonEndpoints {
  /// Returns a new [V1NodeDaemonEndpoints] instance.
  V1NodeDaemonEndpoints({

     this.kubeletEndpoint,
  });

  @JsonKey(
    
    name: r'kubeletEndpoint',
    required: false,
    includeIfNull: false
  )


  final V1DaemonEndpoint? kubeletEndpoint;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NodeDaemonEndpoints &&
     other.kubeletEndpoint == kubeletEndpoint;

  @override
  int get hashCode =>
    kubeletEndpoint.hashCode;

  factory V1NodeDaemonEndpoints.fromJson(Map<String, dynamic> json) => _$V1NodeDaemonEndpointsFromJson(json);

  Map<String, dynamic> toJson() => _$V1NodeDaemonEndpointsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

