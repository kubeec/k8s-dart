// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_parent_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1ParentReference _$V1alpha1ParentReferenceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha1ParentReference',
      json,
      ($checkedConvert) {
        final val = V1alpha1ParentReference(
          group: $checkedConvert('group', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          namespace: $checkedConvert('namespace', (v) => v as String?),
          resource: $checkedConvert('resource', (v) => v as String?),
          uid: $checkedConvert('uid', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha1ParentReferenceToJson(
    V1alpha1ParentReference instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('group', instance.group);
  writeNotNull('name', instance.name);
  writeNotNull('namespace', instance.namespace);
  writeNotNull('resource', instance.resource);
  writeNotNull('uid', instance.uid);
  return val;
}
