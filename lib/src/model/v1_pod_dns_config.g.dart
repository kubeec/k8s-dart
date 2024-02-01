// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_pod_dns_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PodDNSConfig _$V1PodDNSConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PodDNSConfig',
      json,
      ($checkedConvert) {
        final val = V1PodDNSConfig(
          nameservers: $checkedConvert('nameservers',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          options: $checkedConvert(
              'options',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1PodDNSConfigOption.fromJson(e as Map<String, dynamic>))
                  .toList()),
          searches: $checkedConvert('searches',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PodDNSConfigToJson(V1PodDNSConfig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nameservers', instance.nameservers);
  writeNotNull('options', instance.options?.map((e) => e.toJson()).toList());
  writeNotNull('searches', instance.searches);
  return val;
}
