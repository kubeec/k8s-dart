// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_api_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1APIGroup _$V1APIGroupFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1APIGroup',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name', 'versions'],
        );
        final val = V1APIGroup(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String),
          preferredVersion: $checkedConvert(
              'preferredVersion',
              (v) => v == null
                  ? null
                  : V1GroupVersionForDiscovery.fromJson(
                      v as Map<String, dynamic>)),
          serverAddressByClientCIDRs: $checkedConvert(
              'serverAddressByClientCIDRs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1ServerAddressByClientCIDR.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          versions: $checkedConvert(
              'versions',
              (v) => (v as List<dynamic>)
                  .map((e) => V1GroupVersionForDiscovery.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1APIGroupToJson(V1APIGroup instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  val['name'] = instance.name;
  writeNotNull('preferredVersion', instance.preferredVersion?.toJson());
  writeNotNull('serverAddressByClientCIDRs',
      instance.serverAddressByClientCIDRs?.map((e) => e.toJson()).toList());
  val['versions'] = instance.versions.map((e) => e.toJson()).toList();
  return val;
}
