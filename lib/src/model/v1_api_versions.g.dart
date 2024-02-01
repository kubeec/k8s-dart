// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_api_versions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1APIVersions _$V1APIVersionsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1APIVersions',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['serverAddressByClientCIDRs', 'versions'],
        );
        final val = V1APIVersions(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          serverAddressByClientCIDRs: $checkedConvert(
              'serverAddressByClientCIDRs',
              (v) => (v as List<dynamic>)
                  .map((e) => V1ServerAddressByClientCIDR.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          versions: $checkedConvert('versions',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1APIVersionsToJson(V1APIVersions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  val['serverAddressByClientCIDRs'] =
      instance.serverAddressByClientCIDRs.map((e) => e.toJson()).toList();
  val['versions'] = instance.versions;
  return val;
}
