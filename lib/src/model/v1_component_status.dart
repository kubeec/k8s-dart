//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:k8s/src/model/v1_component_condition.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_component_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ComponentStatus {
  /// Returns a new [V1ComponentStatus] instance.
  V1ComponentStatus({

     this.apiVersion,

     this.conditions,

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



      /// List of component conditions observed
  @JsonKey(
    
    name: r'conditions',
    required: false,
    includeIfNull: false
  )


  final List<V1ComponentCondition>? conditions;



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


  final V1ObjectMeta? metadata;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ComponentStatus &&
     other.apiVersion == apiVersion &&
     other.conditions == conditions &&
     other.kind == kind &&
     other.metadata == metadata;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    conditions.hashCode +
    kind.hashCode +
    metadata.hashCode;

  factory V1ComponentStatus.fromJson(Map<String, dynamic> json) => _$V1ComponentStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1ComponentStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

