// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_list_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ListMeta _$V1ListMetaFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1ListMeta',
      json,
      ($checkedConvert) {
        final val = V1ListMeta(
          continue_: $checkedConvert('continue', (v) => v as String?),
          remainingItemCount:
              $checkedConvert('remainingItemCount', (v) => v as int?),
          resourceVersion:
              $checkedConvert('resourceVersion', (v) => v as String?),
          selfLink: $checkedConvert('selfLink', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'continue_': 'continue'},
    );

Map<String, dynamic> _$V1ListMetaToJson(V1ListMeta instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('continue', instance.continue_);
  writeNotNull('remainingItemCount', instance.remainingItemCount);
  writeNotNull('resourceVersion', instance.resourceVersion);
  writeNotNull('selfLink', instance.selfLink);
  return val;
}
