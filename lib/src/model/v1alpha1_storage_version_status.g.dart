// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_storage_version_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1StorageVersionStatus _$V1alpha1StorageVersionStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha1StorageVersionStatus',
      json,
      ($checkedConvert) {
        final val = V1alpha1StorageVersionStatus(
          commonEncodingVersion:
              $checkedConvert('commonEncodingVersion', (v) => v as String?),
          conditions: $checkedConvert(
              'conditions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1alpha1StorageVersionCondition.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          storageVersions: $checkedConvert(
              'storageVersions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1alpha1ServerStorageVersion.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha1StorageVersionStatusToJson(
    V1alpha1StorageVersionStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('commonEncodingVersion', instance.commonEncodingVersion);
  writeNotNull(
      'conditions', instance.conditions?.map((e) => e.toJson()).toList());
  writeNotNull('storageVersions',
      instance.storageVersions?.map((e) => e.toJson()).toList());
  return val;
}
