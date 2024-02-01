// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_host_alias.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1HostAlias _$V1HostAliasFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1HostAlias',
      json,
      ($checkedConvert) {
        final val = V1HostAlias(
          hostnames: $checkedConvert('hostnames',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          ip: $checkedConvert('ip', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1HostAliasToJson(V1HostAlias instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hostnames', instance.hostnames);
  writeNotNull('ip', instance.ip);
  return val;
}
