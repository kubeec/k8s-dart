//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_persistent_volume_claim_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PersistentVolumeClaimVolumeSource {
  /// Returns a new [V1PersistentVolumeClaimVolumeSource] instance.
  V1PersistentVolumeClaimVolumeSource({

    required  this.claimName,

     this.readOnly,
  });

      /// claimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
  @JsonKey(
    
    name: r'claimName',
    required: true,
    includeIfNull: false
  )


  final String claimName;



      /// readOnly Will force the ReadOnly setting in VolumeMounts. Default false.
  @JsonKey(
    
    name: r'readOnly',
    required: false,
    includeIfNull: false
  )


  final bool? readOnly;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PersistentVolumeClaimVolumeSource &&
     other.claimName == claimName &&
     other.readOnly == readOnly;

  @override
  int get hashCode =>
    claimName.hashCode +
    readOnly.hashCode;

  factory V1PersistentVolumeClaimVolumeSource.fromJson(Map<String, dynamic> json) => _$V1PersistentVolumeClaimVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1PersistentVolumeClaimVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

