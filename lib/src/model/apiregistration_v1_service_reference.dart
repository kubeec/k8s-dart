//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'apiregistration_v1_service_reference.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiregistrationV1ServiceReference {
  /// Returns a new [ApiregistrationV1ServiceReference] instance.
  ApiregistrationV1ServiceReference({

     this.name,

     this.namespace,

     this.port,
  });

      /// Name is the name of the service
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



      /// Namespace is the namespace of the service
  @JsonKey(
    
    name: r'namespace',
    required: false,
    includeIfNull: false
  )


  final String? namespace;



      /// If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
  @JsonKey(
    
    name: r'port',
    required: false,
    includeIfNull: false
  )


  final int? port;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ApiregistrationV1ServiceReference &&
     other.name == name &&
     other.namespace == namespace &&
     other.port == port;

  @override
  int get hashCode =>
    name.hashCode +
    namespace.hashCode +
    port.hashCode;

  factory ApiregistrationV1ServiceReference.fromJson(Map<String, dynamic> json) => _$ApiregistrationV1ServiceReferenceFromJson(json);

  Map<String, dynamic> toJson() => _$ApiregistrationV1ServiceReferenceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

