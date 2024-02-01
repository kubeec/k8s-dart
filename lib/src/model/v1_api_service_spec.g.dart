// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_api_service_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1APIServiceSpec _$V1APIServiceSpecFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1APIServiceSpec',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['groupPriorityMinimum', 'versionPriority'],
        );
        final val = V1APIServiceSpec(
          caBundle: $checkedConvert('caBundle', (v) => v as String?),
          group: $checkedConvert('group', (v) => v as String?),
          groupPriorityMinimum:
              $checkedConvert('groupPriorityMinimum', (v) => v as int),
          insecureSkipTLSVerify:
              $checkedConvert('insecureSkipTLSVerify', (v) => v as bool?),
          service: $checkedConvert(
              'service',
              (v) => v == null
                  ? null
                  : ApiregistrationV1ServiceReference.fromJson(
                      v as Map<String, dynamic>)),
          version: $checkedConvert('version', (v) => v as String?),
          versionPriority: $checkedConvert('versionPriority', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1APIServiceSpecToJson(V1APIServiceSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('caBundle', instance.caBundle);
  writeNotNull('group', instance.group);
  val['groupPriorityMinimum'] = instance.groupPriorityMinimum;
  writeNotNull('insecureSkipTLSVerify', instance.insecureSkipTLSVerify);
  writeNotNull('service', instance.service?.toJson());
  writeNotNull('version', instance.version);
  val['versionPriority'] = instance.versionPriority;
  return val;
}
