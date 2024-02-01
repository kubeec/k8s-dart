// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha2_pod_scheduling_context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha2PodSchedulingContext _$V1alpha2PodSchedulingContextFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha2PodSchedulingContext',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['spec'],
        );
        final val = V1alpha2PodSchedulingContext(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          spec: $checkedConvert(
              'spec',
              (v) => V1alpha2PodSchedulingContextSpec.fromJson(
                  v as Map<String, dynamic>)),
          status: $checkedConvert(
              'status',
              (v) => v == null
                  ? null
                  : V1alpha2PodSchedulingContextStatus.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha2PodSchedulingContextToJson(
    V1alpha2PodSchedulingContext instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  val['spec'] = instance.spec.toJson();
  writeNotNull('status', instance.status?.toJson());
  return val;
}
