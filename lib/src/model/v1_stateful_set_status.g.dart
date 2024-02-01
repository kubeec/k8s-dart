// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_stateful_set_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1StatefulSetStatus _$V1StatefulSetStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1StatefulSetStatus',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['replicas'],
        );
        final val = V1StatefulSetStatus(
          availableReplicas:
              $checkedConvert('availableReplicas', (v) => v as int?),
          collisionCount: $checkedConvert('collisionCount', (v) => v as int?),
          conditions: $checkedConvert(
              'conditions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1StatefulSetCondition.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          currentReplicas: $checkedConvert('currentReplicas', (v) => v as int?),
          currentRevision:
              $checkedConvert('currentRevision', (v) => v as String?),
          observedGeneration:
              $checkedConvert('observedGeneration', (v) => v as int?),
          readyReplicas: $checkedConvert('readyReplicas', (v) => v as int?),
          replicas: $checkedConvert('replicas', (v) => v as int),
          updateRevision:
              $checkedConvert('updateRevision', (v) => v as String?),
          updatedReplicas: $checkedConvert('updatedReplicas', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1StatefulSetStatusToJson(V1StatefulSetStatus instance) {
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
  writeNotNull('currentReplicas', instance.currentReplicas);
  writeNotNull('currentRevision', instance.currentRevision);
  writeNotNull('observedGeneration', instance.observedGeneration);
  writeNotNull('readyReplicas', instance.readyReplicas);
  val['replicas'] = instance.replicas;
  writeNotNull('updateRevision', instance.updateRevision);
  writeNotNull('updatedReplicas', instance.updatedReplicas);
  return val;
}
