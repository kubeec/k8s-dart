// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_deployment_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1DeploymentStatus _$V1DeploymentStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1DeploymentStatus',
      json,
      ($checkedConvert) {
        final val = V1DeploymentStatus(
          availableReplicas:
              $checkedConvert('availableReplicas', (v) => v as int?),
          collisionCount: $checkedConvert('collisionCount', (v) => v as int?),
          conditions: $checkedConvert(
              'conditions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1DeploymentCondition.fromJson(e as Map<String, dynamic>))
                  .toList()),
          observedGeneration:
              $checkedConvert('observedGeneration', (v) => v as int?),
          readyReplicas: $checkedConvert('readyReplicas', (v) => v as int?),
          replicas: $checkedConvert('replicas', (v) => v as int?),
          unavailableReplicas:
              $checkedConvert('unavailableReplicas', (v) => v as int?),
          updatedReplicas: $checkedConvert('updatedReplicas', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1DeploymentStatusToJson(V1DeploymentStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('availableReplicas', instance.availableReplicas);
  writeNotNull('collisionCount', instance.collisionCount);
  writeNotNull(
      'conditions', instance.conditions?.map((e) => e.toJson()).toList());
  writeNotNull('observedGeneration', instance.observedGeneration);
  writeNotNull('readyReplicas', instance.readyReplicas);
  writeNotNull('replicas', instance.replicas);
  writeNotNull('unavailableReplicas', instance.unavailableReplicas);
  writeNotNull('updatedReplicas', instance.updatedReplicas);
  return val;
}
