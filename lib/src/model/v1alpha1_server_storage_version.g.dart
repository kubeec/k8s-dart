// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_server_storage_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1ServerStorageVersion _$V1alpha1ServerStorageVersionFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha1ServerStorageVersion',
      json,
      ($checkedConvert) {
        final val = V1alpha1ServerStorageVersion(
          apiServerID: $checkedConvert('apiServerID', (v) => v as String?),
          decodableVersions: $checkedConvert('decodableVersions',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          encodingVersion:
              $checkedConvert('encodingVersion', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha1ServerStorageVersionToJson(
    V1alpha1ServerStorageVersion instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiServerID', instance.apiServerID);
  writeNotNull('decodableVersions', instance.decodableVersions);
  writeNotNull('encodingVersion', instance.encodingVersion);
  return val;
}
