// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_security_context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1SecurityContext _$V1SecurityContextFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1SecurityContext',
      json,
      ($checkedConvert) {
        final val = V1SecurityContext(
          allowPrivilegeEscalation:
              $checkedConvert('allowPrivilegeEscalation', (v) => v as bool?),
          capabilities: $checkedConvert(
              'capabilities',
              (v) => v == null
                  ? null
                  : V1Capabilities.fromJson(v as Map<String, dynamic>)),
          privileged: $checkedConvert('privileged', (v) => v as bool?),
          procMount: $checkedConvert('procMount', (v) => v as String?),
          readOnlyRootFilesystem:
              $checkedConvert('readOnlyRootFilesystem', (v) => v as bool?),
          runAsGroup: $checkedConvert('runAsGroup', (v) => v as int?),
          runAsNonRoot: $checkedConvert('runAsNonRoot', (v) => v as bool?),
          runAsUser: $checkedConvert('runAsUser', (v) => v as int?),
          seLinuxOptions: $checkedConvert(
              'seLinuxOptions',
              (v) => v == null
                  ? null
                  : V1SELinuxOptions.fromJson(v as Map<String, dynamic>)),
          seccompProfile: $checkedConvert(
              'seccompProfile',
              (v) => v == null
                  ? null
                  : V1SeccompProfile.fromJson(v as Map<String, dynamic>)),
          windowsOptions: $checkedConvert(
              'windowsOptions',
              (v) => v == null
                  ? null
                  : V1WindowsSecurityContextOptions.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1SecurityContextToJson(V1SecurityContext instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('allowPrivilegeEscalation', instance.allowPrivilegeEscalation);
  writeNotNull('capabilities', instance.capabilities?.toJson());
  writeNotNull('privileged', instance.privileged);
  writeNotNull('procMount', instance.procMount);
  writeNotNull('readOnlyRootFilesystem', instance.readOnlyRootFilesystem);
  writeNotNull('runAsGroup', instance.runAsGroup);
  writeNotNull('runAsNonRoot', instance.runAsNonRoot);
  writeNotNull('runAsUser', instance.runAsUser);
  writeNotNull('seLinuxOptions', instance.seLinuxOptions?.toJson());
  writeNotNull('seccompProfile', instance.seccompProfile?.toJson());
  writeNotNull('windowsOptions', instance.windowsOptions?.toJson());
  return val;
}
