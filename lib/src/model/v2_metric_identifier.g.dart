// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_metric_identifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2MetricIdentifier _$V2MetricIdentifierFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V2MetricIdentifier',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name'],
        );
        final val = V2MetricIdentifier(
          name: $checkedConvert('name', (v) => v as String),
          selector: $checkedConvert(
              'selector',
              (v) => v == null
                  ? null
                  : V1LabelSelector.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V2MetricIdentifierToJson(V2MetricIdentifier instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('selector', instance.selector?.toJson());
  return val;
}
