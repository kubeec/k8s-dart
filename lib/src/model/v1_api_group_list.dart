//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_api_group.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_api_group_list.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1APIGroupList {
  /// Returns a new [V1APIGroupList] instance.
  V1APIGroupList({

     this.apiVersion,

    required  this.groups,

     this.kind,
  });

      /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// groups is a list of APIGroup.
  @JsonKey(
    
    name: r'groups',
    required: true,
    includeIfNull: false
  )


  final List<V1APIGroup> groups;



      /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @JsonKey(
    
    name: r'kind',
    required: false,
    includeIfNull: false
  )


  final String? kind;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1APIGroupList &&
     other.apiVersion == apiVersion &&
     other.groups == groups &&
     other.kind == kind;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    groups.hashCode +
    kind.hashCode;

  factory V1APIGroupList.fromJson(Map<String, dynamic> json) => _$V1APIGroupListFromJson(json);

  Map<String, dynamic> toJson() => _$V1APIGroupListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

