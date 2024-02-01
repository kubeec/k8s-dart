// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_mutating_webhook_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1MutatingWebhookConfiguration _$V1MutatingWebhookConfigurationFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1MutatingWebhookConfiguration',
      json,
      ($checkedConvert) {
        final val = V1MutatingWebhookConfiguration(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          webhooks: $checkedConvert(
              'webhooks',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1MutatingWebhook.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1MutatingWebhookConfigurationToJson(
    V1MutatingWebhookConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('webhooks', instance.webhooks?.map((e) => e.toJson()).toList());
  return val;
}
