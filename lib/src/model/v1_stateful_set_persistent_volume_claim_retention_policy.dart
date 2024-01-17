//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_stateful_set_persistent_volume_claim_retention_policy.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1StatefulSetPersistentVolumeClaimRetentionPolicy {
  /// Returns a new [V1StatefulSetPersistentVolumeClaimRetentionPolicy] instance.
  V1StatefulSetPersistentVolumeClaimRetentionPolicy({

     this.whenDeleted,

     this.whenScaled,
  });

      /// WhenDeleted specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is deleted. The default policy of `Retain` causes PVCs to not be affected by StatefulSet deletion. The `Delete` policy causes those PVCs to be deleted.
  @JsonKey(
    
    name: r'whenDeleted',
    required: false,
    includeIfNull: false
  )


  final String? whenDeleted;



      /// WhenScaled specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is scaled down. The default policy of `Retain` causes PVCs to not be affected by a scaledown. The `Delete` policy causes the associated PVCs for any excess pods above the replica count to be deleted.
  @JsonKey(
    
    name: r'whenScaled',
    required: false,
    includeIfNull: false
  )


  final String? whenScaled;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1StatefulSetPersistentVolumeClaimRetentionPolicy &&
     other.whenDeleted == whenDeleted &&
     other.whenScaled == whenScaled;

  @override
  int get hashCode =>
    whenDeleted.hashCode +
    whenScaled.hashCode;

  factory V1StatefulSetPersistentVolumeClaimRetentionPolicy.fromJson(Map<String, dynamic> json) => _$V1StatefulSetPersistentVolumeClaimRetentionPolicyFromJson(json);

  Map<String, dynamic> toJson() => _$V1StatefulSetPersistentVolumeClaimRetentionPolicyToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

