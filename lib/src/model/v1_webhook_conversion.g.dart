// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_webhook_conversion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1WebhookConversion _$V1WebhookConversionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1WebhookConversion',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['conversionReviewVersions'],
        );
        final val = V1WebhookConversion(
          clientConfig: $checkedConvert(
              'clientConfig',
              (v) => v == null
                  ? null
                  : ApiextensionsV1WebhookClientConfig.fromJson(
                      v as Map<String, dynamic>)),
          conversionReviewVersions: $checkedConvert('conversionReviewVersions',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1WebhookConversionToJson(V1WebhookConversion instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('clientConfig', instance.clientConfig?.toJson());
  val['conversionReviewVersions'] = instance.conversionReviewVersions;
  return val;
}
