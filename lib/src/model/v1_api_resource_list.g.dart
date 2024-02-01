// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_api_resource_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1APIResourceList _$V1APIResourceListFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1APIResourceList',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['groupVersion', 'resources'],
        );
        final val = V1APIResourceList(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          groupVersion: $checkedConvert('groupVersion', (v) => v as String),
          kind: $checkedConvert('kind', (v) => v as String?),
          resources: $checkedConvert(
              'resources',
              (v) => (v as List<dynamic>)
                  .map((e) => V1APIResource.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1APIResourceListToJson(V1APIResourceList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  val['groupVersion'] = instance.groupVersion;
  writeNotNull('kind', instance.kind);
  val['resources'] = instance.resources.map((e) => e.toJson()).toList();
  return val;
}
