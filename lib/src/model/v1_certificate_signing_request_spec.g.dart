// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_certificate_signing_request_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CertificateSigningRequestSpec _$V1CertificateSigningRequestSpecFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CertificateSigningRequestSpec',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['request', 'signerName'],
        );
        final val = V1CertificateSigningRequestSpec(
          expirationSeconds:
              $checkedConvert('expirationSeconds', (v) => v as int?),
          extra: $checkedConvert(
              'extra',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k,
                        (e as List<dynamic>).map((e) => e as String).toList()),
                  )),
          groups: $checkedConvert('groups',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          request: $checkedConvert('request', (v) => v as String),
          signerName: $checkedConvert('signerName', (v) => v as String),
          uid: $checkedConvert('uid', (v) => v as String?),
          usages: $checkedConvert('usages',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          username: $checkedConvert('username', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CertificateSigningRequestSpecToJson(
    V1CertificateSigningRequestSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('expirationSeconds', instance.expirationSeconds);
  writeNotNull('extra', instance.extra);
  writeNotNull('groups', instance.groups);
  val['request'] = instance.request;
  val['signerName'] = instance.signerName;
  writeNotNull('uid', instance.uid);
  writeNotNull('usages', instance.usages);
  writeNotNull('username', instance.username);
  return val;
}
