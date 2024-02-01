// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_daemon_set_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1DaemonSetSpec _$V1DaemonSetSpecFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1DaemonSetSpec',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['selector', 'template'],
        );
        final val = V1DaemonSetSpec(
          minReadySeconds: $checkedConvert('minReadySeconds', (v) => v as int?),
          revisionHistoryLimit:
              $checkedConvert('revisionHistoryLimit', (v) => v as int?),
          selector: $checkedConvert('selector',
              (v) => V1LabelSelector.fromJson(v as Map<String, dynamic>)),
          template: $checkedConvert('template',
              (v) => V1PodTemplateSpec.fromJson(v as Map<String, dynamic>)),
          updateStrategy: $checkedConvert(
              'updateStrategy',
              (v) => v == null
                  ? null
                  : V1DaemonSetUpdateStrategy.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1DaemonSetSpecToJson(V1DaemonSetSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('minReadySeconds', instance.minReadySeconds);
  writeNotNull('revisionHistoryLimit', instance.revisionHistoryLimit);
  val['selector'] = instance.selector.toJson();
  val['template'] = instance.template.toJson();
  writeNotNull('updateStrategy', instance.updateStrategy?.toJson());
  return val;
}
