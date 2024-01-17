//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_resource_quota_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ResourceQuotaStatus {
  /// Returns a new [V1ResourceQuotaStatus] instance.
  V1ResourceQuotaStatus({

     this.hard,

     this.used,
  });

      /// Hard is the set of enforced hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/
  @JsonKey(
    
    name: r'hard',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? hard;



      /// Used is the current observed total usage of the resource in the namespace.
  @JsonKey(
    
    name: r'used',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? used;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ResourceQuotaStatus &&
     other.hard == hard &&
     other.used == used;

  @override
  int get hashCode =>
    hard.hashCode +
    used.hashCode;

  factory V1ResourceQuotaStatus.fromJson(Map<String, dynamic> json) => _$V1ResourceQuotaStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1ResourceQuotaStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

