//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'apiextensions_v1_service_reference.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiextensionsV1ServiceReference {
  /// Returns a new [ApiextensionsV1ServiceReference] instance.
  ApiextensionsV1ServiceReference({

    required  this.name,

    required  this.namespace,

     this.path,

     this.port,
  });

      /// name is the name of the service. Required
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



      /// namespace is the namespace of the service. Required
  @JsonKey(
    
    name: r'namespace',
    required: true,
    includeIfNull: false
  )


  final String namespace;



      /// path is an optional URL path at which the webhook will be contacted.
  @JsonKey(
    
    name: r'path',
    required: false,
    includeIfNull: false
  )


  final String? path;



      /// port is an optional service port at which the webhook will be contacted. `port` should be a valid port number (1-65535, inclusive). Defaults to 443 for backward compatibility.
  @JsonKey(
    
    name: r'port',
    required: false,
    includeIfNull: false
  )


  final int? port;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ApiextensionsV1ServiceReference &&
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

  factory ApiextensionsV1ServiceReference.fromJson(Map<String, dynamic> json) => _$ApiextensionsV1ServiceReferenceFromJson(json);

  Map<String, dynamic> toJson() => _$ApiextensionsV1ServiceReferenceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

