// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_pod_dns_config_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PodDNSConfigOption _$V1PodDNSConfigOptionFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PodDNSConfigOption',
      json,
      ($checkedConvert) {
        final val = V1PodDNSConfigOption(
          name: $checkedConvert('name', (v) => v as String?),
          value: $checkedConvert('value', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PodDNSConfigOptionToJson(
    V1PodDNSConfigOption instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('value', instance.value);
  return val;
}
