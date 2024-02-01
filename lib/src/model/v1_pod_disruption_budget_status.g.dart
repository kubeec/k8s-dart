// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_pod_disruption_budget_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PodDisruptionBudgetStatus _$V1PodDisruptionBudgetStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PodDisruptionBudgetStatus',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'currentHealthy',
            'desiredHealthy',
            'disruptionsAllowed',
            'expectedPods'
          ],
        );
        final val = V1PodDisruptionBudgetStatus(
          conditions: $checkedConvert(
              'conditions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1Condition.fromJson(e as Map<String, dynamic>))
                  .toList()),
          currentHealthy: $checkedConvert('currentHealthy', (v) => v as int),
          desiredHealthy: $checkedConvert('desiredHealthy', (v) => v as int),
          disruptedPods: $checkedConvert(
              'disruptedPods',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, DateTime.parse(e as String)),
                  )),
          disruptionsAllowed:
              $checkedConvert('disruptionsAllowed', (v) => v as int),
          expectedPods: $checkedConvert('expectedPods', (v) => v as int),
          observedGeneration:
              $checkedConvert('observedGeneration', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PodDisruptionBudgetStatusToJson(
    V1PodDisruptionBudgetStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'conditions', instance.conditions?.map((e) => e.toJson()).toList());
  val['currentHealthy'] = instance.currentHealthy;
  val['desiredHealthy'] = instance.desiredHealthy;
  writeNotNull('disruptedPods',
      instance.disruptedPods?.map((k, e) => MapEntry(k, e.toIso8601String())));
  val['disruptionsAllowed'] = instance.disruptionsAllowed;
  val['expectedPods'] = instance.expectedPods;
  writeNotNull('observedGeneration', instance.observedGeneration);
  return val;
}
