// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_api_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1APIResource _$V1APIResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1APIResource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'kind',
            'name',
            'namespaced',
            'singularName',
            'verbs'
          ],
        );
        final val = V1APIResource(
          categories: $checkedConvert('categories',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          group: $checkedConvert('group', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          namespaced: $checkedConvert('namespaced', (v) => v as bool),
          shortNames: $checkedConvert('shortNames',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          singularName: $checkedConvert('singularName', (v) => v as String),
          storageVersionHash:
              $checkedConvert('storageVersionHash', (v) => v as String?),
          verbs: $checkedConvert('verbs',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          version: $checkedConvert('version', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1APIResourceToJson(V1APIResource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('categories', instance.categories);
  writeNotNull('group', instance.group);
  val['kind'] = instance.kind;
  val['name'] = instance.name;
  val['namespaced'] = instance.namespaced;
  writeNotNull('shortNames', instance.shortNames);
  val['singularName'] = instance.singularName;
  writeNotNull('storageVersionHash', instance.storageVersionHash);
  val['verbs'] = instance.verbs;
  writeNotNull('version', instance.version);
  return val;
}
