// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_replication_controller_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ReplicationControllerStatus _$V1ReplicationControllerStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ReplicationControllerStatus',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['replicas'],
        );
        final val = V1ReplicationControllerStatus(
          availableReplicas:
              $checkedConvert('availableReplicas', (v) => v as int?),
          conditions: $checkedConvert(
              'conditions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1ReplicationControllerCondition.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          fullyLabeledReplicas:
              $checkedConvert('fullyLabeledReplicas', (v) => v as int?),
          observedGeneration:
              $checkedConvert('observedGeneration', (v) => v as int?),
          readyReplicas: $checkedConvert('readyReplicas', (v) => v as int?),
          replicas: $checkedConvert('replicas', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ReplicationControllerStatusToJson(
    V1ReplicationControllerStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('availableReplicas', instance.availableReplicas);
  writeNotNull(
      'conditions', instance.conditions?.map((e) => e.toJson()).toList());
  writeNotNull('fullyLabeledReplicas', instance.fullyLabeledReplicas);
  writeNotNull('observedGeneration', instance.observedGeneration);
  writeNotNull('readyReplicas', instance.readyReplicas);
  val['replicas'] = instance.replicas;
  return val;
}
