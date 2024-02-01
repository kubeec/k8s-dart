// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_service_backend_port.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ServiceBackendPort _$V1ServiceBackendPortFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ServiceBackendPort',
      json,
      ($checkedConvert) {
        final val = V1ServiceBackendPort(
          name: $checkedConvert('name', (v) => v as String?),
          number: $checkedConvert('number', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ServiceBackendPortToJson(
    V1ServiceBackendPort instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('number', instance.number);
  return val;
}
