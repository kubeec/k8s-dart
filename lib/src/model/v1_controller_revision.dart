//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_controller_revision.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ControllerRevision {
  /// Returns a new [V1ControllerRevision] instance.
  V1ControllerRevision({

     this.apiVersion,

     this.data,

     this.kind,

     this.metadata,

    required  this.revision,
  });

      /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// Data is the serialized representation of the state.
  @JsonKey(
    
    name: r'data',
    required: false,
    includeIfNull: false
  )


  final Object? data;



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



      /// Revision indicates the revision of the state represented by Data.
  @JsonKey(
    
    name: r'revision',
    required: true,
    includeIfNull: false
  )


  final int revision;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ControllerRevision &&
     other.apiVersion == apiVersion &&
     other.data == data &&
     other.kind == kind &&
     other.metadata == metadata &&
     other.revision == revision;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    data.hashCode +
    kind.hashCode +
    metadata.hashCode +
    revision.hashCode;

  factory V1ControllerRevision.fromJson(Map<String, dynamic> json) => _$V1ControllerRevisionFromJson(json);

  Map<String, dynamic> toJson() => _$V1ControllerRevisionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

