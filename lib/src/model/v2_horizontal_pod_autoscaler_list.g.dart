// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_horizontal_pod_autoscaler_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2HorizontalPodAutoscalerList _$V2HorizontalPodAutoscalerListFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V2HorizontalPodAutoscalerList',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['items'],
        );
        final val = V2HorizontalPodAutoscalerList(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) => V2HorizontalPodAutoscaler.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ListMeta.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V2HorizontalPodAutoscalerListToJson(
    V2HorizontalPodAutoscalerList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  val['items'] = instance.items.map((e) => e.toJson()).toList();
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  return val;
}
