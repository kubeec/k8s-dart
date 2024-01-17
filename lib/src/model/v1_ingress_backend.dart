//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_ingress_service_backend.dart';
import 'package:k8s/src/model/v1_typed_local_object_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_ingress_backend.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1IngressBackend {
  /// Returns a new [V1IngressBackend] instance.
  V1IngressBackend({

     this.resource,

     this.service,
  });

  @JsonKey(
    
    name: r'resource',
    required: false,
    includeIfNull: false
  )


  final V1TypedLocalObjectReference? resource;



  @JsonKey(
    
    name: r'service',
    required: false,
    includeIfNull: false
  )


  final V1IngressServiceBackend? service;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1IngressBackend &&
     other.resource == resource &&
     other.service == service;

  @override
  int get hashCode =>
    resource.hashCode +
    service.hashCode;

  factory V1IngressBackend.fromJson(Map<String, dynamic> json) => _$V1IngressBackendFromJson(json);

  Map<String, dynamic> toJson() => _$V1IngressBackendToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

