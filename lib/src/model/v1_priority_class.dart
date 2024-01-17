//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_priority_class.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PriorityClass {
  /// Returns a new [V1PriorityClass] instance.
  V1PriorityClass({

     this.apiVersion,

     this.description,

     this.globalDefault,

     this.kind,

     this.metadata,

     this.preemptionPolicy,

    required  this.value,
  });

      /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// description is an arbitrary string that usually provides guidelines on when this priority class should be used.
  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false
  )


  final String? description;



      /// globalDefault specifies whether this PriorityClass should be considered as the default priority for pods that do not have any priority class. Only one PriorityClass can be marked as `globalDefault`. However, if more than one PriorityClasses exists with their `globalDefault` field set to true, the smallest value of such global default PriorityClasses will be used as the default priority.
  @JsonKey(
    
    name: r'globalDefault',
    required: false,
    includeIfNull: false
  )


  final bool? globalDefault;



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



      /// preemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset.
  @JsonKey(
    
    name: r'preemptionPolicy',
    required: false,
    includeIfNull: false
  )


  final String? preemptionPolicy;



      /// value represents the integer value of this priority class. This is the actual priority that pods receive when they have the name of this class in their pod spec.
  @JsonKey(
    
    name: r'value',
    required: true,
    includeIfNull: false
  )


  final int value;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PriorityClass &&
     other.apiVersion == apiVersion &&
     other.description == description &&
     other.globalDefault == globalDefault &&
     other.kind == kind &&
     other.metadata == metadata &&
     other.preemptionPolicy == preemptionPolicy &&
     other.value == value;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    description.hashCode +
    globalDefault.hashCode +
    kind.hashCode +
    metadata.hashCode +
    preemptionPolicy.hashCode +
    value.hashCode;

  factory V1PriorityClass.fromJson(Map<String, dynamic> json) => _$V1PriorityClassFromJson(json);

  Map<String, dynamic> toJson() => _$V1PriorityClassToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

