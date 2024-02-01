// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_replica_set_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ReplicaSetStatus _$V1ReplicaSetStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ReplicaSetStatus',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['replicas'],
        );
        final val = V1ReplicaSetStatus(
          availableReplicas:
              $checkedConvert('availableReplicas', (v) => v as int?),
          conditions: $checkedConvert(
              'conditions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1ReplicaSetCondition.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$V1ReplicaSetStatusToJson(V1ReplicaSetStatus instance) {
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
