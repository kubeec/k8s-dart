// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_resource_requirements.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ResourceRequirements _$V1ResourceRequirementsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ResourceRequirements',
      json,
      ($checkedConvert) {
        final val = V1ResourceRequirements(
          claims: $checkedConvert(
              'claims',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1ResourceClaim.fromJson(e as Map<String, dynamic>))
                  .toList()),
          limits: $checkedConvert(
              'limits',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          requests: $checkedConvert(
              'requests',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ResourceRequirementsToJson(
    V1ResourceRequirements instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('claims', instance.claims?.map((e) => e.toJson()).toList());
  writeNotNull('limits', instance.limits);
  writeNotNull('requests', instance.requests);
  return val;
}
