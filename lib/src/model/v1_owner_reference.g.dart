// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_owner_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1OwnerReference _$V1OwnerReferenceFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1OwnerReference',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['apiVersion', 'kind', 'name', 'uid'],
        );
        final val = V1OwnerReference(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String),
          blockOwnerDeletion:
              $checkedConvert('blockOwnerDeletion', (v) => v as bool?),
          controller: $checkedConvert('controller', (v) => v as bool?),
          kind: $checkedConvert('kind', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          uid: $checkedConvert('uid', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1OwnerReferenceToJson(V1OwnerReference instance) {
  final val = <String, dynamic>{
    'apiVersion': instance.apiVersion,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('blockOwnerDeletion', instance.blockOwnerDeletion);
  writeNotNull('controller', instance.controller);
  val['kind'] = instance.kind;
  val['name'] = instance.name;
  val['uid'] = instance.uid;
  return val;
}
