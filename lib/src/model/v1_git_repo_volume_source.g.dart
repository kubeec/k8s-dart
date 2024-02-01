// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_git_repo_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1GitRepoVolumeSource _$V1GitRepoVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1GitRepoVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['repository'],
        );
        final val = V1GitRepoVolumeSource(
          directory: $checkedConvert('directory', (v) => v as String?),
          repository: $checkedConvert('repository', (v) => v as String),
          revision: $checkedConvert('revision', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1GitRepoVolumeSourceToJson(
    V1GitRepoVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('directory', instance.directory);
  val['repository'] = instance.repository;
  writeNotNull('revision', instance.revision);
  return val;
}
