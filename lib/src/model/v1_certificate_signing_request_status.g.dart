// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_certificate_signing_request_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CertificateSigningRequestStatus _$V1CertificateSigningRequestStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CertificateSigningRequestStatus',
      json,
      ($checkedConvert) {
        final val = V1CertificateSigningRequestStatus(
          certificate: $checkedConvert('certificate', (v) => v as String?),
          conditions: $checkedConvert(
              'conditions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1CertificateSigningRequestCondition.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CertificateSigningRequestStatusToJson(
    V1CertificateSigningRequestStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('certificate', instance.certificate);
  writeNotNull(
      'conditions', instance.conditions?.map((e) => e.toJson()).toList());
  return val;
}
