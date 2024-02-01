// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_token_request_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1TokenRequestStatus _$V1TokenRequestStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1TokenRequestStatus',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['expirationTimestamp', 'token'],
        );
        final val = V1TokenRequestStatus(
          expirationTimestamp: $checkedConvert(
              'expirationTimestamp', (v) => DateTime.parse(v as String)),
          token: $checkedConvert('token', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1TokenRequestStatusToJson(
        V1TokenRequestStatus instance) =>
    <String, dynamic>{
      'expirationTimestamp': instance.expirationTimestamp.toIso8601String(),
      'token': instance.token,
    };
