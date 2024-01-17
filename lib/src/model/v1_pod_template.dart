//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:k8s/src/model/v1_pod_template_spec.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_pod_template.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PodTemplate {
  /// Returns a new [V1PodTemplate] instance.
  V1PodTemplate({

     this.apiVersion,

     this.kind,

     this.metadata,

     this.template,
  });

      /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



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



  @JsonKey(
    
    name: r'template',
    required: false,
    includeIfNull: false
  )


  final V1PodTemplateSpec? template;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PodTemplate &&
     other.apiVersion == apiVersion &&
     other.kind == kind &&
     other.metadata == metadata &&
     other.template == template;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    kind.hashCode +
    metadata.hashCode +
    template.hashCode;

  factory V1PodTemplate.fromJson(Map<String, dynamic> json) => _$V1PodTemplateFromJson(json);

  Map<String, dynamic> toJson() => _$V1PodTemplateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

