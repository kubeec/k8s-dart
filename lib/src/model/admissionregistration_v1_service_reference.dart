//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'admissionregistration_v1_service_reference.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AdmissionregistrationV1ServiceReference {
  /// Returns a new [AdmissionregistrationV1ServiceReference] instance.
  AdmissionregistrationV1ServiceReference({

    required  this.name,

    required  this.namespace,

     this.path,

     this.port,
  });

      /// `name` is the name of the service. Required
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



      /// `namespace` is the namespace of the service. Required
  @JsonKey(
    
    name: r'namespace',
    required: true,
    includeIfNull: false
  )


  final String namespace;



      /// `path` is an optional URL path which will be sent in any request to this service.
  @JsonKey(
    
    name: r'path',
    required: false,
    includeIfNull: false
  )


  final String? path;



      /// If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
  @JsonKey(
    
    name: r'port',
    required: false,
    includeIfNull: false
  )


  final int? port;



  @override
  bool operator ==(Object other) => identical(this, other) || other is AdmissionregistrationV1ServiceReference &&
     other.name == name &&
     other.namespace == namespace &&
     other.path == path &&
     other.port == port;

  @override
  int get hashCode =>
    name.hashCode +
    namespace.hashCode +
    path.hashCode +
    port.hashCode;

  factory AdmissionregistrationV1ServiceReference.fromJson(Map<String, dynamic> json) => _$AdmissionregistrationV1ServiceReferenceFromJson(json);

  Map<String, dynamic> toJson() => _$AdmissionregistrationV1ServiceReferenceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

