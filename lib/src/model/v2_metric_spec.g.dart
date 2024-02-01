// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_metric_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2MetricSpec _$V2MetricSpecFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V2MetricSpec',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['type'],
        );
        final val = V2MetricSpec(
          containerResource: $checkedConvert(
              'containerResource',
              (v) => v == null
                  ? null
                  : V2ContainerResourceMetricSource.fromJson(
                      v as Map<String, dynamic>)),
          external_: $checkedConvert(
              'external',
              (v) => v == null
                  ? null
                  : V2ExternalMetricSource.fromJson(v as Map<String, dynamic>)),
          object: $checkedConvert(
              'object',
              (v) => v == null
                  ? null
                  : V2ObjectMetricSource.fromJson(v as Map<String, dynamic>)),
          pods: $checkedConvert(
              'pods',
              (v) => v == null
                  ? null
                  : V2PodsMetricSource.fromJson(v as Map<String, dynamic>)),
          resource: $checkedConvert(
              'resource',
              (v) => v == null
                  ? null
                  : V2ResourceMetricSource.fromJson(v as Map<String, dynamic>)),
          type: $checkedConvert('type', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'external_': 'external'},
    );

Map<String, dynamic> _$V2MetricSpecToJson(V2MetricSpec instance) {
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
