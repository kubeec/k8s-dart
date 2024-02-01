// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_uncounted_terminated_pods.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1UncountedTerminatedPods _$V1UncountedTerminatedPodsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1UncountedTerminatedPods',
      json,
      ($checkedConvert) {
        final val = V1UncountedTerminatedPods(
          failed: $checkedConvert('failed',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          succeeded: $checkedConvert('succeeded',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1UncountedTerminatedPodsToJson(
    V1UncountedTerminatedPods instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('failed', instance.failed);
  writeNotNull('succeeded', instance.succeeded);
  return val;
}
