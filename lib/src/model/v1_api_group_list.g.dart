// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_api_group_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1APIGroupList _$V1APIGroupListFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1APIGroupList',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['groups'],
        );
        final val = V1APIGroupList(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          groups: $checkedConvert(
              'groups',
              (v) => (v as List<dynamic>)
                  .map((e) => V1APIGroup.fromJson(e as Map<String, dynamic>))
                  .toList()),
          kind: $checkedConvert('kind', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1APIGroupListToJson(V1APIGroupList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  val['groups'] = instance.groups.map((e) => e.toJson()).toList();
  writeNotNull('kind', instance.kind);
  return val;
}
