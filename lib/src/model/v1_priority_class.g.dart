// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_priority_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PriorityClass _$V1PriorityClassFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PriorityClass',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['value'],
        );
        final val = V1PriorityClass(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          globalDefault: $checkedConvert('globalDefault', (v) => v as bool?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          preemptionPolicy:
              $checkedConvert('preemptionPolicy', (v) => v as String?),
          value: $checkedConvert('value', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PriorityClassToJson(V1PriorityClass instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('description', instance.description);
  writeNotNull('globalDefault', instance.globalDefault);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('preemptionPolicy', instance.preemptionPolicy);
  val['value'] = instance.value;
  return val;
}
