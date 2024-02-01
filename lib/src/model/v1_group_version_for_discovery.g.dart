// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_group_version_for_discovery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1GroupVersionForDiscovery _$V1GroupVersionForDiscoveryFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1GroupVersionForDiscovery',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['groupVersion', 'version'],
        );
        final val = V1GroupVersionForDiscovery(
          groupVersion: $checkedConvert('groupVersion', (v) => v as String),
          version: $checkedConvert('version', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1GroupVersionForDiscoveryToJson(
        V1GroupVersionForDiscovery instance) =>
    <String, dynamic>{
      'groupVersion': instance.groupVersion,
      'version': instance.version,
    };
