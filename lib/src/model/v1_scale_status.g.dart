// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_scale_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ScaleStatus _$V1ScaleStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ScaleStatus',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['replicas'],
        );
        final val = V1ScaleStatus(
          replicas: $checkedConvert('replicas', (v) => v as int),
          selector: $checkedConvert('selector', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ScaleStatusToJson(V1ScaleStatus instance) {
  final val = <String, dynamic>{
    'replicas': instance.replicas,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('selector', instance.selector);
  return val;
}
