//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_api_resource.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_api_resource_list.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1APIResourceList {
  /// Returns a new [V1APIResourceList] instance.
  V1APIResourceList({

     this.apiVersion,

    required  this.groupVersion,

     this.kind,

    required  this.resources,
  });

      /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// groupVersion is the group and version this APIResourceList is for.
  @JsonKey(
    
    name: r'groupVersion',
    required: true,
    includeIfNull: false
  )


  final String groupVersion;



      /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @JsonKey(
    
    name: r'kind',
    required: false,
    includeIfNull: false
  )


  final String? kind;



      /// resources contains the name of the resources and if they are namespaced.
  @JsonKey(
    
    name: r'resources',
    required: true,
    includeIfNull: false
  )


  final List<V1APIResource> resources;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1APIResourceList &&
     other.apiVersion == apiVersion &&
     other.groupVersion == groupVersion &&
     other.kind == kind &&
     other.resources == resources;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    groupVersion.hashCode +
    kind.hashCode +
    resources.hashCode;

  factory V1APIResourceList.fromJson(Map<String, dynamic> json) => _$V1APIResourceListFromJson(json);

  Map<String, dynamic> toJson() => _$V1APIResourceListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

