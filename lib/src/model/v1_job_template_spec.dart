//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_job_spec.dart';
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_job_template_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1JobTemplateSpec {
  /// Returns a new [V1JobTemplateSpec] instance.
  V1JobTemplateSpec({

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


  final V1JobSpec? spec;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1JobTemplateSpec &&
     other.metadata == metadata &&
     other.spec == spec;

  @override
  int get hashCode =>
    metadata.hashCode +
    spec.hashCode;

  factory V1JobTemplateSpec.fromJson(Map<String, dynamic> json) => _$V1JobTemplateSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1JobTemplateSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

