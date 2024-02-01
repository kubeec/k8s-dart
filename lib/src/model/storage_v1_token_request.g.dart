// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_v1_token_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StorageV1TokenRequest _$StorageV1TokenRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'StorageV1TokenRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['audience'],
        );
        final val = StorageV1TokenRequest(
          audience: $checkedConvert('audience', (v) => v as String),
          expirationSeconds:
              $checkedConvert('expirationSeconds', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$StorageV1TokenRequestToJson(
    StorageV1TokenRequest instance) {
  final val = <String, dynamic>{
    'audience': instance.audience,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('expirationSeconds', instance.expirationSeconds);
  return val;
}
