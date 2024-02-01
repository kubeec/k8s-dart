// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_token_request_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1TokenRequestSpec _$V1TokenRequestSpecFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1TokenRequestSpec',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['audiences'],
        );
        final val = V1TokenRequestSpec(
          audiences: $checkedConvert('audiences',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          boundObjectRef: $checkedConvert(
              'boundObjectRef',
              (v) => v == null
                  ? null
                  : V1BoundObjectReference.fromJson(v as Map<String, dynamic>)),
          expirationSeconds:
              $checkedConvert('expirationSeconds', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1TokenRequestSpecToJson(V1TokenRequestSpec instance) {
  final val = <String, dynamic>{
    'audiences': instance.audiences,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('boundObjectRef', instance.boundObjectRef?.toJson());
  writeNotNull('expirationSeconds', instance.expirationSeconds);
  return val;
}
