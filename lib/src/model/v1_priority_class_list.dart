//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_list_meta.dart';
import 'package:k8s/src/model/v1_priority_class.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_priority_class_list.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PriorityClassList {
  /// Returns a new [V1PriorityClassList] instance.
  V1PriorityClassList({

     this.apiVersion,

    required  this.items,

     this.kind,

     this.metadata,
  });

      /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// items is the list of PriorityClasses
  @JsonKey(
    
    name: r'items',
    required: true,
    includeIfNull: false
  )


  final List<V1PriorityClass> items;



      /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @JsonKey(
    
    name: r'kind',
    required: false,
    includeIfNull: false
  )


  final String? kind;



  @JsonKey(
    
    name: r'metadata',
    required: false,
    includeIfNull: false
  )


  final V1ListMeta? metadata;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PriorityClassList &&
     other.apiVersion == apiVersion &&
     other.items == items &&
     other.kind == kind &&
     other.metadata == metadata;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    items.hashCode +
    kind.hashCode +
    metadata.hashCode;

  factory V1PriorityClassList.fromJson(Map<String, dynamic> json) => _$V1PriorityClassListFromJson(json);

  Map<String, dynamic> toJson() => _$V1PriorityClassListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

