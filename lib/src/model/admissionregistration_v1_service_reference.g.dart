// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admissionregistration_v1_service_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdmissionregistrationV1ServiceReference
    _$AdmissionregistrationV1ServiceReferenceFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'AdmissionregistrationV1ServiceReference',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['name', 'namespace'],
            );
            final val = AdmissionregistrationV1ServiceReference(
              name: $checkedConvert('name', (v) => v as String),
              namespace: $checkedConvert('namespace', (v) => v as String),
              path: $checkedConvert('path', (v) => v as String?),
              port: $checkedConvert('port', (v) => v as int?),
            );
            return val;
          },
        );

Map<String, dynamic> _$AdmissionregistrationV1ServiceReferenceToJson(
    AdmissionregistrationV1ServiceReference instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'namespace': instance.namespace,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('path', instance.path);
  writeNotNull('port', instance.port);
  return val;
}
