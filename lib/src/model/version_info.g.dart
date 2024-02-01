// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VersionInfo _$VersionInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
      'VersionInfo',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'buildDate',
            'compiler',
            'gitCommit',
            'gitTreeState',
            'gitVersion',
            'goVersion',
            'major',
            'minor',
            'platform'
          ],
        );
        final val = VersionInfo(
          buildDate: $checkedConvert('buildDate', (v) => v as String),
          compiler: $checkedConvert('compiler', (v) => v as String),
          gitCommit: $checkedConvert('gitCommit', (v) => v as String),
          gitTreeState: $checkedConvert('gitTreeState', (v) => v as String),
          gitVersion: $checkedConvert('gitVersion', (v) => v as String),
          goVersion: $checkedConvert('goVersion', (v) => v as String),
          major: $checkedConvert('major', (v) => v as String),
          minor: $checkedConvert('minor', (v) => v as String),
          platform: $checkedConvert('platform', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$VersionInfoToJson(VersionInfo instance) =>
    <String, dynamic>{
      'buildDate': instance.buildDate,
      'compiler': instance.compiler,
      'gitCommit': instance.gitCommit,
      'gitTreeState': instance.gitTreeState,
      'gitVersion': instance.gitVersion,
      'goVersion': instance.goVersion,
      'major': instance.major,
      'minor': instance.minor,
      'platform': instance.platform,
    };
