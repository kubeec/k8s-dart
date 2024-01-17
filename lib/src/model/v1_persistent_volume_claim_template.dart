//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_persistent_volume_claim_spec.dart';
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_persistent_volume_claim_template.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PersistentVolumeClaimTemplate {
  /// Returns a new [V1PersistentVolumeClaimTemplate] instance.
  V1PersistentVolumeClaimTemplate({

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


  final V1PersistentVolumeClaimSpec spec;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PersistentVolumeClaimTemplate &&
     other.metadata == metadata &&
     other.spec == spec;

  @override
  int get hashCode =>
    metadata.hashCode +
    spec.hashCode;

  factory V1PersistentVolumeClaimTemplate.fromJson(Map<String, dynamic> json) => _$V1PersistentVolumeClaimTemplateFromJson(json);

  Map<String, dynamic> toJson() => _$V1PersistentVolumeClaimTemplateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

