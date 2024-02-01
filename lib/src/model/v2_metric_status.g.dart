// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_metric_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2MetricStatus _$V2MetricStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V2MetricStatus',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['type'],
        );
        final val = V2MetricStatus(
          containerResource: $checkedConvert(
              'containerResource',
              (v) => v == null
                  ? null
                  : V2ContainerResourceMetricStatus.fromJson(
                      v as Map<String, dynamic>)),
          external_: $checkedConvert(
              'external',
              (v) => v == null
                  ? null
                  : V2ExternalMetricStatus.fromJson(v as Map<String, dynamic>)),
          object: $checkedConvert(
              'object',
              (v) => v == null
                  ? null
                  : V2ObjectMetricStatus.fromJson(v as Map<String, dynamic>)),
          pods: $checkedConvert(
              'pods',
              (v) => v == null
                  ? null
                  : V2PodsMetricStatus.fromJson(v as Map<String, dynamic>)),
          resource: $checkedConvert(
              'resource',
              (v) => v == null
                  ? null
                  : V2ResourceMetricStatus.fromJson(v as Map<String, dynamic>)),
          type: $checkedConvert('type', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'external_': 'external'},
    );

Map<String, dynamic> _$V2MetricStatusToJson(V2MetricStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('containerResource', instance.containerResource?.toJson());
  writeNotNull('external', instance.external_?.toJson());
  writeNotNull('object', instance.object?.toJson());
  writeNotNull('pods', instance.pods?.toJson());
  writeNotNull('resource', instance.resource?.toJson());
  val['type'] = instance.type;
  return val;
}
