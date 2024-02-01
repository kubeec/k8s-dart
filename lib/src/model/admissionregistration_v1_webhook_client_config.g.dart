// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admissionregistration_v1_webhook_client_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdmissionregistrationV1WebhookClientConfig
    _$AdmissionregistrationV1WebhookClientConfigFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'AdmissionregistrationV1WebhookClientConfig',
          json,
          ($checkedConvert) {
            final val = AdmissionregistrationV1WebhookClientConfig(
              caBundle: $checkedConvert('caBundle', (v) => v as String?),
              service: $checkedConvert(
                  'service',
                  (v) => v == null
                      ? null
                      : AdmissionregistrationV1ServiceReference.fromJson(
                          v as Map<String, dynamic>)),
              url: $checkedConvert('url', (v) => v as String?),
            );
            return val;
          },
        );

Map<String, dynamic> _$AdmissionregistrationV1WebhookClientConfigToJson(
    AdmissionregistrationV1WebhookClientConfig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('caBundle', instance.caBundle);
  writeNotNull('service', instance.service?.toJson());
  writeNotNull('url', instance.url);
  return val;
}
