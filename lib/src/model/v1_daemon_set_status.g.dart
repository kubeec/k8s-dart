// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_daemon_set_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1DaemonSetStatus _$V1DaemonSetStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1DaemonSetStatus',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'currentNumberScheduled',
            'desiredNumberScheduled',
            'numberMisscheduled',
            'numberReady'
          ],
        );
        final val = V1DaemonSetStatus(
          collisionCount: $checkedConvert('collisionCount', (v) => v as int?),
          conditions: $checkedConvert(
              'conditions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1DaemonSetCondition.fromJson(e as Map<String, dynamic>))
                  .toList()),
          currentNumberScheduled:
              $checkedConvert('currentNumberScheduled', (v) => v as int),
          desiredNumberScheduled:
              $checkedConvert('desiredNumberScheduled', (v) => v as int),
          numberAvailable: $checkedConvert('numberAvailable', (v) => v as int?),
          numberMisscheduled:
              $checkedConvert('numberMisscheduled', (v) => v as int),
          numberReady: $checkedConvert('numberReady', (v) => v as int),
          numberUnavailable:
              $checkedConvert('numberUnavailable', (v) => v as int?),
          observedGeneration:
              $checkedConvert('observedGeneration', (v) => v as int?),
          updatedNumberScheduled:
              $checkedConvert('updatedNumberScheduled', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1DaemonSetStatusToJson(V1DaemonSetStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('collisionCount', instance.collisionCount);
  writeNotNull(
      'conditions', instance.conditions?.map((e) => e.toJson()).toList());
  val['currentNumberScheduled'] = instance.currentNumberScheduled;
  val['desiredNumberScheduled'] = instance.desiredNumberScheduled;
  writeNotNull('numberAvailable', instance.numberAvailable);
  val['numberMisscheduled'] = instance.numberMisscheduled;
  val['numberReady'] = instance.numberReady;
  writeNotNull('numberUnavailable', instance.numberUnavailable);
  writeNotNull('observedGeneration', instance.observedGeneration);
  writeNotNull('updatedNumberScheduled', instance.updatedNumberScheduled);
  return val;
}
