//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:k8s/src/model/v1_pod_spec.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_pod_template_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PodTemplateSpec {
  /// Returns a new [V1PodTemplateSpec] instance.
  V1PodTemplateSpec({

     this.metadata,

     this.spec,
  });

  @JsonKey(
    
    name: r'metadata',
    required: false,
    includeIfNull: false
  )


  final V1ObjectMeta? metadata;



  @JsonKey(
    
    name: r'spec',
    required: false,
    includeIfNull: false
  )


  final V1PodSpec? spec;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PodTemplateSpec &&
     other.metadata == metadata &&
     other.spec == spec;

  @override
  int get hashCode =>
    metadata.hashCode +
    spec.hashCode;

  factory V1PodTemplateSpec.fromJson(Map<String, dynamic> json) => _$V1PodTemplateSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1PodTemplateSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

