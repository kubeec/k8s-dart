// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_client_ip_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ClientIPConfig _$V1ClientIPConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ClientIPConfig',
      json,
      ($checkedConvert) {
        final val = V1ClientIPConfig(
          timeoutSeconds: $checkedConvert('timeoutSeconds', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ClientIPConfigToJson(V1ClientIPConfig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('timeoutSeconds', instance.timeoutSeconds);
  return val;
}
