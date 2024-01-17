//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:k8s/src/model/v1alpha2_resource_claim_spec.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha2_resource_claim_template_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha2ResourceClaimTemplateSpec {
  /// Returns a new [V1alpha2ResourceClaimTemplateSpec] instance.
  V1alpha2ResourceClaimTemplateSpec({

     this.metadata,

    required  this.spec,
  });

  @JsonKey(
    
    name: r'metadata',
    required: false,
    includeIfNull: false
  )


  final V1ObjectMeta? metadata;



  @JsonKey(
    
    name: r'spec',
    required: true,
    includeIfNull: false
  )


  final V1alpha2ResourceClaimSpec spec;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha2ResourceClaimTemplateSpec &&
     other.metadata == metadata &&
     other.spec == spec;

  @override
  int get hashCode =>
    metadata.hashCode +
    spec.hashCode;

  factory V1alpha2ResourceClaimTemplateSpec.fromJson(Map<String, dynamic> json) => _$V1alpha2ResourceClaimTemplateSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha2ResourceClaimTemplateSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

