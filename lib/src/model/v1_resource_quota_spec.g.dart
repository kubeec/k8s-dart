// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_resource_quota_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ResourceQuotaSpec _$V1ResourceQuotaSpecFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ResourceQuotaSpec',
      json,
      ($checkedConvert) {
        final val = V1ResourceQuotaSpec(
          hard: $checkedConvert(
              'hard',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          scopeSelector: $checkedConvert(
              'scopeSelector',
              (v) => v == null
                  ? null
                  : V1ScopeSelector.fromJson(v as Map<String, dynamic>)),
          scopes: $checkedConvert('scopes',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ResourceQuotaSpecToJson(V1ResourceQuotaSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hard', instance.hard);
  writeNotNull('scopeSelector', instance.scopeSelector?.toJson());
  writeNotNull('scopes', instance.scopes);
  return val;
}
