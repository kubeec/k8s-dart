// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_scope_selector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ScopeSelector _$V1ScopeSelectorFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ScopeSelector',
      json,
      ($checkedConvert) {
        final val = V1ScopeSelector(
          matchExpressions: $checkedConvert(
              'matchExpressions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1ScopedResourceSelectorRequirement.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ScopeSelectorToJson(V1ScopeSelector instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('matchExpressions',
      instance.matchExpressions?.map((e) => e.toJson()).toList());
  return val;
}
