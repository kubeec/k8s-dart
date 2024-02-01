// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_object_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ObjectMeta _$V1ObjectMetaFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ObjectMeta',
      json,
      ($checkedConvert) {
        final val = V1ObjectMeta(
          annotations: $checkedConvert(
              'annotations',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          creationTimestamp: $checkedConvert('creationTimestamp',
              (v) => v == null ? null : DateTime.parse(v as String)),
          deletionGracePeriodSeconds:
              $checkedConvert('deletionGracePeriodSeconds', (v) => v as int?),
          deletionTimestamp: $checkedConvert('deletionTimestamp',
              (v) => v == null ? null : DateTime.parse(v as String)),
          finalizers: $checkedConvert('finalizers',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          generateName: $checkedConvert('generateName', (v) => v as String?),
          generation: $checkedConvert('generation', (v) => v as int?),
          labels: $checkedConvert(
              'labels',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          managedFields: $checkedConvert(
              'managedFields',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1ManagedFieldsEntry.fromJson(e as Map<String, dynamic>))
                  .toList()),
          name: $checkedConvert('name', (v) => v as String?),
          namespace: $checkedConvert('namespace', (v) => v as String?),
          ownerReferences: $checkedConvert(
              'ownerReferences',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1OwnerReference.fromJson(e as Map<String, dynamic>))
                  .toList()),
          resourceVersion:
              $checkedConvert('resourceVersion', (v) => v as String?),
          selfLink: $checkedConvert('selfLink', (v) => v as String?),
          uid: $checkedConvert('uid', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ObjectMetaToJson(V1ObjectMeta instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('annotations', instance.annotations);
  writeNotNull(
      'creationTimestamp', instance.creationTimestamp?.toIso8601String());
  writeNotNull(
      'deletionGracePeriodSeconds', instance.deletionGracePeriodSeconds);
  writeNotNull(
      'deletionTimestamp', instance.deletionTimestamp?.toIso8601String());
  writeNotNull('finalizers', instance.finalizers);
  writeNotNull('generateName', instance.generateName);
  writeNotNull('generation', instance.generation);
  writeNotNull('labels', instance.labels);
  writeNotNull(
      'managedFields', instance.managedFields?.map((e) => e.toJson()).toList());
  writeNotNull('name', instance.name);
  writeNotNull('namespace', instance.namespace);
  writeNotNull('ownerReferences',
      instance.ownerReferences?.map((e) => e.toJson()).toList());
  writeNotNull('resourceVersion', instance.resourceVersion);
  writeNotNull('selfLink', instance.selfLink);
  writeNotNull('uid', instance.uid);
  return val;
}
