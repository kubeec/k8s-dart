// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_v1_token_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticationV1TokenRequest _$AuthenticationV1TokenRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AuthenticationV1TokenRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['spec'],
        );
        final val = AuthenticationV1TokenRequest(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          spec: $checkedConvert('spec',
              (v) => V1TokenRequestSpec.fromJson(v as Map<String, dynamic>)),
          status: $checkedConvert(
              'status',
              (v) => v == null
                  ? null
                  : V1TokenRequestStatus.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$AuthenticationV1TokenRequestToJson(
    AuthenticationV1TokenRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  val['spec'] = instance.spec.toJson();
  writeNotNull('status', instance.status?.toJson());
  return val;
}
