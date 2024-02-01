// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiextensions_v1_webhook_client_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiextensionsV1WebhookClientConfig _$ApiextensionsV1WebhookClientConfigFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ApiextensionsV1WebhookClientConfig',
      json,
      ($checkedConvert) {
        final val = ApiextensionsV1WebhookClientConfig(
          caBundle: $checkedConvert('caBundle', (v) => v as String?),
          service: $checkedConvert(
              'service',
              (v) => v == null
                  ? null
                  : ApiextensionsV1ServiceReference.fromJson(
                      v as Map<String, dynamic>)),
          url: $checkedConvert('url', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ApiextensionsV1WebhookClientConfigToJson(
    ApiextensionsV1WebhookClientConfig instance) {
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
