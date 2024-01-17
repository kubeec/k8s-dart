//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_persistent_volume_claim_template.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_ephemeral_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1EphemeralVolumeSource {
  /// Returns a new [V1EphemeralVolumeSource] instance.
  V1EphemeralVolumeSource({

     this.volumeClaimTemplate,
  });

  @JsonKey(
    
    name: r'volumeClaimTemplate',
    required: false,
    includeIfNull: false
  )


  final V1PersistentVolumeClaimTemplate? volumeClaimTemplate;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1EphemeralVolumeSource &&
     other.volumeClaimTemplate == volumeClaimTemplate;

  @override
  int get hashCode =>
    volumeClaimTemplate.hashCode;

  factory V1EphemeralVolumeSource.fromJson(Map<String, dynamic> json) => _$V1EphemeralVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1EphemeralVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

