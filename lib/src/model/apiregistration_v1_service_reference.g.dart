// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiregistration_v1_service_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiregistrationV1ServiceReference _$ApiregistrationV1ServiceReferenceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ApiregistrationV1ServiceReference',
      json,
      ($checkedConvert) {
        final val = ApiregistrationV1ServiceReference(
          name: $checkedConvert('name', (v) => v as String?),
          namespace: $checkedConvert('namespace', (v) => v as String?),
          port: $checkedConvert('port', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ApiregistrationV1ServiceReferenceToJson(
    ApiregistrationV1ServiceReference instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('namespace', instance.namespace);
  writeNotNull('port', instance.port);
  return val;
}
