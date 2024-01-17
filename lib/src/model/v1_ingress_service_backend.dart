//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_service_backend_port.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_ingress_service_backend.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1IngressServiceBackend {
  /// Returns a new [V1IngressServiceBackend] instance.
  V1IngressServiceBackend({

    required  this.name,

     this.port,
  });

      /// name is the referenced service. The service must exist in the same namespace as the Ingress object.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @JsonKey(
    
    name: r'port',
    required: false,
    includeIfNull: false
  )


  final V1ServiceBackendPort? port;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1IngressServiceBackend &&
     other.name == name &&
     other.port == port;

  @override
  int get hashCode =>
    name.hashCode +
    port.hashCode;

  factory V1IngressServiceBackend.fromJson(Map<String, dynamic> json) => _$V1IngressServiceBackendFromJson(json);

  Map<String, dynamic> toJson() => _$V1IngressServiceBackendToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

