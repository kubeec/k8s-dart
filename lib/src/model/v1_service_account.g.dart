// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_service_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ServiceAccount _$V1ServiceAccountFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ServiceAccount',
      json,
      ($checkedConvert) {
        final val = V1ServiceAccount(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          automountServiceAccountToken: $checkedConvert(
              'automountServiceAccountToken', (v) => v as bool?),
          imagePullSecrets: $checkedConvert(
              'imagePullSecrets',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1LocalObjectReference.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          secrets: $checkedConvert(
              'secrets',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1ObjectReference.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ServiceAccountToJson(V1ServiceAccount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull(
      'automountServiceAccountToken', instance.automountServiceAccountToken);
  writeNotNull('imagePullSecrets',
      instance.imagePullSecrets?.map((e) => e.toJson()).toList());
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('secrets', instance.secrets?.map((e) => e.toJson()).toList());
  return val;
}
