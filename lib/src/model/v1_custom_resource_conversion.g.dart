// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_custom_resource_conversion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CustomResourceConversion _$V1CustomResourceConversionFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CustomResourceConversion',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['strategy'],
        );
        final val = V1CustomResourceConversion(
          strategy: $checkedConvert('strategy', (v) => v as String),
          webhook: $checkedConvert(
              'webhook',
              (v) => v == null
                  ? null
                  : V1WebhookConversion.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CustomResourceConversionToJson(
    V1CustomResourceConversion instance) {
  final val = <String, dynamic>{
    'strategy': instance.strategy,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('webhook', instance.webhook?.toJson());
  return val;
}
