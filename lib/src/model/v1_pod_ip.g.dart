// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_pod_ip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PodIP _$V1PodIPFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1PodIP',
      json,
      ($checkedConvert) {
        final val = V1PodIP(
          ip: $checkedConvert('ip', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PodIPToJson(V1PodIP instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ip', instance.ip);
  return val;
}
