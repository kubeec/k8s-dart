// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_windows_security_context_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1WindowsSecurityContextOptions _$V1WindowsSecurityContextOptionsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1WindowsSecurityContextOptions',
      json,
      ($checkedConvert) {
        final val = V1WindowsSecurityContextOptions(
          gmsaCredentialSpec:
              $checkedConvert('gmsaCredentialSpec', (v) => v as String?),
          gmsaCredentialSpecName:
              $checkedConvert('gmsaCredentialSpecName', (v) => v as String?),
          hostProcess: $checkedConvert('hostProcess', (v) => v as bool?),
          runAsUserName: $checkedConvert('runAsUserName', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1WindowsSecurityContextOptionsToJson(
    V1WindowsSecurityContextOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('gmsaCredentialSpec', instance.gmsaCredentialSpec);
  writeNotNull('gmsaCredentialSpecName', instance.gmsaCredentialSpecName);
  writeNotNull('hostProcess', instance.hostProcess);
  writeNotNull('runAsUserName', instance.runAsUserName);
  return val;
}
