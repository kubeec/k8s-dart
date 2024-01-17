//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_preconditions.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_delete_options.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1DeleteOptions {
  /// Returns a new [V1DeleteOptions] instance.
  V1DeleteOptions({

     this.apiVersion,

     this.dryRun,

     this.gracePeriodSeconds,

     this.kind,

     this.orphanDependents,

     this.preconditions,

     this.propagationPolicy,
  });

      /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  @JsonKey(
    
    name: r'dryRun',
    required: false,
    includeIfNull: false
  )


  final List<String>? dryRun;



      /// The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
  @JsonKey(
    
    name: r'gracePeriodSeconds',
    required: false,
    includeIfNull: false
  )


  final int? gracePeriodSeconds;



      /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @JsonKey(
    
    name: r'kind',
    required: false,
    includeIfNull: false
  )


  final String? kind;



      /// Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
  @JsonKey(
    
    name: r'orphanDependents',
    required: false,
    includeIfNull: false
  )


  final bool? orphanDependents;



  @JsonKey(
    
    name: r'preconditions',
    required: false,
    includeIfNull: false
  )


  final V1Preconditions? preconditions;



      /// Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
  @JsonKey(
    
    name: r'propagationPolicy',
    required: false,
    includeIfNull: false
  )


  final String? propagationPolicy;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1DeleteOptions &&
     other.apiVersion == apiVersion &&
     other.dryRun == dryRun &&
     other.gracePeriodSeconds == gracePeriodSeconds &&
     other.kind == kind &&
     other.orphanDependents == orphanDependents &&
     other.preconditions == preconditions &&
     other.propagationPolicy == propagationPolicy;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    dryRun.hashCode +
    gracePeriodSeconds.hashCode +
    kind.hashCode +
    orphanDependents.hashCode +
    preconditions.hashCode +
    propagationPolicy.hashCode;

  factory V1DeleteOptions.fromJson(Map<String, dynamic> json) => _$V1DeleteOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$V1DeleteOptionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

